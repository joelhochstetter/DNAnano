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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<2.113077, 3.221804, 2.614946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.460106, 3.389997, 2.508730>,  <2.668324, 3.490913, 2.445000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.460106, 3.389997, 2.508730>,  <2.113077, 3.221804, 2.614946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.460106, 3.389997, 2.508730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002091, 0.530863, 0.847455,
		0.497301, -0.735787, 0.459684,
		0.867576, 0.420479, -0.265537,
		2.720378, 3.516142, 2.429068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.596106, 3.140038, 3.138105>,  <2.113077, 3.221804, 2.614946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.596106, 3.140038, 3.138105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.718658, 3.493189, 2.995749>,  <2.792190, 3.705080, 2.910335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.718658, 3.493189, 2.995749>,  <2.596106, 3.140038, 3.138105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.718658, 3.493189, 2.995749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345703, 0.451543, 0.822556,
		0.886916, -0.128983, 0.443557,
		0.306380, 0.882877, -0.355891,
		2.810573, 3.758052, 2.888981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.714267, 3.556313, 3.747823>,  <2.596106, 3.140038, 3.138105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.714267, 3.556313, 3.747823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.603806, 3.810577, 3.459469>,  <2.537529, 3.963136, 3.286457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.603806, 3.810577, 3.459469>,  <2.714267, 3.556313, 3.747823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.603806, 3.810577, 3.459469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443930, 0.580887, 0.682273,
		0.852446, 0.508435, 0.121775,
		-0.276154, 0.635661, -0.720884,
		2.520959, 4.001276, 3.243204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.672489, 4.166528, 4.120168>,  <2.714267, 3.556313, 3.747823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.672489, 4.166528, 4.120168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.462433, 4.217927, 3.783665>,  <2.336399, 4.248766, 3.581763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.462433, 4.217927, 3.783665>,  <2.672489, 4.166528, 4.120168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.462433, 4.217927, 3.783665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631319, 0.604065, 0.486356,
		0.570671, 0.786507, -0.236096,
		-0.525140, 0.128497, -0.841259,
		2.304891, 4.256476, 3.531287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.526712, 4.878448, 4.078482>,  <2.672489, 4.166528, 4.120168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.526712, 4.878448, 4.078482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.256256, 4.700547, 3.843525>,  <2.093982, 4.593807, 3.702550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.256256, 4.700547, 3.843525>,  <2.526712, 4.878448, 4.078482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.256256, 4.700547, 3.843525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708964, 0.609714, 0.354426,
		0.200511, 0.656083, -0.727565,
		-0.676140, -0.444752, -0.587393,
		2.053414, 4.567122, 3.667307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.132876, 5.400709, 3.771112>,  <2.526712, 4.878448, 4.078482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.132876, 5.400709, 3.771112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.880920, 5.090366, 3.756762>,  <1.729747, 4.904161, 3.748151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.880920, 5.090366, 3.756762>,  <2.132876, 5.400709, 3.771112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.880920, 5.090366, 3.756762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722348, 0.568224, 0.394125,
		-0.285398, 0.274170, -0.918356,
		-0.629890, -0.775855, -0.035876,
		1.691953, 4.857610, 3.745999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.586305, 5.604547, 3.442171>,  <2.132876, 5.400709, 3.771112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.586305, 5.604547, 3.442171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.423241, 5.297943, 3.640676>,  <1.325402, 5.113981, 3.759780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.423241, 5.297943, 3.640676>,  <1.586305, 5.604547, 3.442171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.423241, 5.297943, 3.640676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618327, 0.631633, 0.467666,
		-0.671926, -0.116204, -0.731445,
		-0.407660, -0.766509, 0.496263,
		1.300943, 5.067990, 3.789556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.901683, 5.690157, 3.332179>,  <1.586305, 5.604547, 3.442171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.901683, 5.690157, 3.332179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.925735, 5.460560, 3.658838>,  <0.940167, 5.322802, 3.854834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.925735, 5.460560, 3.658838>,  <0.901683, 5.690157, 3.332179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.925735, 5.460560, 3.658838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593859, 0.637020, 0.491465,
		-0.802319, -0.514526, -0.302567,
		0.060130, -0.573993, 0.816649,
		0.943775, 5.288362, 3.903833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.880583, 6.363119, 4.540318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.726166, 6.095806, 4.794678>,  <0.633516, 5.935418, 4.947294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.726166, 6.095806, 4.794678>,  <0.880583, 6.363119, 4.540318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.726166, 6.095806, 4.794678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472097, -0.735349, -0.486195,
		0.792525, 0.112515, 0.599370,
		-0.386042, -0.668283, 0.635901,
		0.610353, 5.895321, 4.985448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.397694, 5.876976, 4.781770>,  <0.880583, 6.363119, 4.540318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.397694, 5.876976, 4.781770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.031921, 5.715492, 4.793335>,  <0.812458, 5.618602, 4.800274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.031921, 5.715492, 4.793335>,  <1.397694, 5.876976, 4.781770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.031921, 5.715492, 4.793335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317293, -0.759374, -0.568047,
		0.251280, -0.510266, 0.822488,
		-0.914431, -0.403708, 0.028912,
		0.757592, 5.594380, 4.802009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.367263, 5.237611, 5.144746>,  <1.397694, 5.876976, 4.781770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.367263, 5.237611, 5.144746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.081390, 5.253090, 4.865395>,  <0.909867, 5.262377, 4.697784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.081390, 5.253090, 4.865395>,  <1.367263, 5.237611, 5.144746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.081390, 5.253090, 4.865395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320019, -0.869742, -0.375682,
		-0.621946, -0.491988, 0.609205,
		-0.714682, 0.038697, -0.698378,
		0.866986, 5.264699, 4.655881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.175220, 4.622288, 4.997577>,  <1.367263, 5.237611, 5.144746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.175220, 4.622288, 4.997577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.104630, 4.820179, 4.657200>,  <1.062275, 4.938913, 4.452974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.104630, 4.820179, 4.657200>,  <1.175220, 4.622288, 4.997577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.104630, 4.820179, 4.657200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456676, -0.724680, -0.516030,
		-0.871954, -0.479671, -0.098041,
		-0.176476, 0.494727, -0.850941,
		1.051687, 4.968597, 4.401917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.932565, 4.079108, 4.472954>,  <1.175220, 4.622288, 4.997577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.932565, 4.079108, 4.472954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.077805, 4.392582, 4.271362>,  <1.164949, 4.580667, 4.150407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.077805, 4.392582, 4.271362>,  <0.932565, 4.079108, 4.472954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.077805, 4.392582, 4.271362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498473, -0.620366, -0.605534,
		-0.787200, -0.031351, -0.615901,
		0.363100, 0.783686, -0.503979,
		1.186735, 4.627687, 4.120169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.131244, 3.723618, 3.856217>,  <0.932565, 4.079108, 4.472954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.131244, 3.723618, 3.856217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.284592, 4.083309, 3.771915>,  <1.376600, 4.299124, 3.721334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.284592, 4.083309, 3.771915>,  <1.131244, 3.723618, 3.856217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.284592, 4.083309, 3.771915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516022, -0.397792, -0.758606,
		-0.765996, 0.182071, -0.616522,
		0.383368, 0.899228, -0.210755,
		1.399602, 4.353078, 3.708689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.044415, 3.867867, 3.131056>,  <1.131244, 3.723618, 3.856217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.044415, 3.867867, 3.131056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.363113, 4.071220, 3.261742>,  <1.554332, 4.193233, 3.340153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.363113, 4.071220, 3.261742>,  <1.044415, 3.867867, 3.131056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.363113, 4.071220, 3.261742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558754, -0.413794, -0.718727,
		-0.230196, 0.755196, -0.613750,
		0.796745, 0.508384, 0.326715,
		1.602137, 4.223736, 3.359756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.403865, 4.230251, 2.563149>,  <1.044415, 3.867867, 3.131056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.403865, 4.230251, 2.563149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.679947, 4.203880, 2.851391>,  <1.845596, 4.188058, 3.024336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.679947, 4.203880, 2.851391>,  <1.403865, 4.230251, 2.563149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.679947, 4.203880, 2.851391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638548, -0.412971, -0.649393,
		0.340401, 0.908355, -0.242938,
		0.690205, -0.065927, 0.720604,
		1.887008, 4.184103, 3.067572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
