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
	<24.230917, 35.426601, 35.314682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263962, 35.063133, 35.150974>,  <24.283789, 34.845055, 35.052750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263962, 35.063133, 35.150974>,  <24.230917, 35.426601, 35.314682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.263962, 35.063133, 35.150974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612095, 0.370349, -0.698700,
		0.786457, -0.192788, 0.586786,
		0.082614, -0.908666, -0.409268,
		24.288746, 34.790535, 35.028194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.877157, 35.207256, 35.220268>,  <24.230917, 35.426601, 35.314682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.877157, 35.207256, 35.220268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668118, 35.007515, 34.943851>,  <24.542694, 34.887669, 34.778004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668118, 35.007515, 34.943851>,  <24.877157, 35.207256, 35.220268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.668118, 35.007515, 34.943851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567058, 0.401676, -0.719098,
		0.636660, -0.767658, 0.073250,
		-0.522599, -0.499357, -0.691038,
		24.511337, 34.857708, 34.736542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324320, 34.725212, 34.699566>,  <24.877157, 35.207256, 35.220268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324320, 34.725212, 34.699566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981615, 34.838951, 34.527470>,  <24.775991, 34.907196, 34.424213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.981615, 34.838951, 34.527470>,  <25.324320, 34.725212, 34.699566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.981615, 34.838951, 34.527470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515696, 0.479203, -0.710228,
		0.004216, -0.830367, -0.557202,
		-0.856762, 0.284352, -0.430237,
		24.724586, 34.924255, 34.398399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508743, 34.826572, 33.977642>,  <25.324320, 34.725212, 34.699566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508743, 34.826572, 33.977642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168840, 35.031620, 34.026848>,  <24.964899, 35.154648, 34.056370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168840, 35.031620, 34.026848>,  <25.508743, 34.826572, 33.977642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.168840, 35.031620, 34.026848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299922, 0.662003, -0.686876,
		-0.433539, -0.546785, -0.716289,
		-0.849759, 0.512619, 0.123011,
		24.913912, 35.185406, 34.063751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272497, 34.556904, 33.271717>,  <25.508743, 34.826572, 33.977642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272497, 34.556904, 33.271717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431908, 34.923542, 33.258877>,  <25.527554, 35.143524, 33.251171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431908, 34.923542, 33.258877>,  <25.272497, 34.556904, 33.271717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431908, 34.923542, 33.258877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007689, -0.038342, -0.999235,
		-0.917124, 0.397977, -0.022328,
		0.398528, 0.916594, -0.032104,
		25.551466, 35.198521, 33.249245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892965, 34.907734, 32.817646>,  <25.272497, 34.556904, 33.271717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892965, 34.907734, 32.817646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242628, 35.101280, 32.834274>,  <25.452425, 35.217407, 32.844250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242628, 35.101280, 32.834274>,  <24.892965, 34.907734, 32.817646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.242628, 35.101280, 32.834274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044520, 0.165078, -0.985275,
		-0.483599, 0.859434, 0.165845,
		0.874157, 0.483862, 0.041570,
		25.504875, 35.246437, 32.846745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.851498, 35.521038, 32.436951>,  <24.892965, 34.907734, 32.817646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.851498, 35.521038, 32.436951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.250679, 35.496651, 32.444668>,  <25.490189, 35.482018, 32.449299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.250679, 35.496651, 32.444668>,  <24.851498, 35.521038, 32.436951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250679, 35.496651, 32.444668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021179, 0.030431, -0.999313,
		0.060341, 0.997676, 0.031660,
		0.997953, -0.060970, 0.019294,
		25.550064, 35.478359, 32.450455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102762, 36.009769, 31.972200>,  <24.851498, 35.521038, 32.436951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.102762, 36.009769, 31.972200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417215, 35.764496, 32.003181>,  <25.605886, 35.617332, 32.021770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417215, 35.764496, 32.003181>,  <25.102762, 36.009769, 31.972200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417215, 35.764496, 32.003181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232106, 0.176751, -0.956497,
		0.572823, 0.769909, 0.281274,
		0.786131, -0.613188, 0.077453,
		25.653055, 35.580540, 32.026417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.651489, 36.482010, 31.612694>,  <25.102762, 36.009769, 31.972200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.651489, 36.482010, 31.612694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754524, 36.098522, 31.660868>,  <25.816345, 35.868431, 31.689774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754524, 36.098522, 31.660868>,  <25.651489, 36.482010, 31.612694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754524, 36.098522, 31.660868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469570, 0.015268, -0.882763,
		0.844484, 0.283942, 0.454119,
		0.257587, -0.958720, 0.120437,
		25.831800, 35.810905, 31.696999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301184, 36.451351, 31.538059>,  <25.651489, 36.482010, 31.612694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301184, 36.451351, 31.538059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157686, 36.087631, 31.453705>,  <26.071587, 35.869400, 31.403093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157686, 36.087631, 31.453705>,  <26.301184, 36.451351, 31.538059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157686, 36.087631, 31.453705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353594, 0.076703, -0.932249,
		0.863871, -0.409006, 0.294007,
		-0.358745, -0.909302, -0.210884,
		26.050062, 35.814842, 31.390440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696896, 36.271702, 31.001337>,  <26.301184, 36.451351, 31.538059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696896, 36.271702, 31.001337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393564, 36.014790, 30.956776>,  <26.211565, 35.860641, 30.930038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393564, 36.014790, 30.956776>,  <26.696896, 36.271702, 31.001337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393564, 36.014790, 30.956776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056304, 0.105726, -0.992800,
		0.649434, -0.759143, -0.044012,
		-0.758331, -0.642280, -0.111405,
		26.166065, 35.822105, 30.923355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941250, 35.920200, 30.513906>,  <26.696896, 36.271702, 31.001337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941250, 35.920200, 30.513906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547062, 35.853886, 30.499155>,  <26.310549, 35.814098, 30.490305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547062, 35.853886, 30.499155>,  <26.941250, 35.920200, 30.513906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547062, 35.853886, 30.499155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026599, 0.063804, -0.997608,
		0.167744, -0.984095, -0.058467,
		-0.985472, -0.165788, -0.036879,
		26.251421, 35.804150, 30.488091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829720, 35.453758, 30.021076>,  <26.941250, 35.920200, 30.513906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829720, 35.453758, 30.021076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463861, 35.612724, 30.050699>,  <26.244347, 35.708103, 30.068474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463861, 35.612724, 30.050699>,  <26.829720, 35.453758, 30.021076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463861, 35.612724, 30.050699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048985, 0.072888, -0.996136,
		-0.401281, -0.914738, -0.047199,
		-0.914644, 0.397419, 0.074057,
		26.189468, 35.731949, 30.072916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478369, 35.095215, 29.518272>,  <26.829720, 35.453758, 30.021076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478369, 35.095215, 29.518272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298084, 35.445545, 29.587305>,  <26.189915, 35.655743, 29.628725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298084, 35.445545, 29.587305>,  <26.478369, 35.095215, 29.518272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298084, 35.445545, 29.587305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015790, 0.201123, -0.979439,
		-0.892531, -0.438718, -0.104477,
		-0.450710, 0.875829, 0.172581,
		26.162870, 35.708294, 29.639080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926394, 35.049221, 29.197706>,  <26.478369, 35.095215, 29.518272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926394, 35.049221, 29.197706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994444, 35.442799, 29.219263>,  <26.035275, 35.678947, 29.232197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994444, 35.442799, 29.219263>,  <25.926394, 35.049221, 29.197706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994444, 35.442799, 29.219263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237596, 0.094033, -0.966802,
		-0.956349, 0.151676, 0.249780,
		0.170128, 0.983947, 0.053891,
		26.045483, 35.737984, 29.235430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.539001, 35.262936, 28.703344>,  <25.926394, 35.049221, 29.197706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.539001, 35.262936, 28.703344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.731859, 35.597977, 28.806068>,  <25.847574, 35.799004, 28.867702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.731859, 35.597977, 28.806068>,  <25.539001, 35.262936, 28.703344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.731859, 35.597977, 28.806068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034760, 0.311190, -0.949712,
		-0.875402, 0.448972, 0.179154,
		0.482145, 0.837607, 0.256810,
		25.876503, 35.849258, 28.883112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.118824, 35.821098, 28.530003>,  <25.539001, 35.262936, 28.703344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.118824, 35.821098, 28.530003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477859, 35.996277, 28.550161>,  <25.693281, 36.101383, 28.562256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477859, 35.996277, 28.550161>,  <25.118824, 35.821098, 28.530003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477859, 35.996277, 28.550161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085681, 0.285452, -0.954555,
		-0.432425, 0.852481, 0.293742,
		0.897590, 0.437942, 0.050395,
		25.747137, 36.127659, 28.565279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.079491, 36.461452, 28.092970>,  <25.118824, 35.821098, 28.530003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.079491, 36.461452, 28.092970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470339, 36.389488, 28.138344>,  <25.704847, 36.346310, 28.165569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470339, 36.389488, 28.138344>,  <25.079491, 36.461452, 28.092970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.470339, 36.389488, 28.138344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166844, 0.317607, -0.933429,
		0.131906, 0.930998, 0.340357,
		0.977120, -0.179911, 0.113437,
		25.763475, 36.335514, 28.172375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.468298, 36.989624, 27.610676>,  <25.079491, 36.461452, 28.092970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.468298, 36.989624, 27.610676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771421, 36.735893, 27.671797>,  <25.953297, 36.583652, 27.708469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.771421, 36.735893, 27.671797>,  <25.468298, 36.989624, 27.610676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771421, 36.735893, 27.671797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339925, 0.183930, -0.922291,
		0.556932, 0.750863, 0.355009,
		0.757811, -0.634330, 0.152801,
		25.998764, 36.545593, 27.717636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075739, 37.325336, 27.300283>,  <25.468298, 36.989624, 27.610676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075739, 37.325336, 27.300283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150818, 36.932713, 27.314787>,  <26.195866, 36.697140, 27.323490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150818, 36.932713, 27.314787>,  <26.075739, 37.325336, 27.300283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150818, 36.932713, 27.314787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487736, 0.061096, -0.870851,
		0.852574, 0.181142, 0.490209,
		0.187697, -0.981557, 0.036261,
		26.207127, 36.638245, 27.325665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751104, 37.317120, 27.164537>,  <26.075739, 37.325336, 27.300283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751104, 37.317120, 27.164537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596457, 36.956051, 27.088953>,  <26.503668, 36.739410, 27.043602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596457, 36.956051, 27.088953>,  <26.751104, 37.317120, 27.164537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596457, 36.956051, 27.088953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462899, -0.012724, -0.886320,
		0.797652, -0.430140, 0.422766,
		-0.386621, -0.902672, -0.188962,
		26.480471, 36.685249, 27.032265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291466, 36.941078, 26.727407>,  <26.751104, 37.317120, 27.164537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291466, 36.941078, 26.727407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968971, 36.710903, 26.672485>,  <26.775475, 36.572800, 26.639532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.968971, 36.710903, 26.672485>,  <27.291466, 36.941078, 26.727407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968971, 36.710903, 26.672485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326857, -0.239829, -0.914137,
		0.493099, -0.781891, 0.381445,
		-0.806238, -0.575438, -0.137307,
		26.727100, 36.538273, 26.631292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474434, 36.204033, 26.355505>,  <27.291466, 36.941078, 26.727407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474434, 36.204033, 26.355505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090338, 36.289223, 26.283304>,  <26.859880, 36.340336, 26.239983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090338, 36.289223, 26.283304>,  <27.474434, 36.204033, 26.355505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090338, 36.289223, 26.283304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127550, -0.240445, -0.962246,
		-0.248349, -0.947007, 0.203718,
		-0.960236, 0.212988, -0.180505,
		26.802265, 36.353115, 26.229153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256411, 35.700745, 25.951191>,  <27.474434, 36.204033, 26.355505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256411, 35.700745, 25.951191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966476, 35.969082, 25.888475>,  <26.792517, 36.130085, 25.850845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966476, 35.969082, 25.888475>,  <27.256411, 35.700745, 25.951191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966476, 35.969082, 25.888475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126418, -0.094205, -0.987494,
		-0.677225, -0.735591, -0.016524,
		-0.724834, 0.670844, -0.156790,
		26.749025, 36.170334, 25.841438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638056, 35.439781, 25.510225>,  <27.256411, 35.700745, 25.951191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638056, 35.439781, 25.510225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710861, 35.830757, 25.467369>,  <26.754545, 36.065342, 25.441656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710861, 35.830757, 25.467369>,  <26.638056, 35.439781, 25.510225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710861, 35.830757, 25.467369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013075, -0.106543, -0.994222,
		-0.983209, 0.182363, -0.006612,
		0.182014, 0.977442, -0.107139,
		26.765465, 36.123989, 25.435228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.244581, 35.717915, 24.955614>,  <26.638056, 35.439781, 25.510225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.244581, 35.717915, 24.955614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537594, 35.989311, 24.977722>,  <26.713402, 36.152149, 24.990988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.537594, 35.989311, 24.977722>,  <26.244581, 35.717915, 24.955614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.537594, 35.989311, 24.977722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039663, 0.038513, -0.998471,
		-0.679579, 0.733601, 0.001301,
		0.732529, 0.678488, 0.055269,
		26.757353, 36.192856, 24.994303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156191, 36.388714, 24.637802>,  <26.244581, 35.717915, 24.955614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.156191, 36.388714, 24.637802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.468882, 36.200901, 24.473637>,  <26.656496, 36.088215, 24.375137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.468882, 36.200901, 24.473637>,  <26.156191, 36.388714, 24.637802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468882, 36.200901, 24.473637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311865, 0.275569, -0.909287,
		0.540037, 0.838809, 0.068990,
		0.781729, -0.469533, -0.410412,
		26.703400, 36.060040, 24.350513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663158, 36.874493, 24.313892>,  <26.156191, 36.388714, 24.637802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663158, 36.874493, 24.313892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611479, 36.512772, 24.151146>,  <26.580471, 36.295738, 24.053499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611479, 36.512772, 24.151146>,  <26.663158, 36.874493, 24.313892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611479, 36.512772, 24.151146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526891, 0.410195, -0.744397,
		0.840056, 0.118198, -0.529467,
		-0.129198, -0.904306, -0.406865,
		26.572720, 36.241478, 24.029087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465914, 36.711834, 24.207111>,  <26.663158, 36.874493, 24.313892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465914, 36.711834, 24.207111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324724, 37.084602, 24.173800>,  <27.240009, 37.308262, 24.153812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324724, 37.084602, 24.173800>,  <27.465914, 36.711834, 24.207111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324724, 37.084602, 24.173800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632361, 0.303219, 0.712866,
		0.689585, 0.198961, -0.696338,
		-0.352975, 0.931919, -0.083280,
		27.218832, 37.364178, 24.148815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068844, 37.082058, 23.970615>,  <27.465914, 36.711834, 24.207111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068844, 37.082058, 23.970615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786606, 37.229477, 24.212709>,  <27.617264, 37.317928, 24.357965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786606, 37.229477, 24.212709>,  <28.068844, 37.082058, 23.970615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786606, 37.229477, 24.212709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693069, 0.180983, 0.697783,
		0.147629, 0.911821, -0.383130,
		-0.705593, 0.368549, 0.605236,
		27.574928, 37.340042, 24.394279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172304, 37.861809, 24.171049>,  <28.068844, 37.082058, 23.970615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172304, 37.861809, 24.171049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981310, 37.626862, 24.432432>,  <27.866713, 37.485893, 24.589262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981310, 37.626862, 24.432432>,  <28.172304, 37.861809, 24.171049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.981310, 37.626862, 24.432432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752644, 0.110314, 0.649121,
		-0.453358, 0.801767, 0.389406,
		-0.477487, -0.587368, 0.653456,
		27.838064, 37.450649, 24.628469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102329, 38.274315, 24.694202>,  <28.172304, 37.861809, 24.171049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102329, 38.274315, 24.694202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145239, 37.879856, 24.744797>,  <28.170984, 37.643181, 24.775154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145239, 37.879856, 24.744797>,  <28.102329, 38.274315, 24.694202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145239, 37.879856, 24.744797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938653, 0.142393, 0.314094,
		-0.327755, 0.085032, 0.940928,
		0.107273, -0.986151, 0.126485,
		28.177422, 37.584011, 24.782742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831785, 38.325001, 24.925896>,  <28.102329, 38.274315, 24.694202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831785, 38.325001, 24.925896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222559, 38.371704, 24.854383>,  <29.457024, 38.399727, 24.811476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222559, 38.371704, 24.854383>,  <28.831785, 38.325001, 24.925896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222559, 38.371704, 24.854383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167605, 0.099481, 0.980822,
		0.132308, -0.988165, 0.077616,
		0.976936, 0.116761, -0.178783,
		29.515640, 38.406731, 24.800749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212545, 37.831478, 25.319498>,  <28.831785, 38.325001, 24.925896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212545, 37.831478, 25.319498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413885, 38.174713, 25.278845>,  <29.534689, 38.380653, 25.254454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413885, 38.174713, 25.278845>,  <29.212545, 37.831478, 25.319498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413885, 38.174713, 25.278845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094134, 0.171372, 0.980699,
		0.858940, -0.484067, 0.167035,
		0.503350, 0.858085, -0.101631,
		29.564890, 38.432140, 25.248356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703333, 37.864880, 25.788960>,  <29.212545, 37.831478, 25.319498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703333, 37.864880, 25.788960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636934, 38.248344, 25.696516>,  <29.597095, 38.478424, 25.641050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636934, 38.248344, 25.696516>,  <29.703333, 37.864880, 25.788960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636934, 38.248344, 25.696516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134411, 0.210178, 0.968379,
		0.976923, 0.191813, 0.093965,
		-0.165999, 0.958662, -0.231110,
		29.587135, 38.535942, 25.627184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128769, 38.367325, 26.111544>,  <29.703333, 37.864880, 25.788960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128769, 38.367325, 26.111544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780287, 38.549164, 26.037420>,  <29.571198, 38.658268, 25.992947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780287, 38.549164, 26.037420>,  <30.128769, 38.367325, 26.111544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780287, 38.549164, 26.037420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164180, 0.085928, 0.982681,
		0.462649, 0.886541, -0.000225,
		-0.871206, 0.454600, -0.185307,
		29.518925, 38.685543, 25.981829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025482, 38.977165, 26.504351>,  <30.128769, 38.367325, 26.111544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025482, 38.977165, 26.504351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648205, 38.891369, 26.402863>,  <29.421839, 38.839890, 26.341970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648205, 38.891369, 26.402863>,  <30.025482, 38.977165, 26.504351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648205, 38.891369, 26.402863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257563, -0.010323, 0.966206,
		-0.209865, 0.976671, -0.045509,
		-0.943196, -0.214494, -0.253721,
		29.365246, 38.827019, 26.326746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478298, 39.321907, 26.877989>,  <30.025482, 38.977165, 26.504351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478298, 39.321907, 26.877989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278521, 38.990005, 26.778343>,  <29.158653, 38.790863, 26.718555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278521, 38.990005, 26.778343>,  <29.478298, 39.321907, 26.877989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278521, 38.990005, 26.778343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312317, -0.095766, 0.945139,
		-0.808092, 0.549847, -0.211317,
		-0.499445, -0.829757, -0.249115,
		29.128687, 38.741077, 26.703609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896296, 39.387310, 27.344017>,  <29.478298, 39.321907, 26.877989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896296, 39.387310, 27.344017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903728, 39.004860, 27.227068>,  <28.908188, 38.775391, 27.156898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903728, 39.004860, 27.227068>,  <28.896296, 39.387310, 27.344017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903728, 39.004860, 27.227068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303958, -0.283986, 0.909374,
		-0.952504, 0.071970, -0.295898,
		0.018583, -0.956123, -0.292374,
		28.909304, 38.718021, 27.139357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236658, 39.188820, 27.534594>,  <28.896296, 39.387310, 27.344017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236658, 39.188820, 27.534594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444450, 38.852055, 27.476173>,  <28.569126, 38.649998, 27.441120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444450, 38.852055, 27.476173>,  <28.236658, 39.188820, 27.534594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444450, 38.852055, 27.476173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432883, -0.406664, 0.804510,
		-0.736719, -0.354702, -0.575701,
		0.519479, -0.841909, -0.146052,
		28.600294, 38.599483, 27.432358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804352, 38.624596, 27.693487>,  <28.236658, 39.188820, 27.534594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804352, 38.624596, 27.693487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164955, 38.454472, 27.725489>,  <28.381317, 38.352398, 27.744690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164955, 38.454472, 27.725489>,  <27.804352, 38.624596, 27.693487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164955, 38.454472, 27.725489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320570, -0.532089, 0.783656,
		-0.290725, -0.732117, -0.616022,
		0.901507, -0.425306, 0.080003,
		28.435408, 38.326881, 27.749489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676434, 38.006321, 27.839407>,  <27.804352, 38.624596, 27.693487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676434, 38.006321, 27.839407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054564, 38.021713, 27.968948>,  <28.281441, 38.030949, 28.046673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054564, 38.021713, 27.968948>,  <27.676434, 38.006321, 27.839407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054564, 38.021713, 27.968948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275981, -0.434701, 0.857245,
		0.173768, -0.899752, -0.400313,
		0.945325, 0.038483, 0.323851,
		28.338161, 38.033257, 28.066103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777245, 37.306988, 28.139013>,  <27.676434, 38.006321, 27.839407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777245, 37.306988, 28.139013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073938, 37.540218, 28.271587>,  <28.251955, 37.680157, 28.351131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073938, 37.540218, 28.271587>,  <27.777245, 37.306988, 28.139013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073938, 37.540218, 28.271587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069720, -0.558523, 0.826554,
		0.667062, -0.589974, -0.454927,
		0.741733, 0.583080, 0.331436,
		28.296457, 37.715141, 28.371017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361689, 36.830502, 28.326111>,  <27.777245, 37.306988, 28.139013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361689, 36.830502, 28.326111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421728, 37.161907, 28.541901>,  <28.457752, 37.360752, 28.671375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.421728, 37.161907, 28.541901>,  <28.361689, 36.830502, 28.326111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421728, 37.161907, 28.541901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095091, -0.555225, 0.826246,
		0.984087, -0.072719, -0.162123,
		0.150099, 0.828515, 0.539475,
		28.466757, 37.410461, 28.703743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904102, 36.628025, 28.732250>,  <28.361689, 36.830502, 28.326111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904102, 36.628025, 28.732250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726252, 36.940899, 28.906832>,  <28.619541, 37.128624, 29.011581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726252, 36.940899, 28.906832>,  <28.904102, 36.628025, 28.732250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726252, 36.940899, 28.906832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060415, -0.459973, 0.885875,
		0.893675, 0.420254, 0.157261,
		-0.444628, 0.782184, 0.436456,
		28.592863, 37.175552, 29.037769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380732, 36.756821, 29.280338>,  <28.904102, 36.628025, 28.732250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380732, 36.756821, 29.280338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032663, 36.930344, 29.373814>,  <28.823822, 37.034458, 29.429899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032663, 36.930344, 29.373814>,  <29.380732, 36.756821, 29.280338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032663, 36.930344, 29.373814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027611, -0.516434, 0.855882,
		0.491975, 0.738312, 0.461364,
		-0.870172, 0.433811, 0.233687,
		28.771612, 37.060486, 29.443920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588541, 37.044201, 29.862236>,  <29.380732, 36.756821, 29.280338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588541, 37.044201, 29.862236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189266, 37.020920, 29.868397>,  <28.949701, 37.006950, 29.872093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189266, 37.020920, 29.868397>,  <29.588541, 37.044201, 29.862236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189266, 37.020920, 29.868397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035380, -0.360095, 0.932244,
		-0.048710, 0.931098, 0.361501,
		-0.998186, -0.058200, 0.015402,
		28.889811, 37.003460, 29.873018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386564, 37.319542, 30.539618>,  <29.588541, 37.044201, 29.862236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386564, 37.319542, 30.539618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069529, 37.096935, 30.439947>,  <28.879307, 36.963371, 30.380144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069529, 37.096935, 30.439947>,  <29.386564, 37.319542, 30.539618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069529, 37.096935, 30.439947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110869, -0.270311, 0.956368,
		-0.599591, 0.785633, 0.152545,
		-0.792589, -0.556518, -0.249178,
		28.831751, 36.929981, 30.365194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996893, 37.496593, 31.074421>,  <29.386564, 37.319542, 30.539618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996893, 37.496593, 31.074421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822718, 37.174942, 30.912548>,  <28.718212, 36.981949, 30.815424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822718, 37.174942, 30.912548>,  <28.996893, 37.496593, 31.074421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822718, 37.174942, 30.912548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154366, -0.376182, 0.913596,
		-0.886886, 0.460283, 0.039673,
		-0.435437, -0.804131, -0.404682,
		28.692087, 36.933704, 30.791143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467947, 37.500645, 31.529284>,  <28.996893, 37.496593, 31.074421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467947, 37.500645, 31.529284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467218, 37.138882, 31.358620>,  <28.466782, 36.921822, 31.256222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467218, 37.138882, 31.358620>,  <28.467947, 37.500645, 31.529284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467218, 37.138882, 31.358620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082509, -0.425069, 0.901393,
		-0.996589, 0.036843, -0.073849,
		-0.001819, -0.904411, -0.426658,
		28.466673, 36.867558, 31.230621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930994, 37.180721, 31.806360>,  <28.467947, 37.500645, 31.529284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930994, 37.180721, 31.806360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178608, 36.884903, 31.700634>,  <28.327177, 36.707413, 31.637197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178608, 36.884903, 31.700634>,  <27.930994, 37.180721, 31.806360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178608, 36.884903, 31.700634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157611, -0.446693, 0.880695,
		-0.769385, -0.503523, -0.393080,
		0.619036, -0.739547, -0.264318,
		28.364319, 36.663040, 31.621338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501059, 36.638420, 31.708555>,  <27.930994, 37.180721, 31.806360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501059, 36.638420, 31.708555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879404, 36.543098, 31.796694>,  <28.106411, 36.485905, 31.849577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.879404, 36.543098, 31.796694>,  <27.501059, 36.638420, 31.708555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879404, 36.543098, 31.796694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314169, -0.501806, 0.805908,
		-0.081475, -0.831507, -0.549507,
		0.945864, -0.238300, 0.220349,
		28.163164, 36.471607, 31.862799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484062, 35.922123, 32.016571>,  <27.501059, 36.638420, 31.708555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484062, 35.922123, 32.016571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861841, 36.035686, 32.082794>,  <28.088509, 36.103825, 32.122528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861841, 36.035686, 32.082794>,  <27.484062, 35.922123, 32.016571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861841, 36.035686, 32.082794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003646, -0.512765, 0.858521,
		0.328636, -0.810227, -0.485315,
		0.944450, 0.283911, 0.165559,
		28.145176, 36.120861, 32.132462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808477, 35.316761, 32.103577>,  <27.484062, 35.922123, 32.016571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808477, 35.316761, 32.103577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022163, 35.601246, 32.286354>,  <28.150375, 35.771938, 32.396019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022163, 35.601246, 32.286354>,  <27.808477, 35.316761, 32.103577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022163, 35.601246, 32.286354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199288, -0.419343, 0.885684,
		0.821523, -0.564207, -0.082283,
		0.534214, 0.711212, 0.456939,
		28.182428, 35.814610, 32.423435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235331, 34.998299, 32.587387>,  <27.808477, 35.316761, 32.103577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235331, 34.998299, 32.587387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195337, 35.372562, 32.722763>,  <28.171341, 35.597122, 32.803989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195337, 35.372562, 32.722763>,  <28.235331, 34.998299, 32.587387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195337, 35.372562, 32.722763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182762, -0.351631, 0.918125,
		0.978060, 0.029942, 0.206160,
		-0.099982, 0.935660, 0.338444,
		28.165342, 35.653259, 32.824295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559425, 34.981133, 33.279476>,  <28.235331, 34.998299, 32.587387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559425, 34.981133, 33.279476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362202, 35.329067, 33.272785>,  <28.243868, 35.537827, 33.268772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362202, 35.329067, 33.272785>,  <28.559425, 34.981133, 33.279476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362202, 35.329067, 33.272785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275009, -0.137589, 0.951546,
		0.825386, 0.473769, 0.307052,
		-0.493060, 0.869835, -0.016726,
		28.214283, 35.590019, 33.267769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817425, 35.487171, 33.792713>,  <28.559425, 34.981133, 33.279476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817425, 35.487171, 33.792713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435373, 35.576958, 33.715416>,  <28.206142, 35.630829, 33.669037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435373, 35.576958, 33.715416>,  <28.817425, 35.487171, 33.792713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435373, 35.576958, 33.715416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199640, -0.005935, 0.979851,
		0.218793, 0.974465, 0.050481,
		-0.955130, 0.224462, -0.193243,
		28.148834, 35.644295, 33.657444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490927, 36.227028, 33.861721>,  <28.817425, 35.487171, 33.792713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490927, 36.227028, 33.861721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286083, 35.904915, 33.981232>,  <28.163177, 35.711647, 34.052937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286083, 35.904915, 33.981232>,  <28.490927, 36.227028, 33.861721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286083, 35.904915, 33.981232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037722, 0.326425, 0.944470,
		-0.858091, 0.494944, -0.136789,
		-0.512111, -0.805281, 0.298773,
		28.132450, 35.663330, 34.070862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176931, 36.118687, 33.692055>,  <28.490927, 36.227028, 33.861721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176931, 36.118687, 33.692055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051527, 35.815639, 33.463066>,  <28.976284, 35.633812, 33.325672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051527, 35.815639, 33.463066>,  <29.176931, 36.118687, 33.692055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051527, 35.815639, 33.463066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211010, 0.532210, -0.819894,
		0.925843, -0.377844, -0.006989,
		-0.313512, -0.757619, -0.572472,
		28.957474, 35.588352, 33.291325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739622, 35.767830, 33.957531>,  <29.176931, 36.118687, 33.692055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739622, 35.767830, 33.957531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000633, 36.066032, 33.903233>,  <30.157240, 36.244953, 33.870655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000633, 36.066032, 33.903233>,  <29.739622, 35.767830, 33.957531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000633, 36.066032, 33.903233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689735, -0.658521, -0.301023,
		-0.313806, 0.102796, -0.943906,
		0.652526, 0.745508, -0.135746,
		30.196392, 36.289684, 33.862511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162746, 35.723446, 33.338341>,  <29.739622, 35.767830, 33.957531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162746, 35.723446, 33.338341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378656, 35.933907, 33.601189>,  <30.508204, 36.060184, 33.758896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378656, 35.933907, 33.601189>,  <30.162746, 35.723446, 33.338341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378656, 35.933907, 33.601189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603178, -0.786256, 0.134083,
		0.587211, 0.323984, -0.741766,
		0.539777, 0.526152, 0.657118,
		30.540590, 36.091751, 33.798325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915928, 35.876953, 33.223141>,  <30.162746, 35.723446, 33.338341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915928, 35.876953, 33.223141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838356, 35.797440, 33.607407>,  <30.791813, 35.749729, 33.837967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838356, 35.797440, 33.607407>,  <30.915928, 35.876953, 33.223141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838356, 35.797440, 33.607407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823320, -0.565441, 0.049201,
		0.533418, 0.800475, 0.273321,
		-0.193931, -0.198786, 0.960664,
		30.780176, 35.737804, 33.895607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441055, 36.121975, 33.761196>,  <30.915928, 35.876953, 33.223141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441055, 36.121975, 33.761196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237862, 35.795437, 33.871132>,  <31.115946, 35.599514, 33.937092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237862, 35.795437, 33.871132>,  <31.441055, 36.121975, 33.761196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237862, 35.795437, 33.871132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852820, -0.521491, 0.027291,
		0.121047, 0.248251, 0.961103,
		-0.507982, -0.816344, 0.274839,
		31.085466, 35.550533, 33.953583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734989, 35.874207, 34.354744>,  <31.441055, 36.121975, 33.761196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734989, 35.874207, 34.354744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564615, 35.597866, 34.121059>,  <31.462391, 35.432060, 33.980850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564615, 35.597866, 34.121059>,  <31.734989, 35.874207, 34.354744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564615, 35.597866, 34.121059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885423, -0.451052, -0.112156,
		-0.186026, -0.565043, 0.803816,
		-0.425936, -0.690853, -0.584209,
		31.436834, 35.390610, 33.945797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034641, 35.271591, 33.931671>,  <31.734989, 35.874207, 34.354744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034641, 35.271591, 33.931671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414257, 35.278111, 33.805771>,  <32.642025, 35.282021, 33.730232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414257, 35.278111, 33.805771>,  <32.034641, 35.271591, 33.931671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414257, 35.278111, 33.805771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312991, -0.165967, 0.935143,
		-0.036996, -0.985997, -0.162610,
		0.949036, 0.016299, -0.314748,
		32.698967, 35.283001, 33.711346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437019, 34.553886, 34.117245>,  <32.034641, 35.271591, 33.931671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437019, 34.553886, 34.117245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710880, 34.844032, 34.088699>,  <32.875198, 35.018120, 34.071571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710880, 34.844032, 34.088699>,  <32.437019, 34.553886, 34.117245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710880, 34.844032, 34.088699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290730, -0.182001, 0.939336,
		0.668376, -0.663866, -0.335493,
		0.684653, 0.725368, -0.071360,
		32.916275, 35.061642, 34.067291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018368, 34.233635, 34.321095>,  <32.437019, 34.553886, 34.117245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018368, 34.233635, 34.321095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106571, 34.622097, 34.357399>,  <33.159492, 34.855175, 34.379181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106571, 34.622097, 34.357399>,  <33.018368, 34.233635, 34.321095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106571, 34.622097, 34.357399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440698, -0.182206, 0.878969,
		0.870150, -0.153823, -0.468163,
		0.220508, 0.971154, 0.090757,
		33.172722, 34.913445, 34.384624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678070, 34.226734, 34.448215>,  <33.018368, 34.233635, 34.321095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678070, 34.226734, 34.448215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587128, 34.595245, 34.574421>,  <33.532562, 34.816353, 34.650146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587128, 34.595245, 34.574421>,  <33.678070, 34.226734, 34.448215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587128, 34.595245, 34.574421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566832, -0.138256, 0.812149,
		0.791840, 0.363492, -0.490778,
		-0.227357, 0.921281, 0.315516,
		33.518921, 34.871628, 34.669075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358803, 34.626724, 34.699928>,  <33.678070, 34.226734, 34.448215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358803, 34.626724, 34.699928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029167, 34.796886, 34.849545>,  <33.831387, 34.898983, 34.939312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029167, 34.796886, 34.849545>,  <34.358803, 34.626724, 34.699928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029167, 34.796886, 34.849545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442830, 0.072049, 0.893706,
		0.353242, 0.902129, -0.247759,
		-0.824089, 0.425409, 0.374039,
		33.781940, 34.924511, 34.961758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585453, 34.987514, 35.317421>,  <34.358803, 34.626724, 34.699928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585453, 34.987514, 35.317421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188778, 35.002438, 35.366676>,  <33.950771, 35.011391, 35.396229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188778, 35.002438, 35.366676>,  <34.585453, 34.987514, 35.317421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188778, 35.002438, 35.366676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122992, -0.006287, 0.992388,
		0.037801, 0.999284, 0.001646,
		-0.991687, 0.037311, 0.123142,
		33.891273, 35.013630, 35.403618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550323, 35.448776, 35.857372>,  <34.585453, 34.987514, 35.317421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550323, 35.448776, 35.857372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202156, 35.252583, 35.840443>,  <33.993256, 35.134865, 35.830284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202156, 35.252583, 35.840443>,  <34.550323, 35.448776, 35.857372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202156, 35.252583, 35.840443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050714, 0.003816, 0.998706,
		-0.489690, 0.871441, -0.028196,
		-0.870420, -0.490486, -0.042325,
		33.941029, 35.105438, 35.827744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033688, 35.839020, 36.225262>,  <34.550323, 35.448776, 35.857372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033688, 35.839020, 36.225262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927242, 35.453518, 36.232952>,  <33.863377, 35.222218, 36.237564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927242, 35.453518, 36.232952>,  <34.033688, 35.839020, 36.225262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927242, 35.453518, 36.232952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211331, 0.077788, 0.974314,
		-0.940491, 0.255216, -0.224371,
		-0.266114, -0.963750, 0.019224,
		33.847408, 35.164394, 36.238720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356087, 35.907017, 36.574715>,  <34.033688, 35.839020, 36.225262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356087, 35.907017, 36.574715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460190, 35.522869, 36.614620>,  <33.522652, 35.292381, 36.638565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460190, 35.522869, 36.614620>,  <33.356087, 35.907017, 36.574715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460190, 35.522869, 36.614620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124306, 0.069143, 0.989832,
		-0.957505, -0.270009, -0.101385,
		0.260254, -0.960372, 0.099768,
		33.538265, 35.234756, 36.644550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914402, 35.618149, 37.063446>,  <33.356087, 35.907017, 36.574715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914402, 35.618149, 37.063446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215405, 35.354771, 37.058132>,  <33.396008, 35.196743, 37.054943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215405, 35.354771, 37.058132>,  <32.914402, 35.618149, 37.063446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215405, 35.354771, 37.058132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087998, -0.120523, 0.988803,
		-0.652676, -0.742914, -0.148636,
		0.752509, -0.658447, -0.013287,
		33.441158, 35.157238, 37.054146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754253, 34.972393, 37.436203>,  <32.914402, 35.618149, 37.063446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754253, 34.972393, 37.436203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153355, 34.983078, 37.460758>,  <33.392815, 34.989487, 37.475491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153355, 34.983078, 37.460758>,  <32.754253, 34.972393, 37.436203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153355, 34.983078, 37.460758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053151, -0.241607, 0.968917,
		0.040711, -0.970007, -0.239645,
		0.997756, 0.026708, 0.061393,
		33.452682, 34.991089, 37.479176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956635, 34.511353, 37.910984>,  <32.754253, 34.972393, 37.436203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956635, 34.511353, 37.910984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299057, 34.717625, 37.896870>,  <33.504509, 34.841389, 37.888401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299057, 34.717625, 37.896870>,  <32.956635, 34.511353, 37.910984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299057, 34.717625, 37.896870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138426, -0.162947, 0.976876,
		0.498004, -0.841144, -0.210875,
		0.856055, 0.515679, -0.035288,
		33.555874, 34.872330, 37.886284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321342, 34.136787, 38.340485>,  <32.956635, 34.511353, 37.910984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321342, 34.136787, 38.340485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525921, 34.479347, 38.312210>,  <33.648666, 34.684883, 38.295246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525921, 34.479347, 38.312210>,  <33.321342, 34.136787, 38.340485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525921, 34.479347, 38.312210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174047, -0.022688, 0.984476,
		0.841505, -0.515808, -0.160658,
		0.511445, 0.856404, -0.070683,
		33.679356, 34.736267, 38.291004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997387, 33.988930, 38.643585>,  <33.321342, 34.136787, 38.340485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997387, 33.988930, 38.643585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933945, 34.383526, 38.659950>,  <33.895878, 34.620285, 38.669769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933945, 34.383526, 38.659950>,  <33.997387, 33.988930, 38.643585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933945, 34.383526, 38.659950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320986, 0.012328, 0.947004,
		0.933709, 0.163335, -0.318606,
		-0.158607, 0.986493, 0.040917,
		33.886364, 34.679474, 38.672226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548672, 34.208355, 39.083012>,  <33.997387, 33.988930, 38.643585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548672, 34.208355, 39.083012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271931, 34.495689, 39.053772>,  <34.105888, 34.668091, 39.036228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271931, 34.495689, 39.053772>,  <34.548672, 34.208355, 39.083012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271931, 34.495689, 39.053772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127545, 0.221225, 0.966846,
		0.710688, 0.659589, -0.244674,
		-0.691849, 0.718333, -0.073095,
		34.064377, 34.711189, 39.031845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844063, 34.802177, 39.390755>,  <34.548672, 34.208355, 39.083012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844063, 34.802177, 39.390755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444771, 34.823963, 39.400288>,  <34.205196, 34.837036, 39.406006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444771, 34.823963, 39.400288>,  <34.844063, 34.802177, 39.390755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444771, 34.823963, 39.400288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033435, 0.182914, 0.982560,
		0.049157, 0.981619, -0.184411,
		-0.998231, 0.054465, 0.023829,
		34.145302, 34.840302, 39.407436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673023, 35.434288, 39.578957>,  <34.844063, 34.802177, 39.390755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673023, 35.434288, 39.578957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387531, 35.166817, 39.662346>,  <34.216236, 35.006336, 39.712379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387531, 35.166817, 39.662346>,  <34.673023, 35.434288, 39.578957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387531, 35.166817, 39.662346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191106, 0.100435, 0.976418,
		-0.673844, 0.736741, 0.056104,
		-0.713732, -0.668675, 0.208473,
		34.173412, 34.966213, 39.724888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609589, 35.640369, 40.282955>,  <34.673023, 35.434288, 39.578957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609589, 35.640369, 40.282955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352268, 35.334244, 40.274387>,  <34.197876, 35.150570, 40.269245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352268, 35.334244, 40.274387>,  <34.609589, 35.640369, 40.282955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352268, 35.334244, 40.274387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092615, -0.105564, 0.990090,
		-0.759987, 0.634946, 0.138789,
		-0.643305, -0.765310, -0.021422,
		34.159275, 35.104652, 40.267960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012627, 35.742916, 40.641926>,  <34.609589, 35.640369, 40.282955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012627, 35.742916, 40.641926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029518, 35.343513, 40.628017>,  <34.039654, 35.103874, 40.619671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029518, 35.343513, 40.628017>,  <34.012627, 35.742916, 40.641926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029518, 35.343513, 40.628017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168839, -0.027174, 0.985269,
		-0.984739, -0.047477, 0.167439,
		0.042228, -0.998503, -0.034775,
		34.042187, 35.043964, 40.617584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562332, 35.570087, 41.234261>,  <34.012627, 35.742916, 40.641926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562332, 35.570087, 41.234261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770733, 35.240238, 41.146114>,  <33.895771, 35.042328, 41.093227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770733, 35.240238, 41.146114>,  <33.562332, 35.570087, 41.234261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770733, 35.240238, 41.146114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187876, -0.141051, 0.972012,
		-0.832625, -0.547817, 0.081440,
		0.520997, -0.824622, -0.220364,
		33.927032, 34.992851, 41.080006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401997, 34.986874, 41.689674>,  <33.562332, 35.570087, 41.234261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401997, 34.986874, 41.689674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773872, 34.898258, 41.571960>,  <33.996998, 34.845089, 41.501331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773872, 34.898258, 41.571960>,  <33.401997, 34.986874, 41.689674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773872, 34.898258, 41.571960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256832, -0.182840, 0.949003,
		-0.264048, -0.957857, -0.113086,
		0.929686, -0.221538, -0.294287,
		34.052780, 34.831799, 41.483673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517456, 34.527363, 42.118099>,  <33.401997, 34.986874, 41.689674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517456, 34.527363, 42.118099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883530, 34.607227, 41.978058>,  <34.103172, 34.655148, 41.894032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883530, 34.607227, 41.978058>,  <33.517456, 34.527363, 42.118099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883530, 34.607227, 41.978058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364902, -0.041633, 0.930115,
		0.171136, -0.978979, -0.110960,
		0.915182, 0.199665, -0.350107,
		34.158085, 34.667126, 41.873024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985394, 33.926628, 42.420425>,  <33.517456, 34.527363, 42.118099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985394, 33.926628, 42.420425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198971, 34.239925, 42.293030>,  <34.327118, 34.427902, 42.216595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198971, 34.239925, 42.293030>,  <33.985394, 33.926628, 42.420425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198971, 34.239925, 42.293030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442835, 0.061825, 0.894469,
		0.720276, -0.618635, -0.313836,
		0.533947, 0.783242, -0.318485,
		34.359154, 34.474899, 42.197483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608158, 33.701015, 42.707397>,  <33.985394, 33.926628, 42.420425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608158, 33.701015, 42.707397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685886, 34.085827, 42.630718>,  <34.732521, 34.316711, 42.584713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685886, 34.085827, 42.630718>,  <34.608158, 33.701015, 42.707397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685886, 34.085827, 42.630718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434560, 0.090775, 0.896057,
		0.879431, -0.257422, -0.400418,
		0.194317, 0.962026, -0.191696,
		34.744183, 34.374435, 42.573208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331360, 33.867607, 42.752449>,  <34.608158, 33.701015, 42.707397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331360, 33.867607, 42.752449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160629, 34.222797, 42.820946>,  <35.058193, 34.435913, 42.862045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160629, 34.222797, 42.820946>,  <35.331360, 33.867607, 42.752449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160629, 34.222797, 42.820946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587827, 0.128522, 0.798712,
		0.687227, 0.441570, -0.576831,
		-0.426823, 0.887974, 0.171243,
		35.032581, 34.489189, 42.872318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884186, 34.306839, 43.008011>,  <35.331360, 33.867607, 42.752449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884186, 34.306839, 43.008011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550362, 34.469624, 43.156548>,  <35.350067, 34.567295, 43.245670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550362, 34.469624, 43.156548>,  <35.884186, 34.306839, 43.008011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550362, 34.469624, 43.156548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420125, 0.034110, 0.906825,
		0.356373, 0.912810, -0.199440,
		-0.834562, 0.406958, 0.371339,
		35.299992, 34.591709, 43.267948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109379, 34.890594, 43.447422>,  <35.884186, 34.306839, 43.008011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109379, 34.890594, 43.447422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743172, 34.779377, 43.563713>,  <35.523449, 34.712646, 43.633488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743172, 34.779377, 43.563713>,  <36.109379, 34.890594, 43.447422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743172, 34.779377, 43.563713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267275, 0.119702, 0.956157,
		-0.300652, 0.953081, -0.035275,
		-0.915518, -0.278043, 0.290723,
		35.468517, 34.695965, 43.650928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913746, 35.408058, 44.040157>,  <36.109379, 34.890594, 43.447422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913746, 35.408058, 44.040157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688457, 35.078457, 44.064793>,  <35.553284, 34.880695, 44.079575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688457, 35.078457, 44.064793>,  <35.913746, 35.408058, 44.040157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688457, 35.078457, 44.064793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080698, 0.019324, 0.996551,
		-0.822353, 0.566253, 0.055612,
		-0.563225, -0.824005, 0.061587,
		35.519489, 34.831257, 44.083267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413624, 35.636044, 44.520226>,  <35.913746, 35.408058, 44.040157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413624, 35.636044, 44.520226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443459, 35.237579, 44.501915>,  <35.461361, 34.998501, 44.490929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443459, 35.237579, 44.501915>,  <35.413624, 35.636044, 44.520226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443459, 35.237579, 44.501915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004679, -0.045549, 0.998951,
		-0.997203, -0.074724, 0.001263,
		0.074588, -0.996163, -0.045772,
		35.465836, 34.938732, 44.488182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066025, 35.433331, 45.158276>,  <35.413624, 35.636044, 44.520226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066025, 35.433331, 45.158276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235435, 35.081284, 45.072468>,  <35.337082, 34.870056, 45.020985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235435, 35.081284, 45.072468>,  <35.066025, 35.433331, 45.158276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235435, 35.081284, 45.072468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182078, -0.149267, 0.971888,
		-0.887398, -0.450677, 0.097032,
		0.423524, -0.880119, -0.214518,
		35.362492, 34.817249, 45.008114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790379, 34.931423, 45.641510>,  <35.066025, 35.433331, 45.158276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790379, 34.931423, 45.641510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146610, 34.799084, 45.516666>,  <35.360348, 34.719681, 45.441761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146610, 34.799084, 45.516666>,  <34.790379, 34.931423, 45.641510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146610, 34.799084, 45.516666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267941, -0.172874, 0.947798,
		-0.367532, -0.927715, -0.065311,
		0.890577, -0.330847, -0.312109,
		35.413784, 34.699829, 45.423035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950443, 34.500034, 46.151024>,  <34.790379, 34.931423, 45.641510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950443, 34.500034, 46.151024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297039, 34.554031, 45.958786>,  <35.504997, 34.586430, 45.843441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297039, 34.554031, 45.958786>,  <34.950443, 34.500034, 46.151024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297039, 34.554031, 45.958786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493381, -0.085076, 0.865643,
		0.075968, -0.987187, -0.140319,
		0.866490, 0.134992, -0.480596,
		35.556988, 34.594528, 45.814606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378147, 34.071842, 46.488964>,  <34.950443, 34.500034, 46.151024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378147, 34.071842, 46.488964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631004, 34.328365, 46.315010>,  <35.782719, 34.482277, 46.210640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631004, 34.328365, 46.315010>,  <35.378147, 34.071842, 46.488964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631004, 34.328365, 46.315010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532236, 0.048516, 0.845205,
		0.563133, -0.765750, -0.310656,
		0.632144, 0.641305, -0.434880,
		35.820648, 34.520756, 46.184547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040230, 33.920650, 46.748329>,  <35.378147, 34.071842, 46.488964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040230, 33.920650, 46.748329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060585, 34.298809, 46.619560>,  <36.072796, 34.525703, 46.542297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060585, 34.298809, 46.619560>,  <36.040230, 33.920650, 46.748329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060585, 34.298809, 46.619560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521474, 0.249761, 0.815895,
		0.851749, -0.209393, -0.480290,
		0.050885, 0.945396, -0.321927,
		36.075851, 34.582428, 46.522984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706093, 34.147636, 46.709728>,  <36.040230, 33.920650, 46.748329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706093, 34.147636, 46.709728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446575, 34.440048, 46.794262>,  <36.290863, 34.615494, 46.844982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446575, 34.440048, 46.794262>,  <36.706093, 34.147636, 46.709728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446575, 34.440048, 46.794262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349901, 0.039970, 0.935933,
		0.675745, 0.681177, -0.281719,
		-0.648797, 0.731027, 0.211335,
		36.251938, 34.659355, 46.857662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017670, 34.446747, 47.251427>,  <36.706093, 34.147636, 46.709728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017670, 34.446747, 47.251427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648010, 34.597073, 47.278862>,  <36.426212, 34.687267, 47.295322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648010, 34.597073, 47.278862>,  <37.017670, 34.446747, 47.251427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648010, 34.597073, 47.278862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178965, 0.267276, 0.946855,
		0.337512, 0.887313, -0.314262,
		-0.924152, 0.375817, 0.068589,
		36.370766, 34.709816, 47.299438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149277, 34.960842, 47.607498>,  <37.017670, 34.446747, 47.251427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149277, 34.960842, 47.607498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753880, 34.951122, 47.667233>,  <36.516644, 34.945290, 47.703072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753880, 34.951122, 47.667233>,  <37.149277, 34.960842, 47.607498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753880, 34.951122, 47.667233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148771, 0.023553, 0.988591,
		-0.027539, 0.999427, -0.019667,
		-0.988488, -0.024299, 0.149334,
		36.457333, 34.943832, 47.712032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045502, 35.381035, 48.169971>,  <37.149277, 34.960842, 47.607498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045502, 35.381035, 48.169971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725594, 35.141109, 48.160217>,  <36.533649, 34.997154, 48.154366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725594, 35.141109, 48.160217>,  <37.045502, 35.381035, 48.169971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725594, 35.141109, 48.160217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063282, -0.124628, 0.990183,
		-0.596961, 0.790377, 0.137631,
		-0.799771, -0.599810, -0.024381,
		36.485661, 34.961166, 48.152905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646309, 35.616669, 48.750957>,  <37.045502, 35.381035, 48.169971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646309, 35.616669, 48.750957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559998, 35.243500, 48.635654>,  <36.508213, 35.019596, 48.566475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559998, 35.243500, 48.635654>,  <36.646309, 35.616669, 48.750957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559998, 35.243500, 48.635654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196198, -0.330613, 0.923148,
		-0.956529, 0.142636, 0.254375,
		-0.215774, -0.932925, -0.288256,
		36.495266, 34.963623, 48.549179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273190, 35.311768, 49.315033>,  <36.646309, 35.616669, 48.750957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273190, 35.311768, 49.315033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390030, 34.986183, 49.114178>,  <36.460133, 34.790833, 48.993664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390030, 34.986183, 49.114178>,  <36.273190, 35.311768, 49.315033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390030, 34.986183, 49.114178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260534, -0.437461, 0.860668,
		-0.920218, -0.382225, 0.084283,
		0.292099, -0.813961, -0.502142,
		36.477661, 34.741997, 48.963535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878326, 34.777786, 49.641235>,  <36.273190, 35.311768, 49.315033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878326, 34.777786, 49.641235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189163, 34.604282, 49.458817>,  <36.375668, 34.500179, 49.349365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189163, 34.604282, 49.458817>,  <35.878326, 34.777786, 49.641235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189163, 34.604282, 49.458817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300927, -0.380335, 0.874522,
		-0.552782, -0.816822, -0.165026,
		0.777094, -0.433759, -0.456046,
		36.422291, 34.474155, 49.322002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943207, 34.075626, 49.754810>,  <35.878326, 34.777786, 49.641235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943207, 34.075626, 49.754810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305374, 34.226509, 49.676907>,  <36.522675, 34.317039, 49.630165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305374, 34.226509, 49.676907>,  <35.943207, 34.075626, 49.754810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305374, 34.226509, 49.676907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333095, -0.346817, 0.876793,
		0.263189, -0.858737, -0.439661,
		0.905417, 0.377211, -0.194763,
		36.577000, 34.339672, 49.618477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406055, 33.533257, 49.808052>,  <35.943207, 34.075626, 49.754810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406055, 33.533257, 49.808052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609642, 33.874878, 49.851036>,  <36.731792, 34.079849, 49.876827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609642, 33.874878, 49.851036>,  <36.406055, 33.533257, 49.808052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609642, 33.874878, 49.851036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533920, -0.411153, 0.738839,
		0.675191, -0.318666, -0.665258,
		0.508966, 0.854052, 0.107464,
		36.762333, 34.131092, 49.883274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159748, 33.439156, 49.833385>,  <36.406055, 33.533257, 49.808052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159748, 33.439156, 49.833385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056129, 33.753792, 50.057587>,  <36.993958, 33.942574, 50.192108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056129, 33.753792, 50.057587>,  <37.159748, 33.439156, 49.833385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056129, 33.753792, 50.057587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573335, -0.341784, 0.744627,
		0.777290, 0.514251, -0.362443,
		-0.259048, 0.786593, 0.560504,
		36.978416, 33.989769, 50.225739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759182, 33.907642, 49.996086>,  <37.159748, 33.439156, 49.833385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759182, 33.907642, 49.996086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464371, 33.860767, 50.262337>,  <37.287483, 33.832642, 50.422085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464371, 33.860767, 50.262337>,  <37.759182, 33.907642, 49.996086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464371, 33.860767, 50.262337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630473, -0.474034, 0.614651,
		0.243498, 0.872673, 0.423261,
		-0.737030, -0.117189, 0.665623,
		37.243263, 33.825611, 50.462025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896320, 33.134117, 50.222717>,  <37.759182, 33.907642, 49.996086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896320, 33.134117, 50.222717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575447, 33.141777, 50.461426>,  <37.382923, 33.146374, 50.604649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575447, 33.141777, 50.461426>,  <37.896320, 33.134117, 50.222717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575447, 33.141777, 50.461426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340955, -0.835191, -0.431515,
		0.490150, -0.549626, 0.676509,
		-0.802186, 0.019151, 0.596767,
		37.334793, 33.147522, 50.640457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695164, 32.493168, 50.588226>,  <37.896320, 33.134117, 50.222717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695164, 32.493168, 50.588226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371284, 32.712799, 50.505371>,  <37.176956, 32.844578, 50.455658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371284, 32.712799, 50.505371>,  <37.695164, 32.493168, 50.588226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371284, 32.712799, 50.505371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347176, -0.732755, -0.585268,
		-0.473142, -0.401974, 0.783935,
		-0.809694, 0.549078, -0.207142,
		37.128376, 32.877522, 50.443230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413895, 32.109776, 50.012386>,  <37.695164, 32.493168, 50.588226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413895, 32.109776, 50.012386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432892, 31.710625, 50.030243>,  <37.444290, 31.471134, 50.040958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432892, 31.710625, 50.030243>,  <37.413895, 32.109776, 50.012386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432892, 31.710625, 50.030243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128919, -0.038194, -0.990919,
		0.990517, 0.052813, 0.126831,
		0.047489, -0.997874, 0.044641,
		37.447140, 31.411263, 50.043636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043156, 31.864466, 49.790985>,  <37.413895, 32.109776, 50.012386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043156, 31.864466, 49.790985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724518, 31.654509, 49.671036>,  <37.533337, 31.528534, 49.599064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724518, 31.654509, 49.671036>,  <38.043156, 31.864466, 49.790985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724518, 31.654509, 49.671036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336320, 0.027396, -0.941349,
		0.502325, -0.850726, 0.154709,
		-0.796592, -0.524895, -0.299878,
		37.485538, 31.497040, 49.581074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269260, 31.299145, 49.435261>,  <38.043156, 31.864466, 49.790985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269260, 31.299145, 49.435261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904434, 31.399675, 49.305664>,  <37.685539, 31.459993, 49.227905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904434, 31.399675, 49.305664>,  <38.269260, 31.299145, 49.435261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904434, 31.399675, 49.305664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340624, 0.024495, -0.939881,
		-0.228283, -0.967592, -0.107950,
		-0.912065, 0.251329, -0.323993,
		37.630814, 31.475075, 49.208466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131485, 31.029390, 48.834030>,  <38.269260, 31.299145, 49.435261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131485, 31.029390, 48.834030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853622, 31.317127, 48.833298>,  <37.686905, 31.489769, 48.832859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853622, 31.317127, 48.833298>,  <38.131485, 31.029390, 48.834030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853622, 31.317127, 48.833298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145446, 0.137965, -0.979700,
		-0.704488, -0.680817, -0.200463,
		-0.694653, 0.719343, -0.001828,
		37.645226, 31.532930, 48.832748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604454, 31.056454, 48.262886>,  <38.131485, 31.029390, 48.834030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604454, 31.056454, 48.262886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540279, 31.439812, 48.357327>,  <37.501774, 31.669827, 48.413990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540279, 31.439812, 48.357327>,  <37.604454, 31.056454, 48.262886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540279, 31.439812, 48.357327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051235, 0.230787, -0.971654,
		-0.985715, -0.167986, 0.012077,
		-0.160437, 0.958393, 0.236097,
		37.492149, 31.727329, 48.428154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135292, 31.261612, 47.780800>,  <37.604454, 31.056454, 48.262886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135292, 31.261612, 47.780800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270977, 31.618771, 47.899235>,  <37.352386, 31.833067, 47.970295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270977, 31.618771, 47.899235>,  <37.135292, 31.261612, 47.780800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270977, 31.618771, 47.899235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029624, 0.324729, -0.945343,
		-0.940243, 0.311902, 0.136603,
		0.339213, 0.892899, 0.296084,
		37.372742, 31.886641, 47.988060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734173, 31.815388, 47.407730>,  <37.135292, 31.261612, 47.780800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734173, 31.815388, 47.407730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088970, 31.972763, 47.504429>,  <37.301849, 32.067188, 47.562447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088970, 31.972763, 47.504429>,  <36.734173, 31.815388, 47.407730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088970, 31.972763, 47.504429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093172, 0.360268, -0.928184,
		-0.452277, 0.845821, 0.282899,
		0.886997, 0.393438, 0.241748,
		37.355068, 32.090794, 47.576954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764893, 32.328545, 46.852325>,  <36.734173, 31.815388, 47.407730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764893, 32.328545, 46.852325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132732, 32.340099, 47.009037>,  <37.353439, 32.347034, 47.103065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132732, 32.340099, 47.009037>,  <36.764893, 32.328545, 46.852325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132732, 32.340099, 47.009037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365888, 0.300084, -0.880952,
		-0.143018, 0.953475, 0.265388,
		0.919604, 0.028889, 0.391782,
		37.408615, 32.348766, 47.126572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904488, 32.966084, 46.880077>,  <36.764893, 32.328545, 46.852325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904488, 32.966084, 46.880077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252491, 32.772263, 46.843655>,  <37.461292, 32.655972, 46.821800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252491, 32.772263, 46.843655>,  <36.904488, 32.966084, 46.880077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252491, 32.772263, 46.843655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104008, 0.360912, -0.926782,
		0.481940, 0.796837, 0.364395,
		0.870009, -0.484554, -0.091061,
		37.513493, 32.626896, 46.816338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270699, 33.512924, 46.552238>,  <36.904488, 32.966084, 46.880077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270699, 33.512924, 46.552238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497360, 33.185650, 46.513302>,  <37.633358, 32.989285, 46.489941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497360, 33.185650, 46.513302>,  <37.270699, 33.512924, 46.552238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497360, 33.185650, 46.513302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404649, 0.379249, -0.832123,
		0.717748, 0.432137, 0.545982,
		0.566654, -0.818186, -0.097341,
		37.667358, 32.940193, 46.484100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984421, 33.666061, 46.495029>,  <37.270699, 33.512924, 46.552238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984421, 33.666061, 46.495029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910442, 33.320068, 46.308437>,  <37.866055, 33.112473, 46.196480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910442, 33.320068, 46.308437>,  <37.984421, 33.666061, 46.495029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910442, 33.320068, 46.308437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406354, 0.364886, -0.837696,
		0.894803, -0.344483, 0.284005,
		-0.184942, -0.864979, -0.466483,
		37.854961, 33.060574, 46.168491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458683, 33.670155, 45.967270>,  <37.984421, 33.666061, 46.495029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458683, 33.670155, 45.967270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236423, 33.354595, 45.862282>,  <38.103069, 33.165260, 45.799290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236423, 33.354595, 45.862282>,  <38.458683, 33.670155, 45.967270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236423, 33.354595, 45.862282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263344, 0.132438, -0.955568,
		0.788610, -0.600078, 0.134164,
		-0.555647, -0.788902, -0.262469,
		38.069729, 33.117924, 45.783543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838245, 33.429340, 45.451141>,  <38.458683, 33.670155, 45.967270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838245, 33.429340, 45.451141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491646, 33.233551, 45.411976>,  <38.283684, 33.116077, 45.388477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491646, 33.233551, 45.411976>,  <38.838245, 33.429340, 45.451141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491646, 33.233551, 45.411976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074646, 0.066887, -0.994964,
		0.493563, -0.869446, -0.021420,
		-0.866501, -0.489478, -0.097914,
		38.231697, 33.086708, 45.382603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997517, 32.774223, 45.095139>,  <38.838245, 33.429340, 45.451141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997517, 32.774223, 45.095139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625214, 32.911480, 45.044636>,  <38.401833, 32.993832, 45.014332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625214, 32.911480, 45.044636>,  <38.997517, 32.774223, 45.095139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625214, 32.911480, 45.044636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098517, -0.097192, -0.990378,
		-0.352108, -0.934243, 0.056657,
		-0.930760, 0.343138, -0.126261,
		38.345985, 33.014420, 45.006756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824642, 32.550457, 44.414375>,  <38.997517, 32.774223, 45.095139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824642, 32.550457, 44.414375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527431, 32.810493, 44.478001>,  <38.349106, 32.966515, 44.516178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527431, 32.810493, 44.478001>,  <38.824642, 32.550457, 44.414375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527431, 32.810493, 44.478001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125273, 0.098378, -0.987233,
		-0.657435, -0.753465, 0.008341,
		-0.743025, 0.650087, 0.159066,
		38.304523, 33.005520, 44.525719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233845, 32.344116, 44.054455>,  <38.824642, 32.550457, 44.414375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233845, 32.344116, 44.054455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187809, 32.739254, 44.096260>,  <38.160187, 32.976337, 44.121342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187809, 32.739254, 44.096260>,  <38.233845, 32.344116, 44.054455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187809, 32.739254, 44.096260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318904, 0.062899, -0.945698,
		-0.940773, -0.142170, 0.307788,
		-0.115091, 0.987842, 0.104512,
		38.153282, 33.035606, 44.127613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598648, 32.544422, 43.723690>,  <38.233845, 32.344116, 44.054455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598648, 32.544422, 43.723690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821499, 32.874664, 43.759430>,  <37.955208, 33.072811, 43.780872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821499, 32.874664, 43.759430>,  <37.598648, 32.544422, 43.723690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821499, 32.874664, 43.759430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243447, 0.265246, -0.932941,
		-0.793944, 0.498011, 0.348767,
		0.557123, 0.825609, 0.089351,
		37.988636, 33.122349, 43.786236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167385, 33.119080, 43.521927>,  <37.598648, 32.544422, 43.723690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167385, 33.119080, 43.521927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532990, 33.273819, 43.473053>,  <37.752354, 33.366665, 43.443729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532990, 33.273819, 43.473053>,  <37.167385, 33.119080, 43.521927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532990, 33.273819, 43.473053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255055, 0.313733, -0.914614,
		-0.315486, 0.867132, 0.385423,
		0.914011, 0.386852, -0.122188,
		37.807194, 33.389874, 43.436398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045200, 33.718925, 43.290192>,  <37.167385, 33.119080, 43.521927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045200, 33.718925, 43.290192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434856, 33.679058, 43.209080>,  <37.668648, 33.655136, 43.160412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434856, 33.679058, 43.209080>,  <37.045200, 33.718925, 43.290192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434856, 33.679058, 43.209080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157643, 0.343137, -0.925962,
		0.161874, 0.933982, 0.318551,
		0.974138, -0.099672, -0.202781,
		37.727097, 33.649155, 43.148247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260609, 34.410042, 43.133648>,  <37.045200, 33.718925, 43.290192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260609, 34.410042, 43.133648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481544, 34.127045, 42.957298>,  <37.614105, 33.957245, 42.851486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481544, 34.127045, 42.957298>,  <37.260609, 34.410042, 43.133648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481544, 34.127045, 42.957298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026972, 0.513428, -0.857709,
		0.833180, 0.485642, 0.264506,
		0.552344, -0.707492, -0.440877,
		37.647247, 33.914799, 42.825035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631260, 34.859425, 42.564949>,  <37.260609, 34.410042, 43.133648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631260, 34.859425, 42.564949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702496, 34.475224, 42.479420>,  <37.745235, 34.244701, 42.428101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702496, 34.475224, 42.479420>,  <37.631260, 34.859425, 42.564949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702496, 34.475224, 42.479420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091758, 0.232563, -0.968243,
		0.979727, 0.152811, 0.129550,
		0.178086, -0.960501, -0.213827,
		37.755920, 34.187073, 42.415272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177856, 34.809837, 42.144836>,  <37.631260, 34.859425, 42.564949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177856, 34.809837, 42.144836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968208, 34.473743, 42.089268>,  <37.842419, 34.272087, 42.055927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968208, 34.473743, 42.089268>,  <38.177856, 34.809837, 42.144836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968208, 34.473743, 42.089268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054920, 0.196128, -0.979039,
		0.849872, -0.505504, -0.148941,
		-0.524120, -0.840237, -0.138922,
		37.810974, 34.221672, 42.047592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476196, 34.480705, 41.577267>,  <38.177856, 34.809837, 42.144836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476196, 34.480705, 41.577267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118088, 34.307152, 41.617741>,  <37.903225, 34.203018, 41.642025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118088, 34.307152, 41.617741>,  <38.476196, 34.480705, 41.577267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118088, 34.307152, 41.617741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077586, -0.071812, -0.994396,
		0.438723, -0.898100, 0.030627,
		-0.895267, -0.433888, 0.101186,
		37.849506, 34.176987, 41.648098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558846, 33.978428, 41.156502>,  <38.476196, 34.480705, 41.577267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558846, 33.978428, 41.156502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163391, 34.016949, 41.202690>,  <37.926121, 34.040062, 41.230404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163391, 34.016949, 41.202690>,  <38.558846, 33.978428, 41.156502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163391, 34.016949, 41.202690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133601, -0.210340, -0.968457,
		-0.068974, -0.972874, 0.220814,
		-0.988632, 0.096299, 0.115469,
		37.866802, 34.045837, 41.237331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282372, 33.404789, 40.876034>,  <38.558846, 33.978428, 41.156502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282372, 33.404789, 40.876034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982250, 33.669209, 40.872982>,  <37.802177, 33.827862, 40.871151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982250, 33.669209, 40.872982>,  <38.282372, 33.404789, 40.876034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982250, 33.669209, 40.872982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203849, -0.242324, -0.948538,
		-0.628884, -0.710133, 0.316571,
		-0.750300, 0.661053, -0.007633,
		37.757160, 33.867523, 40.870693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703808, 33.043564, 40.439278>,  <38.282372, 33.404789, 40.876034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703808, 33.043564, 40.439278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622551, 33.434841, 40.456619>,  <37.573795, 33.669605, 40.467022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622551, 33.434841, 40.456619>,  <37.703808, 33.043564, 40.439278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622551, 33.434841, 40.456619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488308, -0.062834, -0.870406,
		-0.848699, -0.197983, 0.490422,
		-0.203141, 0.978190, 0.043350,
		37.561607, 33.728298, 40.469624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135712, 33.055248, 40.072193>,  <37.703808, 33.043564, 40.439278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135712, 33.055248, 40.072193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226753, 33.444569, 40.084106>,  <37.281380, 33.678162, 40.091255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226753, 33.444569, 40.084106>,  <37.135712, 33.055248, 40.072193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226753, 33.444569, 40.084106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694279, 0.183647, -0.695881,
		-0.682770, 0.137708, 0.717539,
		0.227602, 0.973299, 0.029781,
		37.295033, 33.736557, 40.093040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465008, 33.543995, 40.081451>,  <37.135712, 33.055248, 40.072193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465008, 33.543995, 40.081451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802361, 33.706795, 39.941135>,  <37.004772, 33.804474, 39.856945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802361, 33.706795, 39.941135>,  <36.465008, 33.543995, 40.081451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802361, 33.706795, 39.941135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496906, 0.342422, -0.797391,
		-0.204417, 0.846818, 0.491033,
		0.843385, 0.406997, -0.350792,
		37.055378, 33.828896, 39.835899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199055, 34.067352, 39.779163>,  <36.465008, 33.543995, 40.081451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199055, 34.067352, 39.779163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563213, 34.088825, 39.615070>,  <36.781708, 34.101711, 39.516613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563213, 34.088825, 39.615070>,  <36.199055, 34.067352, 39.779163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563213, 34.088825, 39.615070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382767, 0.485680, -0.785878,
		0.157054, 0.872487, 0.462711,
		0.910398, 0.053685, -0.410237,
		36.836334, 34.104931, 39.492001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311165, 34.824924, 39.583366>,  <36.199055, 34.067352, 39.779163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311165, 34.824924, 39.583366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540154, 34.577702, 39.367855>,  <36.677547, 34.429367, 39.238548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540154, 34.577702, 39.367855>,  <36.311165, 34.824924, 39.583366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540154, 34.577702, 39.367855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472789, 0.288029, -0.832772,
		0.669883, 0.731468, -0.127321,
		0.572474, -0.618056, -0.538776,
		36.711895, 34.392284, 39.206223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502541, 35.260338, 38.978436>,  <36.311165, 34.824924, 39.583366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502541, 35.260338, 38.978436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586941, 34.896679, 38.834808>,  <36.637581, 34.678482, 38.748631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586941, 34.896679, 38.834808>,  <36.502541, 35.260338, 38.978436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586941, 34.896679, 38.834808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291950, 0.291959, -0.910783,
		0.932869, 0.297007, -0.203821,
		0.211001, -0.909146, -0.359070,
		36.650242, 34.623936, 38.727089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923523, 35.249336, 38.215195>,  <36.502541, 35.260338, 38.978436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923523, 35.249336, 38.215195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733250, 34.899712, 38.254688>,  <36.619087, 34.689938, 38.278385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733250, 34.899712, 38.254688>,  <36.923523, 35.249336, 38.215195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733250, 34.899712, 38.254688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350096, 0.085160, -0.932835,
		0.806944, -0.478299, -0.346514,
		-0.475683, -0.874058, 0.098732,
		36.590546, 34.637493, 38.284309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059021, 34.993004, 37.542915>,  <36.923523, 35.249336, 38.215195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059021, 34.993004, 37.542915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796246, 34.719330, 37.669613>,  <36.638580, 34.555126, 37.745632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796246, 34.719330, 37.669613>,  <37.059021, 34.993004, 37.542915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796246, 34.719330, 37.669613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249064, -0.199588, -0.947698,
		0.711619, -0.701466, -0.039290,
		-0.656936, -0.684186, 0.316741,
		36.599163, 34.514072, 37.764633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245472, 34.354637, 37.226974>,  <37.059021, 34.993004, 37.542915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245472, 34.354637, 37.226974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859303, 34.333679, 37.329121>,  <36.627602, 34.321102, 37.390408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859303, 34.333679, 37.329121>,  <37.245472, 34.354637, 37.226974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859303, 34.333679, 37.329121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243906, -0.164242, -0.955790,
		0.092023, -0.985027, 0.145783,
		-0.965423, -0.052397, 0.255368,
		36.569675, 34.317959, 37.405731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078045, 33.716705, 36.929001>,  <37.245472, 34.354637, 37.226974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078045, 33.716705, 36.929001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734734, 33.914787, 36.982864>,  <36.528748, 34.033634, 37.015182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734734, 33.914787, 36.982864>,  <37.078045, 33.716705, 36.929001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734734, 33.914787, 36.982864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293549, -0.258512, -0.920326,
		-0.420937, -0.829425, 0.367241,
		-0.858278, 0.495203, 0.134660,
		36.477249, 34.063347, 37.023262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578697, 33.348396, 36.654572>,  <37.078045, 33.716705, 36.929001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578697, 33.348396, 36.654572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413685, 33.712749, 36.650364>,  <36.314678, 33.931362, 36.647839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413685, 33.712749, 36.650364>,  <36.578697, 33.348396, 36.654572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413685, 33.712749, 36.650364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359128, -0.173240, -0.917069,
		-0.837165, -0.374540, 0.398590,
		-0.412531, 0.910883, -0.010523,
		36.289925, 33.986015, 36.647205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940937, 33.228622, 36.404480>,  <36.578697, 33.348396, 36.654572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940937, 33.228622, 36.404480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013973, 33.620441, 36.370682>,  <36.057796, 33.855534, 36.350403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013973, 33.620441, 36.370682>,  <35.940937, 33.228622, 36.404480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013973, 33.620441, 36.370682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380096, -0.008930, -0.924904,
		-0.906746, 0.200996, 0.370693,
		0.182591, 0.979551, -0.084495,
		36.068752, 33.914307, 36.345333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390530, 33.339947, 36.007164>,  <35.940937, 33.228622, 36.404480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390530, 33.339947, 36.007164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652935, 33.638405, 35.961708>,  <35.810379, 33.817482, 35.934433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652935, 33.638405, 35.961708>,  <35.390530, 33.339947, 36.007164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652935, 33.638405, 35.961708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160758, -0.008978, -0.986953,
		-0.737433, 0.665719, 0.114060,
		0.656010, 0.746148, -0.113640,
		35.849739, 33.862247, 35.927616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046768, 33.789700, 35.547813>,  <35.390530, 33.339947, 36.007164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046768, 33.789700, 35.547813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431587, 33.896389, 35.524773>,  <35.662479, 33.960403, 35.510948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431587, 33.896389, 35.524773>,  <35.046768, 33.789700, 35.547813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431587, 33.896389, 35.524773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055543, -0.015246, -0.998340,
		-0.267162, 0.963652, 0.000148,
		0.962050, 0.266726, -0.057598,
		35.720203, 33.976406, 35.507492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126858, 34.410820, 35.078106>,  <35.046768, 33.789700, 35.547813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126858, 34.410820, 35.078106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503304, 34.275665, 35.073540>,  <35.729172, 34.194572, 35.070801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503304, 34.275665, 35.073540>,  <35.126858, 34.410820, 35.078106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503304, 34.275665, 35.073540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015287, 0.076268, -0.996970,
		0.337735, 0.938091, 0.076942,
		0.941117, -0.337888, -0.011418,
		35.785637, 34.174297, 35.070114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415588, 34.848755, 34.653881>,  <35.126858, 34.410820, 35.078106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415588, 34.848755, 34.653881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682270, 34.550629, 34.652451>,  <35.842281, 34.371754, 34.651592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682270, 34.550629, 34.652451>,  <35.415588, 34.848755, 34.653881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682270, 34.550629, 34.652451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009930, 0.013686, -0.999857,
		0.745254, 0.666576, 0.016526,
		0.666707, -0.745311, -0.003580,
		35.882282, 34.327034, 34.651375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096912, 35.059975, 34.252560>,  <35.415588, 34.848755, 34.653881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096912, 35.059975, 34.252560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054688, 34.662262, 34.258934>,  <36.029354, 34.423634, 34.262760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054688, 34.662262, 34.258934>,  <36.096912, 35.059975, 34.252560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054688, 34.662262, 34.258934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087395, -0.025243, -0.995854,
		0.990565, -0.103730, 0.089560,
		-0.105560, -0.994285, 0.015940,
		36.023018, 34.363976, 34.263718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523380, 34.827980, 33.718739>,  <36.096912, 35.059975, 34.252560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523380, 34.827980, 33.718739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314686, 34.494755, 33.792278>,  <36.189468, 34.294819, 33.836403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314686, 34.494755, 33.792278>,  <36.523380, 34.827980, 33.718739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314686, 34.494755, 33.792278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182902, -0.319723, -0.929690,
		0.833272, -0.451423, 0.319179,
		-0.521733, -0.833063, 0.183850,
		36.158165, 34.244835, 33.847435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903851, 34.119579, 33.679024>,  <36.523380, 34.827980, 33.718739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903851, 34.119579, 33.679024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516788, 34.042400, 33.614021>,  <36.284550, 33.996094, 33.575020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516788, 34.042400, 33.614021>,  <36.903851, 34.119579, 33.679024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516788, 34.042400, 33.614021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223262, -0.355129, -0.907765,
		0.117436, -0.914689, 0.386721,
		-0.967658, -0.192945, -0.162510,
		36.226490, 33.984516, 33.565269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535728, 34.278282, 33.519405>,  <36.903851, 34.119579, 33.679024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535728, 34.278282, 33.519405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758915, 34.604546, 33.458237>,  <37.892826, 34.800304, 33.421535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758915, 34.604546, 33.458237>,  <37.535728, 34.278282, 33.519405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758915, 34.604546, 33.458237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521559, -0.201340, 0.829119,
		0.645487, -0.542373, -0.537753,
		0.557963, 0.815656, -0.152917,
		37.926304, 34.849243, 33.412361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222382, 34.089264, 33.672920>,  <37.535728, 34.278282, 33.519405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222382, 34.089264, 33.672920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194252, 34.487293, 33.700859>,  <38.177372, 34.726112, 33.717621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194252, 34.487293, 33.700859>,  <38.222382, 34.089264, 33.672920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194252, 34.487293, 33.700859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438236, -0.032079, 0.898287,
		0.896104, 0.093784, -0.433822,
		-0.070328, 0.995076, 0.069846,
		38.173153, 34.785816, 33.721813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932514, 34.267735, 34.063568>,  <38.222382, 34.089264, 33.672920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932514, 34.267735, 34.063568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685532, 34.581440, 34.087833>,  <38.537342, 34.769665, 34.102394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685532, 34.581440, 34.087833>,  <38.932514, 34.267735, 34.063568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685532, 34.581440, 34.087833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344299, 0.200112, 0.917286,
		0.707253, 0.587272, -0.393581,
		-0.617456, 0.784262, 0.060667,
		38.500294, 34.816719, 34.106033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344563, 34.881336, 34.202602>,  <38.932514, 34.267735, 34.063568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344563, 34.881336, 34.202602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984409, 34.945621, 34.364334>,  <38.768318, 34.984192, 34.461372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984409, 34.945621, 34.364334>,  <39.344563, 34.881336, 34.202602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984409, 34.945621, 34.364334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432951, 0.238756, 0.869223,
		0.043159, 0.957689, -0.284552,
		-0.900384, 0.160712, 0.404328,
		38.714294, 34.993835, 34.485634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452423, 35.459145, 34.584976>,  <39.344563, 34.881336, 34.202602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452423, 35.459145, 34.584976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139954, 35.265087, 34.742153>,  <38.952473, 35.148651, 34.836460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139954, 35.265087, 34.742153>,  <39.452423, 35.459145, 34.584976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139954, 35.265087, 34.742153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354293, 0.173738, 0.918853,
		-0.514048, 0.856998, 0.036165,
		-0.781173, -0.485148, 0.392939,
		38.905602, 35.119541, 34.860035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219208, 35.991623, 35.116489>,  <39.452423, 35.459145, 34.584976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219208, 35.991623, 35.116489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071964, 35.630268, 35.204475>,  <38.983620, 35.413456, 35.257267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071964, 35.630268, 35.204475>,  <39.219208, 35.991623, 35.116489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071964, 35.630268, 35.204475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136934, 0.181324, 0.973843,
		-0.919644, 0.388601, 0.056958,
		-0.368109, -0.903389, 0.219966,
		38.961533, 35.359253, 35.270466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867558, 36.101860, 35.709469>,  <39.219208, 35.991623, 35.116489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867558, 36.101860, 35.709469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871502, 35.702370, 35.729298>,  <38.873871, 35.462677, 35.741196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871502, 35.702370, 35.729298>,  <38.867558, 36.101860, 35.709469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871502, 35.702370, 35.729298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237326, 0.050496, 0.970117,
		-0.971380, 0.002195, 0.237521,
		0.009864, -0.998722, 0.049572,
		38.874462, 35.402752, 35.744171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499298, 35.917141, 36.237156>,  <38.867558, 36.101860, 35.709469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499298, 35.917141, 36.237156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704319, 35.577198, 36.188110>,  <38.827332, 35.373234, 36.158684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704319, 35.577198, 36.188110>,  <38.499298, 35.917141, 36.237156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704319, 35.577198, 36.188110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242167, 0.006073, 0.970216,
		-0.823801, -0.526977, 0.208920,
		0.512550, -0.849858, -0.122613,
		38.858086, 35.322239, 36.151325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234734, 35.500458, 36.758930>,  <38.499298, 35.917141, 36.237156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234734, 35.500458, 36.758930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595173, 35.363342, 36.652710>,  <38.811436, 35.281075, 36.588978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595173, 35.363342, 36.652710>,  <38.234734, 35.500458, 36.758930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595173, 35.363342, 36.652710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273891, -0.024816, 0.961441,
		-0.336162, -0.939084, 0.071525,
		0.901099, -0.342790, -0.265549,
		38.865501, 35.260506, 36.573044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399281, 35.059750, 37.206848>,  <38.234734, 35.500458, 36.758930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399281, 35.059750, 37.206848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769382, 35.082779, 37.056866>,  <38.991444, 35.096596, 36.966877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769382, 35.082779, 37.056866>,  <38.399281, 35.059750, 37.206848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769382, 35.082779, 37.056866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379110, -0.175446, 0.908567,
		-0.013474, -0.982804, -0.184159,
		0.925254, 0.057575, -0.374955,
		39.046959, 35.100052, 36.944378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724636, 34.473434, 37.471382>,  <38.399281, 35.059750, 37.206848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724636, 34.473434, 37.471382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016640, 34.719715, 37.352722>,  <39.191841, 34.867485, 37.281525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016640, 34.719715, 37.352722>,  <38.724636, 34.473434, 37.471382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016640, 34.719715, 37.352722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559339, -0.288821, 0.776996,
		0.392719, -0.733140, -0.555227,
		0.730008, 0.615701, -0.296648,
		39.235641, 34.904427, 37.263729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329811, 34.064426, 37.630627>,  <38.724636, 34.473434, 37.471382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329811, 34.064426, 37.630627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468800, 34.437973, 37.596794>,  <39.552193, 34.662102, 37.576496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468800, 34.437973, 37.596794>,  <39.329811, 34.064426, 37.630627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468800, 34.437973, 37.596794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661835, -0.180347, 0.727633,
		0.664260, -0.308808, -0.680732,
		0.347466, 0.933870, -0.084583,
		39.573040, 34.718136, 37.571419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077408, 34.059628, 37.774605>,  <39.329811, 34.064426, 37.630627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077408, 34.059628, 37.774605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954334, 34.432850, 37.849155>,  <39.880489, 34.656784, 37.893887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954334, 34.432850, 37.849155>,  <40.077408, 34.059628, 37.774605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954334, 34.432850, 37.849155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366392, -0.064589, 0.928216,
		0.878117, 0.353879, -0.321993,
		-0.307679, 0.933058, 0.186375,
		39.862030, 34.712769, 37.905067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588627, 34.389442, 38.125927>,  <40.077408, 34.059628, 37.774605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588627, 34.389442, 38.125927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274330, 34.618778, 38.218781>,  <40.085751, 34.756382, 38.274490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274330, 34.618778, 38.218781>,  <40.588627, 34.389442, 38.125927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274330, 34.618778, 38.218781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286358, 0.004528, 0.958112,
		0.548274, 0.819304, -0.167739,
		-0.785745, 0.573341, 0.232132,
		40.038609, 34.790779, 38.288422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895874, 35.050396, 38.375507>,  <40.588627, 34.389442, 38.125927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895874, 35.050396, 38.375507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531910, 35.000801, 38.533844>,  <40.313530, 34.971043, 38.628845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531910, 35.000801, 38.533844>,  <40.895874, 35.050396, 38.375507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531910, 35.000801, 38.533844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392436, 0.051852, 0.918316,
		-0.134384, 0.990928, 0.001477,
		-0.909909, -0.123987, 0.395844,
		40.258938, 34.963604, 38.652596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818142, 35.567459, 38.934307>,  <40.895874, 35.050396, 38.375507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818142, 35.567459, 38.934307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562252, 35.272400, 39.020687>,  <40.408718, 35.095364, 39.072517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562252, 35.272400, 39.020687>,  <40.818142, 35.567459, 38.934307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562252, 35.272400, 39.020687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354820, -0.034190, 0.934309,
		-0.681804, 0.674324, 0.283603,
		-0.639723, -0.737644, 0.215953,
		40.370335, 35.051105, 39.085472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663445, 35.718357, 39.514893>,  <40.818142, 35.567459, 38.934307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663445, 35.718357, 39.514893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516212, 35.346958, 39.495281>,  <40.427872, 35.124119, 39.483517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516212, 35.346958, 39.495281>,  <40.663445, 35.718357, 39.514893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516212, 35.346958, 39.495281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042390, -0.069432, 0.996686,
		-0.928827, 0.364784, 0.064916,
		-0.368082, -0.928500, -0.049027,
		40.405788, 35.068409, 39.480572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140232, 35.694412, 39.950600>,  <40.663445, 35.718357, 39.514893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140232, 35.694412, 39.950600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234890, 35.307888, 39.910126>,  <40.291683, 35.075974, 39.885841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234890, 35.307888, 39.910126>,  <40.140232, 35.694412, 39.950600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234890, 35.307888, 39.910126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028122, -0.097291, 0.994859,
		-0.971190, -0.238272, 0.004152,
		0.236643, -0.966313, -0.101189,
		40.305882, 35.017994, 39.879768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642277, 35.220028, 40.292866>,  <40.140232, 35.694412, 39.950600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642277, 35.220028, 40.292866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001606, 35.046967, 40.262341>,  <40.217205, 34.943130, 40.244026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001606, 35.046967, 40.262341>,  <39.642277, 35.220028, 40.292866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001606, 35.046967, 40.262341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012276, -0.148913, 0.988774,
		-0.439164, -0.889175, -0.128461,
		0.898323, -0.432657, -0.076313,
		40.271103, 34.917168, 40.239449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539524, 34.624931, 40.593102>,  <39.642277, 35.220028, 40.292866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539524, 34.624931, 40.593102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939262, 34.636669, 40.584713>,  <40.179108, 34.643711, 40.579681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939262, 34.636669, 40.584713>,  <39.539524, 34.624931, 40.593102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939262, 34.636669, 40.584713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027508, -0.244132, 0.969352,
		0.023329, -0.969298, -0.244780,
		0.999350, 0.029347, -0.020968,
		40.239067, 34.645473, 40.578423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726578, 34.153332, 41.069923>,  <39.539524, 34.624931, 40.593102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726578, 34.153332, 41.069923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075691, 34.346256, 41.039925>,  <40.285160, 34.462013, 41.021927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075691, 34.346256, 41.039925>,  <39.726578, 34.153332, 41.069923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075691, 34.346256, 41.039925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172706, -0.161435, 0.971654,
		0.456537, -0.860994, -0.224196,
		0.872781, 0.482316, -0.074998,
		40.337524, 34.490952, 41.017426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233189, 33.748436, 41.486004>,  <39.726578, 34.153332, 41.069923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233189, 33.748436, 41.486004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381203, 34.117195, 41.440090>,  <40.470009, 34.338451, 41.412540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381203, 34.117195, 41.440090>,  <40.233189, 33.748436, 41.486004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381203, 34.117195, 41.440090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266874, 0.012865, 0.963645,
		0.889862, -0.387212, -0.241271,
		0.370031, 0.921901, -0.114785,
		40.492210, 34.393764, 41.405655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869041, 33.718159, 41.866135>,  <40.233189, 33.748436, 41.486004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869041, 33.718159, 41.866135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776932, 34.107079, 41.850067>,  <40.721668, 34.340431, 41.840427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.776932, 34.107079, 41.850067>,  <40.869041, 33.718159, 41.866135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776932, 34.107079, 41.850067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106445, 0.066196, 0.992113,
		0.967288, 0.224178, -0.118740,
		-0.230270, 0.972298, -0.040168,
		40.707851, 34.398769, 41.838017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362873, 34.096737, 42.330055>,  <40.869041, 33.718159, 41.866135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362873, 34.096737, 42.330055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037003, 34.323807, 42.282654>,  <40.841480, 34.460049, 42.254211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037003, 34.323807, 42.282654>,  <41.362873, 34.096737, 42.330055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037003, 34.323807, 42.282654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006978, 0.194744, 0.980829,
		0.579870, 0.799889, -0.154693,
		-0.814680, 0.567674, -0.118508,
		40.792599, 34.494110, 42.247101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368542, 34.544907, 42.853863>,  <41.362873, 34.096737, 42.330055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368542, 34.544907, 42.853863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988297, 34.624603, 42.758675>,  <40.760147, 34.672421, 42.701561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988297, 34.624603, 42.758675>,  <41.368542, 34.544907, 42.853863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988297, 34.624603, 42.758675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210695, 0.148700, 0.966176,
		0.227890, 0.968602, -0.099378,
		-0.950617, 0.199244, -0.237967,
		40.703110, 34.684376, 42.687283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132862, 35.148262, 43.226444>,  <41.368542, 34.544907, 42.853863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132862, 35.148262, 43.226444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789036, 34.975388, 43.117371>,  <40.582741, 34.871662, 43.051926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789036, 34.975388, 43.117371>,  <41.132862, 35.148262, 43.226444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789036, 34.975388, 43.117371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384224, 0.194764, 0.902463,
		-0.336924, 0.880500, -0.333470,
		-0.859566, -0.432188, -0.272689,
		40.531166, 34.845730, 43.035564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617252, 35.666634, 43.464561>,  <41.132862, 35.148262, 43.226444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617252, 35.666634, 43.464561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410049, 35.326000, 43.432392>,  <40.285728, 35.121620, 43.413090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410049, 35.326000, 43.432392>,  <40.617252, 35.666634, 43.464561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410049, 35.326000, 43.432392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427308, 0.176182, 0.886774,
		-0.740994, 0.493724, -0.455153,
		-0.518011, -0.851585, -0.080422,
		40.254646, 35.070526, 43.408264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931946, 35.857632, 43.704926>,  <40.617252, 35.666634, 43.464561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931946, 35.857632, 43.704926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003128, 35.465714, 43.741421>,  <40.045837, 35.230560, 43.763317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003128, 35.465714, 43.741421>,  <39.931946, 35.857632, 43.704926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003128, 35.465714, 43.741421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387960, 0.015350, 0.921548,
		-0.904334, -0.199390, -0.377392,
		0.177955, -0.979800, 0.091237,
		40.056515, 35.171772, 43.768791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384247, 35.493393, 43.997864>,  <39.931946, 35.857632, 43.704926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384247, 35.493393, 43.997864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676975, 35.226662, 44.054115>,  <39.852612, 35.066624, 44.087868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676975, 35.226662, 44.054115>,  <39.384247, 35.493393, 43.997864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676975, 35.226662, 44.054115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321480, -0.155835, 0.934006,
		-0.600903, -0.728739, -0.328414,
		0.731824, -0.666825, 0.140633,
		39.896523, 35.026615, 44.096306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026413, 34.886909, 44.389259>,  <39.384247, 35.493393, 43.997864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026413, 34.886909, 44.389259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419312, 34.875893, 44.463482>,  <39.655052, 34.869282, 44.508015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419312, 34.875893, 44.463482>,  <39.026413, 34.886909, 44.389259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419312, 34.875893, 44.463482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183183, 0.072352, 0.980413,
		-0.040427, -0.996999, 0.066022,
		0.982247, -0.027541, 0.185558,
		39.713985, 34.867630, 44.519150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100704, 34.374954, 44.833996>,  <39.026413, 34.886909, 44.389259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100704, 34.374954, 44.833996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442635, 34.578911, 44.872536>,  <39.647793, 34.701286, 44.895660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442635, 34.578911, 44.872536>,  <39.100704, 34.374954, 44.833996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442635, 34.578911, 44.872536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052788, -0.099258, 0.993661,
		0.516221, -0.854494, -0.057932,
		0.854827, 0.509891, 0.096346,
		39.699081, 34.731876, 44.901440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322090, 34.042358, 45.421181>,  <39.100704, 34.374954, 44.833996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322090, 34.042358, 45.421181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555187, 34.365108, 45.382488>,  <39.695045, 34.558758, 45.359272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555187, 34.365108, 45.382488>,  <39.322090, 34.042358, 45.421181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555187, 34.365108, 45.382488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116420, 0.034912, 0.992586,
		0.804273, -0.589686, -0.073592,
		0.582745, 0.806878, -0.096730,
		39.730011, 34.607170, 45.353470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940483, 33.875343, 45.688938>,  <39.322090, 34.042358, 45.421181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940483, 33.875343, 45.688938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899811, 34.270416, 45.736511>,  <39.875408, 34.507462, 45.765053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899811, 34.270416, 45.736511>,  <39.940483, 33.875343, 45.688938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899811, 34.270416, 45.736511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050739, -0.114245, 0.992156,
		0.993522, 0.106918, -0.038498,
		-0.101681, 0.987683, 0.118930,
		39.869305, 34.566723, 45.772190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419125, 34.059669, 46.131775>,  <39.940483, 33.875343, 45.688938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419125, 34.059669, 46.131775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170410, 34.372543, 46.147591>,  <40.021183, 34.560268, 46.157082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170410, 34.372543, 46.147591>,  <40.419125, 34.059669, 46.131775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170410, 34.372543, 46.147591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061128, -0.001862, 0.998128,
		0.780797, 0.623041, -0.046656,
		-0.621788, 0.782187, 0.039539,
		39.983875, 34.607201, 46.159451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690231, 34.513321, 46.687206>,  <40.419125, 34.059669, 46.131775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690231, 34.513321, 46.687206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350494, 34.715248, 46.625519>,  <40.146652, 34.836403, 46.588509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.350494, 34.715248, 46.625519>,  <40.690231, 34.513321, 46.687206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350494, 34.715248, 46.625519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081588, 0.414203, 0.906520,
		0.521503, 0.757362, -0.392986,
		-0.849340, 0.504816, -0.154217,
		40.095692, 34.866692, 46.579254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758968, 35.248955, 46.905235>,  <40.690231, 34.513321, 46.687206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758968, 35.248955, 46.905235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365799, 35.176109, 46.894619>,  <40.129898, 35.132401, 46.888248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365799, 35.176109, 46.894619>,  <40.758968, 35.248955, 46.905235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365799, 35.176109, 46.894619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094037, 0.373026, 0.923043,
		-0.158199, 0.909773, -0.383780,
		-0.982919, -0.182114, -0.026539,
		40.070923, 35.121475, 46.886658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465076, 35.886494, 47.075684>,  <40.758968, 35.248955, 46.905235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465076, 35.886494, 47.075684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205067, 35.600193, 47.177795>,  <40.049061, 35.428413, 47.239063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205067, 35.600193, 47.177795>,  <40.465076, 35.886494, 47.075684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205067, 35.600193, 47.177795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075470, 0.395082, 0.915540,
		-0.756155, 0.575859, -0.310831,
		-0.650026, -0.715749, 0.255283,
		40.010059, 35.385468, 47.254379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855206, 36.161072, 47.478569>,  <40.465076, 35.886494, 47.075684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855206, 36.161072, 47.478569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952194, 35.976418, 47.819885>,  <40.010387, 35.865623, 48.024673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952194, 35.976418, 47.819885>,  <39.855206, 36.161072, 47.478569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952194, 35.976418, 47.819885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896155, 0.443496, -0.014713,
		-0.371637, 0.768245, 0.521234,
		0.242468, -0.461639, 0.853287,
		40.024933, 35.837925, 48.075871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633091, 36.865387, 47.693428>,  <39.855206, 36.161072, 47.478569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633091, 36.865387, 47.693428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777985, 37.222347, 47.801060>,  <39.864922, 37.436523, 47.865639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777985, 37.222347, 47.801060>,  <39.633091, 36.865387, 47.693428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777985, 37.222347, 47.801060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164460, 0.222961, -0.960854,
		-0.917465, 0.392303, -0.066002,
		0.362230, 0.892405, 0.269078,
		39.886654, 37.490070, 47.881783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200703, 37.362553, 47.336807>,  <39.633091, 36.865387, 47.693428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200703, 37.362553, 47.336807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562931, 37.513161, 47.414959>,  <39.780270, 37.603527, 47.461849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562931, 37.513161, 47.414959>,  <39.200703, 37.362553, 47.336807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562931, 37.513161, 47.414959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037871, 0.386986, -0.921308,
		-0.422503, 0.841708, 0.336183,
		0.905570, 0.376524, 0.195379,
		39.834602, 37.626118, 47.473572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148251, 37.974419, 46.966034>,  <39.200703, 37.362553, 47.336807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148251, 37.974419, 46.966034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528580, 37.888847, 47.055626>,  <39.756779, 37.837505, 47.109383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528580, 37.888847, 47.055626>,  <39.148251, 37.974419, 46.966034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528580, 37.888847, 47.055626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277722, 0.268708, -0.922316,
		0.137122, 0.939165, 0.314906,
		0.950825, -0.213926, 0.223982,
		39.813828, 37.824669, 47.122822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546577, 38.522984, 46.619919>,  <39.148251, 37.974419, 46.966034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546577, 38.522984, 46.619919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828224, 38.244946, 46.677975>,  <39.997211, 38.078121, 46.712811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828224, 38.244946, 46.677975>,  <39.546577, 38.522984, 46.619919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828224, 38.244946, 46.677975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324650, 0.133338, -0.936388,
		0.631525, 0.706446, 0.319548,
		0.704116, -0.695094, 0.145141,
		40.039459, 38.036419, 46.721516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316013, 38.791367, 46.574558>,  <39.546577, 38.522984, 46.619919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316013, 38.791367, 46.574558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330429, 38.395306, 46.520443>,  <40.339077, 38.157669, 46.487972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330429, 38.395306, 46.520443>,  <40.316013, 38.791367, 46.574558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330429, 38.395306, 46.520443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512644, 0.134524, -0.847997,
		0.857844, -0.038793, 0.512443,
		0.036039, -0.990151, -0.135288,
		40.341240, 38.098259, 46.479858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046818, 38.594517, 46.378490>,  <40.316013, 38.791367, 46.574558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046818, 38.594517, 46.378490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829327, 38.277504, 46.268028>,  <40.698833, 38.087296, 46.201752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829327, 38.277504, 46.268028>,  <41.046818, 38.594517, 46.378490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829327, 38.277504, 46.268028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327568, 0.102551, -0.939246,
		0.772699, -0.601151, 0.203847,
		-0.543724, -0.792528, -0.276159,
		40.666210, 38.039745, 46.185181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486107, 38.301796, 45.984093>,  <41.046818, 38.594517, 46.378490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486107, 38.301796, 45.984093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130581, 38.165073, 45.861996>,  <40.917267, 38.083038, 45.788738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130581, 38.165073, 45.861996>,  <41.486107, 38.301796, 45.984093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130581, 38.165073, 45.861996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308664, 0.045805, -0.950068,
		0.338722, -0.938653, 0.064792,
		-0.888816, -0.341808, -0.305243,
		40.863937, 38.062531, 45.770424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469566, 37.838203, 45.338310>,  <41.486107, 38.301796, 45.984093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469566, 37.838203, 45.338310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083248, 37.941849, 45.342453>,  <40.851460, 38.004036, 45.344940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083248, 37.941849, 45.342453>,  <41.469566, 37.838203, 45.338310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083248, 37.941849, 45.342453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003463, 0.027057, -0.999628,
		-0.259298, -0.965468, -0.025234,
		-0.965791, 0.259114, 0.010359,
		40.793510, 38.019585, 45.345562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077908, 37.388340, 44.849121>,  <41.469566, 37.838203, 45.338310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077908, 37.388340, 44.849121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837120, 37.704338, 44.895664>,  <40.692646, 37.893936, 44.923588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837120, 37.704338, 44.895664>,  <41.077908, 37.388340, 44.849121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837120, 37.704338, 44.895664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113161, 0.059847, -0.991773,
		-0.790461, -0.610183, 0.053371,
		-0.601969, 0.789997, 0.116355,
		40.656528, 37.941338, 44.930573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571098, 37.304596, 44.342300>,  <41.077908, 37.388340, 44.849121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571098, 37.304596, 44.342300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504448, 37.688396, 44.433159>,  <40.464458, 37.918678, 44.487675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504448, 37.688396, 44.433159>,  <40.571098, 37.304596, 44.342300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504448, 37.688396, 44.433159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078643, 0.216698, -0.973066,
		-0.982880, -0.179997, 0.039352,
		-0.166621, 0.959502, 0.227143,
		40.454460, 37.976246, 44.501301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097435, 37.453388, 43.826534>,  <40.571098, 37.304596, 44.342300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097435, 37.453388, 43.826534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225727, 37.817173, 43.932381>,  <40.302704, 38.035442, 43.995888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225727, 37.817173, 43.932381>,  <40.097435, 37.453388, 43.826534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225727, 37.817173, 43.932381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036578, 0.291056, -0.956007,
		-0.946464, 0.296941, 0.126616,
		0.320730, 0.909457, 0.264612,
		40.321945, 38.090012, 44.011765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600666, 37.952229, 43.615791>,  <40.097435, 37.453388, 43.826534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600666, 37.952229, 43.615791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964851, 38.116257, 43.637333>,  <40.183361, 38.214672, 43.650257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964851, 38.116257, 43.637333>,  <39.600666, 37.952229, 43.615791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964851, 38.116257, 43.637333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089095, 0.321616, -0.942669,
		-0.403880, 0.853467, 0.329355,
		0.910463, 0.410069, 0.053854,
		40.237991, 38.239277, 43.653488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473469, 38.479412, 43.222874>,  <39.600666, 37.952229, 43.615791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473469, 38.479412, 43.222874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871605, 38.484764, 43.261055>,  <40.110489, 38.487976, 43.283962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871605, 38.484764, 43.261055>,  <39.473469, 38.479412, 43.222874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871605, 38.484764, 43.261055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090306, 0.216776, -0.972036,
		-0.033694, 0.976130, 0.214558,
		0.995344, 0.013375, 0.095455,
		40.170208, 38.488777, 43.289692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698433, 38.981041, 42.738831>,  <39.473469, 38.479412, 43.222874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698433, 38.981041, 42.738831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006649, 38.730408, 42.785583>,  <40.191578, 38.580029, 42.813637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006649, 38.730408, 42.785583>,  <39.698433, 38.981041, 42.738831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006649, 38.730408, 42.785583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162823, 0.016202, -0.986522,
		0.616242, 0.779188, 0.114506,
		0.770542, -0.626581, 0.116885,
		40.237812, 38.542435, 42.820648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131973, 39.168755, 42.122391>,  <39.698433, 38.981041, 42.738831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131973, 39.168755, 42.122391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258942, 38.800247, 42.212280>,  <40.335125, 38.579144, 42.266212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258942, 38.800247, 42.212280>,  <40.131973, 39.168755, 42.122391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258942, 38.800247, 42.212280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028776, -0.246229, -0.968784,
		0.947847, 0.301050, -0.104669,
		0.317425, -0.921271, 0.224724,
		40.354168, 38.523865, 42.279697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705559, 38.983044, 41.625221>,  <40.131973, 39.168755, 42.122391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705559, 38.983044, 41.625221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566544, 38.635609, 41.766514>,  <40.483135, 38.427147, 41.851288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566544, 38.635609, 41.766514>,  <40.705559, 38.983044, 41.625221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566544, 38.635609, 41.766514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099315, -0.340492, -0.934988,
		0.932390, -0.360028, 0.032072,
		-0.347542, -0.868588, 0.353227,
		40.462280, 38.375031, 41.872482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145729, 38.431278, 41.448788>,  <40.705559, 38.983044, 41.625221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145729, 38.431278, 41.448788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789215, 38.260620, 41.510216>,  <40.575306, 38.158226, 41.547073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789215, 38.260620, 41.510216>,  <41.145729, 38.431278, 41.448788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789215, 38.260620, 41.510216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070321, -0.464635, -0.882706,
		0.447954, -0.775945, 0.444126,
		-0.891287, -0.426643, 0.153570,
		40.521828, 38.132626, 41.556286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298244, 37.766079, 41.253311>,  <41.145729, 38.431278, 41.448788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298244, 37.766079, 41.253311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900940, 37.812153, 41.258293>,  <40.662556, 37.839798, 41.261284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900940, 37.812153, 41.258293>,  <41.298244, 37.766079, 41.253311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900940, 37.812153, 41.258293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049876, -0.328064, -0.943338,
		-0.104574, -0.937606, 0.331600,
		-0.993265, 0.115187, 0.012457,
		40.602959, 37.846710, 41.262032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094353, 37.034210, 41.018276>,  <41.298244, 37.766079, 41.253311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094353, 37.034210, 41.018276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779640, 37.279594, 40.991013>,  <40.590813, 37.426826, 40.974655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779640, 37.279594, 40.991013>,  <41.094353, 37.034210, 41.018276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779640, 37.279594, 40.991013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185909, -0.340827, -0.921561,
		-0.588573, -0.712392, 0.382203,
		-0.786778, 0.613461, -0.068161,
		40.543606, 37.463631, 40.970566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513142, 36.646263, 40.780998>,  <41.094353, 37.034210, 41.018276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513142, 36.646263, 40.780998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446426, 37.026497, 40.676254>,  <40.406395, 37.254639, 40.613407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446426, 37.026497, 40.676254>,  <40.513142, 36.646263, 40.780998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446426, 37.026497, 40.676254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139160, -0.285613, -0.948188,
		-0.976122, -0.121711, 0.179922,
		-0.166792, 0.950585, -0.261856,
		40.396389, 37.311672, 40.597698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937836, 36.633312, 40.336430>,  <40.513142, 36.646263, 40.780998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937836, 36.633312, 40.336430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083424, 36.995419, 40.248779>,  <40.170776, 37.212685, 40.196190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083424, 36.995419, 40.248779>,  <39.937836, 36.633312, 40.336430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083424, 36.995419, 40.248779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233704, -0.138975, -0.962325,
		-0.901616, 0.401464, 0.160983,
		0.363966, 0.905269, -0.219126,
		40.192612, 37.266998, 40.183041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450157, 36.732372, 39.872025>,  <39.937836, 36.633312, 40.336430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450157, 36.732372, 39.872025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777924, 36.959011, 39.837334>,  <39.974583, 37.094994, 39.816521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777924, 36.959011, 39.837334>,  <39.450157, 36.732372, 39.872025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777924, 36.959011, 39.837334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014842, -0.130279, -0.991367,
		-0.573003, 0.813632, -0.098343,
		0.819419, 0.566596, -0.086726,
		40.023750, 37.128990, 39.811317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279884, 37.204575, 39.347366>,  <39.450157, 36.732372, 39.872025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279884, 37.204575, 39.347366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677643, 37.238632, 39.372410>,  <39.916298, 37.259068, 39.387436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677643, 37.238632, 39.372410>,  <39.279884, 37.204575, 39.347366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677643, 37.238632, 39.372410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055845, 0.079636, -0.995258,
		-0.089728, 0.993181, 0.074435,
		0.994399, 0.085146, 0.062610,
		39.975964, 37.264175, 39.391193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472912, 37.805489, 38.937332>,  <39.279884, 37.204575, 39.347366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472912, 37.805489, 38.937332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779774, 37.550674, 38.967449>,  <39.963890, 37.397785, 38.985519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779774, 37.550674, 38.967449>,  <39.472912, 37.805489, 38.937332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779774, 37.550674, 38.967449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113037, 0.018717, -0.993414,
		0.631429, 0.770609, 0.086367,
		0.767151, -0.637033, 0.075289,
		40.009918, 37.359566, 38.990036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933464, 38.069965, 38.410873>,  <39.472912, 37.805489, 38.937332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933464, 38.069965, 38.410873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097378, 37.715508, 38.497433>,  <40.195724, 37.502834, 38.549370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097378, 37.715508, 38.497433>,  <39.933464, 38.069965, 38.410873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097378, 37.715508, 38.497433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394533, -0.041716, -0.917934,
		0.822449, 0.461529, 0.332519,
		0.409782, -0.886144, 0.216398,
		40.220314, 37.449665, 38.562351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607918, 38.204445, 38.347927>,  <39.933464, 38.069965, 38.410873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607918, 38.204445, 38.347927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494392, 37.825970, 38.285721>,  <40.426277, 37.598885, 38.248398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494392, 37.825970, 38.285721>,  <40.607918, 38.204445, 38.347927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494392, 37.825970, 38.285721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371664, 0.040954, -0.927463,
		0.883921, -0.321025, 0.340040,
		-0.283813, -0.946185, -0.155514,
		40.409248, 37.542114, 38.239067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074219, 38.076088, 37.807812>,  <40.607918, 38.204445, 38.347927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074219, 38.076088, 37.807812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817776, 37.769115, 37.805592>,  <40.663910, 37.584930, 37.804260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817776, 37.769115, 37.805592>,  <41.074219, 38.076088, 37.807812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817776, 37.769115, 37.805592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133609, -0.104487, -0.985510,
		0.755733, -0.632557, 0.169523,
		-0.641105, -0.767433, -0.005551,
		40.625443, 37.538887, 37.803925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349117, 37.618973, 37.363930>,  <41.074219, 38.076088, 37.807812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349117, 37.618973, 37.363930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962578, 37.516117, 37.366623>,  <40.730652, 37.454403, 37.368237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962578, 37.516117, 37.366623>,  <41.349117, 37.618973, 37.363930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962578, 37.516117, 37.366623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070559, -0.290146, -0.954378,
		0.247360, -0.921789, 0.298526,
		-0.966351, -0.257138, 0.006730,
		40.672672, 37.438976, 37.368641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298691, 36.978729, 36.972404>,  <41.349117, 37.618973, 37.363930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298691, 36.978729, 36.972404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928703, 37.130531, 36.980545>,  <40.706711, 37.221611, 36.985428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928703, 37.130531, 36.980545>,  <41.298691, 36.978729, 36.972404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928703, 37.130531, 36.980545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110336, -0.216911, -0.969936,
		-0.363683, -0.899402, 0.242509,
		-0.924965, 0.379506, 0.020350,
		40.651215, 37.244381, 36.986649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795086, 36.453274, 36.575142>,  <41.298691, 36.978729, 36.972404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795086, 36.453274, 36.575142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640854, 36.822342, 36.575909>,  <40.548313, 37.043785, 36.576370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640854, 36.822342, 36.575909>,  <40.795086, 36.453274, 36.575142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640854, 36.822342, 36.575909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133531, -0.053743, -0.989587,
		-0.912961, -0.381820, 0.143927,
		-0.385579, 0.922673, 0.001919,
		40.525181, 37.099144, 36.576485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252922, 36.371262, 36.160732>,  <40.795086, 36.453274, 36.575142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252922, 36.371262, 36.160732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318779, 36.765800, 36.159500>,  <40.358292, 37.002525, 36.158760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318779, 36.765800, 36.159500>,  <40.252922, 36.371262, 36.160732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318779, 36.765800, 36.159500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064988, 0.007727, -0.997856,
		-0.984210, 0.164488, 0.065373,
		0.164640, 0.986349, -0.003085,
		40.368172, 37.061707, 36.158573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727505, 36.670094, 35.746391>,  <40.252922, 36.371262, 36.160732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727505, 36.670094, 35.746391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031780, 36.929527, 35.756966>,  <40.214344, 37.085186, 35.763309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031780, 36.929527, 35.756966>,  <39.727505, 36.670094, 35.746391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031780, 36.929527, 35.756966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007115, 0.032398, -0.999450,
		-0.649081, 0.760456, 0.020030,
		0.760686, 0.648581, 0.026440,
		40.259987, 37.124104, 35.764896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618935, 37.254322, 35.213100>,  <39.727505, 36.670094, 35.746391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618935, 37.254322, 35.213100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010643, 37.247940, 35.293869>,  <40.245667, 37.244110, 35.342331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010643, 37.247940, 35.293869>,  <39.618935, 37.254322, 35.213100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010643, 37.247940, 35.293869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202544, 0.083557, -0.975702,
		-0.001301, 0.996375, 0.085057,
		0.979272, -0.015959, 0.201918,
		40.304424, 37.243153, 35.354443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942440, 37.724030, 34.753624>,  <39.618935, 37.254322, 35.213100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942440, 37.724030, 34.753624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251705, 37.502026, 34.876389>,  <40.437263, 37.368824, 34.950047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251705, 37.502026, 34.876389>,  <39.942440, 37.724030, 34.753624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251705, 37.502026, 34.876389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421493, 0.088077, -0.902544,
		0.473885, 0.827171, 0.302029,
		0.773160, -0.555005, 0.306908,
		40.483654, 37.335526, 34.968460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550625, 37.993401, 34.484451>,  <39.942440, 37.724030, 34.753624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550625, 37.993401, 34.484451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648258, 37.613739, 34.563976>,  <40.706841, 37.385941, 34.611691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648258, 37.613739, 34.563976>,  <40.550625, 37.993401, 34.484451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648258, 37.613739, 34.563976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495157, -0.054294, -0.867106,
		0.833812, 0.310093, 0.456728,
		0.244086, -0.949155, 0.198816,
		40.721485, 37.328991, 34.623619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189087, 37.983925, 34.377548>,  <40.550625, 37.993401, 34.484451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189087, 37.983925, 34.377548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070320, 37.602165, 34.365116>,  <40.999062, 37.373108, 34.357658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070320, 37.602165, 34.365116>,  <41.189087, 37.983925, 34.377548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070320, 37.602165, 34.365116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401325, -0.095186, -0.910976,
		0.866476, -0.282954, 0.411286,
		-0.296913, -0.954398, -0.031080,
		40.981247, 37.315845, 34.355793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729851, 37.703014, 34.007175>,  <41.189087, 37.983925, 34.377548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729851, 37.703014, 34.007175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485668, 37.386292, 33.999352>,  <41.339157, 37.196259, 33.994659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485668, 37.386292, 33.999352>,  <41.729851, 37.703014, 34.007175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485668, 37.386292, 33.999352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339854, -0.239554, -0.909458,
		0.715430, -0.561832, 0.415337,
		-0.610458, -0.791807, -0.019557,
		41.302532, 37.148750, 33.993484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034679, 37.203842, 33.664726>,  <41.729851, 37.703014, 34.007175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034679, 37.203842, 33.664726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650566, 37.094795, 33.640968>,  <41.420097, 37.029366, 33.626713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650566, 37.094795, 33.640968>,  <42.034679, 37.203842, 33.664726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650566, 37.094795, 33.640968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108947, -0.170396, -0.979334,
		0.256865, -0.946913, 0.193330,
		-0.960287, -0.272619, -0.059395,
		41.362480, 37.013008, 33.623150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043839, 36.526058, 33.364113>,  <42.034679, 37.203842, 33.664726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043839, 36.526058, 33.364113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690792, 36.701252, 33.295807>,  <41.478966, 36.806370, 33.254822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690792, 36.701252, 33.295807>,  <42.043839, 36.526058, 33.364113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690792, 36.701252, 33.295807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124536, -0.132430, -0.983338,
		-0.453302, -0.889174, 0.062339,
		-0.882614, 0.437986, -0.170765,
		41.426006, 36.832649, 33.244576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642353, 36.137344, 32.849232>,  <42.043839, 36.526058, 33.364113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642353, 36.137344, 32.849232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478947, 36.499123, 32.800083>,  <41.380901, 36.716190, 32.770592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478947, 36.499123, 32.800083>,  <41.642353, 36.137344, 32.849232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478947, 36.499123, 32.800083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151459, -0.065581, -0.986286,
		-0.900096, -0.421527, -0.110195,
		-0.408519, 0.904442, -0.122873,
		41.356392, 36.770454, 32.763222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474682, 35.372086, 32.797157>,  <41.642353, 36.137344, 32.849232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474682, 35.372086, 32.797157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661137, 35.559681, 33.097225>,  <41.773010, 35.672237, 33.277267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661137, 35.559681, 33.097225>,  <41.474682, 35.372086, 32.797157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661137, 35.559681, 33.097225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251204, -0.883195, 0.396059,
		0.848298, 0.003827, -0.529506,
		0.466141, 0.468990, 0.750174,
		41.800980, 35.700378, 33.322277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148716, 35.161633, 32.863869>,  <41.474682, 35.372086, 32.797157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148716, 35.161633, 32.863869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014992, 35.283947, 33.220459>,  <41.934757, 35.357334, 33.434414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014992, 35.283947, 33.220459>,  <42.148716, 35.161633, 32.863869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014992, 35.283947, 33.220459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192547, -0.903789, 0.382218,
		0.922584, 0.299431, 0.243270,
		-0.334313, 0.305788, 0.891476,
		41.914700, 35.375683, 33.487904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576580, 35.192959, 33.413456>,  <42.148716, 35.161633, 32.863869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576580, 35.192959, 33.413456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209236, 35.085251, 33.529457>,  <41.988831, 35.020626, 33.599056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209236, 35.085251, 33.529457>,  <42.576580, 35.192959, 33.413456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209236, 35.085251, 33.529457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364158, -0.861874, 0.352933,
		0.154908, 0.429726, 0.889572,
		-0.918364, -0.269273, 0.289999,
		41.933727, 35.004471, 33.616455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585136, 34.957748, 34.118160>,  <42.576580, 35.192959, 33.413456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585136, 34.957748, 34.118160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275745, 34.782970, 33.934505>,  <42.090111, 34.678104, 33.824314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275745, 34.782970, 33.934505>,  <42.585136, 34.957748, 34.118160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275745, 34.782970, 33.934505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238964, -0.871979, 0.427257,
		-0.587045, 0.220758, 0.778874,
		-0.773482, -0.436941, -0.459138,
		42.043701, 34.651890, 33.796764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873547, 34.902622, 34.726147>,  <42.585136, 34.957748, 34.118160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873547, 34.902622, 34.726147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940041, 34.801144, 35.107304>,  <42.979935, 34.740257, 35.335999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940041, 34.801144, 35.107304>,  <42.873547, 34.902622, 34.726147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940041, 34.801144, 35.107304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939278, -0.334930, 0.074685,
		0.300205, -0.907447, -0.293967,
		0.166231, -0.253697, 0.952894,
		42.989910, 34.725033, 35.393173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725437, 34.139267, 34.991951>,  <42.873547, 34.902622, 34.726147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725437, 34.139267, 34.991951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.637096, 34.385952, 35.294178>,  <42.584091, 34.533962, 35.475513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.637096, 34.385952, 35.294178>,  <42.725437, 34.139267, 34.991951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637096, 34.385952, 35.294178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862163, -0.485627, 0.144366,
		0.455958, -0.619541, 0.638961,
		-0.220856, 0.616713, 0.755571,
		42.570839, 34.570965, 35.520851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770081, 33.796062, 35.765907>,  <42.725437, 34.139267, 34.991951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770081, 33.796062, 35.765907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493744, 34.067692, 35.666637>,  <42.327942, 34.230671, 35.607075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493744, 34.067692, 35.666637>,  <42.770081, 33.796062, 35.765907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493744, 34.067692, 35.666637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722406, -0.662314, 0.198671,
		-0.029459, 0.316535, 0.948123,
		-0.690841, 0.679077, -0.248178,
		42.286491, 34.271416, 35.592186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157825, 33.115124, 35.792610>,  <42.770081, 33.796062, 35.765907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157825, 33.115124, 35.792610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536125, 33.231953, 35.735676>,  <43.763103, 33.302052, 35.701515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536125, 33.231953, 35.735676>,  <43.157825, 33.115124, 35.792610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536125, 33.231953, 35.735676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222261, -0.901119, -0.372268,
		-0.236994, 0.320434, -0.917145,
		0.945745, 0.292071, -0.142340,
		43.819847, 33.319572, 35.692974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319229, 32.785736, 35.185524>,  <43.157825, 33.115124, 35.792610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319229, 32.785736, 35.185524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675236, 32.905025, 35.323471>,  <43.888840, 32.976597, 35.406239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675236, 32.905025, 35.323471>,  <43.319229, 32.785736, 35.185524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675236, 32.905025, 35.323471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436157, -0.777239, -0.453505,
		0.132801, 0.554044, -0.821827,
		0.890017, 0.298220, 0.344868,
		43.942242, 32.994492, 35.426933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770489, 32.632866, 34.637241>,  <43.319229, 32.785736, 35.185524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770489, 32.632866, 34.637241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027000, 32.633923, 34.944164>,  <44.180908, 32.634556, 35.128319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027000, 32.633923, 34.944164>,  <43.770489, 32.632866, 34.637241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027000, 32.633923, 34.944164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367146, -0.879145, -0.303821,
		0.673769, 0.476546, -0.564746,
		0.641279, 0.002639, 0.767303,
		44.219383, 32.634716, 35.174355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472168, 32.511604, 34.378647>,  <43.770489, 32.632866, 34.637241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472168, 32.511604, 34.378647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480179, 32.400314, 34.762768>,  <44.484985, 32.333538, 34.993240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480179, 32.400314, 34.762768>,  <44.472168, 32.511604, 34.378647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480179, 32.400314, 34.762768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492223, -0.833287, -0.251693,
		0.870239, 0.477725, 0.120264,
		0.020026, -0.278229, 0.960306,
		44.486187, 32.316845, 35.050861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.066624, 32.166649, 34.388786>,  <44.472168, 32.511604, 34.378647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.066624, 32.166649, 34.388786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.879250, 32.050293, 34.722481>,  <44.766823, 31.980480, 34.922699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.879250, 32.050293, 34.722481>,  <45.066624, 32.166649, 34.388786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.879250, 32.050293, 34.722481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458612, -0.887125, -0.051808,
		0.755142, 0.358322, 0.548968,
		-0.468440, -0.290886, 0.834236,
		44.738716, 31.963028, 34.972752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562950, 31.949831, 34.777634>,  <45.066624, 32.166649, 34.388786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562950, 31.949831, 34.777634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232899, 31.775410, 34.921310>,  <45.034866, 31.670757, 35.007515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232899, 31.775410, 34.921310>,  <45.562950, 31.949831, 34.777634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.232899, 31.775410, 34.921310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421924, -0.898456, -0.121482,
		0.375690, 0.051312, 0.925324,
		-0.825129, -0.436056, 0.359191,
		44.985359, 31.644592, 35.029068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788246, 31.403294, 35.190514>,  <45.562950, 31.949831, 34.777634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788246, 31.403294, 35.190514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410603, 31.308979, 35.098366>,  <45.184017, 31.252390, 35.043079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410603, 31.308979, 35.098366>,  <45.788246, 31.403294, 35.190514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.410603, 31.308979, 35.098366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298102, -0.908993, -0.291318,
		-0.140711, -0.343708, 0.928474,
		-0.944105, -0.235788, -0.230366,
		45.127373, 31.238243, 35.029255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819302, 30.823391, 35.462421>,  <45.788246, 31.403294, 35.190514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819302, 30.823391, 35.462421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523926, 30.839912, 35.193203>,  <45.346699, 30.849825, 35.031670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.523926, 30.839912, 35.193203>,  <45.819302, 30.823391, 35.462421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.523926, 30.839912, 35.193203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355957, -0.823848, -0.441101,
		-0.572710, -0.565304, 0.593662,
		-0.738443, 0.041305, -0.673050,
		45.302391, 30.852304, 34.991287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527313, 30.140202, 35.541737>,  <45.819302, 30.823391, 35.462421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527313, 30.140202, 35.541737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.481113, 30.306787, 35.181023>,  <45.453392, 30.406738, 34.964596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.481113, 30.306787, 35.181023>,  <45.527313, 30.140202, 35.541737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.481113, 30.306787, 35.181023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353745, -0.831094, -0.429125,
		-0.928184, -0.368565, -0.051332,
		-0.115499, 0.416465, -0.901785,
		45.446465, 30.431726, 34.910488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061749, 29.663063, 35.175873>,  <45.527313, 30.140202, 35.541737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061749, 29.663063, 35.175873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.221577, 29.886669, 34.885262>,  <45.317474, 30.020832, 34.710896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.221577, 29.886669, 34.885262>,  <45.061749, 29.663063, 35.175873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.221577, 29.886669, 34.885262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400156, -0.819413, -0.410410,
		-0.824754, -0.126738, -0.551107,
		0.399570, 0.559016, -0.726530,
		45.341446, 30.054375, 34.667301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894711, 29.343019, 34.591614>,  <45.061749, 29.663063, 35.175873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894711, 29.343019, 34.591614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.186527, 29.588009, 34.469860>,  <45.361618, 29.735003, 34.396809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.186527, 29.588009, 34.469860>,  <44.894711, 29.343019, 34.591614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.186527, 29.588009, 34.469860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383309, -0.734724, -0.559691,
		-0.566434, 0.291643, -0.770777,
		0.729538, 0.612474, -0.304383,
		45.405388, 29.771751, 34.378544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872597, 29.343344, 33.849529>,  <44.894711, 29.343019, 34.591614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872597, 29.343344, 33.849529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241539, 29.461557, 33.949059>,  <45.462906, 29.532486, 34.008778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241539, 29.461557, 33.949059>,  <44.872597, 29.343344, 33.849529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241539, 29.461557, 33.949059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385718, -0.740790, -0.549956,
		0.021793, 0.603232, -0.797268,
		0.922359, 0.295536, 0.248822,
		45.518246, 29.550219, 34.023705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261795, 29.366726, 33.211823>,  <44.872597, 29.343344, 33.849529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261795, 29.366726, 33.211823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562023, 29.376194, 33.475971>,  <45.742161, 29.381874, 33.634460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.562023, 29.376194, 33.475971>,  <45.261795, 29.366726, 33.211823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.562023, 29.376194, 33.475971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574488, -0.517179, -0.634420,
		0.326512, 0.855550, -0.401777,
		0.750569, 0.023671, 0.660368,
		45.787193, 29.383295, 33.674080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908714, 29.624495, 32.875576>,  <45.261795, 29.366726, 33.211823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.908714, 29.624495, 32.875576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016029, 29.405758, 33.192810>,  <46.080418, 29.274515, 33.383152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016029, 29.405758, 33.192810>,  <45.908714, 29.624495, 32.875576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016029, 29.405758, 33.192810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733864, -0.417315, -0.535997,
		0.624072, 0.725819, 0.289346,
		0.268288, -0.546841, 0.793087,
		46.096516, 29.241705, 33.430737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.617905, 29.610989, 32.875996>,  <45.908714, 29.624495, 32.875576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.617905, 29.610989, 32.875996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.562824, 29.306429, 33.129391>,  <46.529778, 29.123693, 33.281429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.562824, 29.306429, 33.129391>,  <46.617905, 29.610989, 32.875996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562824, 29.306429, 33.129391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687756, -0.533758, -0.492031,
		0.712762, 0.367935, 0.597154,
		-0.137701, -0.761397, 0.633492,
		46.521515, 29.078011, 33.319439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.245155, 29.499525, 33.129181>,  <46.617905, 29.610989, 32.875996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.245155, 29.499525, 33.129181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.032772, 29.166185, 33.190639>,  <46.905342, 28.966181, 33.227512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.032772, 29.166185, 33.190639>,  <47.245155, 29.499525, 33.129181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.032772, 29.166185, 33.190639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625542, -0.507769, -0.592341,
		0.571644, -0.218400, 0.790901,
		-0.530962, -0.833350, 0.153644,
		46.873482, 28.916180, 33.236732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.721882, 29.085081, 33.364723>,  <47.245155, 29.499525, 33.129181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.721882, 29.085081, 33.364723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.409904, 28.859709, 33.255741>,  <47.222717, 28.724485, 33.190350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.409904, 28.859709, 33.255741>,  <47.721882, 29.085081, 33.364723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.409904, 28.859709, 33.255741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599452, -0.547432, -0.583931,
		0.179854, -0.618758, 0.764717,
		-0.779942, -0.563433, -0.272457,
		47.175922, 28.690680, 33.174004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.861774, 28.303679, 33.422573>,  <47.721882, 29.085081, 33.364723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.861774, 28.303679, 33.422573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.560242, 28.293610, 33.159939>,  <47.379322, 28.287567, 33.002357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.560242, 28.293610, 33.159939>,  <47.861774, 28.303679, 33.422573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.560242, 28.293610, 33.159939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586663, -0.475801, -0.655317,
		-0.295905, -0.879193, 0.373444,
		-0.753835, -0.025174, -0.656581,
		47.334091, 28.286058, 32.962963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.967419, 27.742414, 33.122383>,  <47.861774, 28.303679, 33.422573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.967419, 27.742414, 33.122383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717430, 27.915836, 32.862709>,  <47.567436, 28.019890, 32.706905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.717430, 27.915836, 32.862709>,  <47.967419, 27.742414, 33.122383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.717430, 27.915836, 32.862709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447684, -0.482212, -0.753027,
		-0.639525, -0.761249, 0.107272,
		-0.624969, 0.433556, -0.649186,
		47.529938, 28.045904, 32.667953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.639736, 27.189541, 32.659153>,  <47.967419, 27.742414, 33.122383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.639736, 27.189541, 32.659153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637989, 27.536562, 32.460224>,  <47.636940, 27.744774, 32.340866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637989, 27.536562, 32.460224>,  <47.639736, 27.189541, 32.659153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.637989, 27.536562, 32.460224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336228, -0.467100, -0.817782,
		-0.941770, -0.170789, -0.289655,
		-0.004370, 0.867553, -0.497325,
		47.636677, 27.796827, 32.311028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.432049, 26.986122, 31.999666>,  <47.639736, 27.189541, 32.659153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.432049, 26.986122, 31.999666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593143, 27.347315, 31.939766>,  <47.689800, 27.564030, 31.903826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593143, 27.347315, 31.939766>,  <47.432049, 26.986122, 31.999666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593143, 27.347315, 31.939766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239226, -0.261762, -0.935014,
		-0.883500, 0.340742, -0.321438,
		0.402739, 0.902981, -0.149752,
		47.713966, 27.618210, 31.894840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.153252, 27.027935, 31.383678>,  <47.432049, 26.986122, 31.999666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.153252, 27.027935, 31.383678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.377098, 26.918665, 31.070705>,  <47.511406, 26.853102, 30.882921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.377098, 26.918665, 31.070705>,  <47.153252, 27.027935, 31.383678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.377098, 26.918665, 31.070705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074307, -0.923770, 0.375670,
		-0.825414, -0.268372, -0.496658,
		0.559616, -0.273178, -0.782434,
		47.544983, 26.836712, 30.835976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.893772, 26.365803, 31.093800>,  <47.153252, 27.027935, 31.383678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.893772, 26.365803, 31.093800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.285069, 26.416656, 31.028217>,  <47.519848, 26.447168, 30.988869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.285069, 26.416656, 31.028217>,  <46.893772, 26.365803, 31.093800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.285069, 26.416656, 31.028217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175429, -0.928764, 0.326531,
		-0.110763, -0.348188, -0.930858,
		0.978241, 0.127132, -0.163955,
		47.578541, 26.454796, 30.979031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385277, 26.856539, 30.799158>,  <46.893772, 26.365803, 31.093800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385277, 26.856539, 30.799158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.732605, 26.814674, 30.605221>,  <46.941002, 26.789557, 30.488859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.732605, 26.814674, 30.605221>,  <46.385277, 26.856539, 30.799158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.732605, 26.814674, 30.605221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289161, 0.687389, -0.666245,
		0.403005, 0.718709, 0.566608,
		0.868316, -0.104659, -0.484843,
		46.993099, 26.783278, 30.459768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987835, 26.563871, 30.221577>,  <46.385277, 26.856539, 30.799158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987835, 26.563871, 30.221577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217445, 26.246405, 30.302158>,  <46.355213, 26.055923, 30.350508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217445, 26.246405, 30.302158>,  <45.987835, 26.563871, 30.221577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.217445, 26.246405, 30.302158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478541, -0.524796, -0.703980,
		0.664448, 0.307701, -0.681050,
		0.574028, -0.793668, 0.201452,
		46.389652, 26.008305, 30.362595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.949791, 26.077642, 29.621389>,  <45.987835, 26.563871, 30.221577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.949791, 26.077642, 29.621389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.161930, 25.844774, 29.867903>,  <46.289215, 25.705053, 30.015812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.161930, 25.844774, 29.867903>,  <45.949791, 26.077642, 29.621389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.161930, 25.844774, 29.867903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235160, -0.799435, -0.552814,
		0.814512, 0.148258, -0.560883,
		0.530348, -0.582171, 0.616285,
		46.321033, 25.670122, 30.052788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.206768, 26.063604, 28.899256>,  <45.949791, 26.077642, 29.621389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.206768, 26.063604, 28.899256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816181, 26.083803, 28.815395>,  <45.581829, 26.095922, 28.765079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816181, 26.083803, 28.815395>,  <46.206768, 26.063604, 28.899256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.816181, 26.083803, 28.815395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011893, -0.958107, -0.286163,
		-0.215317, -0.281924, 0.934964,
		-0.976472, 0.050496, -0.209650,
		45.523239, 26.098951, 28.752501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.910355, 26.329571, 28.951050>,  <46.206768, 26.063604, 28.899256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.910355, 26.329571, 28.951050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.207958, 26.350058, 28.684570>,  <47.386520, 26.362349, 28.524683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.207958, 26.350058, 28.684570>,  <46.910355, 26.329571, 28.951050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.207958, 26.350058, 28.684570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334121, -0.891963, 0.304574,
		-0.578627, -0.449199, -0.680743,
		0.744012, 0.051216, -0.666201,
		47.431160, 26.365423, 28.484711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.978848, 27.105761, 29.034367>,  <46.910355, 26.329571, 28.951050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.978848, 27.105761, 29.034367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.368690, 27.132645, 28.948923>,  <47.602596, 27.148775, 28.897657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.368690, 27.132645, 28.948923>,  <46.978848, 27.105761, 29.034367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.368690, 27.132645, 28.948923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118451, 0.964250, -0.237047,
		0.190040, 0.256329, 0.947724,
		0.974605, 0.067210, -0.213608,
		47.661072, 27.152807, 28.884840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.981422, 27.713823, 28.549555>,  <46.978848, 27.105761, 29.034367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.981422, 27.713823, 28.549555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.583961, 27.669542, 28.541563>,  <46.345486, 27.642975, 28.536768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.583961, 27.669542, 28.541563>,  <46.981422, 27.713823, 28.549555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.583961, 27.669542, 28.541563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107483, 0.881953, 0.458918,
		-0.033184, 0.458153, -0.888254,
		-0.993653, -0.110701, -0.019977,
		46.285866, 27.636332, 28.535570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.750160, 28.306204, 28.274851>,  <46.981422, 27.713823, 28.549555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.750160, 28.306204, 28.274851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477482, 28.130260, 28.508709>,  <46.313873, 28.024694, 28.649023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.477482, 28.130260, 28.508709>,  <46.750160, 28.306204, 28.274851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.477482, 28.130260, 28.508709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278275, 0.894921, 0.348826,
		-0.676645, 0.075102, -0.732469,
		-0.681699, -0.439859, 0.584645,
		46.272972, 27.998302, 28.684103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048813, 28.575954, 28.242445>,  <46.750160, 28.306204, 28.274851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048813, 28.575954, 28.242445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153732, 28.444370, 28.605318>,  <46.216686, 28.365419, 28.823042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153732, 28.444370, 28.605318>,  <46.048813, 28.575954, 28.242445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153732, 28.444370, 28.605318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260413, 0.881092, 0.394794,
		-0.929184, -0.339798, 0.145448,
		0.262303, -0.328959, 0.907184,
		46.232422, 28.345682, 28.877474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437824, 28.783615, 28.616667>,  <46.048813, 28.575954, 28.242445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437824, 28.783615, 28.616667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698307, 28.693466, 28.906530>,  <45.854599, 28.639378, 29.080448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698307, 28.693466, 28.906530>,  <45.437824, 28.783615, 28.616667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698307, 28.693466, 28.906530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355037, 0.753468, 0.553385,
		-0.670725, -0.617651, 0.410651,
		0.651212, -0.225373, 0.724659,
		45.893669, 28.625854, 29.123928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046368, 28.703665, 29.261759>,  <45.437824, 28.783615, 28.616667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.046368, 28.703665, 29.261759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429165, 28.779676, 29.349440>,  <45.658844, 28.825283, 29.402048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.429165, 28.779676, 29.349440>,  <45.046368, 28.703665, 29.261759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.429165, 28.779676, 29.349440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284595, 0.761527, 0.582308,
		-0.056274, -0.619650, 0.782859,
		0.956995, 0.190029, 0.219203,
		45.716263, 28.836685, 29.415201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949051, 28.774588, 29.936506>,  <45.046368, 28.703665, 29.261759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949051, 28.774588, 29.936506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.308914, 28.928154, 29.853342>,  <45.524830, 29.020294, 29.803444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.308914, 28.928154, 29.853342>,  <44.949051, 28.774588, 29.936506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.308914, 28.928154, 29.853342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106807, 0.655265, 0.747810,
		0.423334, -0.650565, 0.630518,
		0.899655, 0.383918, -0.207911,
		45.578812, 29.043329, 29.790968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237915, 28.839087, 30.531202>,  <44.949051, 28.774588, 29.936506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237915, 28.839087, 30.531202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442993, 29.102228, 30.310522>,  <45.566040, 29.260113, 30.178114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442993, 29.102228, 30.310522>,  <45.237915, 28.839087, 30.531202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442993, 29.102228, 30.310522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119217, 0.690902, 0.713050,
		0.850252, -0.299807, 0.432651,
		0.512697, 0.657852, -0.551699,
		45.596802, 29.299583, 30.145012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689796, 29.228432, 30.965151>,  <45.237915, 28.839087, 30.531202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689796, 29.228432, 30.965151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663620, 29.466536, 30.644804>,  <45.647915, 29.609398, 30.452597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663620, 29.466536, 30.644804>,  <45.689796, 29.228432, 30.965151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663620, 29.466536, 30.644804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150933, 0.787446, 0.597618,
		0.986375, 0.159985, 0.038313,
		-0.065440, 0.595259, -0.800865,
		45.643990, 29.645113, 30.404545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978901, 29.795990, 31.163519>,  <45.689796, 29.228432, 30.965151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978901, 29.795990, 31.163519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795307, 29.926212, 30.832861>,  <45.685150, 30.004345, 30.634466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795307, 29.926212, 30.832861>,  <45.978901, 29.795990, 31.163519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.795307, 29.926212, 30.832861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171705, 0.880397, 0.442062,
		0.871694, 0.344839, -0.348190,
		-0.458985, 0.325556, -0.826647,
		45.657612, 30.023880, 30.584867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328468, 30.405605, 31.078724>,  <45.978901, 29.795990, 31.163519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328468, 30.405605, 31.078724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964520, 30.402601, 30.912792>,  <45.746151, 30.400799, 30.813232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964520, 30.402601, 30.912792>,  <46.328468, 30.405605, 31.078724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.964520, 30.402601, 30.912792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195677, 0.889424, 0.413081,
		0.365856, 0.457022, -0.810728,
		-0.909868, -0.007512, -0.414830,
		45.691559, 30.400347, 30.788343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.219345, 31.094894, 31.194307>,  <46.328468, 30.405605, 31.078724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.219345, 31.094894, 31.194307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850258, 31.002693, 31.070717>,  <45.628807, 30.947372, 30.996563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850258, 31.002693, 31.070717>,  <46.219345, 31.094894, 31.194307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850258, 31.002693, 31.070717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352297, 0.829608, 0.433171,
		0.156483, 0.508545, -0.846697,
		-0.922713, -0.230505, -0.308978,
		45.573444, 30.933542, 30.978024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.981846, 31.664358, 30.962420>,  <46.219345, 31.094894, 31.194307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.981846, 31.664358, 30.962420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659756, 31.447281, 31.058001>,  <45.466503, 31.317034, 31.115349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659756, 31.447281, 31.058001>,  <45.981846, 31.664358, 30.962420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.659756, 31.447281, 31.058001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357666, 0.765928, 0.534257,
		-0.472958, 0.344731, -0.810846,
		-0.805225, -0.542693, 0.238953,
		45.418190, 31.284473, 31.129686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461464, 32.099033, 30.834732>,  <45.981846, 31.664358, 30.962420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461464, 32.099033, 30.834732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321716, 31.822853, 31.088099>,  <45.237869, 31.657145, 31.240118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321716, 31.822853, 31.088099>,  <45.461464, 32.099033, 30.834732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321716, 31.822853, 31.088099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381255, 0.722276, 0.577029,
		-0.855912, -0.039897, -0.515580,
		-0.349369, -0.690453, 0.633416,
		45.216904, 31.615717, 31.278124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770966, 32.275696, 31.125395>,  <45.461464, 32.099033, 30.834732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770966, 32.275696, 31.125395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937473, 32.029556, 31.393147>,  <45.037376, 31.881874, 31.553799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.937473, 32.029556, 31.393147>,  <44.770966, 32.275696, 31.125395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937473, 32.029556, 31.393147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154636, 0.677561, 0.719027,
		-0.895995, -0.402819, 0.186894,
		0.416270, -0.615344, 0.669381,
		45.062355, 31.844954, 31.593962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357372, 32.367805, 31.788418>,  <44.770966, 32.275696, 31.125395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357372, 32.367805, 31.788418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675476, 32.173843, 31.933981>,  <44.866337, 32.057465, 32.021320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675476, 32.173843, 31.933981>,  <44.357372, 32.367805, 31.788418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675476, 32.173843, 31.933981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107085, 0.478458, 0.871556,
		-0.596739, -0.732081, 0.328572,
		0.795258, -0.484906, 0.363910,
		44.914055, 32.028370, 32.043156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286209, 32.442745, 32.487862>,  <44.357372, 32.367805, 31.788418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286209, 32.442745, 32.487862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676567, 32.383316, 32.423927>,  <44.910782, 32.347656, 32.385567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676567, 32.383316, 32.423927>,  <44.286209, 32.442745, 32.487862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676567, 32.383316, 32.423927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218088, 0.638071, 0.738446,
		-0.007730, -0.755507, 0.655096,
		0.975899, -0.148576, -0.159835,
		44.969337, 32.338741, 32.375977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.504040, 32.180878, 33.120464>,  <44.286209, 32.442745, 32.487862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.504040, 32.180878, 33.120464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810608, 32.329941, 32.911186>,  <44.994549, 32.419380, 32.785618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810608, 32.329941, 32.911186>,  <44.504040, 32.180878, 33.120464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810608, 32.329941, 32.911186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268619, 0.553929, 0.788040,
		0.583487, -0.744504, 0.324433,
		0.766411, 0.372662, -0.523198,
		45.040531, 32.441738, 32.754227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.040085, 32.101631, 33.555031>,  <44.504040, 32.180878, 33.120464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.040085, 32.101631, 33.555031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162785, 32.386707, 33.302689>,  <45.236404, 32.557751, 33.151283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.162785, 32.386707, 33.302689>,  <45.040085, 32.101631, 33.555031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.162785, 32.386707, 33.302689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374412, 0.519020, 0.768397,
		0.875055, -0.471904, -0.107631,
		0.306747, 0.712689, -0.630857,
		45.254810, 32.600513, 33.113430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777733, 32.195335, 33.734688>,  <45.040085, 32.101631, 33.555031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777733, 32.195335, 33.734688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665092, 32.519745, 33.529575>,  <45.597507, 32.714390, 33.406509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665092, 32.519745, 33.529575>,  <45.777733, 32.195335, 33.734688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.665092, 32.519745, 33.529575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408140, 0.584896, 0.700940,
		0.868401, -0.011898, -0.495720,
		-0.281605, 0.811020, -0.512781,
		45.580612, 32.763050, 33.375740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.229683, 32.669182, 33.844498>,  <45.777733, 32.195335, 33.734688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.229683, 32.669182, 33.844498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934986, 32.901012, 33.705181>,  <45.758167, 33.040112, 33.621590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934986, 32.901012, 33.705181>,  <46.229683, 32.669182, 33.844498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.934986, 32.901012, 33.705181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243853, 0.708160, 0.662605,
		0.630677, 0.403235, -0.663060,
		-0.736738, 0.579579, -0.348290,
		45.713966, 33.074886, 33.600693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.524376, 33.311874, 33.841938>,  <46.229683, 32.669182, 33.844498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.524376, 33.311874, 33.841938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.132797, 33.393257, 33.835346>,  <45.897850, 33.442089, 33.831390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.132797, 33.393257, 33.835346>,  <46.524376, 33.311874, 33.841938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.132797, 33.393257, 33.835346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172267, 0.866778, 0.467995,
		0.109505, 0.455302, -0.883577,
		-0.978945, 0.203459, -0.016484,
		45.839115, 33.454296, 33.830402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.377251, 33.985279, 33.511768>,  <46.524376, 33.311874, 33.841938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.377251, 33.985279, 33.511768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.038761, 33.953072, 33.722454>,  <45.835667, 33.933746, 33.848866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.038761, 33.953072, 33.722454>,  <46.377251, 33.985279, 33.511768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.038761, 33.953072, 33.722454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237712, 0.827643, 0.508429,
		-0.476871, 0.555449, -0.681227,
		-0.846219, -0.080519, 0.526716,
		45.784897, 33.928917, 33.880470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.150177, 34.679482, 33.766033>,  <46.377251, 33.985279, 33.511768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.150177, 34.679482, 33.766033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927406, 34.452251, 34.008400>,  <45.793743, 34.315914, 34.153820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.927406, 34.452251, 34.008400>,  <46.150177, 34.679482, 33.766033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927406, 34.452251, 34.008400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069067, 0.758669, 0.647804,
		-0.827687, 0.318929, -0.461756,
		-0.556924, -0.568071, 0.605913,
		45.760330, 34.281830, 34.190174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.838848, 35.018467, 34.252140>,  <46.150177, 34.679482, 33.766033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.838848, 35.018467, 34.252140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.227871, 34.949760, 34.189358>,  <46.461285, 34.908539, 34.151688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.227871, 34.949760, 34.189358>,  <45.838848, 35.018467, 34.252140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.227871, 34.949760, 34.189358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191119, 0.204978, 0.959926,
		-0.132706, -0.963577, 0.232180,
		0.972554, -0.171762, -0.156956,
		46.519638, 34.898232, 34.142269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.259327, 34.663544, 34.785618>,  <45.838848, 35.018467, 34.252140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.259327, 34.663544, 34.785618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503738, 34.915703, 34.594101>,  <46.650383, 35.066998, 34.479191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.503738, 34.915703, 34.594101>,  <46.259327, 34.663544, 34.785618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.503738, 34.915703, 34.594101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409550, 0.265856, 0.872691,
		0.677434, -0.729327, -0.095735,
		0.611026, 0.630399, -0.478795,
		46.687046, 35.104824, 34.450462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.071667, 34.492477, 34.923130>,  <46.259327, 34.663544, 34.785618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.071667, 34.492477, 34.923130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942989, 34.864517, 34.852219>,  <46.865784, 35.087742, 34.809673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942989, 34.864517, 34.852219>,  <47.071667, 34.492477, 34.923130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.942989, 34.864517, 34.852219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244878, 0.262587, 0.933318,
		0.914630, 0.256832, -0.312234,
		-0.321694, 0.930100, -0.177278,
		46.846481, 35.143547, 34.799034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.702366, 34.944435, 34.646591>,  <47.071667, 34.492477, 34.923130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.702366, 34.944435, 34.646591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.563034, 35.084663, 34.994331>,  <47.479435, 35.168800, 35.202976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.563034, 35.084663, 34.994331>,  <47.702366, 34.944435, 34.646591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.563034, 35.084663, 34.994331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921544, 0.041628, -0.386035,
		-0.171522, -0.935611, 0.308565,
		-0.348334, 0.350570, 0.869347,
		47.458534, 35.189835, 35.255135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.001045, 38.472775, 42.251347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.785683, 38.135891, 42.239971>,  <34.656464, 37.933762, 42.233147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.785683, 38.135891, 42.239971>,  <35.001045, 38.472775, 42.251347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785683, 38.135891, 42.239971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096829, -0.028305, -0.994898,
		0.837103, -0.538415, 0.096790,
		-0.538408, -0.842205, -0.028440,
		34.624161, 37.883228, 42.231438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361347, 38.009758, 41.764202>,  <35.001045, 38.472775, 42.251347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361347, 38.009758, 41.764202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.985806, 37.878147, 41.804794>,  <34.760479, 37.799183, 41.829151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.985806, 37.878147, 41.804794>,  <35.361347, 38.009758, 41.764202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985806, 37.878147, 41.804794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087651, -0.056648, -0.994539,
		0.332976, -0.942621, 0.024345,
		-0.938853, -0.329024, 0.101484,
		34.704151, 37.779442, 41.835239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363144, 37.480583, 41.352303>,  <35.361347, 38.009758, 41.764202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363144, 37.480583, 41.352303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.965672, 37.507061, 41.388557>,  <34.727188, 37.522949, 41.410309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.965672, 37.507061, 41.388557>,  <35.363144, 37.480583, 41.352303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965672, 37.507061, 41.388557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106628, -0.304703, -0.946460,
		-0.035032, -0.950145, 0.309836,
		-0.993682, 0.066193, 0.090637,
		34.667568, 37.526920, 41.415749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174538, 36.970463, 40.986980>,  <35.363144, 37.480583, 41.352303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174538, 36.970463, 40.986980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.870502, 37.229206, 41.011761>,  <34.688080, 37.384453, 41.026630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.870502, 37.229206, 41.011761>,  <35.174538, 36.970463, 40.986980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870502, 37.229206, 41.011761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161052, -0.095158, -0.982348,
		-0.629548, -0.756647, 0.176507,
		-0.760086, 0.646862, 0.061953,
		34.642475, 37.423264, 41.030346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631451, 36.612816, 40.713089>,  <35.174538, 36.970463, 40.986980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631451, 36.612816, 40.713089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.507496, 36.991035, 40.673286>,  <34.433125, 37.217968, 40.649406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.507496, 36.991035, 40.673286>,  <34.631451, 36.612816, 40.713089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507496, 36.991035, 40.673286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244678, -0.180442, -0.952667,
		-0.918752, -0.270869, 0.287272,
		-0.309884, 0.945553, -0.099506,
		34.414532, 37.274700, 40.643436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890942, 36.637852, 40.321037>,  <34.631451, 36.612816, 40.713089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890942, 36.637852, 40.321037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076691, 36.991165, 40.295208>,  <34.188141, 37.203152, 40.279713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076691, 36.991165, 40.295208>,  <33.890942, 36.637852, 40.321037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076691, 36.991165, 40.295208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119804, -0.009587, -0.992751,
		-0.877500, 0.468740, 0.101370,
		0.464371, 0.883284, -0.064569,
		34.216003, 37.256149, 40.275837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495884, 36.982906, 39.800110>,  <33.890942, 36.637852, 40.321037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495884, 36.982906, 39.800110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.832096, 37.198902, 39.817654>,  <34.033821, 37.328499, 39.828178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.832096, 37.198902, 39.817654>,  <33.495884, 36.982906, 39.800110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832096, 37.198902, 39.817654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063892, 0.179192, -0.981737,
		-0.537987, 0.822376, 0.185117,
		0.840528, 0.539989, 0.043860,
		34.084255, 37.360897, 39.830811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395290, 37.698921, 39.550838>,  <33.495884, 36.982906, 39.800110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395290, 37.698921, 39.550838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.782993, 37.619949, 39.492096>,  <34.015614, 37.572567, 39.456848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.782993, 37.619949, 39.492096>,  <33.395290, 37.698921, 39.550838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782993, 37.619949, 39.492096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073772, 0.336228, -0.938887,
		0.234739, 0.920855, 0.311326,
		0.969255, -0.197426, -0.146859,
		34.073769, 37.560722, 39.448040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665070, 38.295708, 39.161705>,  <33.395290, 37.698921, 39.550838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665070, 38.295708, 39.161705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.907276, 37.980614, 39.116413>,  <34.052601, 37.791557, 39.089237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.907276, 37.980614, 39.116413>,  <33.665070, 38.295708, 39.161705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907276, 37.980614, 39.116413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082704, 0.203793, -0.975514,
		0.791524, 0.581325, 0.188549,
		0.605516, -0.787737, -0.113229,
		34.088932, 37.744293, 39.082443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896706, 38.409698, 38.557766>,  <33.665070, 38.295708, 39.161705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896706, 38.409698, 38.557766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.083160, 38.056679, 38.582508>,  <34.195034, 37.844868, 38.597351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.083160, 38.056679, 38.582508>,  <33.896706, 38.409698, 38.557766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083160, 38.056679, 38.582508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348329, 0.118813, -0.929812,
		0.813254, 0.454966, 0.362800,
		0.466138, -0.882547, 0.061853,
		34.223003, 37.791916, 38.601063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686474, 38.358112, 38.445278>,  <33.896706, 38.409698, 38.557766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686474, 38.358112, 38.445278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544380, 37.999355, 38.339909>,  <34.459126, 37.784100, 38.276688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.544380, 37.999355, 38.339909>,  <34.686474, 38.358112, 38.445278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544380, 37.999355, 38.339909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343550, 0.136814, -0.929116,
		0.869359, -0.420548, 0.259528,
		-0.355230, -0.896895, -0.263420,
		34.437813, 37.730286, 38.260883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265526, 38.016758, 38.012226>,  <34.686474, 38.358112, 38.445278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265526, 38.016758, 38.012226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.931164, 37.810661, 37.936550>,  <34.730549, 37.687004, 37.891144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.931164, 37.810661, 37.936550>,  <35.265526, 38.016758, 38.012226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931164, 37.810661, 37.936550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313393, -0.165046, -0.935171,
		0.450613, -0.841003, 0.299435,
		-0.835902, -0.515241, -0.189193,
		34.680393, 37.656090, 37.879791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502293, 37.370289, 37.642136>,  <35.265526, 38.016758, 38.012226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502293, 37.370289, 37.642136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.112305, 37.418800, 37.567593>,  <34.878311, 37.447906, 37.522865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.112305, 37.418800, 37.567593>,  <35.502293, 37.370289, 37.642136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112305, 37.418800, 37.567593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178240, -0.074753, -0.981143,
		-0.132928, -0.989799, 0.051264,
		-0.974967, 0.121284, -0.186359,
		34.819813, 37.455185, 37.511684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217632, 36.859917, 37.315960>,  <35.502293, 37.370289, 37.642136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217632, 36.859917, 37.315960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.975765, 37.155308, 37.196609>,  <34.830647, 37.332542, 37.125000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.975765, 37.155308, 37.196609>,  <35.217632, 36.859917, 37.315960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975765, 37.155308, 37.196609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184358, -0.234676, -0.954432,
		-0.774850, -0.632119, 0.005756,
		-0.604665, 0.738480, -0.298374,
		34.794365, 37.376850, 37.107098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798046, 36.517387, 36.837353>,  <35.217632, 36.859917, 37.315960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798046, 36.517387, 36.837353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774857, 36.909920, 36.764008>,  <34.760941, 37.145439, 36.720001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774857, 36.909920, 36.764008>,  <34.798046, 36.517387, 36.837353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774857, 36.909920, 36.764008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140526, -0.173819, -0.974700,
		-0.988378, -0.082278, -0.127825,
		-0.057978, 0.981334, -0.183361,
		34.757462, 37.204319, 36.709000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363758, 36.586941, 36.339046>,  <34.798046, 36.517387, 36.837353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363758, 36.586941, 36.339046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.541294, 36.944897, 36.320415>,  <34.647816, 37.159672, 36.309235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.541294, 36.944897, 36.320415>,  <34.363758, 36.586941, 36.339046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541294, 36.944897, 36.320415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241267, -0.169400, -0.955560,
		-0.863014, 0.412880, -0.291095,
		0.443843, 0.894893, -0.046580,
		34.674446, 37.213364, 36.306442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079113, 36.818756, 35.697407>,  <34.363758, 36.586941, 36.339046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079113, 36.818756, 35.697407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419350, 37.003761, 35.797474>,  <34.623489, 37.114765, 35.857513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.419350, 37.003761, 35.797474>,  <34.079113, 36.818756, 35.697407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419350, 37.003761, 35.797474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391193, -0.238684, -0.888818,
		-0.351379, 0.853881, -0.383953,
		0.850589, 0.462512, 0.250164,
		34.674526, 37.142513, 35.872524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156857, 37.217365, 35.197781>,  <34.079113, 36.818756, 35.697407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156857, 37.217365, 35.197781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.517693, 37.179916, 35.366287>,  <34.734196, 37.157448, 35.467392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.517693, 37.179916, 35.366287>,  <34.156857, 37.217365, 35.197781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517693, 37.179916, 35.366287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393547, -0.222064, -0.892081,
		0.177066, 0.970527, -0.163478,
		0.902091, -0.093621, 0.421268,
		34.788319, 37.151829, 35.492668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571011, 37.524818, 34.774403>,  <34.156857, 37.217365, 35.197781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571011, 37.524818, 34.774403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.795528, 37.282146, 34.999577>,  <34.930241, 37.136543, 35.134682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.795528, 37.282146, 34.999577>,  <34.571011, 37.524818, 34.774403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795528, 37.282146, 34.999577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326388, -0.462790, -0.824194,
		0.760538, 0.646351, -0.061751,
		0.561296, -0.606676, 0.562930,
		34.963917, 37.100143, 35.168457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231426, 37.541683, 34.491817>,  <34.571011, 37.524818, 34.774403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231426, 37.541683, 34.491817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232037, 37.204346, 34.706768>,  <35.232403, 37.001945, 34.835739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.232037, 37.204346, 34.706768>,  <35.231426, 37.541683, 34.491817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232037, 37.204346, 34.706768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430627, -0.484447, -0.761493,
		0.902529, 0.232568, 0.362428,
		0.001522, -0.843340, 0.537377,
		35.232494, 36.951344, 34.867981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911533, 37.278095, 34.289806>,  <35.231426, 37.541683, 34.491817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911533, 37.278095, 34.289806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722893, 36.966923, 34.455898>,  <35.609707, 36.780220, 34.555553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722893, 36.966923, 34.455898>,  <35.911533, 37.278095, 34.289806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722893, 36.966923, 34.455898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359955, -0.599696, -0.714701,
		0.804997, -0.187593, 0.562840,
		-0.471605, -0.777929, 0.415229,
		35.581409, 36.733543, 34.580467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473946, 36.741085, 34.474739>,  <35.911533, 37.278095, 34.289806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473946, 36.741085, 34.474739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118675, 36.566841, 34.416248>,  <35.905514, 36.462296, 34.381153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118675, 36.566841, 34.416248>,  <36.473946, 36.741085, 34.474739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118675, 36.566841, 34.416248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418098, -0.634138, -0.650433,
		0.190605, -0.638839, 0.745355,
		-0.888180, -0.435607, -0.146227,
		35.852222, 36.436157, 34.372379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938290, 37.189438, 34.259327>,  <36.473946, 36.741085, 34.474739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938290, 37.189438, 34.259327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.294216, 37.358940, 34.191620>,  <37.507774, 37.460644, 34.150997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.294216, 37.358940, 34.191620>,  <36.938290, 37.189438, 34.259327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294216, 37.358940, 34.191620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115251, 0.150214, 0.981913,
		0.441520, -0.893233, 0.084825,
		0.889819, 0.423758, -0.169268,
		37.561161, 37.486069, 34.140839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409630, 36.824211, 34.671875>,  <36.938290, 37.189438, 34.259327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409630, 36.824211, 34.671875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594936, 37.174988, 34.620724>,  <37.706120, 37.385456, 34.590031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594936, 37.174988, 34.620724>,  <37.409630, 36.824211, 34.671875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594936, 37.174988, 34.620724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302413, -0.020792, 0.952950,
		0.833026, -0.480141, -0.274832,
		0.463265, 0.876945, -0.127881,
		37.733917, 37.438072, 34.582359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028809, 36.828011, 35.096493>,  <37.409630, 36.824211, 34.671875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028809, 36.828011, 35.096493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983578, 37.218624, 35.023178>,  <37.956440, 37.452991, 34.979191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983578, 37.218624, 35.023178>,  <38.028809, 36.828011, 35.096493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983578, 37.218624, 35.023178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130897, 0.197503, 0.971524,
		0.984926, 0.085866, -0.150159,
		-0.113078, 0.976535, -0.183287,
		37.949654, 37.511585, 34.968193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517479, 37.090561, 35.536980>,  <38.028809, 36.828011, 35.096493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517479, 37.090561, 35.536980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282066, 37.401836, 35.449299>,  <38.140820, 37.588600, 35.396690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282066, 37.401836, 35.449299>,  <38.517479, 37.090561, 35.536980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282066, 37.401836, 35.449299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057476, 0.310719, 0.948763,
		0.806427, 0.545780, -0.227596,
		-0.588534, 0.778189, -0.219203,
		38.105507, 37.635292, 35.383537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854496, 37.669472, 35.793167>,  <38.517479, 37.090561, 35.536980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854496, 37.669472, 35.793167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.463425, 37.747952, 35.763092>,  <38.228783, 37.795040, 35.745049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.463425, 37.747952, 35.763092>,  <38.854496, 37.669472, 35.793167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463425, 37.747952, 35.763092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005137, 0.335406, 0.942060,
		0.210052, 0.921416, -0.326911,
		-0.977677, 0.196202, -0.075186,
		38.170120, 37.806812, 35.740536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853058, 38.397823, 36.071377>,  <38.854496, 37.669472, 35.793167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853058, 38.397823, 36.071377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.484570, 38.242374, 36.078529>,  <38.263477, 38.149105, 36.082821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.484570, 38.242374, 36.078529>,  <38.853058, 38.397823, 36.071377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484570, 38.242374, 36.078529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125940, 0.341388, 0.931447,
		-0.368084, 0.855820, -0.363437,
		-0.921224, -0.388622, 0.017878,
		38.208202, 38.125790, 36.083893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388016, 38.998146, 36.300797>,  <38.853058, 38.397823, 36.071377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388016, 38.998146, 36.300797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165154, 38.671291, 36.359943>,  <38.031437, 38.475178, 36.395432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165154, 38.671291, 36.359943>,  <38.388016, 38.998146, 36.300797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165154, 38.671291, 36.359943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156031, 0.277914, 0.947849,
		-0.815616, 0.505029, -0.282341,
		-0.557158, -0.817135, 0.147871,
		37.998005, 38.426151, 36.404305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785313, 39.305702, 36.451096>,  <38.388016, 38.998146, 36.300797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785313, 39.305702, 36.451096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.829071, 38.930817, 36.583553>,  <37.855324, 38.705883, 36.663029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.829071, 38.930817, 36.583553>,  <37.785313, 39.305702, 36.451096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829071, 38.930817, 36.583553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076656, 0.324194, 0.942880,
		-0.991038, -0.128530, -0.036378,
		0.109394, -0.937218, 0.331141,
		37.861889, 38.649651, 36.682896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226681, 39.121414, 37.009109>,  <37.785313, 39.305702, 36.451096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226681, 39.121414, 37.009109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.542210, 38.878143, 37.044628>,  <37.731525, 38.732182, 37.065941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.542210, 38.878143, 37.044628>,  <37.226681, 39.121414, 37.009109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542210, 38.878143, 37.044628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078928, 0.243516, 0.966680,
		-0.609535, -0.755528, 0.240092,
		0.788820, -0.608175, 0.088800,
		37.778854, 38.695690, 37.071266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990570, 38.898243, 37.595112>,  <37.226681, 39.121414, 37.009109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990570, 38.898243, 37.595112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.377003, 38.805981, 37.548649>,  <37.608860, 38.750622, 37.520771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.377003, 38.805981, 37.548649>,  <36.990570, 38.898243, 37.595112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377003, 38.805981, 37.548649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132728, 0.057601, 0.989477,
		-0.221537, -0.971329, 0.086261,
		0.966077, -0.230655, -0.116162,
		37.666824, 38.736786, 37.513802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057049, 38.204948, 37.931904>,  <36.990570, 38.898243, 37.595112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057049, 38.204948, 37.931904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430443, 38.348331, 37.936310>,  <37.654480, 38.434361, 37.938953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430443, 38.348331, 37.936310>,  <37.057049, 38.204948, 37.931904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430443, 38.348331, 37.936310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019082, 0.018975, 0.999638,
		0.358115, -0.933355, 0.024553,
		0.933482, 0.358454, 0.011015,
		37.710487, 38.455868, 37.939613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425255, 37.802494, 38.394505>,  <37.057049, 38.204948, 37.931904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425255, 37.802494, 38.394505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639214, 38.139473, 38.368671>,  <37.767590, 38.341660, 38.353172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.639214, 38.139473, 38.368671>,  <37.425255, 37.802494, 38.394505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639214, 38.139473, 38.368671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058715, 0.039193, 0.997505,
		0.842873, -0.537358, -0.028499,
		0.534900, 0.842443, -0.064586,
		37.799683, 38.392204, 38.349297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130989, 37.661316, 38.836880>,  <37.425255, 37.802494, 38.394505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130989, 37.661316, 38.836880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.058395, 38.054516, 38.825695>,  <38.014839, 38.290436, 38.818985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.058395, 38.054516, 38.825695>,  <38.130989, 37.661316, 38.836880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058395, 38.054516, 38.825695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075893, 0.042352, 0.996216,
		0.980461, 0.178675, -0.082289,
		-0.181485, 0.982996, -0.027965,
		38.003948, 38.349415, 38.817307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639118, 38.075287, 39.162888>,  <38.130989, 37.661316, 38.836880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639118, 38.075287, 39.162888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349087, 38.350620, 39.171383>,  <38.175068, 38.515820, 39.176479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349087, 38.350620, 39.171383>,  <38.639118, 38.075287, 39.162888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349087, 38.350620, 39.171383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014277, -0.015804, 0.999773,
		0.688513, 0.725222, 0.001631,
		-0.725083, 0.688334, 0.021235,
		38.131561, 38.557121, 39.177753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864285, 38.466351, 39.673141>,  <38.639118, 38.075287, 39.162888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864285, 38.466351, 39.673141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470215, 38.513577, 39.623367>,  <38.233772, 38.541912, 39.593502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470215, 38.513577, 39.623367>,  <38.864285, 38.466351, 39.673141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470215, 38.513577, 39.623367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100458, 0.190864, 0.976463,
		0.139040, 0.974490, -0.176174,
		-0.985178, 0.118069, -0.124433,
		38.174660, 38.548996, 39.586037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583515, 39.040817, 40.204285>,  <38.864285, 38.466351, 39.673141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583515, 39.040817, 40.204285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.236919, 38.896980, 40.065784>,  <38.028961, 38.810677, 39.982685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.236919, 38.896980, 40.065784>,  <38.583515, 39.040817, 40.204285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236919, 38.896980, 40.065784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436316, 0.208538, 0.875294,
		-0.242547, 0.909506, -0.337593,
		-0.866487, -0.359597, -0.346252,
		37.976974, 38.789101, 39.961910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998596, 39.439529, 40.526299>,  <38.583515, 39.040817, 40.204285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998596, 39.439529, 40.526299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.840420, 39.093754, 40.402122>,  <37.745514, 38.886288, 40.327618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.840420, 39.093754, 40.402122>,  <37.998596, 39.439529, 40.526299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840420, 39.093754, 40.402122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529439, -0.061662, 0.846104,
		-0.750546, 0.498945, -0.433283,
		-0.395443, -0.864437, -0.310441,
		37.721786, 38.834423, 40.308990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413643, 39.501724, 40.615589>,  <37.998596, 39.439529, 40.526299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413643, 39.501724, 40.615589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429787, 39.102177, 40.605587>,  <37.439472, 38.862446, 40.599586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429787, 39.102177, 40.605587>,  <37.413643, 39.501724, 40.615589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429787, 39.102177, 40.605587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522221, -0.042423, 0.851754,
		-0.851854, -0.021322, -0.523344,
		0.040363, -0.998872, -0.025004,
		37.441895, 38.802513, 40.598087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.598625, 39.090092, 40.680088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.869785, 38.822292, 40.801559>,  <37.032482, 38.661613, 40.874443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.869785, 38.822292, 40.801559>,  <36.598625, 39.090092, 40.680088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869785, 38.822292, 40.801559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524518, -0.151037, 0.837895,
		-0.515101, -0.727297, -0.453552,
		0.677902, -0.669497, 0.303682,
		37.073154, 38.621445, 40.892666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219566, 38.492542, 40.942966>,  <36.598625, 39.090092, 40.680088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219566, 38.492542, 40.942966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576275, 38.429218, 41.112522>,  <36.790298, 38.391224, 41.214256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576275, 38.429218, 41.112522>,  <36.219566, 38.492542, 40.942966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576275, 38.429218, 41.112522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448780, -0.189806, 0.873253,
		-0.057784, -0.968975, -0.240308,
		0.891773, -0.158305, 0.423888,
		36.843807, 38.381725, 41.239689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144058, 37.985687, 41.413242>,  <36.219566, 38.492542, 40.942966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144058, 37.985687, 41.413242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485809, 38.156586, 41.531567>,  <36.690861, 38.259125, 41.602562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485809, 38.156586, 41.531567>,  <36.144058, 37.985687, 41.413242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485809, 38.156586, 41.531567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334962, 0.017586, 0.942067,
		0.397297, -0.903962, 0.158138,
		0.854374, 0.427251, 0.295807,
		36.742123, 38.284760, 41.620308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370434, 37.681030, 42.066879>,  <36.144058, 37.985687, 41.413242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370434, 37.681030, 42.066879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579559, 38.021763, 42.053978>,  <36.705036, 38.226204, 42.046238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579559, 38.021763, 42.053978>,  <36.370434, 37.681030, 42.066879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579559, 38.021763, 42.053978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013872, 0.046337, 0.998829,
		0.852332, -0.521758, 0.036043,
		0.522818, 0.851834, -0.032256,
		36.736404, 38.277313, 42.044300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986977, 37.694691, 42.616943>,  <36.370434, 37.681030, 42.066879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986977, 37.694691, 42.616943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872784, 38.071499, 42.546402>,  <36.804268, 38.297585, 42.504078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872784, 38.071499, 42.546402>,  <36.986977, 37.694691, 42.616943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872784, 38.071499, 42.546402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088553, 0.157299, 0.983573,
		0.954283, 0.296412, 0.038512,
		-0.285485, 0.942017, -0.176356,
		36.787140, 38.354103, 42.493496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365696, 38.064930, 43.139866>,  <36.986977, 37.694691, 42.616943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365696, 38.064930, 43.139866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.098148, 38.325115, 42.995911>,  <36.937622, 38.481228, 42.909538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.098148, 38.325115, 42.995911>,  <37.365696, 38.064930, 43.139866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098148, 38.325115, 42.995911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005545, 0.488468, 0.872564,
		0.743363, 0.581632, -0.330326,
		-0.668865, 0.650464, -0.359884,
		36.897488, 38.520256, 42.887947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644039, 38.661148, 43.235619>,  <37.365696, 38.064930, 43.139866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644039, 38.661148, 43.235619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.257233, 38.752758, 43.191036>,  <37.025146, 38.807724, 43.164288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.257233, 38.752758, 43.191036>,  <37.644039, 38.661148, 43.235619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257233, 38.752758, 43.191036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005171, 0.419840, 0.907583,
		0.254651, 0.878227, -0.404809,
		-0.967019, 0.229024, -0.111454,
		36.967129, 38.821465, 43.157600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683006, 39.334759, 43.344887>,  <37.644039, 38.661148, 43.235619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683006, 39.334759, 43.344887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304611, 39.214401, 43.393177>,  <37.077576, 39.142185, 43.422153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304611, 39.214401, 43.393177>,  <37.683006, 39.334759, 43.344887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304611, 39.214401, 43.393177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021452, 0.313472, 0.949355,
		-0.323504, 0.900664, -0.290084,
		-0.945983, -0.300898, 0.120730,
		37.020817, 39.124130, 43.429398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451824, 39.894405, 43.570053>,  <37.683006, 39.334759, 43.344887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451824, 39.894405, 43.570053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.190155, 39.612556, 43.680012>,  <37.033154, 39.443447, 43.745987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.190155, 39.612556, 43.680012>,  <37.451824, 39.894405, 43.570053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190155, 39.612556, 43.680012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059753, 0.314174, 0.947483,
		-0.753980, 0.636244, -0.163422,
		-0.654174, -0.704619, 0.274898,
		36.993904, 39.401173, 43.762482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874935, 40.167362, 43.890484>,  <37.451824, 39.894405, 43.570053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874935, 40.167362, 43.890484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890858, 39.787033, 44.013348>,  <36.900410, 39.558834, 44.087067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890858, 39.787033, 44.013348>,  <36.874935, 40.167362, 43.890484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890858, 39.787033, 44.013348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235658, 0.307661, 0.921852,
		-0.971021, 0.035690, 0.236316,
		0.039805, -0.950827, 0.307155,
		36.902798, 39.501785, 44.105495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705902, 40.238335, 44.586449>,  <36.874935, 40.167362, 43.890484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705902, 40.238335, 44.586449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840637, 39.861809, 44.577908>,  <36.921478, 39.635891, 44.572784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840637, 39.861809, 44.577908>,  <36.705902, 40.238335, 44.586449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840637, 39.861809, 44.577908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361732, 0.108440, 0.925954,
		-0.869303, -0.319624, 0.377032,
		0.336842, -0.941319, -0.021351,
		36.941689, 39.579414, 44.571503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410683, 39.869495, 45.187752>,  <36.705902, 40.238335, 44.586449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410683, 39.869495, 45.187752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754574, 39.694950, 45.081573>,  <36.960907, 39.590221, 45.017868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754574, 39.694950, 45.081573>,  <36.410683, 39.869495, 45.187752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754574, 39.694950, 45.081573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279292, -0.033481, 0.959622,
		-0.427633, -0.899146, 0.093089,
		0.859724, -0.436365, -0.265442,
		37.012489, 39.564041, 45.001942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472019, 39.214077, 45.663460>,  <36.410683, 39.869495, 45.187752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472019, 39.214077, 45.663460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840408, 39.293762, 45.529522>,  <37.061443, 39.341572, 45.449158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840408, 39.293762, 45.529522>,  <36.472019, 39.214077, 45.663460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840408, 39.293762, 45.529522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369549, -0.174307, 0.912716,
		0.123460, -0.964329, -0.234151,
		0.920973, 0.199215, -0.334847,
		37.116699, 39.353527, 45.429070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847374, 38.676296, 45.955349>,  <36.472019, 39.214077, 45.663460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847374, 38.676296, 45.955349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.119820, 38.949635, 45.850185>,  <37.283287, 39.113640, 45.787086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.119820, 38.949635, 45.850185>,  <36.847374, 38.676296, 45.955349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119820, 38.949635, 45.850185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528792, -0.210741, 0.822172,
		0.506425, -0.699015, -0.504888,
		0.681111, 0.683349, -0.262909,
		37.324154, 39.154640, 45.771313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444035, 38.385029, 46.109093>,  <36.847374, 38.676296, 45.955349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444035, 38.385029, 46.109093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525185, 38.776543, 46.097595>,  <37.573875, 39.011452, 46.090698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525185, 38.776543, 46.097595>,  <37.444035, 38.385029, 46.109093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525185, 38.776543, 46.097595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566035, -0.093269, 0.819088,
		0.799029, -0.182437, -0.572947,
		0.202870, 0.978784, -0.028741,
		37.586044, 39.070179, 46.088974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139984, 38.355137, 46.288464>,  <37.444035, 38.385029, 46.109093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139984, 38.355137, 46.288464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.008354, 38.729691, 46.337296>,  <37.929379, 38.954422, 46.366596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.008354, 38.729691, 46.337296>,  <38.139984, 38.355137, 46.288464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008354, 38.729691, 46.337296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434157, 0.035215, 0.900148,
		0.838582, 0.349216, -0.418125,
		-0.329071, 0.936380, 0.122084,
		37.909634, 39.010605, 46.373920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686024, 38.772488, 46.537056>,  <38.139984, 38.355137, 46.288464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686024, 38.772488, 46.537056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.361015, 38.980526, 46.642365>,  <38.166012, 39.105347, 46.705551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.361015, 38.980526, 46.642365>,  <38.686024, 38.772488, 46.537056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361015, 38.980526, 46.642365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401838, 0.172544, 0.899308,
		0.422298, 0.836500, -0.349189,
		-0.812521, 0.520093, 0.263272,
		38.117260, 39.136555, 46.721348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860847, 39.408180, 46.709385>,  <38.686024, 38.772488, 46.537056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860847, 39.408180, 46.709385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.527710, 39.373013, 46.927975>,  <38.327827, 39.351913, 47.059128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.527710, 39.373013, 46.927975>,  <38.860847, 39.408180, 46.709385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527710, 39.373013, 46.927975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541092, 0.078560, 0.837286,
		-0.116545, 0.993025, -0.017856,
		-0.832848, -0.087920, 0.546474,
		38.277855, 39.346638, 47.091915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965397, 39.778740, 47.346317>,  <38.860847, 39.408180, 46.709385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965397, 39.778740, 47.346317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.630882, 39.588440, 47.455338>,  <38.430172, 39.474262, 47.520748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.630882, 39.588440, 47.455338>,  <38.965397, 39.778740, 47.346317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630882, 39.588440, 47.455338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412053, -0.217404, 0.884844,
		-0.361709, 0.852291, 0.377846,
		-0.836289, -0.475748, 0.272552,
		38.379997, 39.445717, 47.537102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948639, 40.033806, 47.931217>,  <38.965397, 39.778740, 47.346317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948639, 40.033806, 47.931217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.716301, 39.708206, 47.933388>,  <38.576897, 39.512848, 47.934689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.716301, 39.708206, 47.933388>,  <38.948639, 40.033806, 47.931217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716301, 39.708206, 47.933388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187089, -0.127006, 0.974098,
		-0.792223, 0.566815, 0.226061,
		-0.580844, -0.813997, 0.005427,
		38.542049, 39.464008, 47.935017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578617, 40.081329, 48.552158>,  <38.948639, 40.033806, 47.931217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578617, 40.081329, 48.552158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564526, 39.703091, 48.422787>,  <38.556072, 39.476147, 48.345165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564526, 39.703091, 48.422787>,  <38.578617, 40.081329, 48.552158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564526, 39.703091, 48.422787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217260, -0.323133, 0.921078,
		-0.975478, -0.037818, 0.216824,
		-0.035230, -0.945598, -0.323425,
		38.553955, 39.419411, 48.325760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129616, 39.643101, 49.021439>,  <38.578617, 40.081329, 48.552158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129616, 39.643101, 49.021439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373089, 39.372364, 48.855843>,  <38.519173, 39.209923, 48.756485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373089, 39.372364, 48.855843>,  <38.129616, 39.643101, 49.021439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373089, 39.372364, 48.855843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115841, -0.440376, 0.890309,
		-0.784909, -0.589875, -0.189645,
		0.608686, -0.676842, -0.413987,
		38.555695, 39.169312, 48.731647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080738, 39.093296, 49.449268>,  <38.129616, 39.643101, 49.021439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080738, 39.093296, 49.449268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.392956, 38.951962, 49.243004>,  <38.580284, 38.867161, 49.119244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.392956, 38.951962, 49.243004>,  <38.080738, 39.093296, 49.449268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392956, 38.951962, 49.243004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122113, -0.722843, 0.680137,
		-0.613060, -0.593845, -0.521062,
		0.780542, -0.353336, -0.515662,
		38.627117, 38.845959, 49.088306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859474, 38.522690, 49.546761>,  <38.080738, 39.093296, 49.449268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859474, 38.522690, 49.546761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.247440, 38.549686, 49.453201>,  <38.480221, 38.565884, 49.397068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.247440, 38.549686, 49.453201>,  <37.859474, 38.522690, 49.546761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247440, 38.549686, 49.453201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188446, -0.816409, 0.545861,
		-0.154112, -0.573516, -0.804567,
		0.969916, 0.067494, -0.233895,
		38.538414, 38.569935, 49.383034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180412, 38.108936, 49.453854>,  <37.859474, 38.522690, 49.546761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180412, 38.108936, 49.453854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051414, 37.743164, 49.551685>,  <36.974014, 37.523701, 49.610386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051414, 37.743164, 49.551685>,  <37.180412, 38.108936, 49.453854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051414, 37.743164, 49.551685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690074, 0.050263, -0.721991,
		0.647915, -0.401619, -0.647232,
		-0.322497, -0.914426, 0.244581,
		36.954666, 37.468838, 49.625061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232483, 37.678455, 48.850483>,  <37.180412, 38.108936, 49.453854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232483, 37.678455, 48.850483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.933125, 37.521732, 49.064545>,  <36.753510, 37.427700, 49.192982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.933125, 37.521732, 49.064545>,  <37.232483, 37.678455, 48.850483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933125, 37.521732, 49.064545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549169, -0.086370, -0.831236,
		0.371903, -0.915986, -0.150527,
		-0.748400, -0.391804, 0.535152,
		36.708603, 37.404190, 49.225090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018646, 37.013466, 48.465000>,  <37.232483, 37.678455, 48.850483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018646, 37.013466, 48.465000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.724976, 37.119606, 48.714985>,  <36.548775, 37.183289, 48.864975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.724976, 37.119606, 48.714985>,  <37.018646, 37.013466, 48.465000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724976, 37.119606, 48.714985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649156, -0.004588, -0.760642,
		-0.198970, -0.964141, 0.175622,
		-0.734172, 0.265351, 0.624965,
		36.504723, 37.199211, 48.902473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516068, 36.452206, 48.409794>,  <37.018646, 37.013466, 48.465000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516068, 36.452206, 48.409794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.330921, 36.764755, 48.577232>,  <36.219833, 36.952286, 48.677696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.330921, 36.764755, 48.577232>,  <36.516068, 36.452206, 48.409794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330921, 36.764755, 48.577232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680519, -0.010627, -0.732654,
		-0.568025, -0.623977, 0.536656,
		-0.462862, 0.781370, 0.418592,
		36.192062, 36.999165, 48.702808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799416, 36.295708, 48.348923>,  <36.516068, 36.452206, 48.409794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799416, 36.295708, 48.348923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.775208, 36.693287, 48.385582>,  <35.760681, 36.931835, 48.407578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.775208, 36.693287, 48.385582>,  <35.799416, 36.295708, 48.348923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775208, 36.693287, 48.385582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547501, 0.043714, -0.835662,
		-0.834614, -0.100749, 0.541544,
		-0.060519, 0.993951, 0.091644,
		35.757053, 36.991470, 48.413074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090607, 36.388485, 48.237015>,  <35.799416, 36.295708, 48.348923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090607, 36.388485, 48.237015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.309834, 36.718506, 48.181999>,  <35.441368, 36.916519, 48.148991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.309834, 36.718506, 48.181999>,  <35.090607, 36.388485, 48.237015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309834, 36.718506, 48.181999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405764, 0.118459, -0.906269,
		-0.731424, 0.552503, 0.399699,
		0.548064, 0.825050, -0.137542,
		35.474255, 36.966022, 48.140736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690472, 36.774414, 47.879669>,  <35.090607, 36.388485, 48.237015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690472, 36.774414, 47.879669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.042477, 36.950066, 47.807297>,  <35.253681, 37.055458, 47.763874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.042477, 36.950066, 47.807297>,  <34.690472, 36.774414, 47.879669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042477, 36.950066, 47.807297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302542, 0.224654, -0.926282,
		-0.366113, 0.869882, 0.330555,
		0.880017, 0.439131, -0.180927,
		35.306480, 37.081806, 47.753017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573200, 37.378593, 47.547024>,  <34.690472, 36.774414, 47.879669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573200, 37.378593, 47.547024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.938190, 37.258621, 47.435726>,  <35.157185, 37.186638, 47.368946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.938190, 37.258621, 47.435726>,  <34.573200, 37.378593, 47.547024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938190, 37.258621, 47.435726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214052, 0.229601, -0.949455,
		0.348659, 0.925918, 0.145305,
		0.912480, -0.299933, -0.278247,
		35.211933, 37.168640, 47.352253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721851, 37.904263, 47.038269>,  <34.573200, 37.378593, 47.547024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721851, 37.904263, 47.038269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.977276, 37.601501, 46.982658>,  <35.130531, 37.419846, 46.949291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.977276, 37.601501, 46.982658>,  <34.721851, 37.904263, 47.038269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977276, 37.601501, 46.982658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019627, 0.196609, -0.980285,
		0.769318, 0.623247, 0.140403,
		0.638564, -0.756907, -0.139022,
		35.168846, 37.374428, 46.940952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288834, 38.113316, 46.640099>,  <34.721851, 37.904263, 47.038269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288834, 38.113316, 46.640099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318272, 37.716534, 46.598900>,  <35.335934, 37.478466, 46.574181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318272, 37.716534, 46.598900>,  <35.288834, 38.113316, 46.640099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318272, 37.716534, 46.598900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221268, 0.084460, -0.971549,
		0.972432, 0.094295, -0.213272,
		0.073599, -0.991955, -0.102996,
		35.340351, 37.418945, 46.568001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811214, 37.960209, 46.124779>,  <35.288834, 38.113316, 46.640099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811214, 37.960209, 46.124779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.547253, 37.659946, 46.137691>,  <35.388874, 37.479790, 46.145439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.547253, 37.659946, 46.137691>,  <35.811214, 37.960209, 46.124779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547253, 37.659946, 46.137691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141212, 0.081708, -0.986602,
		0.737961, -0.655621, -0.159921,
		-0.659904, -0.750656, 0.032284,
		35.349281, 37.434750, 46.147377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003670, 37.588856, 45.535698>,  <35.811214, 37.960209, 46.124779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003670, 37.588856, 45.535698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648094, 37.437798, 45.639374>,  <35.434750, 37.347164, 45.701580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648094, 37.437798, 45.639374>,  <36.003670, 37.588856, 45.535698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648094, 37.437798, 45.639374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209900, -0.167089, -0.963340,
		0.407110, -0.910749, 0.069263,
		-0.888934, -0.377647, 0.259189,
		35.381413, 37.324505, 45.717129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981487, 36.975574, 45.115902>,  <36.003670, 37.588856, 45.535698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981487, 36.975574, 45.115902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.602577, 37.055771, 45.215878>,  <35.375229, 37.103889, 45.275864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.602577, 37.055771, 45.215878>,  <35.981487, 36.975574, 45.115902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602577, 37.055771, 45.215878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254712, 0.002042, -0.967015,
		-0.194389, -0.979693, 0.049133,
		-0.947278, 0.200492, 0.249937,
		35.318394, 37.115917, 45.290859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522987, 36.439327, 44.870171>,  <35.981487, 36.975574, 45.115902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522987, 36.439327, 44.870171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.305943, 36.772823, 44.911049>,  <35.175716, 36.972919, 44.935577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.305943, 36.772823, 44.911049>,  <35.522987, 36.439327, 44.870171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305943, 36.772823, 44.911049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060497, 0.082564, -0.994748,
		-0.837800, -0.545948, 0.005638,
		-0.542615, 0.833741, 0.102200,
		35.143158, 37.022945, 44.941708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935108, 36.335064, 44.381268>,  <35.522987, 36.439327, 44.870171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935108, 36.335064, 44.381268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.888565, 36.726730, 44.447834>,  <34.860638, 36.961731, 44.487774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.888565, 36.726730, 44.447834>,  <34.935108, 36.335064, 44.381268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888565, 36.726730, 44.447834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003216, 0.167180, -0.985921,
		-0.993202, -0.115257, -0.016304,
		-0.116360, 0.979166, 0.166414,
		34.853657, 37.020481, 44.497757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306175, 36.477863, 44.017128>,  <34.935108, 36.335064, 44.381268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306175, 36.477863, 44.017128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529522, 36.806808, 44.060863>,  <34.663528, 37.004173, 44.087105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.529522, 36.806808, 44.060863>,  <34.306175, 36.477863, 44.017128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529522, 36.806808, 44.060863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296788, 0.321088, -0.899344,
		-0.774691, 0.469711, 0.423350,
		0.558365, 0.822358, 0.109339,
		34.697033, 37.053516, 44.093666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851059, 36.975044, 43.819649>,  <34.306175, 36.477863, 44.017128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851059, 36.975044, 43.819649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.201488, 37.166561, 43.796818>,  <34.411747, 37.281471, 43.783119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.201488, 37.166561, 43.796818>,  <33.851059, 36.975044, 43.819649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201488, 37.166561, 43.796818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200706, 0.254460, -0.946027,
		-0.438426, 0.840243, 0.319021,
		0.876071, 0.478792, -0.057080,
		34.464310, 37.310200, 43.779694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726292, 37.576283, 43.593349>,  <33.851059, 36.975044, 43.819649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726292, 37.576283, 43.593349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.114677, 37.533554, 43.507732>,  <34.347710, 37.507915, 43.456360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.114677, 37.533554, 43.507732>,  <33.726292, 37.576283, 43.593349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114677, 37.533554, 43.507732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172472, 0.307436, -0.935808,
		0.165771, 0.945554, 0.280086,
		0.970965, -0.106823, -0.214045,
		34.405968, 37.501507, 43.443520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870846, 38.168915, 43.221821>,  <33.726292, 37.576283, 43.593349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870846, 38.168915, 43.221821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162498, 37.911839, 43.127747>,  <34.337490, 37.757595, 43.071301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162498, 37.911839, 43.127747>,  <33.870846, 38.168915, 43.221821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162498, 37.911839, 43.127747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047820, 0.294974, -0.954308,
		0.682696, 0.707067, 0.184343,
		0.729136, -0.642687, -0.235189,
		34.381241, 37.719032, 43.057190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342869, 38.535099, 42.746517>,  <33.870846, 38.168915, 43.221821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342869, 38.535099, 42.746517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.408520, 38.145786, 42.682281>,  <34.447910, 37.912201, 42.643738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.408520, 38.145786, 42.682281>,  <34.342869, 38.535099, 42.746517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408520, 38.145786, 42.682281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235048, 0.119526, -0.964607,
		0.958027, 0.196064, -0.209150,
		0.164126, -0.973279, -0.160594,
		34.457756, 37.853802, 42.634102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<48.200012, 28.779720, 31.694649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.025623, 28.423813, 31.748669>,  <47.920990, 28.210268, 31.781080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<48.025623, 28.423813, 31.748669>,  <48.200012, 28.779720, 31.694649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.025623, 28.423813, 31.748669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520647, 0.371768, 0.768580,
		-0.734065, 0.264768, -0.625337,
		-0.435976, -0.889767, 0.135052,
		47.894829, 28.156883, 31.789185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.487976, 28.879107, 31.662590>,  <48.200012, 28.779720, 31.694649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.487976, 28.879107, 31.662590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.544823, 28.541006, 31.868641>,  <47.578930, 28.338146, 31.992271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.544823, 28.541006, 31.868641>,  <47.487976, 28.879107, 31.662590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.544823, 28.541006, 31.868641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640774, 0.318096, 0.698730,
		-0.754462, -0.429379, -0.496408,
		0.142115, -0.845250, 0.515127,
		47.587456, 28.287432, 32.023178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.808842, 28.647123, 31.816835>,  <47.487976, 28.879107, 31.662590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.808842, 28.647123, 31.816835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.031651, 28.464592, 32.094395>,  <47.165337, 28.355074, 32.260929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.031651, 28.464592, 32.094395>,  <46.808842, 28.647123, 31.816835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.031651, 28.464592, 32.094395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702683, 0.186393, 0.686655,
		-0.442677, -0.870071, -0.216828,
		0.557023, -0.456327, 0.693896,
		47.198757, 28.327694, 32.302563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.374516, 28.153481, 32.115150>,  <46.808842, 28.647123, 31.816835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.374516, 28.153481, 32.115150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.664772, 28.217319, 32.382874>,  <46.838924, 28.255623, 32.543507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.664772, 28.217319, 32.382874>,  <46.374516, 28.153481, 32.115150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.664772, 28.217319, 32.382874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684157, 0.063717, 0.726547,
		0.073327, -0.985120, 0.155442,
		0.725639, 0.159622, 0.669304,
		46.882465, 28.265200, 32.583668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.156185, 28.001123, 32.759663>,  <46.374516, 28.153481, 32.115150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.156185, 28.001123, 32.759663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.485184, 28.189098, 32.887825>,  <46.682583, 28.301884, 32.964722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.485184, 28.189098, 32.887825>,  <46.156185, 28.001123, 32.759663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.485184, 28.189098, 32.887825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521322, 0.397619, 0.755065,
		0.227429, -0.788075, 0.572027,
		0.822496, 0.469934, 0.320411,
		46.731934, 28.330078, 32.983948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.078602, 27.964323, 33.440159>,  <46.156185, 28.001123, 32.759663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.078602, 27.964323, 33.440159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.362484, 28.241634, 33.390068>,  <46.532814, 28.408022, 33.360012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.362484, 28.241634, 33.390068>,  <46.078602, 27.964323, 33.440159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.362484, 28.241634, 33.390068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373985, 0.521391, 0.766999,
		0.597041, -0.497506, 0.629309,
		0.709702, 0.693282, -0.125232,
		46.575394, 28.449619, 33.352497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.416580, 28.062397, 34.048611>,  <46.078602, 27.964323, 33.440159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.416580, 28.062397, 34.048611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.410484, 28.393040, 33.823582>,  <46.406826, 28.591427, 33.688564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.410484, 28.393040, 33.823582>,  <46.416580, 28.062397, 34.048611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.410484, 28.393040, 33.823582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437741, 0.500336, 0.747025,
		0.898972, 0.257645, 0.354215,
		-0.015241, 0.826609, -0.562570,
		46.405910, 28.641022, 33.654812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.621235, 28.659565, 34.533077>,  <46.416580, 28.062397, 34.048611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.621235, 28.659565, 34.533077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.468887, 28.838118, 34.209183>,  <46.377480, 28.945250, 34.014847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.468887, 28.838118, 34.209183>,  <46.621235, 28.659565, 34.533077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.468887, 28.838118, 34.209183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477139, 0.655253, 0.585647,
		0.792007, 0.609415, -0.036581,
		-0.380872, 0.446382, -0.809740,
		46.354626, 28.972033, 33.966259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.571220, 29.293737, 34.762707>,  <46.621235, 28.659565, 34.533077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.571220, 29.293737, 34.762707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.357502, 29.319923, 34.425602>,  <46.229271, 29.335634, 34.223339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.357502, 29.319923, 34.425602>,  <46.571220, 29.293737, 34.762707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.357502, 29.319923, 34.425602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492317, 0.786349, 0.373202,
		0.687136, 0.614305, -0.387910,
		-0.534292, 0.065466, -0.842761,
		46.197216, 29.339563, 34.172775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.601887, 29.966974, 34.564804>,  <46.571220, 29.293737, 34.762707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.601887, 29.966974, 34.564804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.291515, 29.852968, 34.339699>,  <46.105293, 29.784565, 34.204636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.291515, 29.852968, 34.339699>,  <46.601887, 29.966974, 34.564804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.291515, 29.852968, 34.339699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444372, 0.880151, 0.166937,
		0.447733, 0.379606, -0.809590,
		-0.775931, -0.285016, -0.562759,
		46.058735, 29.767464, 34.170872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.433765, 30.473707, 34.047363>,  <46.601887, 29.966974, 34.564804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.433765, 30.473707, 34.047363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.109676, 30.264219, 34.152626>,  <45.915222, 30.138527, 34.215782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.109676, 30.264219, 34.152626>,  <46.433765, 30.473707, 34.047363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.109676, 30.264219, 34.152626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512946, 0.850822, 0.113964,
		-0.283586, -0.042649, -0.957998,
		-0.810226, -0.523719, 0.263158,
		45.866608, 30.107103, 34.231575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.943775, 30.814220, 33.731216>,  <46.433765, 30.473707, 34.047363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.943775, 30.814220, 33.731216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.765205, 30.604784, 34.021473>,  <45.658062, 30.479122, 34.195625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.765205, 30.604784, 34.021473>,  <45.943775, 30.814220, 33.731216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765205, 30.604784, 34.021473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558796, 0.796500, 0.230942,
		-0.698894, -0.302388, -0.648158,
		-0.446424, -0.523592, 0.725642,
		45.631279, 30.447706, 34.239166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.218174, 30.916683, 33.744701>,  <45.943775, 30.814220, 33.731216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.218174, 30.916683, 33.744701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.298874, 30.784090, 34.113358>,  <45.347294, 30.704535, 34.334549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.298874, 30.784090, 34.113358>,  <45.218174, 30.916683, 33.744701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298874, 30.784090, 34.113358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644951, 0.663213, 0.379720,
		-0.737113, -0.671019, -0.079987,
		0.201751, -0.331484, 0.921637,
		45.359398, 30.684645, 34.389851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451508, 30.876247, 34.080200>,  <45.218174, 30.916683, 33.744701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.451508, 30.876247, 34.080200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.710106, 30.857273, 34.384777>,  <44.865265, 30.845888, 34.567524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.710106, 30.857273, 34.384777>,  <44.451508, 30.876247, 34.080200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710106, 30.857273, 34.384777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579104, 0.619243, 0.530261,
		-0.496672, -0.783765, 0.372866,
		0.646494, -0.047438, 0.761443,
		44.904053, 30.843042, 34.613209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946209, 30.796858, 34.734451>,  <44.451508, 30.876247, 34.080200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946209, 30.796858, 34.734451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.313667, 30.935772, 34.809799>,  <44.534142, 31.019119, 34.855007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.313667, 30.935772, 34.809799>,  <43.946209, 30.796858, 34.734451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313667, 30.935772, 34.809799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392703, 0.750422, 0.531650,
		0.043277, -0.562371, 0.825752,
		0.918647, 0.347283, 0.188368,
		44.589260, 31.039957, 34.866310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945221, 31.054548, 35.497021>,  <43.946209, 30.796858, 34.734451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945221, 31.054548, 35.497021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.264454, 31.245731, 35.350262>,  <44.455994, 31.360441, 35.262207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.264454, 31.245731, 35.350262>,  <43.945221, 31.054548, 35.497021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264454, 31.245731, 35.350262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245043, 0.813746, 0.527039,
		0.550464, -0.330717, 0.766560,
		0.798087, 0.477956, -0.366899,
		44.503880, 31.389118, 35.240192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145454, 31.484894, 36.072205>,  <43.945221, 31.054548, 35.497021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145454, 31.484894, 36.072205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.329571, 31.634172, 35.750000>,  <44.440041, 31.723740, 35.556675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.329571, 31.634172, 35.750000>,  <44.145454, 31.484894, 36.072205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329571, 31.634172, 35.750000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228116, 0.926603, 0.298948,
		0.857960, 0.046147, 0.511640,
		0.460291, 0.373198, -0.805515,
		44.467659, 31.746132, 35.508347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515114, 32.031563, 36.293320>,  <44.145454, 31.484894, 36.072205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515114, 32.031563, 36.293320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.503105, 32.101479, 35.899662>,  <44.495899, 32.143429, 35.663467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.503105, 32.101479, 35.899662>,  <44.515114, 32.031563, 36.293320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503105, 32.101479, 35.899662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028758, 0.984034, 0.175643,
		0.999136, 0.033575, -0.024514,
		-0.030020, 0.174787, -0.984149,
		44.494099, 32.153915, 35.604416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826550, 32.585903, 36.278755>,  <44.515114, 32.031563, 36.293320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826550, 32.585903, 36.278755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.629223, 32.609497, 35.931618>,  <44.510826, 32.623653, 35.723335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.629223, 32.609497, 35.931618>,  <44.826550, 32.585903, 36.278755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629223, 32.609497, 35.931618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098720, 0.987456, 0.123230,
		0.864230, 0.146465, -0.481304,
		-0.493315, 0.058985, -0.867848,
		44.481228, 32.627193, 35.671265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.040646, 33.262779, 36.027405>,  <44.826550, 32.585903, 36.278755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.040646, 33.262779, 36.027405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.707935, 33.157436, 35.831940>,  <44.508308, 33.094231, 35.714661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.707935, 33.157436, 35.831940>,  <45.040646, 33.262779, 36.027405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707935, 33.157436, 35.831940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313959, 0.949161, 0.022875,
		0.457794, 0.172446, -0.872174,
		-0.831778, -0.263355, -0.488662,
		44.458401, 33.078430, 35.685341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.001850, 33.702393, 35.466106>,  <45.040646, 33.262779, 36.027405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.001850, 33.702393, 35.466106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633110, 33.587337, 35.570000>,  <44.411865, 33.518303, 35.632336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633110, 33.587337, 35.570000>,  <45.001850, 33.702393, 35.466106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633110, 33.587337, 35.570000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317901, 0.944548, -0.082262,
		-0.221671, -0.158403, -0.962170,
		-0.921846, -0.287640, 0.259736,
		44.356556, 33.501045, 35.647919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.451630, 33.495552, 34.822971>,  <45.001850, 33.702393, 35.466106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.451630, 33.495552, 34.822971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.397419, 33.823231, 34.600060>,  <45.364895, 34.019836, 34.466312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.397419, 33.823231, 34.600060>,  <45.451630, 33.495552, 34.822971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397419, 33.823231, 34.600060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297998, -0.570124, -0.765608,
		-0.944897, 0.062310, 0.321382,
		-0.135523, 0.819192, -0.557277,
		45.356762, 34.068989, 34.432877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804981, 33.433586, 34.504707>,  <45.451630, 33.495552, 34.822971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804981, 33.433586, 34.504707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.101959, 33.624249, 34.316422>,  <45.280148, 33.738644, 34.203449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.101959, 33.624249, 34.316422>,  <44.804981, 33.433586, 34.504707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101959, 33.624249, 34.316422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041459, -0.668620, -0.742447,
		-0.668620, 0.570744, -0.476654,
		0.742447, 0.476654, -0.470715,
		45.324692, 33.767246, 34.175205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546188, 33.598053, 33.774452>,  <44.804981, 33.433586, 34.504707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546188, 33.598053, 33.774452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.945595, 33.576324, 33.772980>,  <45.185238, 33.563286, 33.772099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.945595, 33.576324, 33.772980>,  <44.546188, 33.598053, 33.774452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.945595, 33.576324, 33.772980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035602, -0.600280, -0.798997,
		0.041196, 0.797943, -0.601323,
		0.998517, -0.054324, -0.003680,
		45.245152, 33.560028, 33.771877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725906, 33.804585, 33.137936>,  <44.546188, 33.598053, 33.774452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725906, 33.804585, 33.137936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.031029, 33.579628, 33.265587>,  <45.214104, 33.444653, 33.342178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.031029, 33.579628, 33.265587>,  <44.725906, 33.804585, 33.137936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031029, 33.579628, 33.265587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000831, -0.492671, -0.870215,
		0.646624, 0.664073, -0.375346,
		0.762808, -0.562390, 0.319125,
		45.259872, 33.410912, 33.361324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320995, 33.888424, 32.702557>,  <44.725906, 33.804585, 33.137936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320995, 33.888424, 32.702557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380798, 33.544773, 32.898331>,  <45.416679, 33.338581, 33.015797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380798, 33.544773, 32.898331>,  <45.320995, 33.888424, 32.702557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380798, 33.544773, 32.898331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184671, -0.510551, -0.839782,
		0.971363, 0.035166, -0.234985,
		0.149503, -0.859128, 0.489436,
		45.425648, 33.287033, 33.045162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.787632, 33.397175, 32.249428>,  <45.320995, 33.888424, 32.702557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.787632, 33.397175, 32.249428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.630440, 33.139088, 32.511497>,  <45.536125, 32.984234, 32.668739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.630440, 33.139088, 32.511497>,  <45.787632, 33.397175, 32.249428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630440, 33.139088, 32.511497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129464, -0.666582, -0.734103,
		0.910386, -0.373313, 0.178424,
		-0.392984, -0.645217, 0.655178,
		45.512543, 32.945522, 32.708050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.118954, 32.749958, 32.092403>,  <45.787632, 33.397175, 32.249428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.118954, 32.749958, 32.092403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.791023, 32.667423, 32.306061>,  <45.594265, 32.617901, 32.434254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.791023, 32.667423, 32.306061>,  <46.118954, 32.749958, 32.092403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791023, 32.667423, 32.306061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222974, -0.744152, -0.629698,
		0.527416, -0.635343, 0.564067,
		-0.819826, -0.206341, 0.534143,
		45.545074, 32.605522, 32.466305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268719, 32.062778, 32.338448>,  <46.118954, 32.749958, 32.092403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.268719, 32.062778, 32.338448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.879108, 32.151424, 32.319843>,  <45.645344, 32.204613, 32.308681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.879108, 32.151424, 32.319843>,  <46.268719, 32.062778, 32.338448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879108, 32.151424, 32.319843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175753, -0.869382, -0.461828,
		-0.142778, -0.441659, 0.885749,
		-0.974025, 0.221612, -0.046506,
		45.586903, 32.217907, 32.305893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978378, 31.457363, 32.510693>,  <46.268719, 32.062778, 32.338448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978378, 31.457363, 32.510693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658756, 31.649113, 32.365528>,  <45.466984, 31.764162, 32.278431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658756, 31.649113, 32.365528>,  <45.978378, 31.457363, 32.510693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658756, 31.649113, 32.365528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146153, -0.740350, -0.656140,
		-0.583219, -0.471254, 0.661646,
		-0.799059, 0.479375, -0.362911,
		45.419037, 31.792925, 32.256653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.493431, 31.019899, 32.503551>,  <45.978378, 31.457363, 32.510693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.493431, 31.019899, 32.503551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.375740, 31.272224, 32.216354>,  <45.305126, 31.423618, 32.044037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.375740, 31.272224, 32.216354>,  <45.493431, 31.019899, 32.503551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375740, 31.272224, 32.216354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139136, -0.771511, -0.620816,
		-0.945555, -0.082760, 0.314764,
		-0.294223, 0.630810, -0.717991,
		45.287472, 31.461468, 32.000957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028206, 30.611872, 32.137432>,  <45.493431, 31.019899, 32.503551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028206, 30.611872, 32.137432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.040081, 30.916897, 31.878941>,  <45.047207, 31.099913, 31.723845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.040081, 30.916897, 31.878941>,  <45.028206, 30.611872, 32.137432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040081, 30.916897, 31.878941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102299, -0.640802, -0.760860,
		-0.994311, 0.088700, 0.058982,
		0.029692, 0.762565, -0.646230,
		45.048988, 31.145666, 31.685072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436333, 30.553917, 31.584602>,  <45.028206, 30.611872, 32.137432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.436333, 30.553917, 31.584602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.730480, 30.778572, 31.432922>,  <44.906967, 30.913366, 31.341913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.730480, 30.778572, 31.432922>,  <44.436333, 30.553917, 31.584602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730480, 30.778572, 31.432922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021185, -0.578348, -0.815515,
		-0.677336, 0.591671, -0.437198,
		0.735369, 0.561640, -0.379201,
		44.951092, 30.947063, 31.319162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380131, 30.511404, 30.890629>,  <44.436333, 30.553917, 31.584602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380131, 30.511404, 30.890629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756084, 30.647512, 30.902124>,  <44.981659, 30.729177, 30.909021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756084, 30.647512, 30.902124>,  <44.380131, 30.511404, 30.890629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756084, 30.647512, 30.902124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257105, -0.649754, -0.715344,
		-0.224739, 0.679731, -0.698182,
		0.939888, 0.340272, 0.028738,
		45.038052, 30.749594, 30.910746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541374, 30.519604, 30.194178>,  <44.380131, 30.511404, 30.890629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541374, 30.519604, 30.194178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.899052, 30.494669, 30.371506>,  <45.113659, 30.479708, 30.477903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.899052, 30.494669, 30.371506>,  <44.541374, 30.519604, 30.194178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899052, 30.494669, 30.371506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304875, -0.640346, -0.704988,
		0.327826, 0.765553, -0.553587,
		0.894193, -0.062339, 0.443320,
		45.167309, 30.475967, 30.504501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068367, 30.586126, 29.571331>,  <44.541374, 30.519604, 30.194178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068367, 30.586126, 29.571331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.222279, 30.394293, 29.886784>,  <45.314625, 30.279192, 30.076056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.222279, 30.394293, 29.886784>,  <45.068367, 30.586126, 29.571331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222279, 30.394293, 29.886784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408906, -0.677424, -0.611468,
		0.827489, 0.557759, -0.064556,
		0.384784, -0.479586, 0.788631,
		45.337715, 30.250418, 30.123373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.536205, 30.259657, 29.221085>,  <45.068367, 30.586126, 29.571331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.536205, 30.259657, 29.221085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559883, 30.083494, 29.579422>,  <45.574089, 29.977797, 29.794424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559883, 30.083494, 29.579422>,  <45.536205, 30.259657, 29.221085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559883, 30.083494, 29.579422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441861, -0.793157, -0.419120,
		0.895128, 0.420649, 0.147647,
		0.059195, -0.440405, 0.895845,
		45.577641, 29.951372, 29.848175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.226635, 30.026665, 29.244461>,  <45.536205, 30.259657, 29.221085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.226635, 30.026665, 29.244461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.049603, 29.817640, 29.535954>,  <45.943382, 29.692226, 29.710850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.049603, 29.817640, 29.535954>,  <46.226635, 30.026665, 29.244461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049603, 29.817640, 29.535954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412621, -0.840191, -0.351885,
		0.796155, 0.144951, 0.587475,
		-0.442585, -0.522559, 0.728732,
		45.916828, 29.660873, 29.754574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.706272, 29.582714, 29.442585>,  <46.226635, 30.026665, 29.244461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.706272, 29.582714, 29.442585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.372147, 29.401976, 29.567860>,  <46.171673, 29.293531, 29.643024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.372147, 29.401976, 29.567860>,  <46.706272, 29.582714, 29.442585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.372147, 29.401976, 29.567860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317340, -0.861457, -0.396468,
		0.448940, -0.231788, 0.862976,
		-0.835313, -0.451847, 0.313187,
		46.121552, 29.266422, 29.661816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.987774, 28.972275, 29.721804>,  <46.706272, 29.582714, 29.442585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.987774, 28.972275, 29.721804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.594402, 28.928951, 29.663652>,  <46.358379, 28.902956, 29.628761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.594402, 28.928951, 29.663652>,  <46.987774, 28.972275, 29.721804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.594402, 28.928951, 29.663652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169454, -0.834190, -0.524797,
		-0.064433, -0.540736, 0.838721,
		-0.983429, -0.108311, -0.145379,
		46.299374, 28.896458, 29.620039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.778698, 28.421520, 30.017330>,  <46.987774, 28.972275, 29.721804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.778698, 28.421520, 30.017330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.516479, 28.485344, 29.722088>,  <46.359150, 28.523638, 29.544943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.516479, 28.485344, 29.722088>,  <46.778698, 28.421520, 30.017330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.516479, 28.485344, 29.722088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197292, -0.907289, -0.371353,
		-0.728928, -0.389061, 0.563290,
		-0.655545, 0.159557, -0.738107,
		46.319817, 28.533211, 29.500656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.421047, 27.763199, 30.006247>,  <46.778698, 28.421520, 30.017330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.421047, 27.763199, 30.006247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.349545, 27.948431, 29.659004>,  <46.306644, 28.059570, 29.450659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.349545, 27.948431, 29.659004>,  <46.421047, 27.763199, 30.006247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.349545, 27.948431, 29.659004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152064, -0.858711, -0.489380,
		-0.972072, -0.219486, 0.083081,
		-0.178755, 0.463078, -0.868104,
		46.295918, 28.087355, 29.398573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.530998, 39.466980, 38.274609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330914, 39.120975, 38.290314>,  <38.210865, 38.913372, 38.299736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330914, 39.120975, 38.290314>,  <38.530998, 39.466980, 38.274609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330914, 39.120975, 38.290314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183823, -0.150391, -0.971386,
		0.846167, -0.478679, 0.234236,
		-0.500210, -0.865013, 0.039264,
		38.180851, 38.861473, 38.302094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925289, 38.923569, 37.926823>,  <38.530998, 39.466980, 38.274609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925289, 38.923569, 37.926823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547745, 38.791435, 37.927345>,  <38.321217, 38.712154, 37.927658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547745, 38.791435, 37.927345>,  <38.925289, 38.923569, 37.926823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547745, 38.791435, 37.927345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118454, -0.342154, -0.932148,
		0.308371, -0.879664, 0.362076,
		-0.943862, -0.330336, 0.001311,
		38.264587, 38.692333, 37.927738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922150, 38.321239, 37.491425>,  <38.925289, 38.923569, 37.926823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922150, 38.321239, 37.491425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538723, 38.435043, 37.497128>,  <38.308666, 38.503326, 37.500549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538723, 38.435043, 37.497128>,  <38.922150, 38.321239, 37.491425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538723, 38.435043, 37.497128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125432, -0.376616, -0.917838,
		-0.255758, -0.881600, 0.396698,
		-0.958569, 0.284503, 0.014258,
		38.251152, 38.520393, 37.501404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446072, 37.731613, 37.492130>,  <38.922150, 38.321239, 37.491425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446072, 37.731613, 37.492130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221920, 38.032864, 37.354279>,  <38.087429, 38.213615, 37.271568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221920, 38.032864, 37.354279>,  <38.446072, 37.731613, 37.492130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221920, 38.032864, 37.354279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144784, -0.498771, -0.854555,
		-0.815483, -0.428978, 0.388542,
		-0.560379, 0.753130, -0.344630,
		38.053806, 38.258804, 37.250889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885994, 37.413025, 37.193668>,  <38.446072, 37.731613, 37.492130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885994, 37.413025, 37.193668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876038, 37.786003, 37.049488>,  <37.870064, 38.009789, 36.962978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876038, 37.786003, 37.049488>,  <37.885994, 37.413025, 37.193668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876038, 37.786003, 37.049488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228378, -0.356335, -0.906018,
		-0.973254, 0.059766, 0.221821,
		-0.024893, 0.932445, -0.360454,
		37.868568, 38.065735, 36.941353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306854, 37.423191, 36.716568>,  <37.885994, 37.413025, 37.193668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306854, 37.423191, 36.716568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522396, 37.739132, 36.599422>,  <37.651722, 37.928696, 36.529137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522396, 37.739132, 36.599422>,  <37.306854, 37.423191, 36.716568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522396, 37.739132, 36.599422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063669, -0.308471, -0.949101,
		-0.839991, 0.530071, -0.115932,
		0.538853, 0.789854, -0.292862,
		37.684052, 37.976089, 36.511562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971874, 37.722893, 36.209530>,  <37.306854, 37.423191, 36.716568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971874, 37.722893, 36.209530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352650, 37.833881, 36.157654>,  <37.581116, 37.900475, 36.126530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352650, 37.833881, 36.157654>,  <36.971874, 37.722893, 36.209530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352650, 37.833881, 36.157654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089271, -0.153688, -0.984079,
		-0.292990, 0.948360, -0.121531,
		0.951939, 0.277476, -0.129690,
		37.638233, 37.917126, 36.118748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914009, 38.235226, 35.679195>,  <36.971874, 37.722893, 36.209530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914009, 38.235226, 35.679195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289467, 38.098137, 35.694630>,  <37.514740, 38.015884, 35.703892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289467, 38.098137, 35.694630>,  <36.914009, 38.235226, 35.679195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289467, 38.098137, 35.694630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022777, -0.050037, -0.998488,
		0.344138, 0.938102, -0.039160,
		0.938643, -0.342726, 0.038587,
		37.571060, 37.995319, 35.706207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244713, 38.569427, 35.179550>,  <36.914009, 38.235226, 35.679195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244713, 38.569427, 35.179550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511154, 38.278835, 35.247112>,  <37.671021, 38.104481, 35.287647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511154, 38.278835, 35.247112>,  <37.244713, 38.569427, 35.179550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511154, 38.278835, 35.247112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226109, -0.019110, -0.973915,
		0.710759, 0.686920, 0.151535,
		0.666105, -0.726482, 0.168902,
		37.710987, 38.060890, 35.297783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704712, 38.777554, 34.688740>,  <37.244713, 38.569427, 35.179550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704712, 38.777554, 34.688740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777992, 38.394436, 34.777344>,  <37.821960, 38.164566, 34.830505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777992, 38.394436, 34.777344>,  <37.704712, 38.777554, 34.688740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777992, 38.394436, 34.777344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160728, -0.193105, -0.967924,
		0.969847, 0.212928, 0.118568,
		0.183202, -0.957796, 0.221506,
		37.832954, 38.107098, 34.843796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288933, 38.578602, 34.330997>,  <37.704712, 38.777554, 34.688740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288933, 38.578602, 34.330997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126602, 38.216972, 34.384605>,  <38.029202, 37.999996, 34.416771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126602, 38.216972, 34.384605>,  <38.288933, 38.578602, 34.330997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126602, 38.216972, 34.384605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132991, -0.203493, -0.970002,
		0.904221, -0.375832, 0.202816,
		-0.405830, -0.904069, 0.134020,
		38.004852, 37.945751, 34.424812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764130, 38.152397, 33.955448>,  <38.288933, 38.578602, 34.330997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764130, 38.152397, 33.955448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416016, 37.962784, 34.008968>,  <38.207150, 37.849018, 34.041080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416016, 37.962784, 34.008968>,  <38.764130, 38.152397, 33.955448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416016, 37.962784, 34.008968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013069, -0.293783, -0.955783,
		0.492380, -0.830052, 0.261870,
		-0.870282, -0.474030, 0.133805,
		38.154930, 37.820576, 34.049110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807392, 37.630421, 33.554237>,  <38.764130, 38.152397, 33.955448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807392, 37.630421, 33.554237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410442, 37.678822, 33.563694>,  <38.172272, 37.707863, 33.569370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410442, 37.678822, 33.563694>,  <38.807392, 37.630421, 33.554237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410442, 37.678822, 33.563694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062457, -0.328034, -0.942599,
		-0.106302, -0.936884, 0.333089,
		-0.992371, 0.121003, 0.023644,
		38.112732, 37.715122, 33.570786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068832, 38.209042, 33.233101>,  <38.807392, 37.630421, 33.554237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068832, 38.209042, 33.233101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458790, 38.280155, 33.286728>,  <39.692764, 38.322823, 33.318905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458790, 38.280155, 33.286728>,  <39.068832, 38.209042, 33.233101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458790, 38.280155, 33.286728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144588, 0.047532, 0.988350,
		0.169346, -0.982920, 0.072045,
		0.974893, 0.177790, 0.134069,
		39.751259, 38.333492, 33.326950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664852, 37.740395, 32.980606>,  <39.068832, 38.209042, 33.233101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664852, 37.740395, 32.980606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453846, 38.013329, 32.778160>,  <39.327244, 38.177090, 32.656693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453846, 38.013329, 32.778160>,  <39.664852, 37.740395, 32.980606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453846, 38.013329, 32.778160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847497, 0.464021, -0.257745,
		0.058977, -0.564891, -0.823055,
		-0.527513, 0.682336, -0.506111,
		39.295593, 38.218029, 32.626328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244347, 37.251442, 32.937584>,  <39.664852, 37.740395, 32.980606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244347, 37.251442, 32.937584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600739, 37.099354, 33.036858>,  <40.814571, 37.008102, 33.096420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600739, 37.099354, 33.036858>,  <40.244347, 37.251442, 32.937584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600739, 37.099354, 33.036858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303294, -0.091606, 0.948483,
		-0.337900, -0.920347, -0.196938,
		0.890975, -0.380223, 0.248182,
		40.868031, 36.985287, 33.111313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130795, 36.704082, 33.418034>,  <40.244347, 37.251442, 32.937584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130795, 36.704082, 33.418034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507744, 36.817097, 33.489708>,  <40.733913, 36.884903, 33.532711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507744, 36.817097, 33.489708>,  <40.130795, 36.704082, 33.418034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507744, 36.817097, 33.489708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201674, 0.052378, 0.978051,
		0.266947, -0.957826, 0.106339,
		0.942373, 0.282534, 0.179187,
		40.790455, 36.901855, 33.543465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377563, 36.284477, 33.912086>,  <40.130795, 36.704082, 33.418034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377563, 36.284477, 33.912086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675037, 36.550480, 33.939529>,  <40.853519, 36.710079, 33.955997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675037, 36.550480, 33.939529>,  <40.377563, 36.284477, 33.912086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675037, 36.550480, 33.939529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001671, -0.104477, 0.994526,
		0.668533, -0.739495, -0.078809,
		0.743681, 0.665005, 0.068611,
		40.898140, 36.749981, 33.960114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853893, 36.009193, 34.397873>,  <40.377563, 36.284477, 33.912086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853893, 36.009193, 34.397873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897785, 36.405903, 34.371525>,  <40.924118, 36.643929, 34.355717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897785, 36.405903, 34.371525>,  <40.853893, 36.009193, 34.397873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897785, 36.405903, 34.371525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037032, 0.062150, 0.997380,
		0.993272, -0.111879, -0.029908,
		0.109727, 0.991776, -0.065875,
		40.930702, 36.703434, 34.351761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056778, 36.146671, 35.033699>,  <40.853893, 36.009193, 34.397873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056778, 36.146671, 35.033699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008572, 36.526489, 34.917877>,  <40.979649, 36.754379, 34.848385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008572, 36.526489, 34.917877>,  <41.056778, 36.146671, 35.033699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008572, 36.526489, 34.917877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239736, 0.255207, 0.936694,
		0.963329, 0.182299, 0.196885,
		-0.120512, 0.949546, -0.289552,
		40.972420, 36.811352, 34.831013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411304, 36.624546, 35.523018>,  <41.056778, 36.146671, 35.033699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411304, 36.624546, 35.523018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144688, 36.858166, 35.337711>,  <40.984718, 36.998337, 35.226528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144688, 36.858166, 35.337711>,  <41.411304, 36.624546, 35.523018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144688, 36.858166, 35.337711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247130, 0.413179, 0.876476,
		0.703315, 0.698691, -0.131064,
		-0.666539, 0.584049, -0.463263,
		40.944725, 37.033379, 35.198734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516830, 37.374397, 35.722076>,  <41.411304, 36.624546, 35.523018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516830, 37.374397, 35.722076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136547, 37.325413, 35.608120>,  <40.908379, 37.296021, 35.539745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136547, 37.325413, 35.608120>,  <41.516830, 37.374397, 35.722076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136547, 37.325413, 35.608120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309792, 0.334673, 0.889957,
		-0.013640, 0.934343, -0.356113,
		-0.950707, -0.122460, -0.284887,
		40.851334, 37.288673, 35.522655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114208, 38.027824, 35.808422>,  <41.516830, 37.374397, 35.722076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114208, 38.027824, 35.808422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865879, 37.714306, 35.814716>,  <40.716881, 37.526196, 35.818493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865879, 37.714306, 35.814716>,  <41.114208, 38.027824, 35.808422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865879, 37.714306, 35.814716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405102, 0.337926, 0.849528,
		-0.671173, 0.521031, -0.527308,
		-0.620822, -0.783794, 0.015736,
		40.679634, 37.479168, 35.819439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594349, 38.332317, 36.157177>,  <41.114208, 38.027824, 35.808422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594349, 38.332317, 36.157177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504620, 37.942562, 36.163570>,  <40.450783, 37.708710, 36.167408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504620, 37.942562, 36.163570>,  <40.594349, 38.332317, 36.157177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504620, 37.942562, 36.163570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292070, 0.082874, 0.952800,
		-0.929718, 0.209063, -0.303179,
		-0.224320, -0.974384, 0.015988,
		40.437325, 37.650246, 36.168365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015327, 38.269161, 36.669621>,  <40.594349, 38.332317, 36.157177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015327, 38.269161, 36.669621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172459, 37.903244, 36.632027>,  <40.266735, 37.683693, 36.609470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172459, 37.903244, 36.632027>,  <40.015327, 38.269161, 36.669621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172459, 37.903244, 36.632027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097498, -0.143058, 0.984900,
		-0.914430, -0.377730, -0.145387,
		0.392825, -0.914797, -0.093988,
		40.290306, 37.628803, 36.603828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496475, 37.769291, 36.954861>,  <40.015327, 38.269161, 36.669621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496475, 37.769291, 36.954861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849960, 37.582088, 36.956669>,  <40.062050, 37.469769, 36.957756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849960, 37.582088, 36.956669>,  <39.496475, 37.769291, 36.954861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849960, 37.582088, 36.956669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164254, -0.301073, 0.939349,
		-0.438260, -0.830858, -0.342934,
		0.883713, -0.468007, 0.004524,
		40.115074, 37.441685, 36.958027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387009, 37.218723, 37.454376>,  <39.496475, 37.769291, 36.954861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387009, 37.218723, 37.454376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784126, 37.250633, 37.418598>,  <40.022396, 37.269779, 37.397133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784126, 37.250633, 37.418598>,  <39.387009, 37.218723, 37.454376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784126, 37.250633, 37.418598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101294, -0.159591, 0.981973,
		0.064061, -0.983955, -0.166521,
		0.992792, 0.079774, -0.089445,
		40.081963, 37.274567, 37.391766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775272, 36.593994, 37.828022>,  <39.387009, 37.218723, 37.454376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775272, 36.593994, 37.828022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036503, 36.896904, 37.826149>,  <40.193241, 37.078651, 37.825024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036503, 36.896904, 37.826149>,  <39.775272, 36.593994, 37.828022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036503, 36.896904, 37.826149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222415, -0.185893, 0.957066,
		0.723893, -0.626079, -0.289832,
		0.653077, 0.757277, -0.004682,
		40.232426, 37.124088, 37.824745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949707, 35.975903, 37.542164>,  <39.775272, 36.593994, 37.828022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949707, 35.975903, 37.542164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843689, 35.590950, 37.566048>,  <39.780079, 35.359978, 37.580379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843689, 35.590950, 37.566048>,  <39.949707, 35.975903, 37.542164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843689, 35.590950, 37.566048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475062, 0.076447, -0.876625,
		0.839086, -0.260714, -0.477455,
		-0.265049, -0.962385, 0.059709,
		39.764175, 35.302235, 37.583961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170971, 35.731289, 36.915913>,  <39.949707, 35.975903, 37.542164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170971, 35.731289, 36.915913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892426, 35.467121, 37.028286>,  <39.725300, 35.308620, 37.095711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892426, 35.467121, 37.028286>,  <40.170971, 35.731289, 36.915913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892426, 35.467121, 37.028286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391504, 0.021483, -0.919926,
		0.601503, -0.750588, -0.273517,
		-0.696362, -0.660421, 0.280936,
		39.683517, 35.268993, 37.112568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173668, 35.334274, 36.420914>,  <40.170971, 35.731289, 36.915913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173668, 35.334274, 36.420914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832626, 35.228256, 36.601051>,  <39.628002, 35.164646, 36.709133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832626, 35.228256, 36.601051>,  <40.173668, 35.334274, 36.420914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832626, 35.228256, 36.601051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441952, -0.094082, -0.892091,
		0.278814, -0.959635, -0.036922,
		-0.852608, -0.265046, 0.450344,
		39.576843, 35.148743, 36.736153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004742, 34.633930, 36.279430>,  <40.173668, 35.334274, 36.420914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004742, 34.633930, 36.279430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664452, 34.833466, 36.345669>,  <39.460278, 34.953186, 36.385410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664452, 34.833466, 36.345669>,  <40.004742, 34.633930, 36.279430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664452, 34.833466, 36.345669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340172, -0.282374, -0.896966,
		-0.400681, -0.819405, 0.409915,
		-0.850728, 0.498839, 0.165597,
		39.409233, 34.983116, 36.395348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590267, 34.248497, 36.051723>,  <40.004742, 34.633930, 36.279430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590267, 34.248497, 36.051723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388008, 34.593571, 36.055676>,  <39.266655, 34.800617, 36.058048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388008, 34.593571, 36.055676>,  <39.590267, 34.248497, 36.051723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388008, 34.593571, 36.055676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462042, -0.261110, -0.847549,
		-0.728589, -0.433122, 0.530625,
		-0.505644, 0.862686, 0.009879,
		39.236317, 34.852375, 36.058640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926815, 34.129845, 35.738869>,  <39.590267, 34.248497, 36.051723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926815, 34.129845, 35.738869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940765, 34.529594, 35.741352>,  <38.949135, 34.769444, 35.742844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940765, 34.529594, 35.741352>,  <38.926815, 34.129845, 35.738869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940765, 34.529594, 35.741352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499436, 0.022815, -0.866050,
		-0.865648, 0.027105, 0.499919,
		0.034880, 0.999372, 0.006213,
		38.951229, 34.829407, 35.743217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319195, 34.240246, 35.444782>,  <38.926815, 34.129845, 35.738869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319195, 34.240246, 35.444782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491692, 34.599754, 35.413189>,  <38.595192, 34.815460, 35.394234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491692, 34.599754, 35.413189>,  <38.319195, 34.240246, 35.444782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491692, 34.599754, 35.413189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559271, 0.197596, -0.805091,
		-0.707986, 0.391364, 0.587869,
		0.431244, 0.898771, -0.078983,
		38.621063, 34.869385, 35.389496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742977, 34.780346, 35.291416>,  <38.319195, 34.240246, 35.444782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742977, 34.780346, 35.291416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106529, 34.886547, 35.162766>,  <38.324661, 34.950268, 35.085575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106529, 34.886547, 35.162766>,  <37.742977, 34.780346, 35.291416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106529, 34.886547, 35.162766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378557, 0.201558, -0.903365,
		-0.175020, 0.942806, 0.283700,
		0.908880, 0.265504, -0.321629,
		38.379192, 34.966198, 35.066277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504673, 35.276230, 34.788422>,  <37.742977, 34.780346, 35.291416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504673, 35.276230, 34.788422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891216, 35.219868, 34.702347>,  <38.123142, 35.186050, 34.650703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891216, 35.219868, 34.702347>,  <37.504673, 35.276230, 34.788422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891216, 35.219868, 34.702347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194686, 0.146045, -0.969932,
		0.168099, 0.979191, 0.113699,
		0.966354, -0.140909, -0.215185,
		38.181122, 35.177593, 34.637791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720219, 35.818851, 34.355289>,  <37.504673, 35.276230, 34.788422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720219, 35.818851, 34.355289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946487, 35.495926, 34.288055>,  <38.082249, 35.302170, 34.247715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946487, 35.495926, 34.288055>,  <37.720219, 35.818851, 34.355289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946487, 35.495926, 34.288055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151340, 0.098737, -0.983538,
		0.810622, 0.581801, -0.066326,
		0.565675, -0.807315, -0.168088,
		38.116188, 35.253731, 34.237629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091621, 36.047318, 33.833164>,  <37.720219, 35.818851, 34.355289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091621, 36.047318, 33.833164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149097, 35.651852, 33.815792>,  <38.183582, 35.414570, 33.805367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149097, 35.651852, 33.815792>,  <38.091621, 36.047318, 33.833164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149097, 35.651852, 33.815792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138119, 0.023425, -0.990139,
		0.979937, 0.148273, -0.133188,
		0.143691, -0.988669, -0.043434,
		38.192204, 35.355251, 33.802761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627220, 35.986603, 33.346695>,  <38.091621, 36.047318, 33.833164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627220, 35.986603, 33.346695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380569, 35.672401, 33.367714>,  <38.232578, 35.483879, 33.380325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380569, 35.672401, 33.367714>,  <38.627220, 35.986603, 33.346695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380569, 35.672401, 33.367714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220061, 0.107898, -0.969501,
		0.755877, -0.609379, -0.239391,
		-0.616623, -0.785504, 0.052543,
		38.195583, 35.436749, 33.383476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.431324, 35.184643, 40.922146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.085274, 34.986626, 40.954380>,  <40.877644, 34.867817, 40.973721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.085274, 34.986626, 40.954380>,  <41.431324, 35.184643, 40.922146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085274, 34.986626, 40.954380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040268, -0.228711, -0.972661,
		0.499939, -0.838227, 0.217798,
		-0.865124, -0.495042, 0.080588,
		40.825737, 34.838112, 40.978558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483421, 34.534927, 40.487812>,  <41.431324, 35.184643, 40.922146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483421, 34.534927, 40.487812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.093098, 34.601456, 40.544567>,  <40.858902, 34.641373, 40.578621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.093098, 34.601456, 40.544567>,  <41.483421, 34.534927, 40.487812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093098, 34.601456, 40.544567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156932, -0.081037, -0.984279,
		-0.152213, -0.982735, 0.105179,
		-0.975809, 0.166326, 0.141888,
		40.800354, 34.651352, 40.587135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265785, 34.094334, 40.075535>,  <41.483421, 34.534927, 40.487812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265785, 34.094334, 40.075535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.969028, 34.354141, 40.142136>,  <40.790974, 34.510025, 40.182095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.969028, 34.354141, 40.142136>,  <41.265785, 34.094334, 40.075535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969028, 34.354141, 40.142136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231467, -0.015030, -0.972727,
		-0.629303, -0.760196, 0.161493,
		-0.741890, 0.649520, 0.166502,
		40.746460, 34.548996, 40.192085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740730, 33.789795, 39.776867>,  <41.265785, 34.094334, 40.075535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740730, 33.789795, 39.776867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.604454, 34.164494, 39.808983>,  <40.522690, 34.389313, 39.828255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.604454, 34.164494, 39.808983>,  <40.740730, 33.789795, 39.776867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604454, 34.164494, 39.808983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127333, 0.038642, -0.991107,
		-0.931514, -0.347881, 0.106113,
		-0.340686, 0.936742, 0.080292,
		40.502247, 34.445515, 39.833069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001781, 33.804707, 39.507011>,  <40.740730, 33.789795, 39.776867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001781, 33.804707, 39.507011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.144203, 34.177887, 39.485760>,  <40.229656, 34.401794, 39.473011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.144203, 34.177887, 39.485760>,  <40.001781, 33.804707, 39.507011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144203, 34.177887, 39.485760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403935, 0.102393, -0.909039,
		-0.842654, 0.345123, 0.413310,
		0.356050, 0.932956, -0.053126,
		40.251019, 34.457775, 39.469822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370670, 34.189941, 39.323830>,  <40.001781, 33.804707, 39.507011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370670, 34.189941, 39.323830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.683098, 34.428104, 39.248539>,  <39.870552, 34.571003, 39.203365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.683098, 34.428104, 39.248539>,  <39.370670, 34.189941, 39.323830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683098, 34.428104, 39.248539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396556, 0.240104, -0.886055,
		-0.482368, 0.766709, 0.423649,
		0.781066, 0.595405, -0.188225,
		39.917419, 34.606728, 39.192070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080120, 34.779125, 39.037785>,  <39.370670, 34.189941, 39.323830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080120, 34.779125, 39.037785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459785, 34.801071, 38.913799>,  <39.687584, 34.814240, 38.839409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459785, 34.801071, 38.913799>,  <39.080120, 34.779125, 39.037785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459785, 34.801071, 38.913799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314635, 0.135042, -0.939557,
		-0.009688, 0.989320, 0.145439,
		0.949163, 0.054863, -0.309967,
		39.744534, 34.817532, 38.820808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090309, 35.489197, 38.743443>,  <39.080120, 34.779125, 39.037785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090309, 35.489197, 38.743443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.391869, 35.267380, 38.602524>,  <39.572803, 35.134289, 38.517971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.391869, 35.267380, 38.602524>,  <39.090309, 35.489197, 38.743443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391869, 35.267380, 38.602524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226856, 0.283518, -0.931748,
		0.616580, 0.782365, 0.087941,
		0.753900, -0.554547, -0.352296,
		39.618038, 35.101017, 38.496834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541218, 35.919201, 38.183548>,  <39.090309, 35.489197, 38.743443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541218, 35.919201, 38.183548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.650444, 35.537022, 38.138733>,  <39.715981, 35.307713, 38.111843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.650444, 35.537022, 38.138733>,  <39.541218, 35.919201, 38.183548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650444, 35.537022, 38.138733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149594, 0.157225, -0.976167,
		0.950292, 0.249801, 0.185863,
		0.273070, -0.955447, -0.112040,
		39.732365, 35.250389, 38.105122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313068, 36.231377, 38.193748>,  <39.541218, 35.919201, 38.183548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313068, 36.231377, 38.193748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.365364, 36.626602, 38.161171>,  <40.396740, 36.863739, 38.141624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.365364, 36.626602, 38.161171>,  <40.313068, 36.231377, 38.193748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365364, 36.626602, 38.161171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317327, 0.036127, 0.947628,
		0.939261, -0.149737, -0.308817,
		0.130739, 0.988066, -0.081448,
		40.404587, 36.923023, 38.136738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791828, 36.329720, 38.768005>,  <40.313068, 36.231377, 38.193748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791828, 36.329720, 38.768005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.582325, 36.663422, 38.699078>,  <40.456623, 36.863644, 38.657722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.582325, 36.663422, 38.699078>,  <40.791828, 36.329720, 38.768005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582325, 36.663422, 38.699078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038473, 0.225244, 0.973543,
		0.850997, 0.503273, -0.150070,
		-0.523760, 0.834256, -0.172319,
		40.425198, 36.913700, 38.647381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220421, 36.845600, 39.025471>,  <40.791828, 36.329720, 38.768005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220421, 36.845600, 39.025471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.845177, 36.983597, 39.037716>,  <40.620029, 37.066395, 39.045063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.845177, 36.983597, 39.037716>,  <41.220421, 36.845600, 39.025471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845177, 36.983597, 39.037716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129079, 0.266217, 0.955231,
		0.321397, 0.900060, -0.294271,
		-0.938106, 0.344992, 0.030617,
		40.563744, 37.087093, 39.046902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335354, 37.433323, 39.416107>,  <41.220421, 36.845600, 39.025471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335354, 37.433323, 39.416107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.947155, 37.336971, 39.420246>,  <40.714233, 37.279160, 39.422729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.947155, 37.336971, 39.420246>,  <41.335354, 37.433323, 39.416107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947155, 37.336971, 39.420246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087246, 0.390865, 0.916304,
		-0.224764, 0.888370, -0.400350,
		-0.970499, -0.240881, 0.010346,
		40.656006, 37.264706, 39.423351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042534, 37.931141, 39.667408>,  <41.335354, 37.433323, 39.416107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042534, 37.931141, 39.667408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.724678, 37.693085, 39.715351>,  <40.533966, 37.550251, 39.744118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.724678, 37.693085, 39.715351>,  <41.042534, 37.931141, 39.667408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724678, 37.693085, 39.715351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286858, 0.542089, 0.789843,
		-0.535038, 0.593256, -0.601483,
		-0.794637, -0.595136, 0.119857,
		40.486286, 37.514545, 39.751308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491020, 38.387550, 39.718136>,  <41.042534, 37.931141, 39.667408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491020, 38.387550, 39.718136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.410728, 38.030567, 39.879742>,  <40.362553, 37.816376, 39.976704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.410728, 38.030567, 39.879742>,  <40.491020, 38.387550, 39.718136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410728, 38.030567, 39.879742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034951, 0.418666, 0.907467,
		-0.979023, 0.168037, -0.115232,
		-0.200731, -0.892459, 0.404011,
		40.350510, 37.762829, 40.000946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104137, 38.559715, 40.286575>,  <40.491020, 38.387550, 39.718136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104137, 38.559715, 40.286575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.185066, 38.182106, 40.390800>,  <40.233624, 37.955540, 40.453335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.185066, 38.182106, 40.390800>,  <40.104137, 38.559715, 40.286575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185066, 38.182106, 40.390800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252962, 0.206659, 0.945147,
		-0.946084, -0.257139, -0.196989,
		0.202325, -0.944019, 0.260564,
		40.245762, 37.898899, 40.468971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608425, 38.401764, 40.759823>,  <40.104137, 38.559715, 40.286575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608425, 38.401764, 40.759823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.886703, 38.118141, 40.805855>,  <40.053669, 37.947968, 40.833473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.886703, 38.118141, 40.805855>,  <39.608425, 38.401764, 40.759823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886703, 38.118141, 40.805855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153087, 0.010178, 0.988160,
		-0.701834, -0.705077, -0.101466,
		0.695697, -0.709058, 0.115081,
		40.095413, 37.905422, 40.840378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310368, 37.866459, 41.200653>,  <39.608425, 38.401764, 40.759823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310368, 37.866459, 41.200653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.709553, 37.882172, 41.220772>,  <39.949062, 37.891598, 41.232845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.709553, 37.882172, 41.220772>,  <39.310368, 37.866459, 41.200653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709553, 37.882172, 41.220772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052715, 0.063090, 0.996615,
		0.035964, -0.997235, 0.065032,
		0.997962, 0.039270, 0.050301,
		40.008942, 37.893955, 41.235863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420036, 37.516705, 41.808529>,  <39.310368, 37.866459, 41.200653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420036, 37.516705, 41.808529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.763618, 37.707764, 41.734730>,  <39.969769, 37.822399, 41.690449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.763618, 37.707764, 41.734730>,  <39.420036, 37.516705, 41.808529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763618, 37.707764, 41.734730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060916, 0.262431, 0.963026,
		0.508407, -0.838440, 0.196321,
		0.858960, 0.477649, -0.184496,
		40.021305, 37.851059, 41.679382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901012, 37.309036, 42.324726>,  <39.420036, 37.516705, 41.808529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901012, 37.309036, 42.324726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.082066, 37.636856, 42.184181>,  <40.190697, 37.833549, 42.099854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.082066, 37.636856, 42.184181>,  <39.901012, 37.309036, 42.324726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082066, 37.636856, 42.184181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230862, 0.272901, 0.933932,
		0.861293, -0.503846, -0.065679,
		0.452633, 0.819551, -0.351367,
		40.217857, 37.882721, 42.078770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644222, 37.272530, 42.598049>,  <39.901012, 37.309036, 42.324726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644222, 37.272530, 42.598049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.571594, 37.654243, 42.503075>,  <40.528019, 37.883270, 42.446091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.571594, 37.654243, 42.503075>,  <40.644222, 37.272530, 42.598049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571594, 37.654243, 42.503075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023445, 0.237180, 0.971183,
		0.983098, 0.181905, -0.020692,
		-0.181571, 0.954283, -0.237436,
		40.517124, 37.940529, 42.431843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063465, 37.621445, 43.184944>,  <40.644222, 37.272530, 42.598049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063465, 37.621445, 43.184944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.883057, 37.950127, 43.045586>,  <40.774811, 38.147335, 42.961971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.883057, 37.950127, 43.045586>,  <41.063465, 37.621445, 43.184944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883057, 37.950127, 43.045586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012592, 0.396171, 0.918090,
		0.892424, 0.409693, -0.189029,
		-0.451023, 0.821706, -0.348393,
		40.747749, 38.196640, 42.941067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466450, 38.229576, 43.373672>,  <41.063465, 37.621445, 43.184944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466450, 38.229576, 43.373672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.079971, 38.327541, 43.341442>,  <40.848083, 38.386318, 43.322105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.079971, 38.327541, 43.341442>,  <41.466450, 38.229576, 43.373672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079971, 38.327541, 43.341442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019271, 0.380240, 0.924687,
		0.257102, 0.891873, -0.372104,
		-0.966192, 0.244910, -0.080573,
		40.790115, 38.401016, 43.317268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.158943, 34.556362, 43.918152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.544971, 34.626358, 43.840157>,  <34.776588, 34.668354, 43.793358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.544971, 34.626358, 43.840157>,  <34.158943, 34.556362, 43.918152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544971, 34.626358, 43.840157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164665, -0.173781, -0.970920,
		-0.203786, 0.969112, -0.138896,
		0.965068, 0.174988, -0.194993,
		34.834492, 34.678856, 43.781658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184425, 35.213863, 43.521194>,  <34.158943, 34.556362, 43.918152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184425, 35.213863, 43.521194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.520344, 35.003094, 43.468899>,  <34.721893, 34.876633, 43.437519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.520344, 35.003094, 43.468899>,  <34.184425, 35.213863, 43.521194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520344, 35.003094, 43.468899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204353, -0.083696, -0.975312,
		0.502974, 0.845781, -0.177966,
		0.839796, -0.526925, -0.130741,
		34.772282, 34.845016, 43.429676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321484, 35.541260, 42.970875>,  <34.184425, 35.213863, 43.521194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321484, 35.541260, 42.970875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.552128, 35.214546, 42.963043>,  <34.690514, 35.018517, 42.958344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.552128, 35.214546, 42.963043>,  <34.321484, 35.541260, 42.970875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552128, 35.214546, 42.963043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157760, -0.087794, -0.983567,
		0.801643, 0.570224, -0.179479,
		0.576611, -0.816784, -0.019579,
		34.725113, 34.969509, 42.957169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689037, 35.706173, 42.450100>,  <34.321484, 35.541260, 42.970875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689037, 35.706173, 42.450100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.712765, 35.307159, 42.465130>,  <34.727001, 35.067753, 42.474148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.712765, 35.307159, 42.465130>,  <34.689037, 35.706173, 42.450100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712765, 35.307159, 42.465130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151928, -0.046223, -0.987310,
		0.986610, 0.052859, -0.154295,
		0.059320, -0.997532, 0.037573,
		34.730560, 35.007900, 42.476402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160309, 35.488289, 42.008324>,  <34.689037, 35.706173, 42.450100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160309, 35.488289, 42.008324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915997, 35.173653, 42.044598>,  <34.769409, 34.984871, 42.066360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.915997, 35.173653, 42.044598>,  <35.160309, 35.488289, 42.008324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915997, 35.173653, 42.044598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019701, -0.099397, -0.994853,
		0.791557, -0.609421, 0.045213,
		-0.610778, -0.786592, 0.090685,
		34.732761, 34.937675, 42.071804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352863, 35.037838, 41.489689>,  <35.160309, 35.488289, 42.008324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352863, 35.037838, 41.489689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987885, 34.922546, 41.605869>,  <34.768898, 34.853371, 41.675579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987885, 34.922546, 41.605869>,  <35.352863, 35.037838, 41.489689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987885, 34.922546, 41.605869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190848, -0.328116, -0.925158,
		0.361963, -0.899590, 0.244379,
		-0.912447, -0.288234, 0.290451,
		34.714149, 34.836075, 41.693005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199936, 34.430557, 41.089817>,  <35.352863, 35.037838, 41.489689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199936, 34.430557, 41.089817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.839310, 34.562996, 41.201206>,  <34.622932, 34.642460, 41.268040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.839310, 34.562996, 41.201206>,  <35.199936, 34.430557, 41.089817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839310, 34.562996, 41.201206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339259, -0.141642, -0.929968,
		-0.268470, -0.932904, 0.240029,
		-0.901569, 0.331100, 0.278470,
		34.568840, 34.662327, 41.284748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618347, 33.946068, 40.862041>,  <35.199936, 34.430557, 41.089817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618347, 33.946068, 40.862041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.422455, 34.290157, 40.918861>,  <34.304920, 34.496613, 40.952953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.422455, 34.290157, 40.918861>,  <34.618347, 33.946068, 40.862041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422455, 34.290157, 40.918861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470799, -0.123786, -0.873513,
		-0.733836, -0.494658, 0.465615,
		-0.489727, 0.860227, 0.142045,
		34.275536, 34.548225, 40.961475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941765, 33.778606, 40.592033>,  <34.618347, 33.946068, 40.862041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941765, 33.778606, 40.592033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.008591, 34.172844, 40.602509>,  <34.048687, 34.409386, 40.608795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.008591, 34.172844, 40.602509>,  <33.941765, 33.778606, 40.592033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008591, 34.172844, 40.602509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350107, 0.084136, -0.932923,
		-0.921691, 0.146692, 0.359121,
		0.167068, 0.985597, 0.026189,
		34.058712, 34.468525, 40.610367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594452, 33.983215, 40.086605>,  <33.941765, 33.778606, 40.592033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594452, 33.983215, 40.086605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.779667, 34.334995, 40.130714>,  <33.890797, 34.546062, 40.157181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.779667, 34.334995, 40.130714>,  <33.594452, 33.983215, 40.086605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779667, 34.334995, 40.130714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206247, 0.227908, -0.951588,
		-0.862009, 0.417877, 0.286914,
		0.463037, 0.879452, 0.110273,
		33.918579, 34.598831, 40.163795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004120, 34.446121, 39.896671>,  <33.594452, 33.983215, 40.086605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004120, 34.446121, 39.896671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.359142, 34.625755, 39.855545>,  <33.572155, 34.733536, 39.830868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.359142, 34.625755, 39.855545>,  <33.004120, 34.446121, 39.896671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359142, 34.625755, 39.855545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237995, 0.255851, -0.936963,
		-0.394469, 0.856075, 0.333961,
		0.887554, 0.449084, -0.102817,
		33.625408, 34.760479, 39.824699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863571, 35.013153, 39.446690>,  <33.004120, 34.446121, 39.896671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863571, 35.013153, 39.446690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.261280, 34.971863, 39.435631>,  <33.499905, 34.947090, 39.428997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.261280, 34.971863, 39.435631>,  <32.863571, 35.013153, 39.446690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261280, 34.971863, 39.435631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004590, 0.217208, -0.976115,
		0.106765, 0.970652, 0.215490,
		0.994274, -0.103225, -0.027646,
		33.559563, 34.940895, 39.427338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139988, 35.672340, 39.144115>,  <32.863571, 35.013153, 39.446690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139988, 35.672340, 39.144115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.408279, 35.377270, 39.113258>,  <33.569256, 35.200226, 39.094746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.408279, 35.377270, 39.113258>,  <33.139988, 35.672340, 39.144115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408279, 35.377270, 39.113258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203239, 0.282824, -0.937392,
		0.713310, 0.613062, 0.339624,
		0.670733, -0.737676, -0.077143,
		33.609501, 35.155968, 39.090115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702282, 35.975788, 38.783314>,  <33.139988, 35.672340, 39.144115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702282, 35.975788, 38.783314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.732201, 35.578510, 38.747623>,  <33.750153, 35.340141, 38.726212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.732201, 35.578510, 38.747623>,  <33.702282, 35.975788, 38.783314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732201, 35.578510, 38.747623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062042, 0.093934, -0.993643,
		0.995266, 0.068790, 0.068647,
		0.074801, -0.993199, -0.089221,
		33.754642, 35.280552, 38.720856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362236, 36.503418, 38.584473>,  <33.702282, 35.975788, 38.783314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362236, 36.503418, 38.584473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.326374, 36.901768, 38.590084>,  <34.304855, 37.140778, 38.593449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.326374, 36.901768, 38.590084>,  <34.362236, 36.503418, 38.584473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326374, 36.901768, 38.590084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301484, 0.013714, 0.953373,
		0.949247, 0.089703, -0.301469,
		-0.089654, 0.995874, 0.014026,
		34.299477, 37.200531, 38.594292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019539, 36.874264, 38.731766>,  <34.362236, 36.503418, 38.584473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019539, 36.874264, 38.731766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.740803, 37.131241, 38.859314>,  <34.573559, 37.285427, 38.935844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.740803, 37.131241, 38.859314>,  <35.019539, 36.874264, 38.731766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740803, 37.131241, 38.859314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466305, 0.068016, 0.882005,
		0.544950, 0.763309, -0.346971,
		-0.696842, 0.642443, 0.318870,
		34.531750, 37.323975, 38.954975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328632, 37.274609, 39.331303>,  <35.019539, 36.874264, 38.731766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328632, 37.274609, 39.331303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.946995, 37.389194, 39.366291>,  <34.718014, 37.457947, 39.387283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.946995, 37.389194, 39.366291>,  <35.328632, 37.274609, 39.331303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946995, 37.389194, 39.366291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103643, 0.041764, 0.993737,
		0.281018, 0.957180, -0.069537,
		-0.954090, 0.286465, 0.087469,
		34.660767, 37.475136, 39.392532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251057, 37.905193, 39.817352>,  <35.328632, 37.274609, 39.331303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251057, 37.905193, 39.817352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.880028, 37.755825, 39.822510>,  <34.657410, 37.666203, 39.825603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.880028, 37.755825, 39.822510>,  <35.251057, 37.905193, 39.817352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880028, 37.755825, 39.822510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025500, 0.097686, 0.994890,
		-0.372773, 0.922504, -0.100133,
		-0.927572, -0.373422, 0.012891,
		34.601757, 37.643799, 39.826378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718605, 38.444973, 40.095783>,  <35.251057, 37.905193, 39.817352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718605, 38.444973, 40.095783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581921, 38.075161, 40.163284>,  <34.499912, 37.853275, 40.203785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581921, 38.075161, 40.163284>,  <34.718605, 38.444973, 40.095783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581921, 38.075161, 40.163284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039606, 0.193571, 0.980286,
		-0.938972, 0.328287, -0.102762,
		-0.341707, -0.924531, 0.168755,
		34.479408, 37.797802, 40.213909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170418, 38.546741, 40.678539>,  <34.718605, 38.444973, 40.095783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170418, 38.546741, 40.678539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.251030, 38.154961, 40.675316>,  <34.299397, 37.919891, 40.673382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.251030, 38.154961, 40.675316>,  <34.170418, 38.546741, 40.678539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251030, 38.154961, 40.675316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085435, -0.025772, 0.996011,
		-0.975749, -0.200037, -0.088873,
		0.201529, -0.979450, -0.008057,
		34.311489, 37.861126, 40.672897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685513, 38.331207, 41.140621>,  <34.170418, 38.546741, 40.678539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685513, 38.331207, 41.140621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.974171, 38.055649, 41.113358>,  <34.147366, 37.890312, 41.097000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.974171, 38.055649, 41.113358>,  <33.685513, 38.331207, 41.140621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974171, 38.055649, 41.113358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185242, -0.287035, 0.939839,
		-0.667020, -0.665602, -0.334750,
		0.721643, -0.688901, -0.068161,
		34.190662, 37.848980, 41.092911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378117, 37.724915, 41.512787>,  <33.685513, 38.331207, 41.140621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378117, 37.724915, 41.512787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.771446, 37.659985, 41.480007>,  <34.007446, 37.621025, 41.460339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.771446, 37.659985, 41.480007>,  <33.378117, 37.724915, 41.512787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771446, 37.659985, 41.480007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035623, -0.269971, 0.962209,
		-0.178315, -0.949087, -0.259688,
		0.983328, -0.162326, -0.081949,
		34.066444, 37.611286, 41.455421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572598, 37.154652, 41.987583>,  <33.378117, 37.724915, 41.512787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572598, 37.154652, 41.987583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920391, 37.340759, 41.921227>,  <34.129066, 37.452423, 41.881413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920391, 37.340759, 41.921227>,  <33.572598, 37.154652, 41.987583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920391, 37.340759, 41.921227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222096, -0.068255, 0.972633,
		0.441217, -0.882532, -0.162682,
		0.869483, 0.465273, -0.165892,
		34.181236, 37.480343, 41.871460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140888, 36.700596, 42.147762>,  <33.572598, 37.154652, 41.987583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140888, 36.700596, 42.147762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.263931, 37.080070, 42.177097>,  <34.337757, 37.307755, 42.194698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.263931, 37.080070, 42.177097>,  <34.140888, 36.700596, 42.147762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263931, 37.080070, 42.177097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213098, -0.143803, 0.966390,
		0.927345, -0.281638, -0.246397,
		0.307605, 0.948684, 0.073338,
		34.356213, 37.364677, 42.199100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718502, 36.605408, 42.435364>,  <34.140888, 36.700596, 42.147762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718502, 36.605408, 42.435364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.618847, 36.988564, 42.492462>,  <34.559055, 37.218456, 42.526722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.618847, 36.988564, 42.492462>,  <34.718502, 36.605408, 42.435364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618847, 36.988564, 42.492462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339925, -0.051523, 0.939040,
		0.906853, 0.282471, -0.312775,
		-0.249137, 0.957891, 0.142743,
		34.544106, 37.275932, 42.535286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378204, 37.023594, 42.683914>,  <34.718502, 36.605408, 42.435364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378204, 37.023594, 42.683914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.044384, 37.209167, 42.802761>,  <34.844090, 37.320511, 42.874069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.044384, 37.209167, 42.802761>,  <35.378204, 37.023594, 42.683914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044384, 37.209167, 42.802761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321637, -0.027563, 0.946462,
		0.447288, 0.885439, -0.126217,
		-0.834556, 0.463937, 0.297119,
		34.794018, 37.348347, 42.891895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641048, 37.465267, 43.108334>,  <35.378204, 37.023594, 42.683914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641048, 37.465267, 43.108334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.258476, 37.468449, 43.225079>,  <35.028934, 37.470356, 43.295124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.258476, 37.468449, 43.225079>,  <35.641048, 37.465267, 43.108334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258476, 37.468449, 43.225079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288657, -0.124399, 0.949317,
		0.043856, 0.992200, 0.116683,
		-0.956428, 0.007952, 0.291861,
		34.971546, 37.470833, 43.312637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706661, 37.888676, 43.719978>,  <35.641048, 37.465267, 43.108334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706661, 37.888676, 43.719978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.345596, 37.720871, 43.758377>,  <35.128956, 37.620190, 43.781418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.345596, 37.720871, 43.758377>,  <35.706661, 37.888676, 43.719978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345596, 37.720871, 43.758377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121965, -0.035446, 0.991901,
		-0.412708, 0.907059, 0.083161,
		-0.902661, -0.419509, 0.096001,
		35.074799, 37.595016, 43.787178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751892, 38.636890, 43.658638>,  <35.706661, 37.888676, 43.719978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751892, 38.636890, 43.658638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.126949, 38.764206, 43.602753>,  <36.351982, 38.840595, 43.569221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.126949, 38.764206, 43.602753>,  <35.751892, 38.636890, 43.658638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126949, 38.764206, 43.602753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095435, -0.150764, -0.983952,
		-0.334240, 0.935930, -0.110987,
		0.937644, 0.318284, -0.139712,
		36.408241, 38.859692, 43.560841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714790, 39.081196, 43.132381>,  <35.751892, 38.636890, 43.658638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714790, 39.081196, 43.132381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.100044, 38.974541, 43.146671>,  <36.331196, 38.910545, 43.155247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.100044, 38.974541, 43.146671>,  <35.714790, 39.081196, 43.132381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100044, 38.974541, 43.146671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002271, -0.124739, -0.992187,
		0.269013, 0.955690, -0.119535,
		0.963134, -0.266640, 0.035727,
		36.388985, 38.894550, 43.157391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035923, 39.432274, 42.612282>,  <35.714790, 39.081196, 43.132381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035923, 39.432274, 42.612282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.294682, 39.134521, 42.678524>,  <36.449936, 38.955872, 42.718269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.294682, 39.134521, 42.678524>,  <36.035923, 39.432274, 42.612282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294682, 39.134521, 42.678524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136305, -0.100799, -0.985525,
		0.750298, 0.660105, 0.036256,
		0.646896, -0.744379, 0.165605,
		36.488750, 38.911209, 42.728207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618683, 39.550678, 42.144825>,  <36.035923, 39.432274, 42.612282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618683, 39.550678, 42.144825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.667179, 39.177513, 42.280453>,  <36.696278, 38.953613, 42.361828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.667179, 39.177513, 42.280453>,  <36.618683, 39.550678, 42.144825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667179, 39.177513, 42.280453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516924, -0.232277, -0.823916,
		0.847403, 0.275163, 0.454086,
		0.121237, -0.932916, 0.339070,
		36.703548, 38.897636, 42.382175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346260, 39.370438, 42.065880>,  <36.618683, 39.550678, 42.144825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346260, 39.370438, 42.065880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.152748, 39.020386, 42.061733>,  <37.036640, 38.810356, 42.059246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.152748, 39.020386, 42.061733>,  <37.346260, 39.370438, 42.065880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152748, 39.020386, 42.061733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580463, -0.311976, -0.752153,
		0.654997, -0.369893, 0.658907,
		-0.483779, -0.875129, -0.010366,
		37.007614, 38.757847, 42.058624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883759, 38.885834, 42.024113>,  <37.346260, 39.370438, 42.065880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883759, 38.885834, 42.024113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.540485, 38.736294, 41.883396>,  <37.334522, 38.646572, 41.798965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.540485, 38.736294, 41.883396>,  <37.883759, 38.885834, 42.024113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540485, 38.736294, 41.883396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493452, -0.411860, -0.766079,
		0.141507, -0.831029, 0.537928,
		-0.858184, -0.373847, -0.351792,
		37.283031, 38.624138, 41.777859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111565, 38.374847, 41.565086>,  <37.883759, 38.885834, 42.024113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111565, 38.374847, 41.565086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.719833, 38.371754, 41.484241>,  <37.484795, 38.369900, 41.435734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.719833, 38.371754, 41.484241>,  <38.111565, 38.374847, 41.565086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719833, 38.371754, 41.484241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191124, -0.362308, -0.912252,
		-0.066173, -0.932027, 0.356297,
		-0.979333, -0.007730, -0.202108,
		37.426033, 38.369434, 41.423611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988232, 37.754723, 41.239586>,  <38.111565, 38.374847, 41.565086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988232, 37.754723, 41.239586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700104, 38.011646, 41.134830>,  <37.527229, 38.165802, 41.071976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700104, 38.011646, 41.134830>,  <37.988232, 37.754723, 41.239586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700104, 38.011646, 41.134830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287462, -0.067187, -0.955433,
		-0.631278, -0.763496, -0.136244,
		-0.720315, 0.642308, -0.261890,
		37.484009, 38.204338, 41.056263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717701, 37.579491, 40.548851>,  <37.988232, 37.754723, 41.239586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717701, 37.579491, 40.548851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.591866, 37.958561, 40.570553>,  <37.516365, 38.186005, 40.583572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.591866, 37.958561, 40.570553>,  <37.717701, 37.579491, 40.548851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591866, 37.958561, 40.570553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225986, 0.130282, -0.965379,
		-0.921934, -0.291439, -0.255147,
		-0.314590, 0.947676, 0.054251,
		37.497490, 38.242863, 40.586826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238213, 37.698181, 40.005634>,  <37.717701, 37.579491, 40.548851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238213, 37.698181, 40.005634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.383987, 38.058582, 40.099773>,  <37.471451, 38.274822, 40.156258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.383987, 38.058582, 40.099773>,  <37.238213, 37.698181, 40.005634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383987, 38.058582, 40.099773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161937, 0.187558, -0.968813,
		-0.917041, 0.391179, -0.077553,
		0.364433, 0.901000, 0.235345,
		37.493317, 38.328884, 40.170376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896687, 38.142048, 39.633144>,  <37.238213, 37.698181, 40.005634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896687, 38.142048, 39.633144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.237988, 38.327831, 39.727993>,  <37.442768, 38.439301, 39.784901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.237988, 38.327831, 39.727993>,  <36.896687, 38.142048, 39.633144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237988, 38.327831, 39.727993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127506, 0.255089, -0.958474,
		-0.505663, 0.848059, 0.158435,
		0.853257, 0.464463, 0.237121,
		37.493965, 38.467171, 39.799129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922997, 38.921448, 39.380978>,  <36.896687, 38.142048, 39.633144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922997, 38.921448, 39.380978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302982, 38.809410, 39.436295>,  <37.530972, 38.742188, 39.469486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302982, 38.809410, 39.436295>,  <36.922997, 38.921448, 39.380978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302982, 38.809410, 39.436295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225028, 0.306560, -0.924869,
		0.216651, 0.909709, 0.354248,
		0.949960, -0.280089, 0.138294,
		37.587971, 38.725384, 39.477783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295406, 39.506290, 39.144836>,  <36.922997, 38.921448, 39.380978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295406, 39.506290, 39.144836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.540226, 39.189964, 39.143623>,  <37.687119, 39.000168, 39.142895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.540226, 39.189964, 39.143623>,  <37.295406, 39.506290, 39.144836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540226, 39.189964, 39.143623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261447, 0.205960, -0.942988,
		0.746353, 0.576362, 0.332814,
		0.612049, -0.790814, -0.003031,
		37.723839, 38.952721, 39.142715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789654, 39.674900, 38.676941>,  <37.295406, 39.506290, 39.144836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789654, 39.674900, 38.676941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.876221, 39.285553, 38.707207>,  <37.928162, 39.051945, 38.725365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.876221, 39.285553, 38.707207>,  <37.789654, 39.674900, 38.676941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876221, 39.285553, 38.707207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200105, -0.031633, -0.979264,
		0.955574, 0.227069, 0.187929,
		0.216416, -0.973365, 0.075665,
		37.941147, 38.993542, 38.729908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.310984, 37.117840, 25.283676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.379984, 36.726059, 25.325451>,  <26.421385, 36.490990, 25.350515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.379984, 36.726059, 25.325451>,  <26.310984, 37.117840, 25.283676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379984, 36.726059, 25.325451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127013, 0.083025, 0.988420,
		-0.976786, -0.183770, -0.110081,
		0.172502, -0.979457, 0.104439,
		26.431734, 36.432220, 25.356783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.730474, 36.978973, 25.564960>,  <26.310984, 37.117840, 25.283676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.730474, 36.978973, 25.564960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.049707, 36.753639, 25.650488>,  <26.241247, 36.618439, 25.701805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.049707, 36.753639, 25.650488>,  <25.730474, 36.978973, 25.564960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049707, 36.753639, 25.650488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213358, 0.067662, 0.974628,
		-0.563511, -0.823452, -0.066193,
		0.798081, -0.563337, 0.213818,
		26.289131, 36.584637, 25.714634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509256, 36.530445, 26.131794>,  <25.730474, 36.978973, 25.564960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.509256, 36.530445, 26.131794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.907845, 36.503223, 26.151466>,  <26.146997, 36.486893, 26.163269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.907845, 36.503223, 26.151466>,  <25.509256, 36.530445, 26.131794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907845, 36.503223, 26.151466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053594, -0.064631, 0.996469,
		-0.064631, -0.995586, -0.068050,
		-0.996469, 0.068050, -0.049180,
		26.206785, 36.482807, 26.166220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597219, 35.901085, 26.505953>,  <25.509256, 36.530445, 26.131794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.597219, 35.901085, 26.505953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.927580, 36.125645, 26.526787>,  <26.125795, 36.260380, 26.539288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.927580, 36.125645, 26.526787>,  <25.597219, 35.901085, 26.505953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927580, 36.125645, 26.526787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043577, -0.155666, 0.986848,
		0.562128, -0.812769, -0.153029,
		0.825901, 0.561404, 0.052086,
		26.175350, 36.294067, 26.542412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024258, 35.459793, 26.789347>,  <25.597219, 35.901085, 26.505953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024258, 35.459793, 26.789347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.156694, 35.832603, 26.848289>,  <26.236156, 36.056290, 26.883656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.156694, 35.832603, 26.848289>,  <26.024258, 35.459793, 26.789347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156694, 35.832603, 26.848289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097355, -0.189073, 0.977125,
		0.938563, -0.309172, -0.153338,
		0.331092, 0.932021, 0.147358,
		26.256021, 36.112209, 26.892496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.493914, 35.376793, 27.359182>,  <26.024258, 35.459793, 26.789347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.493914, 35.376793, 27.359182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.387573, 35.762348, 27.352978>,  <26.323769, 35.993683, 27.349255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.387573, 35.762348, 27.352978>,  <26.493914, 35.376793, 27.359182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387573, 35.762348, 27.352978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049504, 0.002417, 0.998771,
		0.962742, 0.266294, 0.047074,
		-0.265853, 0.963889, -0.015509,
		26.307817, 36.051514, 27.348326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806736, 35.555378, 27.960993>,  <26.493914, 35.376793, 27.359182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806736, 35.555378, 27.960993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.573008, 35.874180, 27.899862>,  <26.432772, 36.065460, 27.863184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.573008, 35.874180, 27.899862>,  <26.806736, 35.555378, 27.960993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573008, 35.874180, 27.899862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018819, 0.174960, 0.984396,
		0.811306, 0.578077, -0.087234,
		-0.584319, 0.797004, -0.152825,
		26.397713, 36.113281, 27.854015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054567, 36.142464, 28.331968>,  <26.806736, 35.555378, 27.960993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054567, 36.142464, 28.331968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.658678, 36.182507, 28.291119>,  <26.421144, 36.206532, 28.266609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.658678, 36.182507, 28.291119>,  <27.054567, 36.142464, 28.331968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658678, 36.182507, 28.291119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094278, 0.080195, 0.992311,
		0.107527, 0.991739, -0.069933,
		-0.989722, 0.100107, -0.102123,
		26.361761, 36.212540, 28.260483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829048, 36.758656, 28.654894>,  <27.054567, 36.142464, 28.331968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829048, 36.758656, 28.654894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.497231, 36.536926, 28.627823>,  <26.298140, 36.403889, 28.611580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.497231, 36.536926, 28.627823>,  <26.829048, 36.758656, 28.654894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497231, 36.536926, 28.627823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060663, -0.031028, 0.997676,
		-0.555138, 0.831721, -0.007887,
		-0.829543, -0.554326, -0.067680,
		26.248367, 36.370628, 28.607519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492363, 36.938812, 29.237597>,  <26.829048, 36.758656, 28.654894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492363, 36.938812, 29.237597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.281572, 36.620487, 29.118277>,  <26.155098, 36.429493, 29.046684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.281572, 36.620487, 29.118277>,  <26.492363, 36.938812, 29.237597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281572, 36.620487, 29.118277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246826, -0.192551, 0.949737,
		-0.813247, 0.574119, -0.094956,
		-0.526978, -0.795809, -0.298299,
		26.123480, 36.381744, 29.028788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997995, 36.994621, 29.712898>,  <26.492363, 36.938812, 29.237597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997995, 36.994621, 29.712898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.014154, 36.625870, 29.558752>,  <26.023849, 36.404617, 29.466265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.014154, 36.625870, 29.558752>,  <25.997995, 36.994621, 29.712898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014154, 36.625870, 29.558752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376448, -0.371303, 0.848776,
		-0.925557, 0.110783, -0.362039,
		0.040396, -0.921880, -0.385366,
		26.026274, 36.349304, 29.443142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.373259, 36.740940, 29.787827>,  <25.997995, 36.994621, 29.712898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.373259, 36.740940, 29.787827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.617563, 36.425720, 29.756979>,  <25.764145, 36.236588, 29.738470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.617563, 36.425720, 29.756979>,  <25.373259, 36.740940, 29.787827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617563, 36.425720, 29.756979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255446, -0.288288, 0.922842,
		-0.749479, -0.543935, -0.377379,
		0.610760, -0.788051, -0.077120,
		25.800791, 36.189304, 29.733843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.038172, 36.271141, 30.181541>,  <25.373259, 36.740940, 29.787827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.038172, 36.271141, 30.181541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.388927, 36.081093, 30.152353>,  <25.599380, 35.967064, 30.134840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.388927, 36.081093, 30.152353>,  <25.038172, 36.271141, 30.181541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388927, 36.081093, 30.152353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148008, -0.411297, 0.899405,
		-0.457343, -0.777876, -0.430983,
		0.876887, -0.475126, -0.072972,
		25.651995, 35.938557, 30.130463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002478, 35.560169, 30.372477>,  <25.038172, 36.271141, 30.181541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002478, 35.560169, 30.372477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.386303, 35.650238, 30.440054>,  <25.616598, 35.704277, 30.480600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.386303, 35.650238, 30.440054>,  <25.002478, 35.560169, 30.372477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.386303, 35.650238, 30.440054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077471, -0.365750, 0.927483,
		0.270631, -0.903065, -0.333515,
		0.959561, 0.225168, 0.168944,
		25.674171, 35.717789, 30.490738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.118458, 35.058212, 30.837149>,  <25.002478, 35.560169, 30.372477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.118458, 35.058212, 30.837149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.458035, 35.269451, 30.845266>,  <25.661781, 35.396194, 30.850136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.458035, 35.269451, 30.845266>,  <25.118458, 35.058212, 30.837149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.458035, 35.269451, 30.845266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114987, -0.222052, 0.968231,
		0.515827, -0.819637, -0.249233,
		0.848940, 0.528098, 0.020293,
		25.712717, 35.427879, 30.851355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.527891, 34.637367, 31.219656>,  <25.118458, 35.058212, 30.837149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.527891, 34.637367, 31.219656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.688066, 34.998909, 31.279922>,  <25.784172, 35.215836, 31.316082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.688066, 34.998909, 31.279922>,  <25.527891, 34.637367, 31.219656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.688066, 34.998909, 31.279922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174884, -0.236787, 0.955692,
		0.899481, -0.356345, -0.252887,
		0.400437, 0.903853, 0.150666,
		25.808197, 35.270065, 31.325123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005579, 34.485493, 31.635174>,  <25.527891, 34.637367, 31.219656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005579, 34.485493, 31.635174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.945190, 34.878975, 31.674210>,  <25.908958, 35.115067, 31.697632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.945190, 34.878975, 31.674210>,  <26.005579, 34.485493, 31.635174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.945190, 34.878975, 31.674210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144607, -0.075685, 0.986590,
		0.977904, 0.163057, -0.130826,
		-0.150969, 0.983709, 0.097592,
		25.899900, 35.174088, 31.703487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658180, 34.768524, 32.003204>,  <26.005579, 34.485493, 31.635174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658180, 34.768524, 32.003204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.334841, 35.003571, 32.017551>,  <26.140837, 35.144596, 32.026161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.334841, 35.003571, 32.017551>,  <26.658180, 34.768524, 32.003204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334841, 35.003571, 32.017551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161692, 0.163024, 0.973282,
		0.566066, 0.792549, -0.226793,
		-0.808347, 0.587613, 0.035867,
		26.092337, 35.179855, 32.028313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816317, 35.309830, 32.529682>,  <26.658180, 34.768524, 32.003204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816317, 35.309830, 32.529682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.419685, 35.349236, 32.496063>,  <26.181705, 35.372879, 32.475891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.419685, 35.349236, 32.496063>,  <26.816317, 35.309830, 32.529682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419685, 35.349236, 32.496063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054042, 0.275016, 0.959920,
		0.117677, 0.956379, -0.267377,
		-0.991580, 0.098511, -0.084047,
		26.122211, 35.378788, 32.470848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610769, 35.982121, 32.792313>,  <26.816317, 35.309830, 32.529682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610769, 35.982121, 32.792313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.289270, 35.746029, 32.822311>,  <26.096371, 35.604374, 32.840309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.289270, 35.746029, 32.822311>,  <26.610769, 35.982121, 32.792313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289270, 35.746029, 32.822311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031070, 0.084239, 0.995961,
		-0.594159, 0.802831, -0.049368,
		-0.803747, -0.590226, 0.074996,
		26.048147, 35.568962, 32.844810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128424, 36.121143, 33.310051>,  <26.610769, 35.982121, 32.792313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128424, 36.121143, 33.310051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475403, 36.016308, 33.479210>,  <27.683590, 35.953407, 33.580708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475403, 36.016308, 33.479210>,  <27.128424, 36.121143, 33.310051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475403, 36.016308, 33.479210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490435, 0.307395, -0.815464,
		0.083729, 0.914777, 0.395187,
		0.867446, -0.262091, 0.422901,
		27.735638, 35.937679, 33.606079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562643, 36.642559, 33.371830>,  <27.128424, 36.121143, 33.310051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562643, 36.642559, 33.371830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.779045, 36.307178, 33.345577>,  <27.908886, 36.105949, 33.329826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.779045, 36.307178, 33.345577>,  <27.562643, 36.642559, 33.371830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779045, 36.307178, 33.345577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459377, 0.359971, -0.812031,
		0.704475, 0.409164, 0.579913,
		0.541006, -0.838454, -0.065630,
		27.941347, 36.055641, 33.325890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235739, 36.872227, 33.287613>,  <27.562643, 36.642559, 33.371830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235739, 36.872227, 33.287613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.204374, 36.499454, 33.145988>,  <28.185556, 36.275791, 33.061012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.204374, 36.499454, 33.145988>,  <28.235739, 36.872227, 33.287613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204374, 36.499454, 33.145988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567853, 0.250158, -0.784197,
		0.819387, -0.262545, 0.509583,
		-0.078411, -0.931929, -0.354063,
		28.180851, 36.219875, 33.039768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908009, 36.712807, 33.064762>,  <28.235739, 36.872227, 33.287613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908009, 36.712807, 33.064762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.679087, 36.455963, 32.860737>,  <28.541733, 36.301857, 32.738319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.679087, 36.455963, 32.860737>,  <28.908009, 36.712807, 33.064762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679087, 36.455963, 32.860737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599430, 0.096887, -0.794541,
		0.559598, -0.760470, 0.329448,
		-0.572305, -0.642105, -0.510066,
		28.507395, 36.263332, 32.707718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258745, 36.487698, 32.627705>,  <28.908009, 36.712807, 33.064762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258745, 36.487698, 32.627705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.912312, 36.368587, 32.467091>,  <28.704451, 36.297123, 32.370724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.912312, 36.368587, 32.467091>,  <29.258745, 36.487698, 32.627705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912312, 36.368587, 32.467091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324317, 0.276543, -0.904623,
		0.380418, -0.913703, -0.142935,
		-0.866083, -0.297778, -0.401532,
		28.652487, 36.279255, 32.346630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361523, 36.075867, 32.026241>,  <29.258745, 36.487698, 32.627705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361523, 36.075867, 32.026241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972805, 36.155869, 31.976259>,  <28.739574, 36.203869, 31.946270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972805, 36.155869, 31.976259>,  <29.361523, 36.075867, 32.026241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972805, 36.155869, 31.976259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153753, 0.135575, -0.978764,
		-0.178815, -0.970370, -0.162502,
		-0.971795, 0.200003, -0.124954,
		28.681267, 36.215870, 31.938772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258047, 35.714230, 31.352682>,  <29.361523, 36.075867, 32.026241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258047, 35.714230, 31.352682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982826, 35.998566, 31.411047>,  <28.817694, 36.169167, 31.446066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982826, 35.998566, 31.411047>,  <29.258047, 35.714230, 31.352682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982826, 35.998566, 31.411047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137412, 0.325067, -0.935654,
		-0.712532, -0.623729, -0.321341,
		-0.688052, 0.710840, 0.145913,
		28.776411, 36.211819, 31.454821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828817, 35.737831, 30.724756>,  <29.258047, 35.714230, 31.352682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828817, 35.737831, 30.724756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.701593, 36.078476, 30.891417>,  <28.625259, 36.282864, 30.991413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.701593, 36.078476, 30.891417>,  <28.828817, 35.737831, 30.724756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701593, 36.078476, 30.891417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083653, 0.412548, -0.907087,
		-0.944373, -0.323361, -0.059975,
		-0.318059, 0.851611, 0.416649,
		28.606176, 36.333958, 31.016411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101179, 35.878536, 30.332067>,  <28.828817, 35.737831, 30.724756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101179, 35.878536, 30.332067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.255434, 36.219398, 30.473549>,  <28.347988, 36.423916, 30.558437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.255434, 36.219398, 30.473549>,  <28.101179, 35.878536, 30.332067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255434, 36.219398, 30.473549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100961, 0.420030, -0.901877,
		-0.917110, 0.312088, 0.248015,
		0.385639, 0.852160, 0.353705,
		28.371126, 36.475048, 30.579660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722933, 36.414173, 30.073744>,  <28.101179, 35.878536, 30.332067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722933, 36.414173, 30.073744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.064548, 36.604282, 30.158342>,  <28.269518, 36.718349, 30.209101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.064548, 36.604282, 30.158342>,  <27.722933, 36.414173, 30.073744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064548, 36.604282, 30.158342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039379, 0.464461, -0.884718,
		-0.518714, 0.747256, 0.415384,
		0.854041, 0.475273, 0.211496,
		28.320761, 36.746864, 30.221790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583218, 37.059086, 29.892828>,  <27.722933, 36.414173, 30.073744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583218, 37.059086, 29.892828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980980, 37.022186, 29.913403>,  <28.219637, 37.000046, 29.925747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.980980, 37.022186, 29.913403>,  <27.583218, 37.059086, 29.892828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980980, 37.022186, 29.913403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091657, 0.511696, -0.854264,
		0.052489, 0.854200, 0.517289,
		0.994406, -0.092253, 0.051435,
		28.279303, 36.994511, 29.928833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663332, 37.671883, 29.710997>,  <27.583218, 37.059086, 29.892828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663332, 37.671883, 29.710997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.014458, 37.486118, 29.664072>,  <28.225134, 37.374660, 29.635918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.014458, 37.486118, 29.664072>,  <27.663332, 37.671883, 29.710997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014458, 37.486118, 29.664072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218607, 0.606336, -0.764570,
		0.426205, 0.645506, 0.633775,
		0.877815, -0.464411, -0.117311,
		28.277802, 37.346794, 29.628878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128788, 38.241196, 29.639217>,  <27.663332, 37.671883, 29.710997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128788, 38.241196, 29.639217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.277655, 37.912525, 29.466547>,  <28.366974, 37.715324, 29.362946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.277655, 37.912525, 29.466547>,  <28.128788, 38.241196, 29.639217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277655, 37.912525, 29.466547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299423, 0.546503, -0.782100,
		0.878543, 0.161817, 0.449418,
		0.372166, -0.821675, -0.431675,
		28.389305, 37.666023, 29.337044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730612, 38.482933, 29.347382>,  <28.128788, 38.241196, 29.639217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730612, 38.482933, 29.347382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656624, 38.145424, 29.145853>,  <28.612232, 37.942921, 29.024935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656624, 38.145424, 29.145853>,  <28.730612, 38.482933, 29.347382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656624, 38.145424, 29.145853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279557, 0.446313, -0.850090,
		0.942144, -0.298087, 0.153328,
		-0.184968, -0.843771, -0.503823,
		28.601133, 37.892292, 28.994705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189526, 38.631584, 28.838646>,  <28.730612, 38.482933, 29.347382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189526, 38.631584, 28.838646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.960571, 38.335297, 28.697958>,  <28.823198, 38.157524, 28.613544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.960571, 38.335297, 28.697958>,  <29.189526, 38.631584, 28.838646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960571, 38.335297, 28.697958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236893, 0.261269, -0.935746,
		0.785022, -0.618926, 0.025926,
		-0.572384, -0.740722, -0.351720,
		28.788857, 38.113079, 28.592442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579885, 38.216633, 28.389603>,  <29.189526, 38.631584, 28.838646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579885, 38.216633, 28.389603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.202248, 38.130325, 28.289900>,  <28.975664, 38.078541, 28.230078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.202248, 38.130325, 28.289900>,  <29.579885, 38.216633, 28.389603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202248, 38.130325, 28.289900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205765, 0.205057, -0.956876,
		0.257581, -0.954669, -0.149194,
		-0.944094, -0.215775, -0.249256,
		28.919020, 38.065594, 28.215122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618116, 37.769466, 27.801445>,  <29.579885, 38.216633, 28.389603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618116, 37.769466, 27.801445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.258034, 37.943607, 27.805435>,  <29.041985, 38.048092, 27.807829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.258034, 37.943607, 27.805435>,  <29.618116, 37.769466, 27.801445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258034, 37.943607, 27.805435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142660, 0.316480, -0.937811,
		-0.411436, -0.842798, -0.347004,
		-0.900205, 0.435353, 0.009978,
		28.987972, 38.074211, 27.808428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242313, 37.423870, 27.215504>,  <29.618116, 37.769466, 27.801445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242313, 37.423870, 27.215504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.056129, 37.773922, 27.268402>,  <28.944418, 37.983955, 27.300140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.056129, 37.773922, 27.268402>,  <29.242313, 37.423870, 27.215504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056129, 37.773922, 27.268402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217981, 0.258167, -0.941188,
		-0.857805, -0.409259, -0.310929,
		-0.465461, 0.875133, 0.132246,
		28.916491, 38.036461, 27.308077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709162, 37.512939, 26.716681>,  <29.242313, 37.423870, 27.215504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709162, 37.512939, 26.716681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.817919, 37.877895, 26.839071>,  <28.883173, 38.096870, 26.912506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.817919, 37.877895, 26.839071>,  <28.709162, 37.512939, 26.716681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817919, 37.877895, 26.839071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129338, 0.280423, -0.951123,
		-0.953597, 0.298176, -0.041763,
		0.271891, 0.912389, 0.305976,
		28.899487, 38.151611, 26.930864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269842, 37.927776, 26.201038>,  <28.709162, 37.512939, 26.716681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269842, 37.927776, 26.201038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541735, 38.169334, 26.367546>,  <28.704870, 38.314270, 26.467451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541735, 38.169334, 26.367546>,  <28.269842, 37.927776, 26.201038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541735, 38.169334, 26.367546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134530, 0.455258, -0.880137,
		-0.721020, 0.654256, 0.228211,
		0.679730, 0.603895, 0.416267,
		28.745653, 38.350502, 26.492426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088926, 38.626377, 26.015654>,  <28.269842, 37.927776, 26.201038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088926, 38.626377, 26.015654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.476986, 38.661919, 26.105911>,  <28.709822, 38.683243, 26.160067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.476986, 38.661919, 26.105911>,  <28.088926, 38.626377, 26.015654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476986, 38.661919, 26.105911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151663, 0.503745, -0.850434,
		-0.189233, 0.859270, 0.475232,
		0.970149, 0.088855, 0.225645,
		28.768030, 38.688576, 26.173605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360098, 39.197842, 25.612616>,  <28.088926, 38.626377, 26.015654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360098, 39.197842, 25.612616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.705362, 39.046082, 25.745888>,  <28.912521, 38.955025, 25.825851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.705362, 39.046082, 25.745888>,  <28.360098, 39.197842, 25.612616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705362, 39.046082, 25.745888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455468, 0.300211, -0.838106,
		0.217952, 0.875174, 0.431935,
		0.863160, -0.379400, 0.333182,
		28.964310, 38.932262, 25.845842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.370300, 38.839695, 43.796757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.997341, 38.700710, 43.756935>,  <40.773567, 38.617321, 43.733040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.997341, 38.700710, 43.756935>,  <41.370300, 38.839695, 43.796757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997341, 38.700710, 43.756935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075834, -0.081252, 0.993804,
		-0.353399, 0.934167, 0.049410,
		-0.932394, -0.347462, -0.099556,
		40.717625, 38.596470, 43.727070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952446, 39.181534, 44.285645>,  <41.370300, 38.839695, 43.796757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952446, 39.181534, 44.285645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.732826, 38.852444, 44.226749>,  <40.601055, 38.654991, 44.191414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.732826, 38.852444, 44.226749>,  <40.952446, 39.181534, 44.285645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732826, 38.852444, 44.226749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017767, -0.187614, 0.982082,
		-0.835603, 0.536593, 0.117627,
		-0.549047, -0.822720, -0.147237,
		40.568111, 38.605629, 44.182579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371243, 39.256691, 44.657112>,  <40.952446, 39.181534, 44.285645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371243, 39.256691, 44.657112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.391167, 38.858822, 44.621010>,  <40.403122, 38.620102, 44.599350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.391167, 38.858822, 44.621010>,  <40.371243, 39.256691, 44.657112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391167, 38.858822, 44.621010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028335, -0.091736, 0.995380,
		-0.998356, -0.047026, -0.032754,
		0.049813, -0.994672, -0.090253,
		40.406109, 38.560421, 44.593933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884647, 38.972378, 45.090668>,  <40.371243, 39.256691, 44.657112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884647, 38.972378, 45.090668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.125519, 38.656452, 45.044064>,  <40.270042, 38.466896, 45.016102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.125519, 38.656452, 45.044064>,  <39.884647, 38.972378, 45.090668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125519, 38.656452, 45.044064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017583, -0.159026, 0.987118,
		-0.798168, -0.592373, -0.109650,
		0.602179, -0.789814, -0.116513,
		40.306171, 38.419510, 45.009109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600986, 38.362064, 45.303078>,  <39.884647, 38.972378, 45.090668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600986, 38.362064, 45.303078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.990238, 38.275585, 45.334785>,  <40.223789, 38.223698, 45.353809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.990238, 38.275585, 45.334785>,  <39.600986, 38.362064, 45.303078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990238, 38.275585, 45.334785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159890, -0.386678, 0.908248,
		-0.165705, -0.896516, -0.410854,
		0.973128, -0.216193, 0.079269,
		40.282177, 38.210728, 45.358566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704445, 37.621082, 45.448170>,  <39.600986, 38.362064, 45.303078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704445, 37.621082, 45.448170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.066963, 37.760216, 45.544201>,  <40.284473, 37.843697, 45.601818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.066963, 37.760216, 45.544201>,  <39.704445, 37.621082, 45.448170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066963, 37.760216, 45.544201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024570, -0.523712, 0.851541,
		0.421925, -0.777648, -0.466093,
		0.906298, 0.347834, 0.240075,
		40.338852, 37.864567, 45.616222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078529, 37.012020, 45.684212>,  <39.704445, 37.621082, 45.448170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078529, 37.012020, 45.684212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.251377, 37.336128, 45.842571>,  <40.355087, 37.530594, 45.937588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.251377, 37.336128, 45.842571>,  <40.078529, 37.012020, 45.684212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251377, 37.336128, 45.842571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169183, -0.358371, 0.918122,
		0.885803, -0.463721, -0.017777,
		0.432123, 0.810267, 0.395900,
		40.381016, 37.579208, 45.961342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300663, 36.806110, 46.378231>,  <40.078529, 37.012020, 45.684212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300663, 36.806110, 46.378231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.339203, 37.203911, 46.394634>,  <40.362328, 37.442593, 46.404476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.339203, 37.203911, 46.394634>,  <40.300663, 36.806110, 46.378231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339203, 37.203911, 46.394634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000274, -0.041172, 0.999152,
		0.995347, -0.096279, -0.003694,
		0.096350, 0.994502, 0.041007,
		40.368107, 37.502262, 46.406937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867584, 37.033390, 46.888844>,  <40.300663, 36.806110, 46.378231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867584, 37.033390, 46.888844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.625645, 37.349556, 46.850060>,  <40.480480, 37.539253, 46.826790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.625645, 37.349556, 46.850060>,  <40.867584, 37.033390, 46.888844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625645, 37.349556, 46.850060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186510, -0.022242, 0.982201,
		0.774188, 0.612171, 0.160873,
		-0.604853, 0.790413, -0.096956,
		40.444187, 37.586681, 46.820972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124058, 37.581310, 47.264240>,  <40.867584, 37.033390, 46.888844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124058, 37.581310, 47.264240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.733677, 37.661251, 47.229404>,  <40.499451, 37.709213, 47.208504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.733677, 37.661251, 47.229404>,  <41.124058, 37.581310, 47.264240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733677, 37.661251, 47.229404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067075, 0.104824, 0.992226,
		0.207423, 0.974204, -0.088898,
		-0.975949, 0.199848, -0.087087,
		40.440891, 37.721207, 47.203278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988262, 38.192898, 47.641365>,  <41.124058, 37.581310, 47.264240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988262, 38.192898, 47.641365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.631641, 38.016888, 47.598450>,  <40.417667, 37.911282, 47.572701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.631641, 38.016888, 47.598450>,  <40.988262, 38.192898, 47.641365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631641, 38.016888, 47.598450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163101, 0.090932, 0.982410,
		-0.422534, 0.893367, -0.152840,
		-0.891551, -0.440030, -0.107287,
		40.364178, 37.884880, 47.566265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608227, 38.565510, 47.999516>,  <40.988262, 38.192898, 47.641365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608227, 38.565510, 47.999516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.412533, 38.217167, 47.980492>,  <40.295116, 38.008160, 47.969078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.412533, 38.217167, 47.980492>,  <40.608227, 38.565510, 47.999516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412533, 38.217167, 47.980492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245191, 0.085004, 0.965741,
		-0.836980, 0.484131, -0.255112,
		-0.489231, -0.870857, -0.047558,
		40.265762, 37.955910, 47.966225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338036, 38.737232, 48.665943>,  <40.608227, 38.565510, 47.999516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338036, 38.737232, 48.665943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.563683, 38.801491, 48.989910>,  <40.699070, 38.840046, 49.184292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.563683, 38.801491, 48.989910>,  <40.338036, 38.737232, 48.665943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563683, 38.801491, 48.989910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223220, 0.914696, -0.336904,
		-0.794950, 0.370843, 0.480135,
		0.564116, 0.160646, 0.809918,
		40.732918, 38.849686, 49.232887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511986, 38.617630, 48.602985>,  <40.338036, 38.737232, 48.665943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511986, 38.617630, 48.602985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.151237, 38.549286, 48.761696>,  <38.934788, 38.508278, 48.856922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.151237, 38.549286, 48.761696>,  <39.511986, 38.617630, 48.602985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151237, 38.549286, 48.761696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431672, 0.392119, -0.812344,
		-0.016784, -0.903908, -0.427398,
		-0.901875, -0.170862, 0.396773,
		38.880676, 38.498028, 48.880726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030914, 38.100178, 48.249775>,  <39.511986, 38.617630, 48.602985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030914, 38.100178, 48.249775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876190, 38.433033, 48.408733>,  <38.783356, 38.632748, 48.504108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876190, 38.433033, 48.408733>,  <39.030914, 38.100178, 48.249775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876190, 38.433033, 48.408733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389686, 0.243070, -0.888292,
		-0.835775, -0.498464, 0.230249,
		-0.386815, 0.832136, 0.397395,
		38.760147, 38.682674, 48.527950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441605, 38.151928, 47.943459>,  <39.030914, 38.100178, 48.249775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441605, 38.151928, 47.943459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.479805, 38.538033, 48.040745>,  <38.502728, 38.769695, 48.099117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.479805, 38.538033, 48.040745>,  <38.441605, 38.151928, 47.943459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479805, 38.538033, 48.040745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428224, 0.260405, -0.865340,
		-0.898612, -0.021507, 0.438217,
		0.095503, 0.965260, 0.243213,
		38.508457, 38.827610, 48.113708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718971, 38.401924, 47.859562>,  <38.441605, 38.151928, 47.943459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718971, 38.401924, 47.859562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966072, 38.715649, 47.882347>,  <38.114330, 38.903881, 47.896019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966072, 38.715649, 47.882347>,  <37.718971, 38.401924, 47.859562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966072, 38.715649, 47.882347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441653, 0.405974, -0.800080,
		-0.650637, 0.469089, 0.597182,
		0.617749, 0.784309, 0.056967,
		38.151398, 38.950943, 47.899437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274712, 38.952045, 47.933296>,  <37.718971, 38.401924, 47.859562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274712, 38.952045, 47.933296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631260, 39.068588, 47.794399>,  <37.845188, 39.138512, 47.711063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631260, 39.068588, 47.794399>,  <37.274712, 38.952045, 47.933296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631260, 39.068588, 47.794399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431450, 0.310500, -0.847018,
		-0.138964, 0.904822, 0.402475,
		0.891369, 0.291353, -0.347238,
		37.898670, 39.155994, 47.690228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049145, 39.239346, 47.385712>,  <37.274712, 38.952045, 47.933296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049145, 39.239346, 47.385712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444809, 39.272175, 47.337025>,  <37.682209, 39.291874, 47.307812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444809, 39.272175, 47.337025>,  <37.049145, 39.239346, 47.385712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444809, 39.272175, 47.337025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140905, 0.298033, -0.944098,
		-0.041210, 0.951020, 0.306369,
		0.989165, 0.082076, -0.121721,
		37.741558, 39.296799, 47.300507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140610, 39.914738, 47.110527>,  <37.049145, 39.239346, 47.385712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140610, 39.914738, 47.110527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.437462, 39.676285, 46.987972>,  <37.615574, 39.533215, 46.914440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.437462, 39.676285, 46.987972>,  <37.140610, 39.914738, 47.110527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437462, 39.676285, 46.987972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264611, 0.159411, -0.951088,
		0.615815, 0.786903, -0.039440,
		0.742127, -0.596131, -0.306391,
		37.660099, 39.497444, 46.896053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452068, 40.290974, 46.557159>,  <37.140610, 39.914738, 47.110527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452068, 40.290974, 46.557159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.595844, 39.920406, 46.512325>,  <37.682110, 39.698067, 46.485424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.595844, 39.920406, 46.512325>,  <37.452068, 40.290974, 46.557159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595844, 39.920406, 46.512325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209927, 0.036757, -0.977026,
		0.909250, 0.374709, -0.181267,
		0.359437, -0.926414, -0.112083,
		37.703674, 39.642483, 46.478699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900478, 40.340069, 46.011112>,  <37.452068, 40.290974, 46.557159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900478, 40.340069, 46.011112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.793991, 39.955490, 46.038685>,  <37.730099, 39.724743, 46.055229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.793991, 39.955490, 46.038685>,  <37.900478, 40.340069, 46.011112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793991, 39.955490, 46.038685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219141, -0.009275, -0.975649,
		0.938673, -0.274839, -0.208223,
		-0.266216, -0.961446, 0.068935,
		37.714127, 39.667057, 46.059364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251064, 40.041584, 45.456516>,  <37.900478, 40.340069, 46.011112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251064, 40.041584, 45.456516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952263, 39.790726, 45.544758>,  <37.772980, 39.640209, 45.597702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952263, 39.790726, 45.544758>,  <38.251064, 40.041584, 45.456516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952263, 39.790726, 45.544758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085374, -0.238592, -0.967360,
		0.659311, -0.741459, 0.124688,
		-0.747007, -0.627146, 0.220608,
		37.728161, 39.602581, 45.610939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303585, 39.551498, 44.972004>,  <38.251064, 40.041584, 45.456516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303585, 39.551498, 44.972004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932339, 39.511314, 45.115391>,  <37.709591, 39.487206, 45.201424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932339, 39.511314, 45.115391>,  <38.303585, 39.551498, 44.972004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932339, 39.511314, 45.115391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286945, -0.420430, -0.860756,
		0.237182, -0.901747, 0.361383,
		-0.928120, -0.100459, 0.358470,
		37.653904, 39.481178, 45.222931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041306, 38.914715, 44.644085>,  <38.303585, 39.551498, 44.972004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041306, 38.914715, 44.644085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.704945, 39.101795, 44.752991>,  <37.503128, 39.214043, 44.818333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.704945, 39.101795, 44.752991>,  <38.041306, 38.914715, 44.644085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704945, 39.101795, 44.752991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498187, -0.472491, -0.727023,
		-0.211389, -0.746998, 0.630325,
		-0.840907, 0.467704, 0.272265,
		37.452671, 39.242107, 44.834671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499569, 38.403198, 44.542336>,  <38.041306, 38.914715, 44.644085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499569, 38.403198, 44.542336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.327713, 38.764355, 44.547962>,  <37.224598, 38.981049, 44.551338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.327713, 38.764355, 44.547962>,  <37.499569, 38.403198, 44.542336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327713, 38.764355, 44.547962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665487, -0.306067, -0.680772,
		-0.610358, -0.301846, 0.732360,
		-0.429640, 0.902891, 0.014064,
		37.198822, 39.035221, 44.552181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748276, 38.290955, 44.464241>,  <37.499569, 38.403198, 44.542336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748276, 38.290955, 44.464241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.820816, 38.668522, 44.353870>,  <36.864342, 38.895061, 44.287647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.820816, 38.668522, 44.353870>,  <36.748276, 38.290955, 44.464241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820816, 38.668522, 44.353870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509836, -0.149685, -0.847149,
		-0.840939, 0.294308, 0.454096,
		0.181352, 0.943916, -0.275925,
		36.875221, 38.951698, 44.271091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170956, 38.419174, 44.216358>,  <36.748276, 38.290955, 44.464241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170956, 38.419174, 44.216358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.404392, 38.697311, 44.048584>,  <36.544453, 38.864193, 43.947918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.404392, 38.697311, 44.048584>,  <36.170956, 38.419174, 44.216358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404392, 38.697311, 44.048584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306761, -0.289469, -0.906701,
		-0.751878, 0.657807, 0.044372,
		0.583589, 0.695340, -0.419435,
		36.579468, 38.905914, 43.922752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399982, 38.248959, 44.268768>,  <36.170956, 38.419174, 44.216358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399982, 38.248959, 44.268768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198399, 37.907150, 44.218468>,  <35.077446, 37.702065, 44.188286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198399, 37.907150, 44.218468>,  <35.399982, 38.248959, 44.268768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198399, 37.907150, 44.218468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029680, -0.128378, 0.991281,
		-0.863215, 0.503301, 0.039335,
		-0.503963, -0.854522, -0.125756,
		35.047211, 37.650795, 44.180740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778774, 38.343109, 44.693783>,  <35.399982, 38.248959, 44.268768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778774, 38.343109, 44.693783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.810467, 37.948437, 44.636959>,  <34.829483, 37.711632, 44.602867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.810467, 37.948437, 44.636959>,  <34.778774, 38.343109, 44.693783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810467, 37.948437, 44.636959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128095, -0.151401, 0.980137,
		-0.988592, -0.059458, -0.138384,
		0.079229, -0.986683, -0.142057,
		34.834236, 37.652431, 44.594341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278782, 37.977768, 45.106678>,  <34.778774, 38.343109, 44.693783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278782, 37.977768, 45.106678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.568222, 37.709026, 45.043423>,  <34.741886, 37.547783, 45.005470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.568222, 37.709026, 45.043423>,  <34.278782, 37.977768, 45.106678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568222, 37.709026, 45.043423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112315, -0.340674, 0.933449,
		-0.681016, -0.657686, -0.321972,
		0.723604, -0.671855, -0.158136,
		34.785305, 37.507469, 44.995983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074947, 37.419197, 45.505440>,  <34.278782, 37.977768, 45.106678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074947, 37.419197, 45.505440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.469471, 37.377235, 45.454544>,  <34.706184, 37.352058, 45.424007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.469471, 37.377235, 45.454544>,  <34.074947, 37.419197, 45.505440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469471, 37.377235, 45.454544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086419, -0.328341, 0.940598,
		-0.140451, -0.938716, -0.314780,
		0.986309, -0.104904, -0.127239,
		34.765366, 37.345764, 45.416374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181454, 36.774536, 45.838352>,  <34.074947, 37.419197, 45.505440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181454, 36.774536, 45.838352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.543415, 36.941692, 45.806068>,  <34.760593, 37.041985, 45.786697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.543415, 36.941692, 45.806068>,  <34.181454, 36.774536, 45.838352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543415, 36.941692, 45.806068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203972, -0.259369, 0.943993,
		0.373552, -0.870687, -0.319942,
		0.904906, 0.417889, -0.080708,
		34.814888, 37.067059, 45.781857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494045, 36.480858, 46.287308>,  <34.181454, 36.774536, 45.838352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494045, 36.480858, 46.287308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.763916, 36.773266, 46.246464>,  <34.925838, 36.948711, 46.221958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.763916, 36.773266, 46.246464>,  <34.494045, 36.480858, 46.287308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763916, 36.773266, 46.246464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311976, -0.157048, 0.937020,
		0.668945, -0.664037, -0.334017,
		0.674673, 0.731020, -0.102107,
		34.966316, 36.992573, 46.215832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196732, 36.150246, 46.424511>,  <34.494045, 36.480858, 46.287308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196732, 36.150246, 46.424511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231934, 36.544880, 46.479504>,  <35.253056, 36.781662, 46.512501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.231934, 36.544880, 46.479504>,  <35.196732, 36.150246, 46.424511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231934, 36.544880, 46.479504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376124, -0.160712, 0.912526,
		0.922380, -0.028601, -0.385223,
		0.088009, 0.986587, 0.137480,
		35.258335, 36.840855, 46.520748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881645, 35.815804, 46.221375>,  <35.196732, 36.150246, 46.424511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881645, 35.815804, 46.221375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978580, 35.435108, 46.296707>,  <36.036743, 35.206692, 46.341908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978580, 35.435108, 46.296707>,  <35.881645, 35.815804, 46.221375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978580, 35.435108, 46.296707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210360, -0.241043, -0.947442,
		0.947111, 0.189988, -0.258622,
		0.242341, -0.951737, 0.188329,
		36.051281, 35.149586, 46.353207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374531, 35.552895, 45.709438>,  <35.881645, 35.815804, 46.221375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374531, 35.552895, 45.709438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.223942, 35.207687, 45.844181>,  <36.133591, 35.000565, 45.925026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.223942, 35.207687, 45.844181>,  <36.374531, 35.552895, 45.709438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223942, 35.207687, 45.844181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152797, -0.300785, -0.941372,
		0.913741, -0.405869, -0.018629,
		-0.376471, -0.863017, 0.336855,
		36.111000, 34.948784, 45.945236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711746, 34.950794, 45.314270>,  <36.374531, 35.552895, 45.709438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711746, 34.950794, 45.314270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367294, 34.803078, 45.454029>,  <36.160622, 34.714447, 45.537884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367294, 34.803078, 45.454029>,  <36.711746, 34.950794, 45.314270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367294, 34.803078, 45.454029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226911, -0.335817, -0.914187,
		0.454933, -0.866517, 0.205386,
		-0.861131, -0.369290, 0.349397,
		36.108955, 34.692291, 45.558849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510551, 34.203129, 44.967064>,  <36.711746, 34.950794, 45.314270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510551, 34.203129, 44.967064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160286, 34.327881, 45.114552>,  <35.950127, 34.402733, 45.203045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160286, 34.327881, 45.114552>,  <36.510551, 34.203129, 44.967064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160286, 34.327881, 45.114552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425378, -0.136651, -0.894639,
		-0.228638, -0.940242, 0.252329,
		-0.875659, 0.311884, 0.368714,
		35.897587, 34.421444, 45.225166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050766, 33.729736, 44.732788>,  <36.510551, 34.203129, 44.967064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050766, 33.729736, 44.732788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.827774, 34.056049, 44.794388>,  <35.693981, 34.251839, 44.831348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.827774, 34.056049, 44.794388>,  <36.050766, 33.729736, 44.732788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827774, 34.056049, 44.794388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420684, -0.117669, -0.899544,
		-0.715712, -0.566261, 0.408785,
		-0.557478, 0.815783, 0.153999,
		35.660530, 34.300785, 44.840588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342999, 33.664700, 44.456562>,  <36.050766, 33.729736, 44.732788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342999, 33.664700, 44.456562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388416, 34.061230, 44.483047>,  <35.415665, 34.299149, 44.498940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.388416, 34.061230, 44.483047>,  <35.342999, 33.664700, 44.456562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388416, 34.061230, 44.483047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397399, 0.106393, -0.911457,
		-0.910594, 0.077175, 0.406032,
		0.113541, 0.991324, 0.066212,
		35.422478, 34.358627, 44.502911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643562, 33.862812, 44.319523>,  <35.342999, 33.664700, 44.456562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643562, 33.862812, 44.319523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891678, 34.167171, 44.243340>,  <35.040546, 34.349785, 44.197628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891678, 34.167171, 44.243340>,  <34.643562, 33.862812, 44.319523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891678, 34.167171, 44.243340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461996, 0.158186, -0.872661,
		-0.633876, 0.629296, 0.449652,
		0.620291, 0.760896, -0.190462,
		35.077766, 34.395439, 44.186199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.646175, 34.446716, 47.952763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.629101, 34.834469, 47.856037>,  <39.618858, 35.067120, 47.798000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.629101, 34.834469, 47.856037>,  <39.646175, 34.446716, 47.952763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629101, 34.834469, 47.856037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106052, -0.236274, -0.965882,
		-0.993444, -0.066871, -0.092721,
		-0.042682, 0.969383, -0.241817,
		39.616295, 35.125282, 47.783493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080025, 34.571983, 47.573906>,  <39.646175, 34.446716, 47.952763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080025, 34.571983, 47.573906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.365742, 34.838253, 47.487488>,  <39.537170, 34.998013, 47.435638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.365742, 34.838253, 47.487488>,  <39.080025, 34.571983, 47.573906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365742, 34.838253, 47.487488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093772, -0.396950, -0.913037,
		-0.693540, 0.631913, -0.345959,
		0.714289, 0.665669, -0.216045,
		39.580029, 35.037952, 47.422676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770851, 34.955017, 47.050655>,  <39.080025, 34.571983, 47.573906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770851, 34.955017, 47.050655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.162083, 35.007069, 46.985622>,  <39.396820, 35.038300, 46.946602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.162083, 35.007069, 46.985622>,  <38.770851, 34.955017, 47.050655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162083, 35.007069, 46.985622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117940, -0.297299, -0.947472,
		-0.171629, 0.945875, -0.275434,
		0.978077, 0.130129, -0.162582,
		39.455505, 35.046108, 46.936848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910797, 35.340942, 46.421295>,  <38.770851, 34.955017, 47.050655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910797, 35.340942, 46.421295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.281914, 35.200977, 46.473080>,  <39.504585, 35.116997, 46.504150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.281914, 35.200977, 46.473080>,  <38.910797, 35.340942, 46.421295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281914, 35.200977, 46.473080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079726, -0.153039, -0.984999,
		0.364475, 0.924198, -0.114092,
		0.927794, -0.349911, 0.129461,
		39.560253, 35.096004, 46.511917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352657, 35.770664, 46.065952>,  <38.910797, 35.340942, 46.421295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352657, 35.770664, 46.065952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.550697, 35.424164, 46.092735>,  <39.669521, 35.216263, 46.108807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.550697, 35.424164, 46.092735>,  <39.352657, 35.770664, 46.065952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550697, 35.424164, 46.092735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186870, 0.030903, -0.981898,
		0.848503, 0.498649, 0.177177,
		0.495098, -0.866253, 0.066961,
		39.699226, 35.164288, 46.112823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671394, 35.822548, 45.513687>,  <39.352657, 35.770664, 46.065952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671394, 35.822548, 45.513687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.755939, 35.447990, 45.625755>,  <39.806667, 35.223255, 45.692997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.755939, 35.447990, 45.625755>,  <39.671394, 35.822548, 45.513687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755939, 35.447990, 45.625755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283570, -0.215571, -0.934407,
		0.935369, 0.276945, 0.219970,
		0.211360, -0.936392, 0.280172,
		39.819347, 35.167072, 45.709808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398243, 35.732304, 45.327541>,  <39.671394, 35.822548, 45.513687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398243, 35.732304, 45.327541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.196724, 35.386917, 45.337387>,  <40.075813, 35.179684, 45.343292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.196724, 35.386917, 45.337387>,  <40.398243, 35.732304, 45.327541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196724, 35.386917, 45.337387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232275, -0.162854, -0.958920,
		0.832007, -0.477385, 0.282608,
		-0.503798, -0.863471, 0.024611,
		40.045586, 35.127876, 45.344769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865978, 35.208794, 45.050617>,  <40.398243, 35.732304, 45.327541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865978, 35.208794, 45.050617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.485600, 35.094162, 45.004005>,  <40.257374, 35.025383, 44.976036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.485600, 35.094162, 45.004005>,  <40.865978, 35.208794, 45.050617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485600, 35.094162, 45.004005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207432, -0.311183, -0.927436,
		0.229522, -0.906111, 0.355364,
		-0.950942, -0.286581, -0.116533,
		40.200317, 35.008186, 44.969044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005695, 34.688492, 44.659500>,  <40.865978, 35.208794, 45.050617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005695, 34.688492, 44.659500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.613945, 34.756557, 44.615940>,  <40.378895, 34.797398, 44.589806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.613945, 34.756557, 44.615940>,  <41.005695, 34.688492, 44.659500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613945, 34.756557, 44.615940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055559, -0.291375, -0.954994,
		-0.194235, -0.941353, 0.275912,
		-0.979381, 0.170164, -0.108896,
		40.320129, 34.807606, 44.583271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882057, 34.215645, 44.136425>,  <41.005695, 34.688492, 44.659500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882057, 34.215645, 44.136425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.555393, 34.446175, 44.148495>,  <40.359394, 34.584492, 44.155739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.555393, 34.446175, 44.148495>,  <40.882057, 34.215645, 44.136425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555393, 34.446175, 44.148495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150057, -0.161559, -0.975388,
		-0.557268, -0.801090, 0.218422,
		-0.816661, 0.576328, 0.030178,
		40.310394, 34.619072, 44.157547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334740, 33.859142, 43.801170>,  <40.882057, 34.215645, 44.136425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334740, 33.859142, 43.801170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.257458, 34.251575, 43.806175>,  <40.211090, 34.487034, 43.809177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.257458, 34.251575, 43.806175>,  <40.334740, 33.859142, 43.801170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257458, 34.251575, 43.806175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209268, -0.028747, -0.977436,
		-0.958582, -0.191462, 0.210862,
		-0.193204, 0.981079, 0.012511,
		40.199497, 34.545898, 43.809929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653179, 33.902260, 43.540798>,  <40.334740, 33.859142, 43.801170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653179, 33.902260, 43.540798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.844044, 34.249454, 43.485790>,  <39.958561, 34.457771, 43.452785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.844044, 34.249454, 43.485790>,  <39.653179, 33.902260, 43.540798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844044, 34.249454, 43.485790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150260, -0.073604, -0.985903,
		-0.865875, 0.491099, 0.095303,
		0.477161, 0.867989, -0.137525,
		39.987190, 34.509850, 43.444534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927650, 34.026711, 43.350636>,  <39.653179, 33.902260, 43.540798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927650, 34.026711, 43.350636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.584652, 33.823383, 43.382412>,  <38.378853, 33.701389, 43.401478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.584652, 33.823383, 43.382412>,  <38.927650, 34.026711, 43.350636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584652, 33.823383, 43.382412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217004, -0.217345, 0.951667,
		-0.466482, 0.833292, 0.296680,
		-0.857499, -0.508316, 0.079440,
		38.327404, 33.670887, 43.406242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655903, 34.237720, 43.921440>,  <38.927650, 34.026711, 43.350636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655903, 34.237720, 43.921440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.453403, 33.894348, 43.888420>,  <38.331905, 33.688324, 43.868610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.453403, 33.894348, 43.888420>,  <38.655903, 34.237720, 43.921440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453403, 33.894348, 43.888420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103749, -0.034398, 0.994009,
		-0.856124, 0.511779, -0.071647,
		-0.506248, -0.858428, -0.082546,
		38.301529, 33.636818, 43.863655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174484, 34.301281, 44.431259>,  <38.655903, 34.237720, 43.921440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174484, 34.301281, 44.431259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.150681, 33.914200, 44.333275>,  <38.136398, 33.681950, 44.274487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.150681, 33.914200, 44.333275>,  <38.174484, 34.301281, 44.431259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150681, 33.914200, 44.333275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268130, -0.220880, 0.937720,
		-0.961543, 0.121483, -0.246327,
		-0.059508, -0.967705, -0.244959,
		38.132828, 33.623890, 44.259789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519360, 34.011005, 44.634007>,  <38.174484, 34.301281, 44.431259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519360, 34.011005, 44.634007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.753384, 33.686630, 44.630520>,  <37.893799, 33.492004, 44.628429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.753384, 33.686630, 44.630520>,  <37.519360, 34.011005, 44.634007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753384, 33.686630, 44.630520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363085, -0.271535, 0.891312,
		-0.725169, -0.518309, -0.453306,
		0.585064, -0.810940, -0.008718,
		37.928902, 33.443348, 44.627903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147621, 33.520176, 44.922287>,  <37.519360, 34.011005, 44.634007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147621, 33.520176, 44.922287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.516830, 33.367607, 44.942448>,  <37.738358, 33.276066, 44.954544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.516830, 33.367607, 44.942448>,  <37.147621, 33.520176, 44.922287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516830, 33.367607, 44.942448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199007, -0.361205, 0.911003,
		-0.329260, -0.850915, -0.409307,
		0.923030, -0.381412, 0.050408,
		37.793739, 33.253181, 44.957569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956337, 32.918556, 45.137997>,  <37.147621, 33.520176, 44.922287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956337, 32.918556, 45.137997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.347843, 32.951473, 45.213081>,  <37.582748, 32.971226, 45.258133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.347843, 32.951473, 45.213081>,  <36.956337, 32.918556, 45.137997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347843, 32.951473, 45.213081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121633, -0.503917, 0.855145,
		0.164967, -0.859823, -0.483209,
		0.978770, 0.082297, 0.187713,
		37.641476, 32.976162, 45.269394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149651, 32.291676, 45.373940>,  <36.956337, 32.918556, 45.137997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149651, 32.291676, 45.373940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456348, 32.509346, 45.510155>,  <37.640369, 32.639950, 45.591885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.456348, 32.509346, 45.510155>,  <37.149651, 32.291676, 45.373940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456348, 32.509346, 45.510155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112365, -0.408511, 0.905810,
		0.632036, -0.732794, -0.252079,
		0.766749, 0.544180, 0.340534,
		37.686375, 32.672600, 45.612316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732399, 31.887909, 45.693825>,  <37.149651, 32.291676, 45.373940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732399, 31.887909, 45.693825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.775902, 32.254269, 45.848381>,  <37.802002, 32.474087, 45.941116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.775902, 32.254269, 45.848381>,  <37.732399, 31.887909, 45.693825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775902, 32.254269, 45.848381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046829, -0.383543, 0.922335,
		0.992965, -0.118403, 0.001178,
		0.108756, 0.915901, 0.386390,
		37.808529, 32.529037, 45.964298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355450, 31.807198, 46.154217>,  <37.732399, 31.887909, 45.693825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355450, 31.807198, 46.154217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.137791, 32.124367, 46.263889>,  <38.007195, 32.314667, 46.329693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.137791, 32.124367, 46.263889>,  <38.355450, 31.807198, 46.154217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137791, 32.124367, 46.263889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068420, -0.283774, 0.956447,
		0.836193, 0.539211, 0.100165,
		-0.544151, 0.792921, 0.274182,
		37.974545, 32.362244, 46.346146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653225, 31.944849, 46.783958>,  <38.355450, 31.807198, 46.154217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653225, 31.944849, 46.783958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.314056, 32.156429, 46.798038>,  <38.110554, 32.283379, 46.806484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.314056, 32.156429, 46.798038>,  <38.653225, 31.944849, 46.783958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314056, 32.156429, 46.798038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011161, -0.084190, 0.996387,
		0.530004, 0.844465, 0.077291,
		-0.847922, 0.528952, 0.035196,
		38.059681, 32.315113, 46.808598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652992, 32.258980, 47.383781>,  <38.653225, 31.944849, 46.783958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652992, 32.258980, 47.383781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.257904, 32.286991, 47.327919>,  <38.020851, 32.303799, 47.294403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.257904, 32.286991, 47.327919>,  <38.652992, 32.258980, 47.383781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257904, 32.286991, 47.327919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136694, 0.045484, 0.989569,
		0.075646, 0.996508, -0.035353,
		-0.987721, 0.070025, -0.139657,
		37.961586, 32.307999, 47.286022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469929, 32.745804, 47.895653>,  <38.652992, 32.258980, 47.383781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469929, 32.745804, 47.895653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.130154, 32.553974, 47.807590>,  <37.926289, 32.438877, 47.754753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.130154, 32.553974, 47.807590>,  <38.469929, 32.745804, 47.895653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130154, 32.553974, 47.807590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192284, -0.107226, 0.975464,
		-0.491414, 0.870925, -0.001132,
		-0.849435, -0.479574, -0.220157,
		37.875324, 32.410103, 47.741543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832283, 33.028370, 48.249729>,  <38.469929, 32.745804, 47.895653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832283, 33.028370, 48.249729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.714893, 32.653534, 48.174110>,  <37.644459, 32.428635, 48.128738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.714893, 32.653534, 48.174110>,  <37.832283, 33.028370, 48.249729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714893, 32.653534, 48.174110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224830, -0.124550, 0.966405,
		-0.929153, 0.326118, -0.174133,
		-0.293473, -0.937088, -0.189047,
		37.626850, 32.372406, 48.117397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302677, 33.046841, 48.667931>,  <37.832283, 33.028370, 48.249729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302677, 33.046841, 48.667931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.376324, 32.657143, 48.615864>,  <37.420509, 32.423325, 48.584625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.376324, 32.657143, 48.615864>,  <37.302677, 33.046841, 48.667931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376324, 32.657143, 48.615864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135857, -0.156382, 0.978309,
		-0.973471, -0.162436, -0.161151,
		0.184114, -0.974248, -0.130165,
		37.431557, 32.364868, 48.576813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417973, 33.895348, 48.798004>,  <37.302677, 33.046841, 48.667931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417973, 33.895348, 48.798004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.123188, 34.107330, 48.965836>,  <36.946320, 34.234520, 49.066532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.123188, 34.107330, 48.965836>,  <37.417973, 33.895348, 48.798004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123188, 34.107330, 48.965836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450260, 0.078083, -0.889477,
		-0.504143, -0.844424, 0.181073,
		-0.736957, 0.529954, 0.419576,
		36.902100, 34.266315, 49.091709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751240, 33.625572, 48.412575>,  <37.417973, 33.895348, 48.798004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751240, 33.625572, 48.412575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.649342, 33.976357, 48.575569>,  <36.588203, 34.186829, 48.673367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.649342, 33.976357, 48.575569>,  <36.751240, 33.625572, 48.412575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649342, 33.976357, 48.575569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534770, 0.223326, -0.814952,
		-0.805682, -0.425519, 0.412079,
		-0.254750, 0.876960, 0.407485,
		36.572918, 34.239445, 48.697815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034157, 33.777855, 48.315887>,  <36.751240, 33.625572, 48.412575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034157, 33.777855, 48.315887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.158386, 34.150585, 48.390976>,  <36.232922, 34.374226, 48.436028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.158386, 34.150585, 48.390976>,  <36.034157, 33.777855, 48.315887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158386, 34.150585, 48.390976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546629, 0.336646, -0.766724,
		-0.777652, 0.135508, 0.613918,
		0.310570, 0.931830, 0.187721,
		36.251556, 34.430134, 48.447292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502861, 34.113758, 48.114494>,  <36.034157, 33.777855, 48.315887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502861, 34.113758, 48.114494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.788242, 34.393364, 48.133900>,  <35.959473, 34.561127, 48.145542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.788242, 34.393364, 48.133900>,  <35.502861, 34.113758, 48.114494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788242, 34.393364, 48.133900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379115, 0.443317, -0.812245,
		-0.589282, 0.561108, 0.581296,
		0.713455, 0.699019, 0.048514,
		36.002277, 34.603069, 48.148453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159950, 34.683338, 47.864319>,  <35.502861, 34.113758, 48.114494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159950, 34.683338, 47.864319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.548317, 34.766483, 47.816784>,  <35.781338, 34.816372, 47.788261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.548317, 34.766483, 47.816784>,  <35.159950, 34.683338, 47.864319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548317, 34.766483, 47.816784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153158, 0.157637, -0.975548,
		-0.184045, 0.965373, 0.184887,
		0.970912, 0.207861, -0.118842,
		35.839592, 34.828842, 47.781132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206081, 35.307320, 47.448235>,  <35.159950, 34.683338, 47.864319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206081, 35.307320, 47.448235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.555321, 35.125195, 47.378498>,  <35.764866, 35.015919, 47.336655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.555321, 35.125195, 47.378498>,  <35.206081, 35.307320, 47.448235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555321, 35.125195, 47.378498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031467, 0.304220, -0.952082,
		0.486530, 0.836746, 0.251287,
		0.873097, -0.455309, -0.174342,
		35.817249, 34.988602, 47.326195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650364, 35.764973, 47.049690>,  <35.206081, 35.307320, 47.448235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650364, 35.764973, 47.049690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.800499, 35.401966, 46.974297>,  <35.890579, 35.184162, 46.929062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.800499, 35.401966, 46.974297>,  <35.650364, 35.764973, 47.049690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800499, 35.401966, 46.974297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209894, 0.114846, -0.970956,
		0.902809, 0.404000, -0.147377,
		0.375340, -0.907521, -0.188481,
		35.913101, 35.129711, 46.917751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014297, 36.397484, 46.786221>,  <35.650364, 35.764973, 47.049690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014297, 36.397484, 46.786221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.763313, 36.702381, 46.849819>,  <35.612724, 36.885319, 46.887978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.763313, 36.702381, 46.849819>,  <36.014297, 36.397484, 46.786221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763313, 36.702381, 46.849819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293090, 0.042032, 0.955160,
		0.721381, 0.645925, -0.249779,
		-0.627461, 0.762243, 0.158993,
		35.575073, 36.931053, 46.897518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454399, 36.919727, 47.199219>,  <36.014297, 36.397484, 46.786221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454399, 36.919727, 47.199219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.068436, 37.021698, 47.224396>,  <35.836857, 37.082878, 47.239502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.068436, 37.021698, 47.224396>,  <36.454399, 36.919727, 47.199219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068436, 37.021698, 47.224396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110730, 0.177675, 0.977840,
		0.238092, 0.950497, -0.199668,
		-0.964910, 0.254925, 0.062945,
		35.778961, 37.098175, 47.243279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492805, 37.586502, 47.559357>,  <36.454399, 36.919727, 47.199219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492805, 37.586502, 47.559357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.124443, 37.442280, 47.618584>,  <35.903423, 37.355747, 47.654121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.124443, 37.442280, 47.618584>,  <36.492805, 37.586502, 47.559357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124443, 37.442280, 47.618584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143104, 0.040589, 0.988875,
		-0.362557, 0.931853, 0.014218,
		-0.920909, -0.360558, 0.148068,
		35.848171, 37.334114, 47.663006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152954, 38.083748, 47.985729>,  <36.492805, 37.586502, 47.559357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152954, 38.083748, 47.985729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.963741, 37.732548, 48.015007>,  <35.850216, 37.521828, 48.032574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.963741, 37.732548, 48.015007>,  <36.152954, 38.083748, 47.985729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963741, 37.732548, 48.015007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023056, 0.070713, 0.997230,
		-0.880745, 0.473407, -0.013207,
		-0.473029, -0.878001, 0.073195,
		35.821831, 37.469147, 48.036964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703259, 38.253971, 48.547085>,  <36.152954, 38.083748, 47.985729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703259, 38.253971, 48.547085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.749313, 37.858753, 48.506096>,  <35.776947, 37.621620, 48.481503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.749313, 37.858753, 48.506096>,  <35.703259, 38.253971, 48.547085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749313, 37.858753, 48.506096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376778, -0.052012, 0.924842,
		-0.919120, -0.145097, 0.366286,
		0.115140, -0.988049, -0.102475,
		35.783855, 37.562340, 48.475353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466133, 37.992928, 49.178108>,  <35.703259, 38.253971, 48.547085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466133, 37.992928, 49.178108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.689476, 37.698498, 49.025043>,  <35.823483, 37.521839, 48.933205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.689476, 37.698498, 49.025043>,  <35.466133, 37.992928, 49.178108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689476, 37.698498, 49.025043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343837, -0.214450, 0.914214,
		-0.754993, -0.642030, 0.133351,
		0.558356, -0.736076, -0.382662,
		35.856983, 37.477676, 48.910244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561726, 37.495476, 49.666630>,  <35.466133, 37.992928, 49.178108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561726, 37.495476, 49.666630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.863579, 37.411572, 49.417946>,  <36.044693, 37.361229, 49.268734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.863579, 37.411572, 49.417946>,  <35.561726, 37.495476, 49.666630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863579, 37.411572, 49.417946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588318, -0.203233, 0.782674,
		-0.290525, -0.956398, -0.029962,
		0.754637, -0.209759, -0.621710,
		36.089970, 37.348644, 49.231434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753578, 36.862015, 49.899849>,  <35.561726, 37.495476, 49.666630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753578, 36.862015, 49.899849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.058662, 37.030956, 49.703934>,  <36.241711, 37.132320, 49.586384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.058662, 37.030956, 49.703934>,  <35.753578, 36.862015, 49.899849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058662, 37.030956, 49.703934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610934, -0.221998, 0.759919,
		0.212222, -0.878825, -0.427350,
		0.762707, 0.422355, -0.489791,
		36.287476, 37.157661, 49.556995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405518, 36.373615, 49.935860>,  <35.753578, 36.862015, 49.899849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405518, 36.373615, 49.935860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.533581, 36.745632, 49.863731>,  <36.610420, 36.968842, 49.820454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.533581, 36.745632, 49.863731>,  <36.405518, 36.373615, 49.935860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533581, 36.745632, 49.863731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809327, -0.169572, 0.562347,
		0.492430, -0.325981, -0.807000,
		0.320159, 0.930044, -0.180323,
		36.629627, 37.024647, 49.809635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.662354, 35.914211, 34.422333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036770, 36.054214, 34.407768>,  <35.261417, 36.138218, 34.399029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036770, 36.054214, 34.407768>,  <34.662354, 35.914211, 34.422333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036770, 36.054214, 34.407768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167420, 0.533964, 0.828766,
		0.309517, -0.769661, 0.558409,
		0.936039, 0.350006, -0.036414,
		35.317581, 36.159218, 34.396843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898380, 35.815422, 35.167587>,  <34.662354, 35.914211, 34.422333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898380, 35.815422, 35.167587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117203, 36.088058, 34.973202>,  <35.248497, 36.251640, 34.856571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117203, 36.088058, 34.973202>,  <34.898380, 35.815422, 35.167587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117203, 36.088058, 34.973202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166721, 0.657616, 0.734673,
		0.820325, -0.320889, 0.473390,
		0.547058, 0.681595, -0.485960,
		35.281319, 36.292538, 34.827415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347866, 35.885151, 35.555206>,  <34.898380, 35.815422, 35.167587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347866, 35.885151, 35.555206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326981, 36.219215, 35.336201>,  <35.314449, 36.419655, 35.204796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326981, 36.219215, 35.336201>,  <35.347866, 35.885151, 35.555206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326981, 36.219215, 35.336201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050166, 0.545378, 0.836687,
		0.997375, 0.071156, 0.013419,
		-0.052217, 0.835164, -0.547516,
		35.311317, 36.469765, 35.171947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713314, 36.312519, 35.942326>,  <35.347866, 35.885151, 35.555206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713314, 36.312519, 35.942326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489449, 36.546829, 35.707840>,  <35.355129, 36.687416, 35.567150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489449, 36.546829, 35.707840>,  <35.713314, 36.312519, 35.942326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489449, 36.546829, 35.707840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086142, 0.662420, 0.744163,
		0.824234, 0.466976, -0.320269,
		-0.559659, 0.585776, -0.586215,
		35.321552, 36.722561, 35.531975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994843, 36.955544, 36.043674>,  <35.713314, 36.312519, 35.942326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994843, 36.955544, 36.043674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635818, 37.012871, 35.876896>,  <35.420403, 37.047268, 35.776829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635818, 37.012871, 35.876896>,  <35.994843, 36.955544, 36.043674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635818, 37.012871, 35.876896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226911, 0.660673, 0.715558,
		0.378020, 0.736866, -0.560472,
		-0.897559, 0.143318, -0.416950,
		35.366550, 37.055866, 35.751812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804943, 37.680874, 36.197586>,  <35.994843, 36.955544, 36.043674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804943, 37.680874, 36.197586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453571, 37.512104, 36.107834>,  <35.242748, 37.410843, 36.053982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453571, 37.512104, 36.107834>,  <35.804943, 37.680874, 36.197586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453571, 37.512104, 36.107834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431830, 0.499746, 0.750851,
		-0.204667, 0.756462, -0.621189,
		-0.878427, -0.421923, -0.224381,
		35.190044, 37.385529, 36.040520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301651, 38.324158, 36.212200>,  <35.804943, 37.680874, 36.197586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301651, 38.324158, 36.212200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107285, 37.975380, 36.236202>,  <34.990665, 37.766113, 36.250603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107285, 37.975380, 36.236202>,  <35.301651, 38.324158, 36.212200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107285, 37.975380, 36.236202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386481, 0.275939, 0.880051,
		-0.783913, 0.404439, -0.471073,
		-0.485914, -0.871944, 0.060004,
		34.961510, 37.713799, 36.254204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543076, 38.479321, 36.444843>,  <35.301651, 38.324158, 36.212200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543076, 38.479321, 36.444843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636673, 38.097839, 36.520416>,  <34.692833, 37.868950, 36.565762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636673, 38.097839, 36.520416>,  <34.543076, 38.479321, 36.444843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636673, 38.097839, 36.520416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452616, 0.065133, 0.889323,
		-0.860457, -0.293611, -0.416421,
		0.233993, -0.953703, 0.188937,
		34.706871, 37.811729, 36.577099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851707, 38.162804, 36.724728>,  <34.543076, 38.479321, 36.444843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851707, 38.162804, 36.724728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150482, 37.927261, 36.848232>,  <34.329746, 37.785934, 36.922333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150482, 37.927261, 36.848232>,  <33.851707, 38.162804, 36.724728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150482, 37.927261, 36.848232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433564, -0.079295, 0.897627,
		-0.504092, -0.804337, -0.314536,
		0.746937, -0.588858, 0.308760,
		34.374565, 37.750603, 36.940861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573677, 37.553806, 37.059307>,  <33.851707, 38.162804, 36.724728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573677, 37.553806, 37.059307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948650, 37.561314, 37.198372>,  <34.173634, 37.565819, 37.281811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948650, 37.561314, 37.198372>,  <33.573677, 37.553806, 37.059307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948650, 37.561314, 37.198372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323940, -0.318934, 0.890698,
		0.127598, -0.947591, -0.292900,
		0.937433, 0.018769, 0.347658,
		34.229881, 37.566944, 37.302670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609329, 37.031681, 37.520473>,  <33.573677, 37.553806, 37.059307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609329, 37.031681, 37.520473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934513, 37.234108, 37.635715>,  <34.129623, 37.355564, 37.704861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934513, 37.234108, 37.635715>,  <33.609329, 37.031681, 37.520473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934513, 37.234108, 37.635715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129619, -0.325075, 0.936763,
		0.567715, -0.798891, -0.198676,
		0.812957, 0.506063, 0.288101,
		34.178402, 37.385925, 37.722145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001160, 36.564156, 37.973969>,  <33.609329, 37.031681, 37.520473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001160, 36.564156, 37.973969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123955, 36.933750, 38.065193>,  <34.197632, 37.155506, 38.119926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123955, 36.933750, 38.065193>,  <34.001160, 36.564156, 37.973969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123955, 36.933750, 38.065193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079745, -0.263764, 0.961285,
		0.948366, -0.276919, -0.154656,
		0.306990, 0.923983, 0.228061,
		34.216053, 37.210945, 38.133610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230846, 35.882080, 38.254250>,  <34.001160, 36.564156, 37.973969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230846, 35.882080, 38.254250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040745, 35.530479, 38.269680>,  <33.926682, 35.319519, 38.278938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040745, 35.530479, 38.269680>,  <34.230846, 35.882080, 38.254250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040745, 35.530479, 38.269680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093307, 0.006756, -0.995615,
		0.874886, -0.476771, -0.085228,
		-0.475256, -0.879001, 0.038576,
		33.898167, 35.266781, 38.281254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620232, 35.575684, 37.819717>,  <34.230846, 35.882080, 38.254250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620232, 35.575684, 37.819717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288589, 35.352650, 37.836082>,  <34.089603, 35.218830, 37.845901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288589, 35.352650, 37.836082>,  <34.620232, 35.575684, 37.819717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288589, 35.352650, 37.836082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012645, -0.091854, -0.995692,
		0.558943, -0.825021, 0.083208,
		-0.829109, -0.557587, 0.040909,
		34.039856, 35.185375, 37.848354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751541, 35.042980, 37.377327>,  <34.620232, 35.575684, 37.819717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751541, 35.042980, 37.377327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351940, 35.031734, 37.391201>,  <34.112179, 35.024986, 37.399525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351940, 35.031734, 37.391201>,  <34.751541, 35.042980, 37.377327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351940, 35.031734, 37.391201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031094, -0.119495, -0.992348,
		0.032041, -0.992437, 0.118501,
		-0.999003, -0.028111, 0.034687,
		34.052238, 35.023300, 37.401608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520214, 34.455811, 37.044147>,  <34.751541, 35.042980, 37.377327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520214, 34.455811, 37.044147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183578, 34.671688, 37.052708>,  <33.981598, 34.801212, 37.057842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183578, 34.671688, 37.052708>,  <34.520214, 34.455811, 37.044147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183578, 34.671688, 37.052708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141910, -0.182717, -0.972870,
		-0.521139, -0.821795, 0.230361,
		-0.841591, 0.539691, 0.021401,
		33.931103, 34.833595, 37.059128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011990, 34.020893, 36.724609>,  <34.520214, 34.455811, 37.044147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011990, 34.020893, 36.724609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869041, 34.394123, 36.708344>,  <33.783272, 34.618061, 36.698586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869041, 34.394123, 36.708344>,  <34.011990, 34.020893, 36.724609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869041, 34.394123, 36.708344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320723, -0.163493, -0.932956,
		-0.877169, -0.320366, 0.357687,
		-0.357367, 0.933079, -0.040663,
		33.761833, 34.674046, 36.696144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401009, 33.973293, 36.291172>,  <34.011990, 34.020893, 36.724609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401009, 33.973293, 36.291172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526737, 34.352013, 36.263523>,  <33.602173, 34.579243, 36.246933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526737, 34.352013, 36.263523>,  <33.401009, 33.973293, 36.291172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526737, 34.352013, 36.263523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121634, -0.032048, -0.992058,
		-0.941493, 0.320232, 0.105089,
		0.314320, 0.946797, -0.069124,
		33.621033, 34.636051, 36.242786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847305, 34.397327, 35.945656>,  <33.401009, 33.973293, 36.291172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847305, 34.397327, 35.945656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167274, 34.632568, 35.897896>,  <33.359257, 34.773712, 35.869240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167274, 34.632568, 35.897896>,  <32.847305, 34.397327, 35.945656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167274, 34.632568, 35.897896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189090, 0.058181, -0.980235,
		-0.569533, 0.806690, 0.157745,
		0.799923, 0.588104, -0.119401,
		33.407253, 34.808998, 35.862076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644417, 34.952332, 35.527393>,  <32.847305, 34.397327, 35.945656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644417, 34.952332, 35.527393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042889, 34.985493, 35.516384>,  <33.281971, 35.005390, 35.509777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042889, 34.985493, 35.516384>,  <32.644417, 34.952332, 35.527393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042889, 34.985493, 35.516384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063042, 0.464209, -0.883479,
		-0.060461, 0.881838, 0.467661,
		0.996178, 0.082898, -0.027526,
		33.341743, 35.010361, 35.508125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784874, 35.684029, 35.405174>,  <32.644417, 34.952332, 35.527393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784874, 35.684029, 35.405174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088238, 35.465199, 35.263462>,  <33.270256, 35.333900, 35.178432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088238, 35.465199, 35.263462>,  <32.784874, 35.684029, 35.405174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088238, 35.465199, 35.263462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103538, 0.435539, -0.894196,
		0.643501, 0.714850, 0.273674,
		0.758411, -0.547080, -0.354284,
		33.315762, 35.301075, 35.157177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065586, 36.094566, 34.969830>,  <32.784874, 35.684029, 35.405174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065586, 36.094566, 34.969830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180695, 35.721764, 34.881699>,  <33.249760, 35.498081, 34.828819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180695, 35.721764, 34.881699>,  <33.065586, 36.094566, 34.969830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180695, 35.721764, 34.881699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044002, 0.242685, -0.969106,
		0.956688, 0.269185, 0.110848,
		0.287770, -0.932010, -0.220329,
		33.267025, 35.442162, 34.815601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562149, 36.159355, 34.448154>,  <33.065586, 36.094566, 34.969830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562149, 36.159355, 34.448154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435326, 35.780426, 34.430016>,  <33.359230, 35.553070, 34.419132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435326, 35.780426, 34.430016>,  <33.562149, 36.159355, 34.448154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435326, 35.780426, 34.430016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049388, 0.064244, -0.996711,
		0.947118, -0.313779, -0.067156,
		-0.317062, -0.947320, -0.045350,
		33.340206, 35.496231, 34.416412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872726, 35.903702, 33.874489>,  <33.562149, 36.159355, 34.448154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872726, 35.903702, 33.874489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566082, 35.654613, 33.937126>,  <33.382095, 35.505161, 33.974709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566082, 35.654613, 33.937126>,  <33.872726, 35.903702, 33.874489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566082, 35.654613, 33.937126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290224, 0.118491, -0.949595,
		0.572777, -0.773420, -0.271565,
		-0.766614, -0.622721, 0.156596,
		33.336098, 35.467796, 33.984104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899704, 35.301632, 33.401852>,  <33.872726, 35.903702, 33.874489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899704, 35.301632, 33.401852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511696, 35.355827, 33.482555>,  <33.278893, 35.388344, 33.530975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511696, 35.355827, 33.482555>,  <33.899704, 35.301632, 33.401852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511696, 35.355827, 33.482555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195270, 0.059715, -0.978930,
		-0.144682, -0.988978, -0.031468,
		-0.970019, 0.135489, 0.201758,
		33.220692, 35.396473, 33.543083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915096, 34.815151, 32.892223>,  <33.899704, 35.301632, 33.401852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915096, 34.815151, 32.892223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053753, 34.692616, 33.246849>,  <34.136948, 34.619095, 33.459625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053753, 34.692616, 33.246849>,  <33.915096, 34.815151, 32.892223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053753, 34.692616, 33.246849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502800, -0.858590, -0.100081,
		0.791855, -0.411073, -0.451647,
		0.346639, -0.306337, 0.886566,
		34.157745, 34.600716, 33.512817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315327, 34.212772, 32.711189>,  <33.915096, 34.815151, 32.892223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315327, 34.212772, 32.711189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185120, 34.241196, 33.088333>,  <34.106995, 34.258247, 33.314621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.185120, 34.241196, 33.088333>,  <34.315327, 34.212772, 32.711189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185120, 34.241196, 33.088333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370931, -0.926834, -0.058216,
		0.869741, -0.368688, 0.328056,
		-0.325516, 0.071054, 0.942863,
		34.087463, 34.262512, 33.371193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036140, 34.009880, 32.932220>,  <34.315327, 34.212772, 32.711189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036140, 34.009880, 32.932220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401119, 33.906555, 33.059170>,  <35.620106, 33.844563, 33.135338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401119, 33.906555, 33.059170>,  <35.036140, 34.009880, 32.932220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401119, 33.906555, 33.059170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322086, 0.025043, 0.946379,
		-0.252409, -0.965737, -0.060348,
		0.912442, -0.258312, 0.317371,
		35.674850, 33.829063, 33.154381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905964, 33.772942, 33.565102>,  <35.036140, 34.009880, 32.932220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905964, 33.772942, 33.565102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305317, 33.792789, 33.553963>,  <35.544930, 33.804699, 33.547279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305317, 33.792789, 33.553963>,  <34.905964, 33.772942, 33.565102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305317, 33.792789, 33.553963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025915, 0.039248, 0.998893,
		0.050689, -0.997995, 0.037898,
		0.998378, 0.049651, -0.027852,
		35.604832, 33.807674, 33.545609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255276, 33.329605, 34.089375>,  <34.905964, 33.772942, 33.565102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255276, 33.329605, 34.089375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545063, 33.597366, 34.023590>,  <35.718933, 33.758022, 33.984119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545063, 33.597366, 34.023590>,  <35.255276, 33.329605, 34.089375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545063, 33.597366, 34.023590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209655, 0.013304, 0.977685,
		0.656654, -0.742780, -0.130706,
		0.724466, 0.669404, -0.164463,
		35.762402, 33.798187, 33.974251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938599, 33.107964, 34.374939>,  <35.255276, 33.329605, 34.089375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938599, 33.107964, 34.374939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984715, 33.502640, 34.329071>,  <36.012383, 33.739445, 34.301552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984715, 33.502640, 34.329071>,  <35.938599, 33.107964, 34.374939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984715, 33.502640, 34.329071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201835, 0.089761, 0.975298,
		0.972611, -0.135583, -0.188800,
		0.115287, 0.986692, -0.114668,
		36.019302, 33.798649, 34.294670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563457, 33.190014, 34.659618>,  <35.938599, 33.107964, 34.374939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563457, 33.190014, 34.659618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370029, 33.539898, 34.646702>,  <36.253975, 33.749828, 34.638954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370029, 33.539898, 34.646702>,  <36.563457, 33.190014, 34.659618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370029, 33.539898, 34.646702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302768, 0.201761, 0.931463,
		0.821275, 0.440651, -0.362400,
		-0.483568, 0.874711, -0.032287,
		36.224960, 33.802311, 34.637016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967670, 33.677139, 34.939697>,  <36.563457, 33.190014, 34.659618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967670, 33.677139, 34.939697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599003, 33.826015, 34.983498>,  <36.377800, 33.915340, 35.009777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599003, 33.826015, 34.983498>,  <36.967670, 33.677139, 34.939697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599003, 33.826015, 34.983498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214484, 0.253638, 0.943220,
		0.323289, 0.892826, -0.313601,
		-0.921673, 0.372195, 0.109498,
		36.322502, 33.937675, 35.016346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996166, 34.235855, 35.389004>,  <36.967670, 33.677139, 34.939697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996166, 34.235855, 35.389004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607075, 34.148869, 35.421261>,  <36.373619, 34.096676, 35.440617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607075, 34.148869, 35.421261>,  <36.996166, 34.235855, 35.389004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607075, 34.148869, 35.421261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043119, 0.172067, 0.984141,
		-0.227896, 0.960781, -0.157998,
		-0.972730, -0.217469, 0.080642,
		36.315254, 34.083630, 35.445454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737801, 34.785793, 35.664112>,  <36.996166, 34.235855, 35.389004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737801, 34.785793, 35.664112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445873, 34.524792, 35.745708>,  <36.270718, 34.368191, 35.794666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445873, 34.524792, 35.745708>,  <36.737801, 34.785793, 35.664112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445873, 34.524792, 35.745708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061841, 0.234149, 0.970232,
		-0.680839, 0.720707, -0.130535,
		-0.729818, -0.652499, 0.203987,
		36.226929, 34.329041, 35.806904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270477, 35.195732, 36.118793>,  <36.737801, 34.785793, 35.664112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270477, 35.195732, 36.118793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204281, 34.811211, 36.206886>,  <36.164562, 34.580498, 36.259743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204281, 34.811211, 36.206886>,  <36.270477, 35.195732, 36.118793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204281, 34.811211, 36.206886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239676, 0.177416, 0.954505,
		-0.956644, 0.210750, 0.201040,
		-0.165495, -0.961305, 0.220236,
		36.154633, 34.522820, 36.272957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850658, 35.197933, 36.693043>,  <36.270477, 35.195732, 36.118793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850658, 35.197933, 36.693043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987164, 34.822376, 36.675045>,  <36.069065, 34.597042, 36.664246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987164, 34.822376, 36.675045>,  <35.850658, 35.197933, 36.693043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987164, 34.822376, 36.675045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145608, 0.005513, 0.989327,
		-0.928622, -0.344171, 0.138591,
		0.341261, -0.938891, -0.044994,
		36.089542, 34.540710, 36.661549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403637, 34.794559, 37.189857>,  <35.850658, 35.197933, 36.693043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403637, 34.794559, 37.189857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726025, 34.565117, 37.131348>,  <35.919456, 34.427452, 37.096241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726025, 34.565117, 37.131348>,  <35.403637, 34.794559, 37.189857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726025, 34.565117, 37.131348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194852, 0.023740, 0.980545,
		-0.558972, -0.818789, 0.130902,
		0.805967, -0.573604, -0.146273,
		35.967815, 34.393036, 37.087467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325638, 34.211430, 37.730564>,  <35.403637, 34.794559, 37.189857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325638, 34.211430, 37.730564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710804, 34.242794, 37.627296>,  <35.941902, 34.261612, 37.565334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710804, 34.242794, 37.627296>,  <35.325638, 34.211430, 37.730564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710804, 34.242794, 37.627296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265080, -0.096464, 0.959389,
		0.050324, -0.992243, -0.113672,
		0.962912, 0.078413, -0.258169,
		35.999680, 34.266319, 37.549847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597656, 33.729923, 38.104782>,  <35.325638, 34.211430, 37.730564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597656, 33.729923, 38.104782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895775, 33.979877, 38.011780>,  <36.074646, 34.129848, 37.955978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895775, 33.979877, 38.011780>,  <35.597656, 33.729923, 38.104782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895775, 33.979877, 38.011780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463736, -0.235283, 0.854160,
		0.479046, -0.744421, -0.465136,
		0.745294, 0.624883, -0.232504,
		36.119362, 34.167343, 37.942028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057686, 33.488823, 38.528305>,  <35.597656, 33.729923, 38.104782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057686, 33.488823, 38.528305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238411, 33.829582, 38.422379>,  <36.346848, 34.034039, 38.358822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238411, 33.829582, 38.422379>,  <36.057686, 33.488823, 38.528305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238411, 33.829582, 38.422379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693414, -0.148593, 0.705051,
		0.561283, -0.502182, -0.657856,
		0.451817, 0.851900, -0.264817,
		36.373955, 34.085152, 38.342934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810867, 33.373123, 38.504051>,  <36.057686, 33.488823, 38.528305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810867, 33.373123, 38.504051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769482, 33.766861, 38.561134>,  <36.744652, 34.003101, 38.595387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769482, 33.766861, 38.561134>,  <36.810867, 33.373123, 38.504051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769482, 33.766861, 38.561134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681224, -0.034418, 0.731266,
		0.724728, 0.172877, -0.666996,
		-0.103463, 0.984342, 0.142711,
		36.738441, 34.062164, 38.603947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481144, 33.594212, 38.558784>,  <36.810867, 33.373123, 38.504051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481144, 33.594212, 38.558784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245781, 33.860966, 38.741669>,  <37.104561, 34.021019, 38.851398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245781, 33.860966, 38.741669>,  <37.481144, 33.594212, 38.558784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245781, 33.860966, 38.741669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562677, -0.068357, 0.823846,
		0.580662, 0.742021, -0.335018,
		-0.588410, 0.666883, 0.457210,
		37.069260, 34.061031, 38.878830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900787, 34.123909, 38.809895>,  <37.481144, 33.594212, 38.558784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900787, 34.123909, 38.809895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576519, 34.140137, 39.043533>,  <37.381958, 34.149872, 39.183716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576519, 34.140137, 39.043533>,  <37.900787, 34.123909, 38.809895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576519, 34.140137, 39.043533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575290, -0.130346, 0.807497,
		0.108894, 0.990638, 0.082329,
		-0.810669, 0.040569, 0.584098,
		37.333317, 34.152306, 39.218761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027504, 34.555187, 39.381096>,  <37.900787, 34.123909, 38.809895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027504, 34.555187, 39.381096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718498, 34.337887, 39.512611>,  <37.533096, 34.207508, 39.591522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718498, 34.337887, 39.512611>,  <38.027504, 34.555187, 39.381096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718498, 34.337887, 39.512611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382762, 0.014779, 0.923729,
		-0.506677, 0.839440, 0.196519,
		-0.772510, -0.543252, 0.328793,
		37.486744, 34.174911, 39.611248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786057, 34.928638, 39.978096>,  <38.027504, 34.555187, 39.381096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786057, 34.928638, 39.978096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638893, 34.558170, 40.011223>,  <37.550594, 34.335892, 40.031097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638893, 34.558170, 40.011223>,  <37.786057, 34.928638, 39.978096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638893, 34.558170, 40.011223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284651, -0.027389, 0.958240,
		-0.885222, 0.376117, 0.273711,
		-0.367907, -0.926167, 0.082816,
		37.528522, 34.280319, 40.036068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166283, 34.993080, 40.536541>,  <37.786057, 34.928638, 39.978096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166283, 34.993080, 40.536541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283829, 34.611717, 40.509266>,  <37.354355, 34.382896, 40.492901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283829, 34.611717, 40.509266>,  <37.166283, 34.993080, 40.536541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283829, 34.611717, 40.509266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067938, -0.091989, 0.993440,
		-0.953430, -0.287304, -0.091805,
		0.293864, -0.953412, -0.068187,
		37.371986, 34.325695, 40.488811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632298, 34.564655, 40.817776>,  <37.166283, 34.993080, 40.536541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632298, 34.564655, 40.817776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983917, 34.376663, 40.849758>,  <37.194889, 34.263866, 40.868946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983917, 34.376663, 40.849758>,  <36.632298, 34.564655, 40.817776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983917, 34.376663, 40.849758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076415, 0.026638, 0.996720,
		-0.470570, -0.882274, -0.012498,
		0.879048, -0.469981, 0.079954,
		37.247631, 34.235668, 40.873745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568775, 34.178261, 41.446697>,  <36.632298, 34.564655, 40.817776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568775, 34.178261, 41.446697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962193, 34.142319, 41.383995>,  <37.198242, 34.120754, 41.346375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962193, 34.142319, 41.383995>,  <36.568775, 34.178261, 41.446697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962193, 34.142319, 41.383995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138876, -0.179020, 0.973995,
		-0.115573, -0.979734, -0.163596,
		0.983543, -0.089848, -0.156751,
		37.257256, 34.115364, 41.336971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719627, 33.491825, 41.761482>,  <36.568775, 34.178261, 41.446697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719627, 33.491825, 41.761482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065907, 33.688419, 41.723537>,  <37.273674, 33.806377, 41.700771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065907, 33.688419, 41.723537>,  <36.719627, 33.491825, 41.761482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065907, 33.688419, 41.723537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246310, -0.253280, 0.935511,
		0.435766, -0.833239, -0.340323,
		0.865701, 0.491489, -0.094864,
		37.325619, 33.835865, 41.695080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245522, 33.013874, 41.921989>,  <36.719627, 33.491825, 41.761482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245522, 33.013874, 41.921989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412476, 33.375736, 41.956364>,  <37.512646, 33.592854, 41.976986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412476, 33.375736, 41.956364>,  <37.245522, 33.013874, 41.921989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412476, 33.375736, 41.956364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429321, -0.279649, 0.858767,
		0.800922, -0.321541, -0.505109,
		0.417382, 0.904659, 0.085933,
		37.537689, 33.647133, 41.982143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860336, 32.943047, 42.165295>,  <37.245522, 33.013874, 41.921989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860336, 32.943047, 42.165295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823498, 33.330757, 42.256531>,  <37.801395, 33.563385, 42.311272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823498, 33.330757, 42.256531>,  <37.860336, 32.943047, 42.165295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823498, 33.330757, 42.256531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564548, -0.137862, 0.813806,
		0.820247, 0.203712, -0.534506,
		-0.092094, 0.969276, 0.228086,
		37.795868, 33.621540, 42.324955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557354, 33.197449, 42.381142>,  <37.860336, 32.943047, 42.165295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557354, 33.197449, 42.381142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281761, 33.441460, 42.537689>,  <38.116405, 33.587868, 42.631618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281761, 33.441460, 42.537689>,  <38.557354, 33.197449, 42.381142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281761, 33.441460, 42.537689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484845, -0.013440, 0.874497,
		0.538730, 0.792264, -0.286510,
		-0.688982, 0.610030, 0.391366,
		38.075066, 33.624470, 42.655098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935719, 33.617340, 42.741566>,  <38.557354, 33.197449, 42.381142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935719, 33.617340, 42.741566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563751, 33.676628, 42.876198>,  <38.340572, 33.712200, 42.956978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563751, 33.676628, 42.876198>,  <38.935719, 33.617340, 42.741566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563751, 33.676628, 42.876198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311914, -0.166998, 0.935319,
		0.194844, 0.974752, 0.109061,
		-0.929917, 0.148224, 0.336577,
		38.284775, 33.721096, 42.977169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404480, 34.233799, 42.777691>,  <38.935719, 33.617340, 42.741566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404480, 34.233799, 42.777691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760464, 34.398193, 42.856754>,  <39.974052, 34.496830, 42.904194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760464, 34.398193, 42.856754>,  <39.404480, 34.233799, 42.777691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760464, 34.398193, 42.856754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153838, 0.137466, -0.978487,
		-0.429318, 0.901217, 0.059113,
		0.889955, 0.410989, 0.197658,
		40.027451, 34.521488, 42.916050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495186, 34.817410, 42.402740>,  <39.404480, 34.233799, 42.777691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495186, 34.817410, 42.402740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880077, 34.762352, 42.496696>,  <40.111012, 34.729317, 42.553070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880077, 34.762352, 42.496696>,  <39.495186, 34.817410, 42.402740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880077, 34.762352, 42.496696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268036, 0.327759, -0.905942,
		0.047709, 0.934681, 0.352272,
		0.962227, -0.137643, 0.234891,
		40.168747, 34.721058, 42.567165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792778, 35.311775, 42.064938>,  <39.495186, 34.817410, 42.402740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792778, 35.311775, 42.064938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082142, 35.041294, 42.120686>,  <40.255760, 34.879005, 42.154137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082142, 35.041294, 42.120686>,  <39.792778, 35.311775, 42.064938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082142, 35.041294, 42.120686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280927, 0.103894, -0.954089,
		0.630677, 0.729353, 0.265122,
		0.723413, -0.676202, 0.139372,
		40.299164, 34.838432, 42.162498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369949, 35.662334, 41.757442>,  <39.792778, 35.311775, 42.064938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369949, 35.662334, 41.757442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460670, 35.273346, 41.778816>,  <40.515102, 35.039951, 41.791641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460670, 35.273346, 41.778816>,  <40.369949, 35.662334, 41.757442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460670, 35.273346, 41.778816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267384, 0.009417, -0.963544,
		0.936517, 0.232825, 0.262159,
		0.226806, -0.972473, 0.053434,
		40.528713, 34.981606, 41.794846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993134, 35.559490, 41.338821>,  <40.369949, 35.662334, 41.757442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993134, 35.559490, 41.338821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843327, 35.189449, 41.363892>,  <40.753441, 34.967426, 41.378933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843327, 35.189449, 41.363892>,  <40.993134, 35.559490, 41.338821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843327, 35.189449, 41.363892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102514, -0.108492, -0.988798,
		0.921534, -0.363901, 0.135468,
		-0.374521, -0.925098, 0.062674,
		40.730968, 34.911919, 41.382694>
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
