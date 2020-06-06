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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.437717, 15.139129, 15.004251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.105113, 15.259214, 14.817291>,  <3.905550, 15.331265, 14.705115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.105113, 15.259214, 14.817291>,  <4.437717, 15.139129, 15.004251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.105113, 15.259214, 14.817291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025227, -0.820114, -0.571643,
		-0.554936, -0.487118, 0.674360,
		-0.831511, 0.300213, -0.467399,
		3.855660, 15.349278, 14.677072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.017310, 14.556803, 14.909518>,  <4.437717, 15.139129, 15.004251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.017310, 14.556803, 14.909518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.886858, 14.816555, 14.634726>,  <3.808586, 14.972406, 14.469851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.886858, 14.816555, 14.634726>,  <4.017310, 14.556803, 14.909518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.886858, 14.816555, 14.634726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206147, -0.660370, -0.722091,
		-0.922574, -0.377115, 0.081499,
		-0.326130, 0.649381, -0.686981,
		3.789019, 15.011370, 14.428632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.421450, 14.385824, 14.483536>,  <4.017310, 14.556803, 14.909518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.421450, 14.385824, 14.483536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.674479, 14.612937, 14.272833>,  <3.826298, 14.749205, 14.146411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.674479, 14.612937, 14.272833>,  <3.421450, 14.385824, 14.483536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.674479, 14.612937, 14.272833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172522, -0.766336, -0.618842,
		-0.755040, 0.300587, -0.582720,
		0.632575, 0.567782, -0.526756,
		3.864252, 14.783272, 14.114806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.297492, 14.202621, 13.829329>,  <3.421450, 14.385824, 14.483536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.297492, 14.202621, 13.829329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.669922, 14.348464, 13.834364>,  <3.893380, 14.435969, 13.837385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.669922, 14.348464, 13.834364>,  <3.297492, 14.202621, 13.829329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.669922, 14.348464, 13.834364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305706, -0.760905, -0.572335,
		-0.199099, 0.536736, -0.819923,
		0.931077, 0.364607, 0.012588,
		3.949245, 14.457846, 13.838140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.612203, 14.288039, 13.123343>,  <3.297492, 14.202621, 13.829329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.612203, 14.288039, 13.123343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.910330, 14.198294, 13.374473>,  <4.089206, 14.144446, 13.525150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.910330, 14.198294, 13.374473>,  <3.612203, 14.288039, 13.123343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.910330, 14.198294, 13.374473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265413, -0.763992, -0.588109,
		0.611604, 0.604960, -0.509867,
		0.745317, -0.224365, 0.627824,
		4.133925, 14.130984, 13.562820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.199517, 14.439783, 12.730231>,  <3.612203, 14.288039, 13.123343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.199517, 14.439783, 12.730231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.318239, 14.181462, 13.011613>,  <4.389472, 14.026470, 13.180442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.318239, 14.181462, 13.011613>,  <4.199517, 14.439783, 12.730231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.318239, 14.181462, 13.011613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490105, -0.529212, -0.692627,
		0.819575, 0.550342, 0.159437,
		0.296806, -0.645801, 0.703454,
		4.407281, 13.987722, 13.222649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.865478, 14.223770, 12.452527>,  <4.199517, 14.439783, 12.730231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.865478, 14.223770, 12.452527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.747388, 13.943435, 12.712271>,  <4.676534, 13.775233, 12.868116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.747388, 13.943435, 12.712271>,  <4.865478, 14.223770, 12.452527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.747388, 13.943435, 12.712271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479293, -0.696583, -0.533901,
		0.826511, 0.153612, 0.541556,
		-0.295226, -0.700839, 0.649359,
		4.658820, 13.733183, 12.907079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.255884, 13.751822, 12.256702>,  <4.865478, 14.223770, 12.452527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.255884, 13.751822, 12.256702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.007669, 13.550207, 12.496997>,  <4.858741, 13.429238, 12.641173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.007669, 13.550207, 12.496997>,  <5.255884, 13.751822, 12.256702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.007669, 13.550207, 12.496997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319740, -0.862126, -0.393072,
		0.716032, -0.051836, 0.696140,
		-0.620536, -0.504036, 0.600735,
		4.821509, 13.398996, 12.677217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.655859, 13.235817, 12.569756>,  <5.255884, 13.751822, 12.256702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.655859, 13.235817, 12.569756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.272885, 13.120736, 12.579099>,  <5.043100, 13.051687, 12.584704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.272885, 13.120736, 12.579099>,  <5.655859, 13.235817, 12.569756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.272885, 13.120736, 12.579099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270059, -0.921404, -0.279433,
		0.101917, -0.261230, 0.959881,
		-0.957435, -0.287703, 0.023359,
		4.985654, 13.034425, 12.586106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.536396, 12.555232, 12.983957>,  <5.655859, 13.235817, 12.569756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.536396, 12.555232, 12.983957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.256848, 12.609677, 12.703085>,  <5.089120, 12.642344, 12.534561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.256848, 12.609677, 12.703085>,  <5.536396, 12.555232, 12.983957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.256848, 12.609677, 12.703085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254925, -0.869853, -0.422338,
		-0.668279, -0.474161, 0.573213,
		-0.698868, 0.136113, -0.702180,
		5.047188, 12.650512, 12.492431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.164078, 11.929529, 12.987681>,  <5.536396, 12.555232, 12.983957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.164078, 11.929529, 12.987681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.073095, 12.114725, 12.645009>,  <5.018506, 12.225842, 12.439405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.073095, 12.114725, 12.645009>,  <5.164078, 11.929529, 12.987681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.073095, 12.114725, 12.645009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039705, -0.874600, -0.483217,
		-0.972979, -0.143925, 0.180550,
		-0.227456, 0.462991, -0.856682,
		5.004858, 12.253622, 12.388004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.681810, 11.511736, 12.642122>,  <5.164078, 11.929529, 12.987681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.681810, 11.511736, 12.642122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.745564, 11.760097, 12.335116>,  <4.783817, 11.909113, 12.150913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.745564, 11.760097, 12.335116>,  <4.681810, 11.511736, 12.642122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.745564, 11.760097, 12.335116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030381, -0.773999, -0.632457,
		-0.986749, 0.124122, -0.104501,
		0.159385, 0.620902, -0.767514,
		4.793380, 11.946367, 12.104862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.148841, 11.370911, 12.103237>,  <4.681810, 11.511736, 12.642122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.148841, 11.370911, 12.103237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.434424, 11.554505, 11.891730>,  <4.605774, 11.664662, 11.764826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.434424, 11.554505, 11.891730>,  <4.148841, 11.370911, 12.103237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.434424, 11.554505, 11.891730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081707, -0.695404, -0.713958,
		-0.695404, 0.552940, -0.458987,
		0.713958, 0.458987, -0.528767,
		4.648612, 11.692202, 11.733100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.814496, 11.657598, 11.508193>,  <4.148841, 11.370911, 12.103237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.814496, 11.657598, 11.508193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.202539, 11.593542, 11.435260>,  <4.435365, 11.555109, 11.391500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.202539, 11.593542, 11.435260>,  <3.814496, 11.657598, 11.508193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.202539, 11.593542, 11.435260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241334, -0.557846, -0.794082,
		0.025450, 0.814348, -0.579818,
		0.970108, -0.160139, -0.182333,
		4.493571, 11.545501, 11.380560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.845485, 11.735351, 10.796129>,  <3.814496, 11.657598, 11.508193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.845485, 11.735351, 10.796129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.195980, 11.566288, 10.888711>,  <4.406277, 11.464850, 10.944260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.195980, 11.566288, 10.888711>,  <3.845485, 11.735351, 10.796129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.195980, 11.566288, 10.888711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080209, -0.601539, -0.794806,
		0.475158, 0.677874, -0.560992,
		0.876237, -0.422656, 0.231454,
		4.458851, 11.439491, 10.958147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.047453, 11.633938, 10.147632>,  <3.845485, 11.735351, 10.796129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.047453, 11.633938, 10.147632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.297694, 11.411450, 10.366444>,  <4.447839, 11.277958, 10.497731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.297694, 11.411450, 10.366444>,  <4.047453, 11.633938, 10.147632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.297694, 11.411450, 10.366444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005369, -0.704246, -0.709936,
		0.780123, 0.441201, -0.443565,
		0.625603, -0.556218, 0.547030,
		4.485375, 11.244585, 10.530553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.327825, 11.407168, 9.638690>,  <4.047453, 11.633938, 10.147632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.327825, 11.407168, 9.638690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.424671, 11.157155, 9.935530>,  <4.482778, 11.007147, 10.113634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.424671, 11.157155, 9.935530>,  <4.327825, 11.407168, 9.638690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.424671, 11.157155, 9.935530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168847, -0.726043, -0.666598,
		0.955443, 0.286694, -0.070251,
		0.242115, -0.625034, 0.742100,
		4.497305, 10.969645, 10.158159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.057568, 11.119083, 9.598233>,  <4.327825, 11.407168, 9.638690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.057568, 11.119083, 9.598233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.855874, 10.858557, 9.825049>,  <4.734857, 10.702241, 9.961139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.855874, 10.858557, 9.825049>,  <5.057568, 11.119083, 9.598233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.855874, 10.858557, 9.825049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082197, -0.689843, -0.719278,
		0.859646, -0.316076, 0.401379,
		-0.504235, -0.651316, 0.567040,
		4.704603, 10.663162, 9.995161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.436380, 10.532911, 9.468130>,  <5.057568, 11.119083, 9.598233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.436380, 10.532911, 9.468130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.110301, 10.373186, 9.635941>,  <4.914654, 10.277350, 9.736627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.110301, 10.373186, 9.635941>,  <5.436380, 10.532911, 9.468130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.110301, 10.373186, 9.635941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154602, -0.848081, -0.506810,
		0.558168, -0.348291, 0.753088,
		-0.815197, -0.399314, 0.419526,
		4.865742, 10.253392, 9.761798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.573552, 9.770535, 9.792475>,  <5.436380, 10.532911, 9.468130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.573552, 9.770535, 9.792475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.179555, 9.798220, 9.729229>,  <4.943157, 9.814831, 9.691281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.179555, 9.798220, 9.729229>,  <5.573552, 9.770535, 9.792475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.179555, 9.798220, 9.729229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018515, -0.868422, -0.495480,
		-0.171604, -0.490972, 0.854107,
		-0.984992, 0.069213, -0.158115,
		4.884058, 9.818983, 9.681794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.258764, 9.169477, 9.964271>,  <5.573552, 9.770535, 9.792475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.258764, 9.169477, 9.964271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.001286, 9.316251, 9.695640>,  <4.846798, 9.404315, 9.534461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.001286, 9.316251, 9.695640>,  <5.258764, 9.169477, 9.964271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.001286, 9.316251, 9.695640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135969, -0.918429, -0.371484,
		-0.753105, -0.147809, 0.641081,
		-0.643696, 0.366934, -0.671577,
		4.808177, 9.426331, 9.494166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.727674, 8.684855, 9.961811>,  <5.258764, 9.169477, 9.964271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.727674, 8.684855, 9.961811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.671179, 8.899425, 9.628992>,  <4.637283, 9.028166, 9.429300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.671179, 8.899425, 9.628992>,  <4.727674, 8.684855, 9.961811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.671179, 8.899425, 9.628992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269690, -0.829533, -0.489022,
		-0.952533, 0.155328, 0.261827,
		-0.141235, 0.536422, -0.832048,
		4.628808, 9.060351, 9.379377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.218985, 8.328426, 9.682612>,  <4.727674, 8.684855, 9.961811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.218985, 8.328426, 9.682612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.395141, 8.544742, 9.395947>,  <4.500835, 8.674531, 9.223948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.395141, 8.544742, 9.395947>,  <4.218985, 8.328426, 9.682612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.395141, 8.544742, 9.395947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026019, -0.790214, -0.612279,
		-0.897429, 0.288289, -0.333932,
		0.440391, 0.540788, -0.716662,
		4.527258, 8.706978, 9.180949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.765203, 8.207439, 9.124622>,  <4.218985, 8.328426, 9.682612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.765203, 8.207439, 9.124622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.105255, 8.340923, 8.961689>,  <4.309285, 8.421014, 8.863929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.105255, 8.340923, 8.961689>,  <3.765203, 8.207439, 9.124622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.105255, 8.340923, 8.961689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169361, -0.559169, -0.811570,
		-0.498597, 0.758925, -0.418848,
		0.850128, 0.333710, -0.407332,
		4.360293, 8.441036, 8.839489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.536183, 8.147554, 8.401579>,  <3.765203, 8.207439, 9.124622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.536183, 8.147554, 8.401579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.934443, 8.146907, 8.438840>,  <4.173399, 8.146518, 8.461197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.934443, 8.146907, 8.438840>,  <3.536183, 8.147554, 8.401579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.934443, 8.146907, 8.438840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072311, -0.617042, -0.783601,
		0.058749, 0.786929, -0.614241,
		0.995650, -0.001619, 0.093154,
		4.233138, 8.146421, 8.466786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.879622, 8.112706, 7.774790>,  <3.536183, 8.147554, 8.401579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.879622, 8.112706, 7.774790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.199918, 7.960289, 7.959666>,  <4.392096, 7.868839, 8.070592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.199918, 7.960289, 7.959666>,  <3.879622, 8.112706, 7.774790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.199918, 7.960289, 7.959666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166783, -0.599255, -0.782992,
		0.575323, 0.704060, -0.416297,
		0.800742, -0.381042, 0.462190,
		4.440141, 7.845977, 8.098324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.622724, 8.105233, 7.453978>,  <3.879622, 8.112706, 7.774790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.622724, 8.105233, 7.453978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.553664, 7.787291, 7.686665>,  <4.512228, 7.596525, 7.826277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.553664, 7.787291, 7.686665>,  <4.622724, 8.105233, 7.453978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.553664, 7.787291, 7.686665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216558, -0.606768, -0.764811,
		0.960882, -0.006068, 0.276890,
		-0.172649, -0.794856, 0.581718,
		4.501869, 7.548834, 7.861180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.322704, 7.642336, 7.519295>,  <4.622724, 8.105233, 7.453978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.322704, 7.642336, 7.519295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.982104, 7.441844, 7.580897>,  <4.777744, 7.321549, 7.617858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.982104, 7.441844, 7.580897>,  <5.322704, 7.642336, 7.519295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.982104, 7.441844, 7.580897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311324, -0.719594, -0.620695,
		0.421932, -0.480576, 0.768779,
		-0.851499, -0.501230, 0.154005,
		4.726655, 7.291475, 7.627099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.751756, 8.258053, 7.564664>,  <5.322704, 7.642336, 7.519295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.751756, 8.258053, 7.564664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.745305, 7.934885, 7.800293>,  <5.741435, 7.740984, 7.941670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.745305, 7.934885, 7.800293>,  <5.751756, 8.258053, 7.564664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.745305, 7.934885, 7.800293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597255, -0.480278, -0.642355,
		0.801889, 0.341468, 0.490279,
		-0.016127, -0.807919, 0.589073,
		5.740467, 7.692509, 7.977015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.435228, 8.119203, 7.754629>,  <5.751756, 8.258053, 7.564664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.435228, 8.119203, 7.754629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.149990, 7.845213, 7.694890>,  <5.978847, 7.680819, 7.659047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.149990, 7.845213, 7.694890>,  <6.435228, 8.119203, 7.754629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.149990, 7.845213, 7.694890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413524, -0.238942, -0.878581,
		0.566120, -0.688271, 0.453642,
		-0.713096, -0.684974, -0.149347,
		5.936061, 7.639721, 7.650086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.699851, 7.411512, 7.729585>,  <6.435228, 8.119203, 7.754629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.699851, 7.411512, 7.729585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.405682, 7.494627, 7.471600>,  <6.229180, 7.544497, 7.316809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.405682, 7.494627, 7.471600>,  <6.699851, 7.411512, 7.729585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.405682, 7.494627, 7.471600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601088, -0.239336, -0.762504,
		-0.312804, -0.948442, 0.051113,
		-0.735423, 0.207791, -0.644962,
		6.185054, 7.556964, 7.278111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.285426, 7.107652, 8.191450>,  <6.699851, 7.411512, 7.729585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.285426, 7.107652, 8.191450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.648423, 7.264942, 8.132352>,  <7.866222, 7.359316, 8.096892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.648423, 7.264942, 8.132352>,  <7.285426, 7.107652, 8.191450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.648423, 7.264942, 8.132352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128846, 0.595337, 0.793078,
		0.399817, -0.700676, 0.590931,
		0.907494, 0.393225, -0.147746,
		7.920671, 7.382910, 8.088028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.678220, 7.009608, 8.824464>,  <7.285426, 7.107652, 8.191450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.678220, 7.009608, 8.824464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.776929, 7.332501, 8.609996>,  <7.836154, 7.526237, 8.481315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.776929, 7.332501, 8.609996>,  <7.678220, 7.009608, 8.824464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.776929, 7.332501, 8.609996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007642, 0.554886, 0.831892,
		0.969044, -0.201189, 0.143099,
		0.246771, 0.807233, -0.536171,
		7.850960, 7.574671, 8.449144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.202427, 7.249644, 9.138358>,  <7.678220, 7.009608, 8.824464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.202427, 7.249644, 9.138358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.984348, 7.525538, 8.947770>,  <7.853500, 7.691075, 8.833417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.984348, 7.525538, 8.947770>,  <8.202427, 7.249644, 9.138358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.984348, 7.525538, 8.947770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076828, 0.524870, 0.847708,
		0.834780, 0.498774, -0.233167,
		-0.545197, 0.689736, -0.476471,
		7.820788, 7.732459, 8.804829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.461452, 7.881367, 9.370688>,  <8.202427, 7.249644, 9.138358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.461452, 7.881367, 9.370688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.092750, 7.965529, 9.240396>,  <7.871529, 8.016026, 9.162222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.092750, 7.965529, 9.240396>,  <8.461452, 7.881367, 9.370688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.092750, 7.965529, 9.240396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134120, 0.615168, 0.776904,
		0.363843, 0.759801, -0.538814,
		-0.921754, 0.210405, -0.325729,
		7.816224, 8.028650, 9.142678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.447630, 8.519154, 9.159178>,  <8.461452, 7.881367, 9.370688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.447630, 8.519154, 9.159178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.086213, 8.410236, 9.291521>,  <7.869363, 8.344886, 9.370927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.086213, 8.410236, 9.291521>,  <8.447630, 8.519154, 9.159178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.086213, 8.410236, 9.291521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020257, 0.798415, 0.601767,
		-0.428019, 0.537020, -0.726917,
		-0.903543, -0.272293, 0.330858,
		7.815150, 8.328548, 9.390779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.125015, 9.116735, 9.131878>,  <8.447630, 8.519154, 9.159178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.125015, 9.116735, 9.131878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.907373, 8.896313, 9.384952>,  <7.776788, 8.764060, 9.536796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.907373, 8.896313, 9.384952>,  <8.125015, 9.116735, 9.131878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.907373, 8.896313, 9.384952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151069, 0.806097, 0.572176,
		-0.825304, 0.215745, -0.521849,
		-0.544105, -0.551054, 0.632683,
		7.744141, 8.730996, 9.574757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.559317, 9.618925, 9.215455>,  <8.125015, 9.116735, 9.131878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.559317, 9.618925, 9.215455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.530750, 9.362898, 9.521452>,  <7.513609, 9.209282, 9.705050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.530750, 9.362898, 9.521452>,  <7.559317, 9.618925, 9.215455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.530750, 9.362898, 9.521452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117954, 0.766988, 0.630727,
		-0.990447, -0.045189, -0.130276,
		-0.071418, -0.640068, 0.764992,
		7.509325, 9.170877, 9.750950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.037812, 9.874715, 9.579351>,  <7.559317, 9.618925, 9.215455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.037812, 9.874715, 9.579351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.211074, 9.641497, 9.854287>,  <7.315032, 9.501566, 10.019248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.211074, 9.641497, 9.854287>,  <7.037812, 9.874715, 9.579351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.211074, 9.641497, 9.854287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152740, 0.704079, 0.693501,
		-0.888282, -0.405379, 0.215922,
		0.433157, -0.583045, 0.687338,
		7.341022, 9.466583, 10.060489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.625895, 9.898159, 10.218277>,  <7.037812, 9.874715, 9.579351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.625895, 9.898159, 10.218277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.975599, 9.768332, 10.362679>,  <7.185421, 9.690436, 10.449321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.975599, 9.768332, 10.362679>,  <6.625895, 9.898159, 10.218277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.975599, 9.768332, 10.362679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108329, 0.594459, 0.796796,
		-0.473217, -0.735714, 0.484551,
		0.874260, -0.324567, 0.361007,
		7.237877, 9.670962, 10.470982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.477627, 9.837926, 10.905275>,  <6.625895, 9.898159, 10.218277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.477627, 9.837926, 10.905275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.876827, 9.845892, 10.881277>,  <7.116347, 9.850672, 10.866879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.876827, 9.845892, 10.881277>,  <6.477627, 9.837926, 10.905275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.876827, 9.845892, 10.881277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045491, 0.432756, 0.900363,
		0.043894, -0.901291, 0.430985,
		0.998000, 0.019915, -0.059996,
		7.176227, 9.851867, 10.863278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.709843, 9.521063, 11.571080>,  <6.477627, 9.837926, 10.905275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.709843, 9.521063, 11.571080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.965636, 9.775105, 11.397780>,  <7.119112, 9.927529, 11.293800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.965636, 9.775105, 11.397780>,  <6.709843, 9.521063, 11.571080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.965636, 9.775105, 11.397780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062798, 0.518501, 0.852768,
		0.766237, -0.572536, 0.291689,
		0.639482, 0.635105, -0.433249,
		7.157481, 9.965636, 11.267806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.127747, 9.553250, 12.092779>,  <6.709843, 9.521063, 11.571080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.127747, 9.553250, 12.092779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.278315, 9.866351, 11.894544>,  <7.368655, 10.054212, 11.775602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.278315, 9.866351, 11.894544>,  <7.127747, 9.553250, 12.092779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.278315, 9.866351, 11.894544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037076, 0.547233, 0.836159,
		0.925707, -0.296372, 0.235010,
		0.376419, 0.782752, -0.495589,
		7.391241, 10.101176, 11.745867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.627127, 9.817994, 12.414211>,  <7.127747, 9.553250, 12.092779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.627127, 9.817994, 12.414211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.504410, 10.122252, 12.185371>,  <7.430779, 10.304806, 12.048067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.504410, 10.122252, 12.185371>,  <7.627127, 9.817994, 12.414211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.504410, 10.122252, 12.185371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042469, 0.611428, 0.790160,
		0.950828, 0.218120, -0.219886,
		-0.306794, 0.760644, -0.572099,
		7.412372, 10.350445, 12.013741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.114645, 10.239813, 12.604515>,  <7.627127, 9.817994, 12.414211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.114645, 10.239813, 12.604515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.836368, 10.476317, 12.441336>,  <7.669402, 10.618220, 12.343429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.836368, 10.476317, 12.441336>,  <8.114645, 10.239813, 12.604515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.836368, 10.476317, 12.441336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177887, 0.692017, 0.699620,
		0.695965, 0.414153, -0.586609,
		-0.695693, 0.591261, -0.407948,
		7.627660, 10.653696, 12.318952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.375192, 10.949328, 12.482780>,  <8.114645, 10.239813, 12.604515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.375192, 10.949328, 12.482780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.979409, 10.996384, 12.516570>,  <7.741940, 11.024616, 12.536844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.979409, 10.996384, 12.516570>,  <8.375192, 10.949328, 12.482780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.979409, 10.996384, 12.516570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144806, 0.794122, 0.590255,
		0.002354, 0.596265, -0.802784,
		-0.989457, 0.117637, 0.084474,
		7.682572, 11.031675, 12.541912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.248687, 11.746532, 12.517096>,  <8.375192, 10.949328, 12.482780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.248687, 11.746532, 12.517096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.904502, 11.583299, 12.639126>,  <7.697991, 11.485358, 12.712344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.904502, 11.583299, 12.639126>,  <8.248687, 11.746532, 12.517096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.904502, 11.583299, 12.639126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191043, 0.813482, 0.549317,
		-0.472342, 0.414384, -0.777933,
		-0.860462, -0.408084, 0.305077,
		7.646363, 11.460874, 12.730649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.793145, 12.178106, 12.420220>,  <8.248687, 11.746532, 12.517096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.793145, 12.178106, 12.420220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.597954, 11.955765, 12.689413>,  <7.480839, 11.822360, 12.850928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.597954, 11.955765, 12.689413>,  <7.793145, 12.178106, 12.420220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.597954, 11.955765, 12.689413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068312, 0.792967, 0.605422,
		-0.870178, 0.249460, -0.424922,
		-0.487979, -0.555853, 0.672982,
		7.451560, 11.789009, 12.891308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.295369, 12.604467, 12.595017>,  <7.793145, 12.178106, 12.420220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.295369, 12.604467, 12.595017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.300175, 12.334707, 12.890325>,  <7.303058, 12.172852, 13.067509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.300175, 12.334707, 12.890325>,  <7.295369, 12.604467, 12.595017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.300175, 12.334707, 12.890325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228538, 0.716928, 0.658624,
		-0.973461, -0.176635, -0.145513,
		0.012014, -0.674400, 0.738269,
		7.303779, 12.132387, 13.111805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.539872, 12.639015, 12.928865>,  <7.295369, 12.604467, 12.595017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.539872, 12.639015, 12.928865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.814976, 12.505210, 13.186574>,  <6.980038, 12.424927, 13.341199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.814976, 12.505210, 13.186574>,  <6.539872, 12.639015, 12.928865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.814976, 12.505210, 13.186574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240408, 0.732468, 0.636942,
		-0.684974, -0.592951, 0.423342,
		0.687760, -0.334514, 0.644272,
		7.021304, 12.404856, 13.379855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.242079, 12.628920, 13.577588>,  <6.539872, 12.639015, 12.928865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.242079, 12.628920, 13.577588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.633368, 12.629646, 13.660606>,  <6.868142, 12.630082, 13.710418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.633368, 12.629646, 13.660606>,  <6.242079, 12.628920, 13.577588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.633368, 12.629646, 13.660606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124216, 0.806233, 0.578411,
		-0.166280, -0.591596, 0.788901,
		0.978224, 0.001816, 0.207546,
		6.926836, 12.630191, 13.722870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.255193, 12.677838, 14.222417>,  <6.242079, 12.628920, 13.577588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.255193, 12.677838, 14.222417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.612061, 12.815119, 14.104945>,  <6.826181, 12.897487, 14.034462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.612061, 12.815119, 14.104945>,  <6.255193, 12.677838, 14.222417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.612061, 12.815119, 14.104945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160417, 0.848518, 0.504266,
		0.422256, -0.402779, 0.812077,
		0.892169, 0.343200, -0.293679,
		6.879711, 12.918079, 14.016841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.698358, 12.700042, 14.856122>,  <6.255193, 12.677838, 14.222417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.698358, 12.700042, 14.856122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.877404, 12.940089, 14.590943>,  <6.984831, 13.084118, 14.431836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.877404, 12.940089, 14.590943>,  <6.698358, 12.700042, 14.856122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.877404, 12.940089, 14.590943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072529, 0.763286, 0.641977,
		0.891281, -0.239275, 0.385184,
		0.447614, 0.600118, -0.662948,
		7.011688, 13.120125, 14.392059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.142917, 13.173703, 15.225846>,  <6.698358, 12.700042, 14.856122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.142917, 13.173703, 15.225846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.118260, 13.365425, 14.875654>,  <7.103467, 13.480458, 14.665539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.118260, 13.365425, 14.875654>,  <7.142917, 13.173703, 15.225846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.118260, 13.365425, 14.875654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090588, 0.870842, 0.483143,
		0.993979, 0.109089, -0.010261,
		-0.061641, 0.479305, -0.875481,
		7.099768, 13.509216, 14.613009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.632021, 13.718625, 15.296454>,  <7.142917, 13.173703, 15.225846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.632021, 13.718625, 15.296454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.378500, 13.795029, 14.996638>,  <7.226388, 13.840871, 14.816749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.378500, 13.795029, 14.996638>,  <7.632021, 13.718625, 15.296454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.378500, 13.795029, 14.996638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071008, 0.950570, 0.302284,
		0.770229, 0.244811, -0.588909,
		-0.633802, 0.191010, -0.749540,
		7.188360, 13.852332, 14.771776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.810188, 14.440753, 15.089080>,  <7.632021, 13.718625, 15.296454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.810188, 14.440753, 15.089080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.428566, 14.358746, 15.001680>,  <7.199592, 14.309541, 14.949241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.428566, 14.358746, 15.001680>,  <7.810188, 14.440753, 15.089080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.428566, 14.358746, 15.001680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291956, 0.800038, 0.524119,
		0.067353, 0.563831, -0.823139,
		-0.954057, -0.205019, -0.218499,
		7.142348, 14.297240, 14.936131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.456157, 14.815132, 15.610502>,  <7.810188, 14.440753, 15.089080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.456157, 14.815132, 15.610502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.713058, 14.650240, 15.868984>,  <7.867198, 14.551305, 16.024073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.713058, 14.650240, 15.868984>,  <7.456157, 14.815132, 15.610502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.713058, 14.650240, 15.868984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697008, 0.664848, -0.268620,
		-0.318896, 0.622931, 0.714326,
		0.642250, -0.412229, 0.646205,
		7.905733, 14.526571, 16.062845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.825202, 15.401222, 16.050287>,  <7.456157, 14.815132, 15.610502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.825202, 15.401222, 16.050287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.046647, 15.068772, 16.029322>,  <8.179514, 14.869303, 16.016743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.046647, 15.068772, 16.029322>,  <7.825202, 15.401222, 16.050287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.046647, 15.068772, 16.029322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782091, 0.540510, -0.310131,
		0.286089, 0.130699, 0.949248,
		0.553612, -0.831123, -0.052416,
		8.212730, 14.819435, 16.013597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.308948, 15.294125, 16.612246>,  <7.825202, 15.401222, 16.050287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.308948, 15.294125, 16.612246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.440344, 15.143800, 16.265636>,  <8.519181, 15.053605, 16.057671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.440344, 15.143800, 16.265636>,  <8.308948, 15.294125, 16.612246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.440344, 15.143800, 16.265636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772955, 0.634206, 0.017963,
		0.542802, -0.675683, 0.498817,
		0.328490, -0.375812, -0.866521,
		8.538891, 15.031056, 16.005680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.981829, 15.038750, 16.832565>,  <8.308948, 15.294125, 16.612246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.981829, 15.038750, 16.832565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.883142, 15.186459, 16.474176>,  <8.823929, 15.275084, 16.259144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.883142, 15.186459, 16.474176>,  <8.981829, 15.038750, 16.832565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.883142, 15.186459, 16.474176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744769, 0.663798, 0.068501,
		0.620041, -0.650392, -0.438794,
		-0.246718, 0.369273, -0.895973,
		8.809126, 15.297240, 16.205385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.596105, 15.199508, 16.706564>,  <8.981829, 15.038750, 16.832565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.596105, 15.199508, 16.706564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.324639, 15.396568, 16.488680>,  <9.161760, 15.514805, 16.357948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.324639, 15.396568, 16.488680>,  <9.596105, 15.199508, 16.706564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.324639, 15.396568, 16.488680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556393, 0.828993, 0.056544,
		0.479418, -0.264700, -0.836715,
		-0.678664, 0.492651, -0.544711,
		9.121040, 15.544364, 16.325266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.066239, 15.084741, 17.276209>,  <9.596105, 15.199508, 16.706564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.066239, 15.084741, 17.276209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.019555, 14.709127, 17.405573>,  <9.991545, 14.483760, 17.483192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.019555, 14.709127, 17.405573>,  <10.066239, 15.084741, 17.276209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.019555, 14.709127, 17.405573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246406, 0.288078, 0.925362,
		-0.962114, 0.187691, 0.197761,
		-0.116712, -0.939033, 0.323412,
		9.984542, 14.427418, 17.502596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.583161, 15.121796, 17.765974>,  <10.066239, 15.084741, 17.276209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.583161, 15.121796, 17.765974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.826473, 14.806784, 17.805559>,  <9.972461, 14.617777, 17.829309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.826473, 14.806784, 17.805559>,  <9.583161, 15.121796, 17.765974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.826473, 14.806784, 17.805559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240548, 0.301725, 0.922550,
		-0.756394, -0.537364, 0.372972,
		0.608280, -0.787529, 0.098962,
		10.008957, 14.570525, 17.835247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.436549, 14.980613, 18.409868>,  <9.583161, 15.121796, 17.765974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.436549, 14.980613, 18.409868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.775764, 14.785036, 18.328119>,  <9.979292, 14.667690, 18.279070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.775764, 14.785036, 18.328119>,  <9.436549, 14.980613, 18.409868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.775764, 14.785036, 18.328119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295181, 0.115534, 0.948430,
		-0.440116, -0.864631, 0.242304,
		0.848037, -0.488943, -0.204374,
		10.030174, 14.638353, 18.266808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.534955, 14.439339, 18.869919>,  <9.436549, 14.980613, 18.409868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.534955, 14.439339, 18.869919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.893059, 14.572712, 18.751711>,  <10.107921, 14.652736, 18.680786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.893059, 14.572712, 18.751711>,  <9.534955, 14.439339, 18.869919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.893059, 14.572712, 18.751711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244776, 0.186135, 0.951545,
		0.372285, -0.924216, 0.085023,
		0.895259, 0.333434, -0.295522,
		10.161636, 14.672742, 18.663054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.957617, 14.313603, 19.436888>,  <9.534955, 14.439339, 18.869919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.957617, 14.313603, 19.436888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.201165, 14.553989, 19.229767>,  <10.347294, 14.698221, 19.105494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.201165, 14.553989, 19.229767>,  <9.957617, 14.313603, 19.436888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.201165, 14.553989, 19.229767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492650, 0.225144, 0.840599,
		0.621751, -0.766910, -0.158982,
		0.608870, 0.600965, -0.517801,
		10.383826, 14.734279, 19.074427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.612818, 14.185316, 19.638283>,  <9.957617, 14.313603, 19.436888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.612818, 14.185316, 19.638283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.584824, 14.561988, 19.506620>,  <10.568027, 14.787991, 19.427624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.584824, 14.561988, 19.506620>,  <10.612818, 14.185316, 19.638283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.584824, 14.561988, 19.506620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492923, 0.319510, 0.809284,
		0.867254, -0.105610, -0.486537,
		-0.069985, 0.941679, -0.329154,
		10.563828, 14.844492, 19.407875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.255874, 14.524438, 19.667643>,  <10.612818, 14.185316, 19.638283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.255874, 14.524438, 19.667643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.013674, 14.842438, 19.652967>,  <10.868354, 15.033237, 19.644163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.013674, 14.842438, 19.652967>,  <11.255874, 14.524438, 19.667643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.013674, 14.842438, 19.652967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446301, 0.377364, 0.811426,
		0.658929, 0.474943, -0.583303,
		-0.605499, 0.795000, -0.036688,
		10.832025, 15.080937, 19.641960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.638014, 15.013968, 19.991058>,  <11.255874, 14.524438, 19.667643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.638014, 15.013968, 19.991058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.288589, 15.208418, 19.981504>,  <11.078934, 15.325088, 19.975773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.288589, 15.208418, 19.981504>,  <11.638014, 15.013968, 19.991058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.288589, 15.208418, 19.981504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280665, 0.543231, 0.791282,
		0.397635, 0.684532, -0.610984,
		-0.873564, 0.486124, -0.023884,
		11.026520, 15.354255, 19.974339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.799706, 15.672020, 20.084332>,  <11.638014, 15.013968, 19.991058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.799706, 15.672020, 20.084332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.415769, 15.641186, 20.192223>,  <11.185406, 15.622685, 20.256958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.415769, 15.641186, 20.192223>,  <11.799706, 15.672020, 20.084332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.415769, 15.641186, 20.192223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241176, 0.264352, 0.933784,
		-0.143285, 0.961341, -0.235146,
		-0.959845, -0.077086, 0.269730,
		11.127815, 15.618060, 20.273142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.704293, 16.259186, 20.405437>,  <11.799706, 15.672020, 20.084332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.704293, 16.259186, 20.405437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.425567, 16.009254, 20.546314>,  <11.258331, 15.859296, 20.630840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.425567, 16.009254, 20.546314>,  <11.704293, 16.259186, 20.405437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.425567, 16.009254, 20.546314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273417, 0.222555, 0.935795,
		-0.663092, 0.748372, 0.015759,
		-0.696815, -0.624827, 0.352192,
		11.216522, 15.821806, 20.651972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.193585, 16.613304, 20.974558>,  <11.704293, 16.259186, 20.405437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.193585, 16.613304, 20.974558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.152090, 16.221094, 21.041265>,  <11.127192, 15.985768, 21.081289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.152090, 16.221094, 21.041265>,  <11.193585, 16.613304, 20.974558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.152090, 16.221094, 21.041265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154721, 0.149722, 0.976547,
		-0.982497, 0.127108, 0.136176,
		-0.103738, -0.980524, 0.166768,
		11.120969, 15.926937, 21.091295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.664594, 16.564825, 21.495836>,  <11.193585, 16.613304, 20.974558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.664594, 16.564825, 21.495836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.877848, 16.226479, 21.502502>,  <11.005800, 16.023470, 21.506502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.877848, 16.226479, 21.502502>,  <10.664594, 16.564825, 21.495836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.877848, 16.226479, 21.502502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099248, 0.082092, 0.991671,
		-0.840189, -0.527039, 0.127716,
		0.533134, -0.845867, 0.016665,
		11.037788, 15.972718, 21.507502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.581400, 16.316273, 22.154543>,  <10.664594, 16.564825, 21.495836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.581400, 16.316273, 22.154543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.883453, 16.086359, 22.028433>,  <11.064686, 15.948411, 21.952766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.883453, 16.086359, 22.028433>,  <10.581400, 16.316273, 22.154543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.883453, 16.086359, 22.028433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362416, -0.034734, 0.931369,
		-0.546285, -0.817569, 0.182081,
		0.755134, -0.574782, -0.315275,
		11.109994, 15.913924, 21.933851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.611068, 15.750734, 22.589579>,  <10.581400, 16.316273, 22.154543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.611068, 15.750734, 22.589579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.968103, 15.824474, 22.424995>,  <11.182325, 15.868718, 22.326244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.968103, 15.824474, 22.424995>,  <10.611068, 15.750734, 22.589579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.968103, 15.824474, 22.424995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381701, 0.176757, 0.907227,
		0.239977, -0.966836, 0.087404,
		0.892589, 0.184351, -0.411460,
		11.235880, 15.879780, 22.301558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.002574, 15.437231, 23.136744>,  <10.611068, 15.750734, 22.589579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.002574, 15.437231, 23.136744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.257526, 15.653856, 22.917488>,  <11.410498, 15.783832, 22.785934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.257526, 15.653856, 22.917488>,  <11.002574, 15.437231, 23.136744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.257526, 15.653856, 22.917488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499336, 0.251492, 0.829105,
		0.586864, -0.802161, -0.110125,
		0.637380, 0.541562, -0.548140,
		11.448741, 15.816325, 22.753046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.664800, 15.298992, 23.364841>,  <11.002574, 15.437231, 23.136744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.664800, 15.298992, 23.364841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.643962, 15.664504, 23.203699>,  <11.631459, 15.883811, 23.107014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.643962, 15.664504, 23.203699>,  <11.664800, 15.298992, 23.364841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.643962, 15.664504, 23.203699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468674, 0.378591, 0.798131,
		0.881834, -0.147231, -0.447987,
		-0.052095, 0.913779, -0.402858,
		11.628334, 15.938638, 23.082842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.250395, 15.609883, 23.382704>,  <11.664800, 15.298992, 23.364841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.250395, 15.609883, 23.382704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.022714, 15.936831, 23.347115>,  <11.886106, 16.132999, 23.325762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.022714, 15.936831, 23.347115>,  <12.250395, 15.609883, 23.382704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.022714, 15.936831, 23.347115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471607, 0.413214, 0.779000,
		0.673495, 0.401449, -0.620680,
		-0.569202, 0.817369, -0.088972,
		11.851954, 16.182043, 23.320423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.689253, 16.110512, 23.613134>,  <12.250395, 15.609883, 23.382704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.689253, 16.110512, 23.613134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.322755, 16.270760, 23.613194>,  <12.102857, 16.366909, 23.613230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.322755, 16.270760, 23.613194>,  <12.689253, 16.110512, 23.613134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.322755, 16.270760, 23.613194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256759, 0.586939, 0.767839,
		0.307526, 0.703566, -0.640643,
		-0.916244, 0.400621, 0.000148,
		12.047882, 16.390945, 23.613237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.741231, 16.815004, 23.786737>,  <12.689253, 16.110512, 23.613134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.741231, 16.815004, 23.786737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.350187, 16.760576, 23.850945>,  <12.115561, 16.727921, 23.889469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.350187, 16.760576, 23.850945>,  <12.741231, 16.815004, 23.786737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.350187, 16.760576, 23.850945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023379, 0.687854, 0.725473,
		-0.209127, 0.712982, -0.669271,
		-0.977609, -0.136069, 0.160518,
		12.056905, 16.719755, 23.899099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.461171, 17.522127, 23.919466>,  <12.741231, 16.815004, 23.786737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.461171, 17.522127, 23.919466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.202407, 17.255009, 24.066736>,  <12.047148, 17.094738, 24.155098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.202407, 17.255009, 24.066736>,  <12.461171, 17.522127, 23.919466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.202407, 17.255009, 24.066736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121361, 0.566820, 0.814854,
		-0.752846, 0.482456, -0.447727,
		-0.646912, -0.667796, 0.368177,
		12.008333, 17.054670, 24.177189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.970966, 17.870325, 24.414545>,  <12.461171, 17.522127, 23.919466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.970966, 17.870325, 24.414545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.948817, 17.484390, 24.517326>,  <11.935528, 17.252829, 24.578995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.948817, 17.484390, 24.517326>,  <11.970966, 17.870325, 24.414545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.948817, 17.484390, 24.517326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033637, 0.259003, 0.965291,
		-0.997899, 0.044808, -0.046795,
		-0.055373, -0.964837, 0.256952,
		11.932205, 17.194939, 24.594412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.418018, 17.773426, 25.007854>,  <11.970966, 17.870325, 24.414545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.418018, 17.773426, 25.007854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.650198, 17.448729, 25.033621>,  <11.789506, 17.253910, 25.049080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.650198, 17.448729, 25.033621>,  <11.418018, 17.773426, 25.007854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.650198, 17.448729, 25.033621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031698, 0.101570, 0.994323,
		-0.813679, -0.575113, 0.084687,
		0.580449, -0.811745, 0.064415,
		11.824333, 17.205206, 25.052946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.048046, 17.440132, 25.590481>,  <11.418018, 17.773426, 25.007854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.048046, 17.440132, 25.590481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.412438, 17.282726, 25.541069>,  <11.631074, 17.188284, 25.511421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.412438, 17.282726, 25.541069>,  <11.048046, 17.440132, 25.590481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.412438, 17.282726, 25.541069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201098, 0.162286, 0.966034,
		-0.360100, -0.904881, 0.226975,
		0.910981, -0.393514, -0.123531,
		11.685733, 17.164673, 25.504009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.084846, 17.144697, 26.232859>,  <11.048046, 17.440132, 25.590481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.084846, 17.144697, 26.232859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.454353, 17.178932, 26.083553>,  <11.676058, 17.199472, 25.993971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.454353, 17.178932, 26.083553>,  <11.084846, 17.144697, 26.232859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.454353, 17.178932, 26.083553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367876, 0.072431, 0.927050,
		0.106384, -0.993694, 0.035423,
		0.923770, 0.085592, -0.373261,
		11.731484, 17.204609, 25.971575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.534065, 16.863008, 26.812571>,  <11.084846, 17.144697, 26.232859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.534065, 16.863008, 26.812571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.769456, 17.073664, 26.567183>,  <11.910690, 17.200058, 26.419950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.769456, 17.073664, 26.567183>,  <11.534065, 16.863008, 26.812571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.769456, 17.073664, 26.567183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476489, 0.387090, 0.789379,
		0.653187, -0.756843, -0.023145,
		0.588477, 0.526640, -0.613470,
		11.945999, 17.231655, 26.383142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.262645, 16.778610, 27.203218>,  <11.534065, 16.863008, 26.812571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.262645, 16.778610, 27.203218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.286250, 17.085888, 26.948223>,  <12.300413, 17.270254, 26.795225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.286250, 17.085888, 26.948223>,  <12.262645, 16.778610, 27.203218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.286250, 17.085888, 26.948223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377963, 0.573865, 0.726514,
		0.923938, -0.283821, -0.256484,
		0.059013, 0.768195, -0.637490,
		12.303954, 17.316347, 26.756977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.978359, 17.009638, 27.079517>,  <12.262645, 16.778610, 27.203218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.978359, 17.009638, 27.079517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.733826, 17.320253, 27.018513>,  <12.587106, 17.506622, 26.981909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.733826, 17.320253, 27.018513>,  <12.978359, 17.009638, 27.079517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.733826, 17.320253, 27.018513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524212, 0.541736, 0.657057,
		0.592851, 0.321732, -0.738252,
		-0.611334, 0.776538, -0.152513,
		12.550426, 17.553215, 26.972759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.450392, 17.604769, 26.922342>,  <12.978359, 17.009638, 27.079517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.450392, 17.604769, 26.922342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.100836, 17.764107, 27.033796>,  <12.891102, 17.859709, 27.100668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.100836, 17.764107, 27.033796>,  <13.450392, 17.604769, 26.922342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.100836, 17.764107, 27.033796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484678, 0.669805, 0.562537,
		0.037452, 0.626644, -0.778405,
		-0.873890, 0.398344, 0.278636,
		12.838669, 17.883610, 27.117388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.563426, 18.276638, 26.879656>,  <13.450392, 17.604769, 26.922342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.563426, 18.276638, 26.879656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.234006, 18.257942, 27.105782>,  <13.036354, 18.246725, 27.241457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.234006, 18.257942, 27.105782>,  <13.563426, 18.276638, 26.879656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.234006, 18.257942, 27.105782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411182, 0.637350, 0.651701,
		-0.390762, 0.769156, -0.505672,
		-0.823550, -0.046737, 0.565315,
		12.986941, 18.243921, 27.275375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.494162, 19.028322, 27.191614>,  <13.563426, 18.276638, 26.879656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.494162, 19.028322, 27.191614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.260645, 18.773405, 27.392830>,  <13.120535, 18.620455, 27.513559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.260645, 18.773405, 27.392830>,  <13.494162, 19.028322, 27.191614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.260645, 18.773405, 27.392830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128283, 0.539392, 0.832226,
		-0.801706, 0.550377, -0.233139,
		-0.583791, -0.637293, 0.503037,
		13.085507, 18.582218, 27.543741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.190748, 19.442982, 27.660305>,  <13.494162, 19.028322, 27.191614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.190748, 19.442982, 27.660305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.139250, 19.077417, 27.814287>,  <13.108351, 18.858078, 27.906677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.139250, 19.077417, 27.814287>,  <13.190748, 19.442982, 27.660305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.139250, 19.077417, 27.814287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311051, 0.331381, 0.890749,
		-0.941632, 0.234421, 0.241609,
		-0.128746, -0.913911, 0.384956,
		13.100626, 18.803244, 27.929773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.649334, 19.424805, 28.149137>,  <13.190748, 19.442982, 27.660305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.649334, 19.424805, 28.149137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.898349, 19.123819, 28.235159>,  <13.047758, 18.943228, 28.286772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.898349, 19.123819, 28.235159>,  <12.649334, 19.424805, 28.149137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.898349, 19.123819, 28.235159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246590, 0.449407, 0.858619,
		-0.742726, -0.481491, 0.465322,
		0.622537, -0.752462, 0.215056,
		13.085110, 18.898081, 28.299675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.563993, 19.289391, 28.822498>,  <12.649334, 19.424805, 28.149137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.563993, 19.289391, 28.822498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.921796, 19.123400, 28.755983>,  <13.136477, 19.023806, 28.716074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.921796, 19.123400, 28.755983>,  <12.563993, 19.289391, 28.822498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.921796, 19.123400, 28.755983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319283, 0.332657, 0.887354,
		-0.312916, -0.846837, 0.430059,
		0.894506, -0.414978, -0.166287,
		13.190147, 18.998907, 28.706097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.739408, 18.882332, 29.328220>,  <12.563993, 19.289391, 28.822498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.739408, 18.882332, 29.328220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.105183, 18.975643, 29.195925>,  <13.324647, 19.031630, 29.116547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.105183, 18.975643, 29.195925>,  <12.739408, 18.882332, 29.328220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.105183, 18.975643, 29.195925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240994, 0.342692, 0.908011,
		0.325156, -0.910025, 0.257153,
		0.914437, 0.233273, -0.330738,
		13.379513, 19.045628, 29.096703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.100930, 18.880816, 29.898258>,  <12.739408, 18.882332, 29.328220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.100930, 18.880816, 29.898258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.387312, 19.048645, 29.675056>,  <13.559141, 19.149342, 29.541136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.387312, 19.048645, 29.675056>,  <13.100930, 18.880816, 29.898258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.387312, 19.048645, 29.675056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386010, 0.428078, 0.817157,
		0.581725, -0.800442, 0.144526,
		0.715955, 0.419572, -0.558003,
		13.602098, 19.174517, 29.507656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.670547, 18.850245, 30.365969>,  <13.100930, 18.880816, 29.898258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.670547, 18.850245, 30.365969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.786436, 19.105461, 30.080603>,  <13.855969, 19.258591, 29.909382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.786436, 19.105461, 30.080603>,  <13.670547, 18.850245, 30.365969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.786436, 19.105461, 30.080603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611437, 0.450072, 0.650830,
		0.736346, -0.624769, -0.259727,
		0.289723, 0.638043, -0.713416,
		13.873353, 19.296873, 29.866577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.400926, 18.883829, 30.387550>,  <13.670547, 18.850245, 30.365969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.400926, 18.883829, 30.387550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.301118, 19.216335, 30.188858>,  <14.241234, 19.415838, 30.069643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.301118, 19.216335, 30.188858>,  <14.400926, 18.883829, 30.387550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.301118, 19.216335, 30.188858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562169, 0.542012, 0.624651,
		0.788483, -0.123385, -0.602553,
		-0.249518, 0.831264, -0.496730,
		14.226262, 19.465714, 30.039839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.085353, 19.158379, 30.144974>,  <14.400926, 18.883829, 30.387550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.085353, 19.158379, 30.144974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.793284, 19.429987, 30.175392>,  <14.618043, 19.592951, 30.193644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.793284, 19.429987, 30.175392>,  <15.085353, 19.158379, 30.144974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.793284, 19.429987, 30.175392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612057, 0.600543, 0.514523,
		0.303702, 0.422234, -0.854098,
		-0.730172, 0.679019, 0.076045,
		14.574233, 19.633692, 30.198206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.348810, 19.852741, 29.977617>,  <15.085353, 19.158379, 30.144974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.348810, 19.852741, 29.977617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.025060, 19.963236, 30.184925>,  <14.830810, 20.029531, 30.309309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.025060, 19.963236, 30.184925>,  <15.348810, 19.852741, 29.977617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.025060, 19.963236, 30.184925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585724, 0.444073, 0.678031,
		-0.042854, 0.852346, -0.521219,
		-0.809377, 0.276234, 0.518270,
		14.782247, 20.046106, 30.340406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.361908, 20.614836, 30.130651>,  <15.348810, 19.852741, 29.977617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.361908, 20.614836, 30.130651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.111911, 20.479979, 30.412279>,  <14.961912, 20.399063, 30.581257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.111911, 20.479979, 30.412279>,  <15.361908, 20.614836, 30.130651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.111911, 20.479979, 30.412279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597537, 0.373762, 0.709402,
		-0.502326, 0.864080, -0.032142,
		-0.624994, -0.337145, 0.704071,
		14.924413, 20.378836, 30.623501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.252159, 21.139315, 30.627781>,  <15.361908, 20.614836, 30.130651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.252159, 21.139315, 30.627781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.154176, 20.818714, 30.845987>,  <15.095386, 20.626354, 30.976912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.154176, 20.818714, 30.845987>,  <15.252159, 21.139315, 30.627781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.154176, 20.818714, 30.845987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436230, 0.411373, 0.800297,
		-0.865851, 0.434011, 0.248870,
		-0.244959, -0.801503, 0.545516,
		15.080688, 20.578262, 31.009642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.075692, 21.359861, 31.281267>,  <15.252159, 21.139315, 30.627781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.075692, 21.359861, 31.281267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.142486, 20.974823, 31.366615>,  <15.182562, 20.743799, 31.417824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.142486, 20.974823, 31.366615>,  <15.075692, 21.359861, 31.281267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.142486, 20.974823, 31.366615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521572, 0.269889, 0.809396,
		-0.836707, -0.023868, 0.547130,
		0.166983, -0.962596, 0.213369,
		15.192580, 20.686045, 31.430626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.937011, 21.283918, 32.059048>,  <15.075692, 21.359861, 31.281267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.937011, 21.283918, 32.059048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.152822, 20.958765, 31.971292>,  <15.282308, 20.763674, 31.918638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.152822, 20.958765, 31.971292>,  <14.937011, 21.283918, 32.059048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.152822, 20.958765, 31.971292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512924, 0.110687, 0.851268,
		-0.667698, -0.571812, 0.476666,
		0.539526, -0.812883, -0.219390,
		15.314679, 20.714899, 31.905476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.992726, 20.839674, 32.657597>,  <14.937011, 21.283918, 32.059048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.992726, 20.839674, 32.657597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.298801, 20.720688, 32.429211>,  <15.482447, 20.649296, 32.292179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.298801, 20.720688, 32.429211>,  <14.992726, 20.839674, 32.657597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.298801, 20.720688, 32.429211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568424, -0.104265, 0.816102,
		-0.302296, -0.949022, 0.089306,
		0.765187, -0.297468, -0.570966,
		15.528358, 20.631447, 32.257919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.118533, 20.236826, 33.261131>,  <14.992726, 20.839674, 32.657597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.118533, 20.236826, 33.261131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.319139, 20.127071, 33.589325>,  <15.439502, 20.061218, 33.786243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.319139, 20.127071, 33.589325>,  <15.118533, 20.236826, 33.261131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.319139, 20.127071, 33.589325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842459, 0.370662, -0.390988,
		-0.196842, 0.887312, 0.417050,
		0.501513, -0.274385, 0.820486,
		15.469592, 20.044756, 33.835472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.712463, 20.614937, 33.249928>,  <15.118533, 20.236826, 33.261131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.712463, 20.614937, 33.249928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.812100, 20.357910, 33.539772>,  <15.871882, 20.203695, 33.713680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.812100, 20.357910, 33.539772>,  <15.712463, 20.614937, 33.249928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.812100, 20.357910, 33.539772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952665, 0.297228, -0.063914,
		-0.174306, 0.706234, 0.686185,
		0.249092, -0.642564, 0.724613,
		15.886827, 20.165140, 33.757156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.235214, 20.967232, 33.642544>,  <15.712463, 20.614937, 33.249928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.235214, 20.967232, 33.642544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.260542, 20.569561, 33.677418>,  <16.275738, 20.330957, 33.698341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.260542, 20.569561, 33.677418>,  <16.235214, 20.967232, 33.642544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.260542, 20.569561, 33.677418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997829, 0.061480, -0.023607,
		0.018110, 0.088486, 0.995913,
		0.063318, -0.994178, 0.087180,
		16.279537, 20.271307, 33.703571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.781015, 20.860489, 34.001068>,  <16.235214, 20.967232, 33.642544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.781015, 20.860489, 34.001068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.746168, 20.487938, 33.859680>,  <16.725260, 20.264406, 33.774845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.746168, 20.487938, 33.859680>,  <16.781015, 20.860489, 34.001068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.746168, 20.487938, 33.859680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987541, -0.127418, 0.092343,
		-0.131045, -0.341025, 0.930875,
		-0.087119, -0.931379, -0.353474,
		16.720032, 20.208525, 33.753639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.931278, 20.309835, 34.496441>,  <16.781015, 20.860489, 34.001068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.931278, 20.309835, 34.496441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.020575, 20.251644, 34.110901>,  <17.074152, 20.216730, 33.879578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.020575, 20.251644, 34.110901>,  <16.931278, 20.309835, 34.496441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.020575, 20.251644, 34.110901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972475, -0.034476, 0.230442,
		-0.066753, -0.988761, 0.133775,
		0.223240, -0.145476, -0.963847,
		17.087547, 20.208002, 33.821747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.428091, 19.694057, 34.346725>,  <16.931278, 20.309835, 34.496441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.428091, 19.694057, 34.346725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.482868, 19.913559, 34.016850>,  <17.515734, 20.045259, 33.818924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.482868, 19.913559, 34.016850>,  <17.428091, 19.694057, 34.346725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.482868, 19.913559, 34.016850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990563, -0.071164, 0.117134,
		0.005590, -0.832949, -0.553322,
		0.136943, 0.548755, -0.824691,
		17.523951, 20.078186, 33.769444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751471, 19.283669, 33.961132>,  <17.428091, 19.694057, 34.346725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751471, 19.283669, 33.961132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.849976, 19.663233, 33.882217>,  <17.909079, 19.890972, 33.834869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.849976, 19.663233, 33.882217>,  <17.751471, 19.283669, 33.961132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.849976, 19.663233, 33.882217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953235, -0.200336, 0.226294,
		0.175209, -0.243787, -0.953871,
		0.246262, 0.948912, -0.197286,
		17.923855, 19.947906, 33.823032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.318209, 19.268749, 33.420597>,  <17.751471, 19.283669, 33.961132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.318209, 19.268749, 33.420597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.312290, 19.610146, 33.628956>,  <18.308739, 19.814983, 33.753971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.312290, 19.610146, 33.628956>,  <18.318209, 19.268749, 33.420597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.312290, 19.610146, 33.628956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981670, -0.086599, 0.169778,
		0.190013, 0.513861, -0.836565,
		-0.014796, 0.853491, 0.520897,
		18.307852, 19.866194, 33.785225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.933189, 19.247200, 32.718781>,  <18.318209, 19.268749, 33.420597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.933189, 19.247200, 32.718781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.696009, 19.221334, 33.039837>,  <17.553699, 19.205814, 33.232471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.696009, 19.221334, 33.039837>,  <17.933189, 19.247200, 32.718781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.696009, 19.221334, 33.039837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723205, -0.395553, -0.566138,
		0.354095, -0.916164, 0.187777,
		-0.592951, -0.064665, 0.802638,
		17.518124, 19.201935, 33.280628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.805471, 18.527515, 32.979084>,  <17.933189, 19.247200, 32.718781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.805471, 18.527515, 32.979084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.489647, 18.772211, 32.998550>,  <17.300152, 18.919029, 33.010231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.489647, 18.772211, 32.998550>,  <17.805471, 18.527515, 32.979084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.489647, 18.772211, 32.998550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489531, -0.580027, -0.651098,
		-0.370071, -0.537907, 0.757432,
		-0.789561, 0.611739, 0.048671,
		17.252779, 18.955732, 33.013153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.103113, 18.039982, 33.092243>,  <17.805471, 18.527515, 32.979084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.103113, 18.039982, 33.092243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.014751, 18.387384, 32.914749>,  <16.961735, 18.595825, 32.808254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.014751, 18.387384, 32.914749>,  <17.103113, 18.039982, 33.092243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.014751, 18.387384, 32.914749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473822, -0.493240, -0.729525,
		-0.852464, 0.049095, 0.520476,
		-0.220903, 0.868507, -0.443731,
		16.948481, 18.647936, 32.781631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.429018, 17.931921, 32.863243>,  <17.103113, 18.039982, 33.092243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.429018, 17.931921, 32.863243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.577459, 18.223434, 32.633057>,  <16.666523, 18.398342, 32.494946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.577459, 18.223434, 32.633057>,  <16.429018, 17.931921, 32.863243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.577459, 18.223434, 32.633057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465330, -0.390340, -0.794420,
		-0.803587, 0.562590, 0.194270,
		0.371101, 0.728785, -0.575462,
		16.688789, 18.442070, 32.460419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.869558, 18.062786, 32.469746>,  <16.429018, 17.931921, 32.863243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.869558, 18.062786, 32.469746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.159994, 18.233500, 32.254097>,  <16.334255, 18.335928, 32.124710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.159994, 18.233500, 32.254097>,  <15.869558, 18.062786, 32.469746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.159994, 18.233500, 32.254097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433838, -0.323942, -0.840741,
		-0.533460, 0.844343, -0.050055,
		0.726089, 0.426786, -0.539118,
		16.377821, 18.361536, 32.092361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.560838, 18.270519, 31.879143>,  <15.869558, 18.062786, 32.469746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.560838, 18.270519, 31.879143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.947428, 18.238626, 31.781515>,  <16.179382, 18.219490, 31.722939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.947428, 18.238626, 31.781515>,  <15.560838, 18.270519, 31.879143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.947428, 18.238626, 31.781515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255519, -0.392041, -0.883750,
		-0.025221, 0.916486, -0.399271,
		0.966475, -0.079732, -0.244067,
		16.237370, 18.214706, 31.708296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.596750, 18.409958, 31.201693>,  <15.560838, 18.270519, 31.879143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.596750, 18.409958, 31.201693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941262, 18.216581, 31.264277>,  <16.147970, 18.100555, 31.301826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941262, 18.216581, 31.264277>,  <15.596750, 18.409958, 31.201693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.941262, 18.216581, 31.264277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115182, -0.485647, -0.866534,
		0.494903, 0.728307, -0.473962,
		0.861281, -0.483442, 0.156460,
		16.199646, 18.071548, 31.311214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.746778, 18.162985, 30.575602>,  <15.596750, 18.409958, 31.201693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.746778, 18.162985, 30.575602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.034193, 17.970951, 30.776886>,  <16.206642, 17.855730, 30.897655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.034193, 17.970951, 30.776886>,  <15.746778, 18.162985, 30.575602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.034193, 17.970951, 30.776886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019154, -0.709601, -0.704344,
		0.695222, 0.515737, -0.500680,
		0.718540, -0.480086, 0.503209,
		16.249754, 17.826925, 30.927849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.259621, 17.967968, 30.047977>,  <15.746778, 18.162985, 30.575602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.259621, 17.967968, 30.047977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.353895, 17.714825, 30.342987>,  <16.410460, 17.562939, 30.519993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.353895, 17.714825, 30.342987>,  <16.259621, 17.967968, 30.047977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.353895, 17.714825, 30.342987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106829, -0.737432, -0.666919,
		0.965940, 0.235973, -0.106195,
		0.235687, -0.632859, 0.737524,
		16.424601, 17.524967, 30.564243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860586, 17.715206, 29.838362>,  <16.259621, 17.967968, 30.047977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860586, 17.715206, 29.838362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.728176, 17.439669, 30.096329>,  <16.648731, 17.274347, 30.251110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.728176, 17.439669, 30.096329>,  <16.860586, 17.715206, 29.838362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.728176, 17.439669, 30.096329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247171, -0.722884, -0.645248,
		0.910676, -0.054187, 0.409553,
		-0.331023, -0.688842, 0.644919,
		16.628868, 17.233017, 30.289804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451382, 17.225792, 29.999664>,  <16.860586, 17.715206, 29.838362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.451382, 17.225792, 29.999664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.096983, 17.044294, 30.037880>,  <16.884344, 16.935396, 30.060808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.096983, 17.044294, 30.037880>,  <17.451382, 17.225792, 29.999664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.096983, 17.044294, 30.037880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197547, -0.555762, -0.807529,
		0.419509, -0.696594, 0.582039,
		-0.885995, -0.453746, 0.095537,
		16.831184, 16.908171, 30.066542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545906, 16.502277, 29.953485>,  <17.451382, 17.225792, 29.999664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.545906, 16.502277, 29.953485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.150970, 16.520071, 29.892588>,  <16.914009, 16.530746, 29.856049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.150970, 16.520071, 29.892588>,  <17.545906, 16.502277, 29.953485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.150970, 16.520071, 29.892588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060173, -0.783051, -0.619040,
		-0.146753, -0.620365, 0.770462,
		-0.987342, 0.044485, -0.152244,
		16.854769, 16.533417, 29.846914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.342424, 15.832571, 29.968887>,  <17.545906, 16.502277, 29.953485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.342424, 15.832571, 29.968887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.045588, 16.031870, 29.789532>,  <16.867485, 16.151449, 29.681919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.045588, 16.031870, 29.789532>,  <17.342424, 15.832571, 29.968887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.045588, 16.031870, 29.789532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015220, -0.681291, -0.731855,
		-0.670109, -0.536290, 0.513174,
		-0.742107, 0.498232, -0.448377,
		16.822960, 16.181343, 29.655014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.881620, 15.360578, 29.718832>,  <17.342424, 15.832571, 29.968887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.881620, 15.360578, 29.718832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.805765, 15.693528, 29.510529>,  <16.760252, 15.893298, 29.385548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.805765, 15.693528, 29.510529>,  <16.881620, 15.360578, 29.718832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.805765, 15.693528, 29.510529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166909, -0.549992, -0.818322,
		-0.967564, -0.068265, 0.243230,
		-0.189637, 0.832376, -0.520758,
		16.748875, 15.943241, 29.354301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.422260, 15.131912, 29.250879>,  <16.881620, 15.360578, 29.718832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.422260, 15.131912, 29.250879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.505424, 15.492560, 29.099169>,  <16.555323, 15.708949, 29.008142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.505424, 15.492560, 29.099169>,  <16.422260, 15.131912, 29.250879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.505424, 15.492560, 29.099169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356353, -0.291285, -0.887787,
		-0.910926, 0.319737, 0.260734,
		0.207910, 0.901621, -0.379278,
		16.567797, 15.763047, 28.985386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.790548, 15.436579, 28.880508>,  <16.422260, 15.131912, 29.250879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.790548, 15.436579, 28.880508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.110033, 15.610175, 28.713795>,  <16.301723, 15.714334, 28.613766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.110033, 15.610175, 28.713795>,  <15.790548, 15.436579, 28.880508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.110033, 15.610175, 28.713795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419115, -0.095740, -0.902871,
		-0.431741, 0.895815, 0.105424,
		0.798713, 0.433992, -0.416784,
		16.349648, 15.740373, 28.588758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551334, 15.875590, 28.307125>,  <15.790548, 15.436579, 28.880508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.551334, 15.875590, 28.307125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941651, 15.852956, 28.222624>,  <16.175840, 15.839375, 28.171923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941651, 15.852956, 28.222624>,  <15.551334, 15.875590, 28.307125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.941651, 15.852956, 28.222624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216138, -0.102018, -0.971018,
		0.033395, 0.993172, -0.111779,
		0.975792, -0.056587, -0.211255,
		16.234388, 15.835979, 28.159246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.620363, 16.498409, 27.898838>,  <15.551334, 15.875590, 28.307125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.620363, 16.498409, 27.898838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.884642, 16.201269, 27.855661>,  <16.043209, 16.022985, 27.829756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.884642, 16.201269, 27.855661>,  <15.620363, 16.498409, 27.898838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.884642, 16.201269, 27.855661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211440, -0.046189, -0.976299,
		0.720259, 0.667862, -0.187585,
		0.660697, -0.742851, -0.107944,
		16.082851, 15.978414, 27.823278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.991846, 16.660076, 27.204094>,  <15.620363, 16.498409, 27.898838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.991846, 16.660076, 27.204094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.047886, 16.274866, 27.296141>,  <16.081511, 16.043739, 27.351368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.047886, 16.274866, 27.296141>,  <15.991846, 16.660076, 27.204094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.047886, 16.274866, 27.296141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121169, -0.247335, -0.961324,
		0.982695, 0.106799, -0.151340,
		0.140101, -0.963026, 0.230115,
		16.089916, 15.985958, 27.365175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263504, 16.448172, 26.562325>,  <15.991846, 16.660076, 27.204094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.263504, 16.448172, 26.562325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.149628, 16.109438, 26.742023>,  <16.081301, 15.906198, 26.849842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.149628, 16.109438, 26.742023>,  <16.263504, 16.448172, 26.562325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.149628, 16.109438, 26.742023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218087, -0.399135, -0.890578,
		0.933482, -0.351515, -0.071053,
		-0.284692, -0.846835, 0.449246,
		16.064220, 15.855388, 26.876797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.561689, 15.878711, 26.155405>,  <16.263504, 16.448172, 26.562325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.561689, 15.878711, 26.155405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.267447, 15.725216, 26.378700>,  <16.090900, 15.633119, 26.512676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.267447, 15.725216, 26.378700>,  <16.561689, 15.878711, 26.155405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.267447, 15.725216, 26.378700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222566, -0.641417, -0.734200,
		0.639802, -0.664327, 0.386424,
		-0.735607, -0.383738, 0.558236,
		16.046764, 15.610095, 26.546171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.517401, 15.078203, 25.945047>,  <16.561689, 15.878711, 26.155405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.517401, 15.078203, 25.945047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.172174, 15.178604, 26.120371>,  <15.965038, 15.238845, 26.225565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.172174, 15.178604, 26.120371>,  <16.517401, 15.078203, 25.945047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.172174, 15.178604, 26.120371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502378, -0.516425, -0.693486,
		0.052288, -0.818721, 0.571806,
		-0.863066, 0.251001, 0.438310,
		15.913255, 15.253904, 26.251863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.199303, 14.491962, 26.029797>,  <16.517401, 15.078203, 25.945047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.199303, 14.491962, 26.029797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.906725, 14.762807, 26.062069>,  <15.731178, 14.925313, 26.081432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.906725, 14.762807, 26.062069>,  <16.199303, 14.491962, 26.029797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.906725, 14.762807, 26.062069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525945, -0.484888, -0.698760,
		-0.434014, -0.553540, 0.710792,
		-0.731446, 0.677109, 0.080683,
		15.687291, 14.965940, 26.086273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.493400, 14.117961, 26.001040>,  <16.199303, 14.491962, 26.029797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.493400, 14.117961, 26.001040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.440600, 14.505173, 25.915718>,  <15.408921, 14.737499, 25.864525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.440600, 14.505173, 25.915718>,  <15.493400, 14.117961, 26.001040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.440600, 14.505173, 25.915718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415558, -0.249402, -0.874706,
		-0.899938, -0.026819, 0.435192,
		-0.131997, 0.968028, -0.213301,
		15.401001, 14.795581, 25.851728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.794851, 14.159679, 25.833651>,  <15.493400, 14.117961, 26.001040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.794851, 14.159679, 25.833651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.965091, 14.476900, 25.659323>,  <15.067234, 14.667233, 25.554726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.965091, 14.476900, 25.659323>,  <14.794851, 14.159679, 25.833651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.965091, 14.476900, 25.659323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400277, -0.266949, -0.876651,
		-0.811570, 0.547548, 0.203827,
		0.425598, 0.793051, -0.435818,
		15.092770, 14.714815, 25.528578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.202738, 14.570469, 25.617987>,  <14.794851, 14.159679, 25.833651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.202738, 14.570469, 25.617987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.510859, 14.701770, 25.399307>,  <14.695732, 14.780550, 25.268099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.510859, 14.701770, 25.399307>,  <14.202738, 14.570469, 25.617987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.510859, 14.701770, 25.399307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552285, -0.085147, -0.829296,
		-0.318768, 0.940745, 0.115700,
		0.770304, 0.328252, -0.546701,
		14.741951, 14.800245, 25.235296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.935042, 15.030484, 25.050488>,  <14.202738, 14.570469, 25.617987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.935042, 15.030484, 25.050488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299848, 14.917509, 24.931517>,  <14.518730, 14.849724, 24.860134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.299848, 14.917509, 24.931517>,  <13.935042, 15.030484, 25.050488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.299848, 14.917509, 24.931517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377804, -0.296166, -0.877240,
		0.159679, 0.912422, -0.376814,
		0.912013, -0.282438, -0.297425,
		14.573451, 14.832778, 24.842289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.114951, 15.443434, 24.543560>,  <13.935042, 15.030484, 25.050488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.114951, 15.443434, 24.543560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.345207, 15.122174, 24.482122>,  <14.483360, 14.929419, 24.445259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.345207, 15.122174, 24.482122>,  <14.114951, 15.443434, 24.543560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.345207, 15.122174, 24.482122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312486, -0.042486, -0.948972,
		0.755640, 0.594262, -0.275429,
		0.575640, -0.803149, -0.153594,
		14.517900, 14.881229, 24.436045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.447299, 15.442721, 23.920774>,  <14.114951, 15.443434, 24.543560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.447299, 15.442721, 23.920774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.564942, 15.064170, 23.974245>,  <14.635529, 14.837039, 24.006327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.564942, 15.064170, 23.974245>,  <14.447299, 15.442721, 23.920774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.564942, 15.064170, 23.974245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093142, -0.167575, -0.981449,
		0.951222, 0.276203, -0.137433,
		0.294109, -0.946378, 0.133675,
		14.653175, 14.780256, 24.014347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.935800, 15.382477, 23.462893>,  <14.447299, 15.442721, 23.920774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.935800, 15.382477, 23.462893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.801517, 15.011656, 23.529675>,  <14.720948, 14.789163, 23.569744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.801517, 15.011656, 23.529675>,  <14.935800, 15.382477, 23.462893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.801517, 15.011656, 23.529675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119244, -0.217640, -0.968718,
		0.934389, -0.305295, 0.183609,
		-0.335706, -0.927053, 0.166955,
		14.700806, 14.733540, 23.579762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281848, 14.956053, 22.931456>,  <14.935800, 15.382477, 23.462893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.281848, 14.956053, 22.931456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.983055, 14.721248, 23.056313>,  <14.803780, 14.580364, 23.131227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.983055, 14.721248, 23.056313>,  <15.281848, 14.956053, 22.931456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.983055, 14.721248, 23.056313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110116, -0.353777, -0.928825,
		0.655662, -0.728188, 0.199625,
		-0.746982, -0.587013, 0.312143,
		14.758961, 14.545144, 23.149956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.375862, 14.253054, 22.589849>,  <15.281848, 14.956053, 22.931456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.375862, 14.253054, 22.589849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.992188, 14.277922, 22.700191>,  <14.761983, 14.292843, 22.766397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.992188, 14.277922, 22.700191>,  <15.375862, 14.253054, 22.589849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.992188, 14.277922, 22.700191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282626, -0.179005, -0.942380,
		-0.009208, -0.981882, 0.189270,
		-0.959186, 0.062170, 0.275857,
		14.704432, 14.296573, 22.782948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.995661, 13.624834, 22.381752>,  <15.375862, 14.253054, 22.589849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.995661, 13.624834, 22.381752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.727851, 13.919818, 22.417278>,  <14.567164, 14.096808, 22.438595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.727851, 13.919818, 22.417278>,  <14.995661, 13.624834, 22.381752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.727851, 13.919818, 22.417278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446595, -0.304113, -0.841468,
		-0.593539, -0.603049, 0.532957,
		-0.669526, 0.737460, 0.088815,
		14.526993, 14.141056, 22.443922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.403326, 13.316635, 22.112841>,  <14.995661, 13.624834, 22.381752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.403326, 13.316635, 22.112841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.312507, 13.705308, 22.139027>,  <14.258016, 13.938512, 22.154737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.312507, 13.705308, 22.139027>,  <14.403326, 13.316635, 22.112841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.312507, 13.705308, 22.139027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668167, -0.106518, -0.736347,
		-0.708521, -0.210927, 0.673430,
		-0.227048, 0.971681, 0.065464,
		14.244392, 13.996812, 22.158667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.665169, 13.330011, 22.263491>,  <14.403326, 13.316635, 22.112841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.665169, 13.330011, 22.263491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.784443, 13.656990, 22.066364>,  <13.856008, 13.853177, 21.948090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.784443, 13.656990, 22.066364>,  <13.665169, 13.330011, 22.263491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.784443, 13.656990, 22.066364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596944, -0.243169, -0.764543,
		-0.744811, 0.522158, 0.415461,
		0.298185, 0.817447, -0.492814,
		13.873899, 13.902225, 21.918520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.163545, 13.379745, 21.812498>,  <13.665169, 13.330011, 22.263491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.163545, 13.379745, 21.812498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.402111, 13.659335, 21.654654>,  <13.545251, 13.827089, 21.559946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.402111, 13.659335, 21.654654>,  <13.163545, 13.379745, 21.812498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.402111, 13.659335, 21.654654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571537, 0.024621, -0.820207,
		-0.563590, 0.714720, 0.414176,
		0.596416, 0.698978, -0.394612,
		13.581036, 13.869028, 21.536270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.736863, 13.946263, 21.554750>,  <13.163545, 13.379745, 21.812498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.736863, 13.946263, 21.554750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.082138, 13.937189, 21.353001>,  <13.289303, 13.931745, 21.231951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.082138, 13.937189, 21.353001>,  <12.736863, 13.946263, 21.554750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.082138, 13.937189, 21.353001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504874, -0.032313, -0.862588,
		0.003270, 0.999220, -0.039345,
		0.863187, -0.022685, -0.504375,
		13.341094, 13.930384, 21.201689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.603444, 14.388845, 20.973301>,  <12.736863, 13.946263, 21.554750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.603444, 14.388845, 20.973301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.935237, 14.203675, 20.848299>,  <13.134313, 14.092573, 20.773298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.935237, 14.203675, 20.848299>,  <12.603444, 14.388845, 20.973301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.935237, 14.203675, 20.848299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361530, -0.018516, -0.932176,
		0.425743, 0.886203, -0.182721,
		0.829481, -0.462927, -0.312506,
		13.184081, 14.064797, 20.754547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.824750, 14.723788, 20.321976>,  <12.603444, 14.388845, 20.973301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.824750, 14.723788, 20.321976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.013374, 14.371883, 20.297821>,  <13.126549, 14.160740, 20.283329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.013374, 14.371883, 20.297821>,  <12.824750, 14.723788, 20.321976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.013374, 14.371883, 20.297821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525922, -0.225610, -0.820065,
		0.707839, 0.418469, -0.569076,
		0.471561, -0.879763, -0.060386,
		13.154842, 14.107954, 20.279705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.184428, 14.681284, 19.690020>,  <12.824750, 14.723788, 20.321976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.184428, 14.681284, 19.690020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.189794, 14.290863, 19.776867>,  <13.193013, 14.056610, 19.828976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.189794, 14.290863, 19.776867>,  <13.184428, 14.681284, 19.690020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.189794, 14.290863, 19.776867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393027, -0.204807, -0.896428,
		0.919429, -0.073309, -0.386362,
		0.013413, -0.976053, 0.217118,
		13.193817, 13.998047, 19.842003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.462535, 14.321413, 19.149296>,  <13.184428, 14.681284, 19.690020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.462535, 14.321413, 19.149296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.195605, 14.078513, 19.321774>,  <13.035447, 13.932774, 19.425261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.195605, 14.078513, 19.321774>,  <13.462535, 14.321413, 19.149296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.195605, 14.078513, 19.321774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385883, -0.213274, -0.897557,
		0.637003, -0.765351, -0.092004,
		-0.667324, -0.607249, 0.431192,
		12.995408, 13.896338, 19.451132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.553138, 13.610383, 19.026566>,  <13.462535, 14.321413, 19.149296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.553138, 13.610383, 19.026566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.161829, 13.603729, 19.109228>,  <12.927044, 13.599737, 19.158825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.161829, 13.603729, 19.109228>,  <13.553138, 13.610383, 19.026566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.161829, 13.603729, 19.109228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181331, -0.414579, -0.891764,
		0.100509, -0.909861, 0.402555,
		-0.978272, -0.016634, 0.206655,
		12.868347, 13.598740, 19.171225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.756927, 13.931880, 18.414326>,  <13.553138, 13.610383, 19.026566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.756927, 13.931880, 18.414326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.970011, 14.209181, 18.220163>,  <14.097861, 14.375561, 18.103666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.970011, 14.209181, 18.220163>,  <13.756927, 13.931880, 18.414326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.970011, 14.209181, 18.220163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572933, 0.126720, 0.809747,
		0.622869, -0.709467, -0.329681,
		0.532711, 0.693252, -0.485408,
		14.129825, 14.417156, 18.074541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.373289, 13.761367, 18.744530>,  <13.756927, 13.931880, 18.414326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.373289, 13.761367, 18.744530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.427117, 14.075586, 18.502934>,  <14.459414, 14.264118, 18.357975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.427117, 14.075586, 18.502934>,  <14.373289, 13.761367, 18.744530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.427117, 14.075586, 18.502934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779763, 0.292165, 0.553723,
		0.611441, -0.545484, -0.573226,
		0.134570, 0.785549, -0.603990,
		14.467488, 14.311251, 18.321737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.057143, 13.771006, 18.534117>,  <14.373289, 13.761367, 18.744530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.057143, 13.771006, 18.534117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.919414, 14.146180, 18.517544>,  <14.836776, 14.371284, 18.507601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.919414, 14.146180, 18.517544>,  <15.057143, 13.771006, 18.534117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.919414, 14.146180, 18.517544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748362, 0.300842, 0.591142,
		0.566918, 0.172539, -0.805503,
		-0.344324, 0.937936, -0.041431,
		14.816116, 14.427561, 18.505114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.678675, 14.149738, 18.406364>,  <15.057143, 13.771006, 18.534117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.678675, 14.149738, 18.406364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.410041, 14.415763, 18.537003>,  <15.248860, 14.575377, 18.615385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.410041, 14.415763, 18.537003>,  <15.678675, 14.149738, 18.406364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.410041, 14.415763, 18.537003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696233, 0.415676, 0.585212,
		0.253444, 0.620407, -0.742200,
		-0.671585, 0.665062, 0.326597,
		15.208566, 14.615282, 18.634981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.025492, 14.823520, 18.324924>,  <15.678675, 14.149738, 18.406364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.025492, 14.823520, 18.324924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.746830, 14.842662, 18.611248>,  <15.579633, 14.854147, 18.783043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.746830, 14.842662, 18.611248>,  <16.025492, 14.823520, 18.324924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.746830, 14.842662, 18.611248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680192, 0.361244, 0.637841,
		-0.228058, 0.931243, -0.284213,
		-0.696655, 0.047855, 0.715808,
		15.537833, 14.857018, 18.825991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.247650, 15.374378, 18.737730>,  <16.025492, 14.823520, 18.324924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.247650, 15.374378, 18.737730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.957884, 15.215968, 18.963432>,  <15.784024, 15.120922, 19.098854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.957884, 15.215968, 18.963432>,  <16.247650, 15.374378, 18.737730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.957884, 15.215968, 18.963432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428776, 0.382073, 0.818640,
		-0.539789, 0.834976, -0.106973,
		-0.724416, -0.396026, 0.564256,
		15.740559, 15.097160, 19.132710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.026550, 15.914453, 19.191149>,  <16.247650, 15.374378, 18.737730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.026550, 15.914453, 19.191149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.951598, 15.561875, 19.364561>,  <15.906627, 15.350329, 19.468609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.951598, 15.561875, 19.364561>,  <16.026550, 15.914453, 19.191149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.951598, 15.561875, 19.364561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478080, 0.303711, 0.824136,
		-0.858096, 0.361689, 0.364490,
		-0.187381, -0.881443, 0.433529,
		15.895384, 15.297442, 19.494619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.661606, 16.001186, 19.872662>,  <16.026550, 15.914453, 19.191149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.661606, 16.001186, 19.872662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.847993, 15.647283, 19.869104>,  <15.959826, 15.434941, 19.866970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.847993, 15.647283, 19.869104>,  <15.661606, 16.001186, 19.872662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.847993, 15.647283, 19.869104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403911, 0.203760, 0.891817,
		-0.787229, -0.419150, 0.452309,
		0.465967, -0.884757, -0.008894,
		15.987783, 15.381855, 19.866436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.678807, 15.861149, 20.586164>,  <15.661606, 16.001186, 19.872662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.678807, 15.861149, 20.586164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.942896, 15.596728, 20.443548>,  <16.101349, 15.438076, 20.357979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.942896, 15.596728, 20.443548>,  <15.678807, 15.861149, 20.586164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.942896, 15.596728, 20.443548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525915, 0.067983, 0.847816,
		-0.536211, -0.747255, 0.392540,
		0.660221, -0.661051, -0.356540,
		16.140963, 15.398413, 20.336586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732785, 15.436659, 21.114748>,  <15.678807, 15.861149, 20.586164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.732785, 15.436659, 21.114748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.056847, 15.345924, 20.898527>,  <16.251284, 15.291484, 20.768795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.056847, 15.345924, 20.898527>,  <15.732785, 15.436659, 21.114748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.056847, 15.345924, 20.898527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569818, 0.088150, 0.817029,
		-0.137683, -0.969935, 0.200671,
		0.810154, -0.226837, -0.540550,
		16.299892, 15.277873, 20.736362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.026396, 14.787345, 21.448597>,  <15.732785, 15.436659, 21.114748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.026396, 14.787345, 21.448597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.305389, 14.995814, 21.251867>,  <16.472786, 15.120896, 21.133829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.305389, 14.995814, 21.251867>,  <16.026396, 14.787345, 21.448597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.305389, 14.995814, 21.251867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603535, -0.057211, 0.795281,
		0.386341, -0.851531, -0.354450,
		0.697485, 0.521173, -0.491826,
		16.514635, 15.152166, 21.104319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.676506, 14.402575, 21.545660>,  <16.026396, 14.787345, 21.448597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.676506, 14.402575, 21.545660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.755449, 14.784093, 21.455042>,  <16.802814, 15.013004, 21.400671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.755449, 14.784093, 21.455042>,  <16.676506, 14.402575, 21.545660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.755449, 14.784093, 21.455042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668106, 0.038254, 0.743082,
		0.717415, -0.298008, -0.629688,
		0.197356, 0.953796, -0.226545,
		16.814655, 15.070231, 21.387079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.434986, 14.599764, 21.798151>,  <16.676506, 14.402575, 21.545660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.434986, 14.599764, 21.798151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.286310, 14.970213, 21.772402>,  <17.197105, 15.192482, 21.756952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.286310, 14.970213, 21.772402>,  <17.434986, 14.599764, 21.798151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.286310, 14.970213, 21.772402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681819, 0.319385, 0.658116,
		0.630056, 0.200723, -0.750160,
		-0.371689, 0.926123, -0.064374,
		17.174803, 15.248050, 21.753090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.006651, 15.097857, 21.797590>,  <17.434986, 14.599764, 21.798151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.006651, 15.097857, 21.797590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.689234, 15.294725, 21.940729>,  <17.498783, 15.412847, 22.026613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.689234, 15.294725, 21.940729>,  <18.006651, 15.097857, 21.797590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.689234, 15.294725, 21.940729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577788, 0.424923, 0.696851,
		0.190911, 0.759743, -0.621565,
		-0.793545, 0.492170, 0.357848,
		17.451170, 15.442376, 22.048084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.191633, 15.812141, 21.940210>,  <18.006651, 15.097857, 21.797590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.191633, 15.812141, 21.940210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.869093, 15.745496, 22.167204>,  <17.675570, 15.705508, 22.303400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.869093, 15.745496, 22.167204>,  <18.191633, 15.812141, 21.940210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.869093, 15.745496, 22.167204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421165, 0.511880, 0.748731,
		-0.415233, 0.842745, -0.342583,
		-0.806351, -0.166614, 0.567484,
		17.627188, 15.695512, 22.337450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.112913, 16.426903, 22.193148>,  <18.191633, 15.812141, 21.940210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.112913, 16.426903, 22.193148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.896509, 16.186428, 22.428394>,  <17.766666, 16.042143, 22.569542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.896509, 16.186428, 22.428394>,  <18.112913, 16.426903, 22.193148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.896509, 16.186428, 22.428394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390372, 0.439890, 0.808768,
		-0.744927, 0.667137, -0.003299,
		-0.541011, -0.601186, 0.588118,
		17.734205, 16.006073, 22.604830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.010712, 16.894840, 22.802036>,  <18.112913, 16.426903, 22.193148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.010712, 16.894840, 22.802036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.874428, 16.543043, 22.934946>,  <17.792658, 16.331964, 23.014692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.874428, 16.543043, 22.934946>,  <18.010712, 16.894840, 22.802036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.874428, 16.543043, 22.934946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203539, 0.276039, 0.939348,
		-0.917871, 0.387677, 0.084961,
		-0.340711, -0.879493, 0.332276,
		17.772215, 16.279196, 23.034628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660912, 17.139854, 23.338972>,  <18.010712, 16.894840, 22.802036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.660912, 17.139854, 23.338972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.717428, 16.756407, 23.437838>,  <17.751339, 16.526339, 23.497156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.717428, 16.756407, 23.437838>,  <17.660912, 17.139854, 23.338972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.717428, 16.756407, 23.437838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314436, 0.280196, 0.906984,
		-0.938705, -0.050432, 0.341013,
		0.141291, -0.958617, 0.247164,
		17.759815, 16.468822, 23.511986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.261805, 16.982912, 23.962700>,  <17.660912, 17.139854, 23.338972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.261805, 16.982912, 23.962700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.561035, 16.718378, 23.940714>,  <17.740574, 16.559658, 23.927523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.561035, 16.718378, 23.940714>,  <17.261805, 16.982912, 23.962700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.561035, 16.718378, 23.940714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080017, 0.007665, 0.996764,
		-0.658772, -0.750053, 0.058652,
		0.748076, -0.661333, -0.054967,
		17.785458, 16.519978, 23.924223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.103970, 16.632746, 24.524084>,  <17.261805, 16.982912, 23.962700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.103970, 16.632746, 24.524084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.484108, 16.534662, 24.447437>,  <17.712191, 16.475813, 24.401449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.484108, 16.534662, 24.447437>,  <17.103970, 16.632746, 24.524084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.484108, 16.534662, 24.447437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187435, -0.040517, 0.981441,
		-0.248420, -0.968623, 0.007455,
		0.950345, -0.245207, -0.191619,
		17.769211, 16.461100, 24.389952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.338634, 16.049021, 25.031185>,  <17.103970, 16.632746, 24.524084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.338634, 16.049021, 25.031185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.680277, 16.227671, 24.924583>,  <17.885263, 16.334862, 24.860622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.680277, 16.227671, 24.924583>,  <17.338634, 16.049021, 25.031185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.680277, 16.227671, 24.924583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312193, -0.030432, 0.949531,
		0.415976, -0.894203, -0.165426,
		0.854107, 0.446627, -0.266505,
		17.936510, 16.361658, 24.844631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.753656, 15.734311, 25.511463>,  <17.338634, 16.049021, 25.031185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.753656, 15.734311, 25.511463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.991138, 16.015856, 25.355467>,  <18.133627, 16.184782, 25.261869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.991138, 16.015856, 25.355467>,  <17.753656, 15.734311, 25.511463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.991138, 16.015856, 25.355467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319346, 0.238755, 0.917068,
		0.738603, -0.669009, -0.083026,
		0.593704, 0.703863, -0.389991,
		18.169250, 16.227015, 25.238470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.412123, 15.726706, 25.884098>,  <17.753656, 15.734311, 25.511463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.412123, 15.726706, 25.884098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.363415, 16.092855, 25.730600>,  <18.334190, 16.312546, 25.638502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.363415, 16.092855, 25.730600>,  <18.412123, 15.726706, 25.884098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.363415, 16.092855, 25.730600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328513, 0.402002, 0.854678,
		0.936617, -0.021989, -0.349665,
		-0.121772, 0.915375, -0.383745,
		18.326883, 16.367468, 25.615477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.853176, 16.036352, 26.268820>,  <18.412123, 15.726706, 25.884098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.853176, 16.036352, 26.268820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.628946, 16.332502, 26.120445>,  <18.494408, 16.510193, 26.031420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.628946, 16.332502, 26.120445>,  <18.853176, 16.036352, 26.268820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.628946, 16.332502, 26.120445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086064, 0.497599, 0.863127,
		0.823618, 0.451925, -0.342662,
		-0.560577, 0.740378, -0.370937,
		18.460773, 16.554615, 26.009165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.204462, 16.625883, 26.446815>,  <18.853176, 16.036352, 26.268820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.204462, 16.625883, 26.446815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.835480, 16.766642, 26.383266>,  <18.614090, 16.851097, 26.345137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.835480, 16.766642, 26.383266>,  <19.204462, 16.625883, 26.446815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.835480, 16.766642, 26.383266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035832, 0.487734, 0.872257,
		0.384432, 0.798927, -0.462523,
		-0.922458, 0.351897, -0.158873,
		18.558743, 16.872211, 26.335604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.286535, 17.355801, 26.674891>,  <19.204462, 16.625883, 26.446815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.286535, 17.355801, 26.674891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.895348, 17.273293, 26.687702>,  <18.660635, 17.223787, 26.695389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.895348, 17.273293, 26.687702>,  <19.286535, 17.355801, 26.674891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.895348, 17.273293, 26.687702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079508, 0.509966, 0.856512,
		-0.193006, 0.835098, -0.515132,
		-0.977971, -0.206269, 0.032030,
		18.601955, 17.211412, 26.697311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.949324, 18.001785, 26.783503>,  <19.286535, 17.355801, 26.674891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.949324, 18.001785, 26.783503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.710129, 17.710741, 26.917961>,  <18.566612, 17.536114, 26.998636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.710129, 17.710741, 26.917961>,  <18.949324, 18.001785, 26.783503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.710129, 17.710741, 26.917961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213348, 0.548762, 0.808296,
		-0.772590, 0.411634, -0.483387,
		-0.597986, -0.727611, 0.336147,
		18.530733, 17.492458, 27.018805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.350407, 18.368732, 26.901688>,  <18.949324, 18.001785, 26.783503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.350407, 18.368732, 26.901688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.307539, 18.050428, 27.140108>,  <18.281818, 17.859446, 27.283161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.307539, 18.050428, 27.140108>,  <18.350407, 18.368732, 26.901688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.307539, 18.050428, 27.140108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186067, 0.604964, 0.774207,
		-0.976675, -0.027935, -0.212898,
		-0.107168, -0.795762, 0.596052,
		18.275389, 17.811699, 27.318924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.732058, 18.547691, 27.272655>,  <18.350407, 18.368732, 26.901688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.732058, 18.547691, 27.272655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.920042, 18.270134, 27.490883>,  <18.032833, 18.103600, 27.621820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.920042, 18.270134, 27.490883>,  <17.732058, 18.547691, 27.272655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.920042, 18.270134, 27.490883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207892, 0.513679, 0.832415,
		-0.857857, -0.504622, 0.097154,
		0.469961, -0.693895, 0.545569,
		18.061029, 18.061966, 27.654554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.197084, 18.321323, 27.710863>,  <17.732058, 18.547691, 27.272655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.197084, 18.321323, 27.710863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.556986, 18.235229, 27.862717>,  <17.772926, 18.183573, 27.953829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.556986, 18.235229, 27.862717>,  <17.197084, 18.321323, 27.710863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.556986, 18.235229, 27.862717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166641, 0.634548, 0.754705,
		-0.403333, -0.742310, 0.535069,
		0.899752, -0.215233, 0.379633,
		17.826912, 18.170660, 27.976606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181831, 18.239714, 28.520468>,  <17.197084, 18.321323, 27.710863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181831, 18.239714, 28.520468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.552977, 18.351715, 28.421944>,  <17.775663, 18.418915, 28.362829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.552977, 18.351715, 28.421944>,  <17.181831, 18.239714, 28.520468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.552977, 18.351715, 28.421944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022195, 0.617858, 0.785976,
		0.372260, -0.734745, 0.567073,
		0.927863, 0.280001, -0.246312,
		17.831335, 18.435715, 28.348051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.576092, 18.274035, 29.228489>,  <17.181831, 18.239714, 28.520468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.576092, 18.274035, 29.228489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.759314, 18.493185, 28.948484>,  <17.869247, 18.624676, 28.780481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.759314, 18.493185, 28.948484>,  <17.576092, 18.274035, 29.228489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.759314, 18.493185, 28.948484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048794, 0.801791, 0.595610,
		0.887584, -0.238665, 0.393997,
		0.458054, 0.547879, -0.700011,
		17.896730, 18.657549, 28.738482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.275560, 18.555101, 29.556389>,  <17.576092, 18.274035, 29.228489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.275560, 18.555101, 29.556389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.121157, 18.765856, 29.253498>,  <18.028515, 18.892307, 29.071764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.121157, 18.765856, 29.253498>,  <18.275560, 18.555101, 29.556389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.121157, 18.765856, 29.253498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021116, 0.825676, 0.563749,
		0.922254, 0.201622, -0.329843,
		-0.386008, 0.526885, -0.757226,
		18.005354, 18.923922, 29.026331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.658596, 19.151199, 29.358038>,  <18.275560, 18.555101, 29.556389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.658596, 19.151199, 29.358038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.277060, 19.227051, 29.264893>,  <18.048138, 19.272562, 29.209005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.277060, 19.227051, 29.264893>,  <18.658596, 19.151199, 29.358038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.277060, 19.227051, 29.264893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034973, 0.840279, 0.541025,
		0.298263, 0.507909, -0.808126,
		-0.953843, 0.189630, -0.232861,
		17.990906, 19.283939, 29.195034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.627583, 19.782421, 29.017469>,  <18.658596, 19.151199, 29.358038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.627583, 19.782421, 29.017469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.308001, 19.748030, 29.255556>,  <18.116251, 19.727396, 29.398407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.308001, 19.748030, 29.255556>,  <18.627583, 19.782421, 29.017469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.308001, 19.748030, 29.255556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343916, 0.746602, 0.569479,
		-0.493351, 0.659692, -0.566932,
		-0.798953, -0.085976, 0.595216,
		18.068314, 19.722237, 29.434120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.524973, 20.528326, 29.205744>,  <18.627583, 19.782421, 29.017469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.524973, 20.528326, 29.205744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.267956, 20.320049, 29.430607>,  <18.113747, 20.195084, 29.565525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.267956, 20.320049, 29.430607>,  <18.524973, 20.528326, 29.205744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.267956, 20.320049, 29.430607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017879, 0.723258, 0.690346,
		-0.766042, 0.453627, -0.455415,
		-0.642542, -0.520692, 0.562157,
		18.075193, 20.163841, 29.599255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.880716, 20.887114, 29.404331>,  <18.524973, 20.528326, 29.205744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.880716, 20.887114, 29.404331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.966507, 20.643192, 29.709524>,  <18.017981, 20.496840, 29.892639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.966507, 20.643192, 29.709524>,  <17.880716, 20.887114, 29.404331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.966507, 20.643192, 29.709524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193796, 0.739062, 0.645159,
		-0.957310, -0.286235, 0.040335,
		0.214477, -0.609801, 0.762982,
		18.030849, 20.460253, 29.938419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.478481, 21.243021, 29.843824>,  <17.880716, 20.887114, 29.404331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.478481, 21.243021, 29.843824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.221476, 21.541035, 29.915487>,  <17.067272, 21.719843, 29.958485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.221476, 21.541035, 29.915487>,  <17.478481, 21.243021, 29.843824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.221476, 21.541035, 29.915487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037082, 0.263760, -0.963875,
		-0.765375, -0.612661, -0.197097,
		-0.642515, 0.745035, 0.179157,
		17.028721, 21.764545, 29.969234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.932638, 21.212690, 29.222734>,  <17.478481, 21.243021, 29.843824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.932638, 21.212690, 29.222734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.990873, 21.582464, 29.363716>,  <17.025814, 21.804329, 29.448305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.990873, 21.582464, 29.363716>,  <16.932638, 21.212690, 29.222734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.990873, 21.582464, 29.363716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215307, 0.318108, -0.923282,
		-0.965633, 0.210304, -0.152725,
		0.145587, 0.924435, 0.352456,
		17.034550, 21.859795, 29.469452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.490011, 21.781662, 28.875446>,  <16.932638, 21.212690, 29.222734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.490011, 21.781662, 28.875446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.820482, 21.946278, 29.029364>,  <17.018764, 22.045048, 29.121714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.820482, 21.946278, 29.029364>,  <16.490011, 21.781662, 28.875446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.820482, 21.946278, 29.029364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319618, 0.220092, -0.921631,
		-0.463978, 0.884417, 0.050299,
		0.826177, 0.411540, 0.384794,
		17.068335, 22.069740, 29.144802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.518707, 22.321461, 28.427607>,  <16.490011, 21.781662, 28.875446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.518707, 22.321461, 28.427607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.874325, 22.308367, 28.610268>,  <17.087694, 22.300510, 28.719864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.874325, 22.308367, 28.610268>,  <16.518707, 22.321461, 28.427607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.874325, 22.308367, 28.610268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454768, -0.051968, -0.889093,
		0.052835, 0.998112, -0.031315,
		0.889042, -0.032734, 0.456655,
		17.141037, 22.298546, 28.747265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.972319, 22.862637, 28.136192>,  <16.518707, 22.321461, 28.427607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.972319, 22.862637, 28.136192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.191671, 22.557283, 28.272736>,  <17.323282, 22.374071, 28.354662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.191671, 22.557283, 28.272736>,  <16.972319, 22.862637, 28.136192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.191671, 22.557283, 28.272736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463173, -0.062593, -0.884055,
		0.696239, 0.642906, 0.319253,
		0.548381, -0.763383, 0.341356,
		17.356186, 22.328268, 28.375143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.729408, 22.951393, 27.878544>,  <16.972319, 22.862637, 28.136192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.729408, 22.951393, 27.878544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.642086, 22.569693, 27.960274>,  <17.589693, 22.340672, 28.009312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.642086, 22.569693, 27.960274>,  <17.729408, 22.951393, 27.878544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.642086, 22.569693, 27.960274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413127, -0.280054, -0.866543,
		0.884121, -0.104758, 0.455364,
		-0.218304, -0.954251, 0.204323,
		17.576595, 22.283417, 28.021570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.390327, 22.605619, 27.706730>,  <17.729408, 22.951393, 27.878544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.390327, 22.605619, 27.706730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.090097, 22.341665, 27.692957>,  <17.909960, 22.183292, 27.684692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.090097, 22.341665, 27.692957>,  <18.390327, 22.605619, 27.706730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.090097, 22.341665, 27.692957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276209, -0.265978, -0.923560,
		0.600287, -0.702712, 0.381904,
		-0.750575, -0.659887, -0.034432,
		17.864925, 22.143700, 27.682627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.614164, 21.971434, 27.269138>,  <18.390327, 22.605619, 27.706730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.614164, 21.971434, 27.269138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.215643, 21.938313, 27.278326>,  <17.976530, 21.918440, 27.283838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.215643, 21.938313, 27.278326>,  <18.614164, 21.971434, 27.269138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.215643, 21.938313, 27.278326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003162, -0.302459, -0.953157,
		0.085870, -0.949559, 0.301602,
		-0.996301, -0.082801, 0.022969,
		17.916752, 21.913473, 27.285217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.545362, 21.558990, 26.754013>,  <18.614164, 21.971434, 27.269138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.545362, 21.558990, 26.754013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158728, 21.637918, 26.819468>,  <17.926746, 21.685276, 26.858740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.158728, 21.637918, 26.819468>,  <18.545362, 21.558990, 26.754013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.158728, 21.637918, 26.819468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241141, -0.483343, -0.841565,
		-0.086966, -0.852904, 0.514774,
		-0.966586, 0.197321, 0.163635,
		17.868752, 21.697115, 26.868559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.135614, 20.900126, 26.780334>,  <18.545362, 21.558990, 26.754013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.135614, 20.900126, 26.780334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.898361, 21.197962, 26.657841>,  <17.756010, 21.376663, 26.584345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.898361, 21.197962, 26.657841>,  <18.135614, 20.900126, 26.780334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.898361, 21.197962, 26.657841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432881, -0.615646, -0.658479,
		-0.678830, -0.258000, 0.687478,
		-0.593130, 0.744591, -0.306236,
		17.720423, 21.421339, 26.565969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451115, 20.604898, 26.737778>,  <18.135614, 20.900126, 26.780334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.451115, 20.604898, 26.737778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.438257, 20.934475, 26.511473>,  <17.430544, 21.132221, 26.375690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.438257, 20.934475, 26.511473>,  <17.451115, 20.604898, 26.737778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.438257, 20.934475, 26.511473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376700, -0.534298, -0.756718,
		-0.925777, 0.188801, 0.327552,
		-0.032141, 0.823941, -0.565763,
		17.428616, 21.181658, 26.341743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749475, 20.665432, 26.525782>,  <17.451115, 20.604898, 26.737778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749475, 20.665432, 26.525782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.986059, 20.873238, 26.279114>,  <17.128010, 20.997921, 26.131113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.986059, 20.873238, 26.279114>,  <16.749475, 20.665432, 26.525782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.986059, 20.873238, 26.279114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553817, -0.294123, -0.778960,
		-0.586059, 0.802244, 0.113756,
		0.591457, 0.519516, -0.616670,
		17.163496, 21.029093, 26.094112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.312342, 21.006563, 26.146368>,  <16.749475, 20.665432, 26.525782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.312342, 21.006563, 26.146368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.650127, 20.971745, 25.934973>,  <16.852798, 20.950853, 25.808136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.650127, 20.971745, 25.934973>,  <16.312342, 21.006563, 26.146368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.650127, 20.971745, 25.934973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531920, -0.251935, -0.808449,
		-0.062771, 0.963821, -0.259054,
		0.844465, -0.087049, -0.528490,
		16.903467, 20.945629, 25.776426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.173750, 21.198988, 25.411179>,  <16.312342, 21.006563, 26.146368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.173750, 21.198988, 25.411179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.519814, 21.000849, 25.379869>,  <16.727451, 20.881966, 25.361084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.519814, 21.000849, 25.379869>,  <16.173750, 21.198988, 25.411179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.519814, 21.000849, 25.379869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311689, -0.408849, -0.857725,
		0.392872, 0.766467, -0.508115,
		0.865160, -0.495350, -0.078274,
		16.779362, 20.852243, 25.356388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.252356, 21.173378, 24.714056>,  <16.173750, 21.198988, 25.411179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.252356, 21.173378, 24.714056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508749, 20.896198, 24.846094>,  <16.662586, 20.729891, 24.925316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508749, 20.896198, 24.846094>,  <16.252356, 21.173378, 24.714056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.508749, 20.896198, 24.846094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211380, -0.572795, -0.791975,
		0.737873, 0.437869, -0.513628,
		0.640985, -0.692948, 0.330093,
		16.701044, 20.688314, 24.945122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650227, 21.089251, 24.185377>,  <16.252356, 21.173378, 24.714056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650227, 21.089251, 24.185377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.730177, 20.768902, 24.411173>,  <16.778147, 20.576693, 24.546650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.730177, 20.768902, 24.411173>,  <16.650227, 21.089251, 24.185377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.730177, 20.768902, 24.411173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171598, -0.538600, -0.824902,
		0.964678, 0.261745, 0.029774,
		0.199878, -0.800874, 0.564491,
		16.790140, 20.528639, 24.580521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.287607, 20.933609, 23.933044>,  <16.650227, 21.089251, 24.185377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.287607, 20.933609, 23.933044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.072960, 20.631340, 24.083244>,  <16.944172, 20.449980, 24.173365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.072960, 20.631340, 24.083244>,  <17.287607, 20.933609, 23.933044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.072960, 20.631340, 24.083244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139380, -0.518265, -0.843786,
		0.832234, -0.400454, 0.383436,
		-0.536619, -0.755671, 0.375502,
		16.911974, 20.404638, 24.195894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.627577, 20.300518, 23.599123>,  <17.287607, 20.933609, 23.933044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.627577, 20.300518, 23.599123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.274879, 20.167505, 23.732960>,  <17.063261, 20.087698, 23.813263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.274879, 20.167505, 23.732960>,  <17.627577, 20.300518, 23.599123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.274879, 20.167505, 23.732960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059068, -0.625875, -0.777683,
		0.468019, -0.705480, 0.532218,
		-0.881742, -0.332534, 0.334593,
		17.010357, 20.067745, 23.833338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.730547, 19.604115, 23.394541>,  <17.627577, 20.300518, 23.599123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.730547, 19.604115, 23.394541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.338976, 19.655575, 23.457972>,  <17.104033, 19.686451, 23.496031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.338976, 19.655575, 23.457972>,  <17.730547, 19.604115, 23.394541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.338976, 19.655575, 23.457972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195578, -0.813995, -0.546956,
		0.058716, -0.566446, 0.822005,
		-0.978929, 0.128651, 0.158578,
		17.045298, 19.694170, 23.505545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.460207, 18.874146, 23.404293>,  <17.730547, 19.604115, 23.394541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.460207, 18.874146, 23.404293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.143492, 19.108086, 23.333847>,  <16.953463, 19.248449, 23.291578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.143492, 19.108086, 23.333847>,  <17.460207, 18.874146, 23.404293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.143492, 19.108086, 23.333847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405733, -0.719158, -0.564085,
		-0.456561, -0.375181, 0.806716,
		-0.791790, 0.584851, -0.176116,
		16.905954, 19.283541, 23.281012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.766804, 18.562965, 23.569910>,  <17.460207, 18.874146, 23.404293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.766804, 18.562965, 23.569910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.740374, 18.815645, 23.260952>,  <16.724516, 18.967253, 23.075577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.740374, 18.815645, 23.260952>,  <16.766804, 18.562965, 23.569910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.740374, 18.815645, 23.260952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410116, -0.722872, -0.556112,
		-0.909637, 0.280026, 0.306833,
		-0.066075, 0.631697, -0.772394,
		16.720551, 19.005154, 23.029234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.325840, 18.227795, 23.205681>,  <16.766804, 18.562965, 23.569910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.325840, 18.227795, 23.205681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.428276, 18.530632, 22.965271>,  <16.489738, 18.712334, 22.821026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.428276, 18.530632, 22.965271>,  <16.325840, 18.227795, 23.205681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.428276, 18.530632, 22.965271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058877, -0.608386, -0.791454,
		-0.964858, 0.238071, -0.111226,
		0.256091, 0.757092, -0.601023,
		16.505104, 18.757759, 22.784964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.943509, 18.109825, 22.584261>,  <16.325840, 18.227795, 23.205681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.943509, 18.109825, 22.584261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.233421, 18.370430, 22.494617>,  <16.407368, 18.526793, 22.440832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.233421, 18.370430, 22.494617>,  <15.943509, 18.109825, 22.584261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.233421, 18.370430, 22.494617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124176, -0.443475, -0.887643,
		-0.677698, 0.615516, -0.402324,
		0.724780, 0.651513, -0.224109,
		16.450855, 18.565884, 22.427385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813026, 18.285173, 21.853817>,  <15.943509, 18.109825, 22.584261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.813026, 18.285173, 21.853817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.196445, 18.380110, 21.916878>,  <16.426497, 18.437071, 21.954714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.196445, 18.380110, 21.916878>,  <15.813026, 18.285173, 21.853817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.196445, 18.380110, 21.916878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264127, -0.532619, -0.804086,
		-0.106874, 0.812395, -0.573229,
		0.958548, 0.237341, 0.157652,
		16.484011, 18.451313, 21.964174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.954543, 18.623735, 21.313065>,  <15.813026, 18.285173, 21.853817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.954543, 18.623735, 21.313065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.293261, 18.466808, 21.456745>,  <16.496490, 18.372652, 21.542953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.293261, 18.466808, 21.456745>,  <15.954543, 18.623735, 21.313065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.293261, 18.466808, 21.456745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282068, -0.241336, -0.928544,
		0.450975, 0.887605, -0.093701,
		0.846793, -0.392320, 0.359202,
		16.547298, 18.349112, 21.564507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503805, 18.667614, 20.711359>,  <15.954543, 18.623735, 21.313065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.503805, 18.667614, 20.711359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.678463, 18.413424, 20.966078>,  <16.783258, 18.260910, 21.118910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.678463, 18.413424, 20.966078>,  <16.503805, 18.667614, 20.711359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.678463, 18.413424, 20.966078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517456, -0.401623, -0.755605,
		0.735921, 0.659446, 0.153465,
		0.436645, -0.635477, 0.636797,
		16.809456, 18.222780, 21.157116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160248, 18.781790, 20.643063>,  <16.503805, 18.667614, 20.711359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.160248, 18.781790, 20.643063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131397, 18.411081, 20.790518>,  <17.114086, 18.188656, 20.878990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131397, 18.411081, 20.790518>,  <17.160248, 18.781790, 20.643063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.131397, 18.411081, 20.790518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504382, -0.352749, -0.788142,
		0.860463, 0.129087, 0.492889,
		-0.072127, -0.926771, 0.368637,
		17.109758, 18.133051, 20.901110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.815319, 18.523211, 20.556013>,  <17.160248, 18.781790, 20.643063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.815319, 18.523211, 20.556013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.557386, 18.218742, 20.583767>,  <17.402628, 18.036062, 20.600418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.557386, 18.218742, 20.583767>,  <17.815319, 18.523211, 20.556013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.557386, 18.218742, 20.583767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398846, -0.412537, -0.818984,
		0.652010, -0.500432, 0.569606,
		-0.644829, -0.761171, 0.069383,
		17.363937, 17.990391, 20.604582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.207357, 17.920424, 20.338812>,  <17.815319, 18.523211, 20.556013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.207357, 17.920424, 20.338812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.820278, 17.836063, 20.283560>,  <17.588030, 17.785448, 20.250408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.820278, 17.836063, 20.283560>,  <18.207357, 17.920424, 20.338812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.820278, 17.836063, 20.283560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221117, -0.446818, -0.866869,
		0.121103, -0.869411, 0.479019,
		-0.967699, -0.210900, -0.138130,
		17.529968, 17.772793, 20.242121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190199, 17.180244, 20.108566>,  <18.207357, 17.920424, 20.338812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190199, 17.180244, 20.108566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.831692, 17.338192, 20.027786>,  <17.616587, 17.432961, 19.979319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.831692, 17.338192, 20.027786>,  <18.190199, 17.180244, 20.108566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.831692, 17.338192, 20.027786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032522, -0.395599, -0.917847,
		-0.442320, -0.829204, 0.341721,
		-0.896267, 0.394869, -0.201949,
		17.562811, 17.456652, 19.967201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.922808, 16.725590, 19.656202>,  <18.190199, 17.180244, 20.108566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.922808, 16.725590, 19.656202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.713528, 17.058214, 19.581617>,  <17.587959, 17.257790, 19.536867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.713528, 17.058214, 19.581617>,  <17.922808, 16.725590, 19.656202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.713528, 17.058214, 19.581617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085693, -0.269024, -0.959314,
		-0.847891, -0.485934, 0.212012,
		-0.523199, 0.831561, -0.186462,
		17.556568, 17.307682, 19.525679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.405024, 16.481651, 19.155809>,  <17.922808, 16.725590, 19.656202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.405024, 16.481651, 19.155809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.429066, 16.879805, 19.125891>,  <17.443491, 17.118698, 19.107939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.429066, 16.879805, 19.125891>,  <17.405024, 16.481651, 19.155809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.429066, 16.879805, 19.125891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162855, -0.064152, -0.984562,
		-0.984818, 0.071358, 0.158248,
		0.060105, 0.995386, -0.074799,
		17.447098, 17.178421, 19.103451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849592, 16.658598, 18.825958>,  <17.405024, 16.481651, 19.155809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.849592, 16.658598, 18.825958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.101973, 16.963326, 18.767260>,  <17.253401, 17.146162, 18.732040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.101973, 16.963326, 18.767260>,  <16.849592, 16.658598, 18.825958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.101973, 16.963326, 18.767260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225942, -0.000515, -0.974141,
		-0.742195, 0.647789, 0.171803,
		0.630949, 0.761820, -0.146745,
		17.291258, 17.191872, 18.723236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.574123, 16.933878, 18.234655>,  <16.849592, 16.658598, 18.825958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.574123, 16.933878, 18.234655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.923037, 17.126459, 18.268892>,  <17.132383, 17.242008, 18.289434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.923037, 17.126459, 18.268892>,  <16.574123, 16.933878, 18.234655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.923037, 17.126459, 18.268892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038724, 0.106474, -0.993561,
		-0.487468, 0.869980, 0.074231,
		0.872282, 0.481455, 0.085592,
		17.184721, 17.270895, 18.294569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.408434, 17.659294, 18.042252>,  <16.574123, 16.933878, 18.234655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.408434, 17.659294, 18.042252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.783365, 17.541727, 17.967390>,  <17.008324, 17.471186, 17.922474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.783365, 17.541727, 17.967390>,  <16.408434, 17.659294, 18.042252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.783365, 17.541727, 17.967390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123876, 0.220932, -0.967390,
		0.325682, 0.929947, 0.170676,
		0.937329, -0.293919, -0.187152,
		17.064564, 17.453552, 17.911245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.704502, 18.152481, 17.573757>,  <16.408434, 17.659294, 18.042252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.704502, 18.152481, 17.573757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.971045, 17.857513, 17.529610>,  <17.130970, 17.680532, 17.503120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.971045, 17.857513, 17.529610>,  <16.704502, 18.152481, 17.573757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.971045, 17.857513, 17.529610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131819, 0.029185, -0.990844,
		0.733890, 0.674802, -0.077758,
		0.666355, -0.737421, -0.110370,
		17.170952, 17.636288, 17.496498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059259, 18.325853, 16.932440>,  <16.704502, 18.152481, 17.573757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059259, 18.325853, 16.932440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.114340, 17.933598, 16.988131>,  <17.147388, 17.698244, 17.021545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.114340, 17.933598, 16.988131>,  <17.059259, 18.325853, 16.932440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.114340, 17.933598, 16.988131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245440, -0.169966, -0.954396,
		0.959582, 0.097249, -0.264093,
		0.137700, -0.980640, 0.139228,
		17.155649, 17.639406, 17.029900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.387180, 18.114256, 16.333277>,  <17.059259, 18.325853, 16.932440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.387180, 18.114256, 16.333277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.269039, 17.755199, 16.464125>,  <17.198154, 17.539766, 16.542633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.269039, 17.755199, 16.464125>,  <17.387180, 18.114256, 16.333277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.269039, 17.755199, 16.464125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258898, -0.254383, -0.931805,
		0.919641, -0.359901, -0.157265,
		-0.295352, -0.897641, 0.327119,
		17.180433, 17.485907, 16.562260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.700016, 17.595190, 15.890051>,  <17.387180, 18.114256, 16.333277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.700016, 17.595190, 15.890051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.380198, 17.434332, 16.068489>,  <17.188307, 17.337816, 16.175552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.380198, 17.434332, 16.068489>,  <17.700016, 17.595190, 15.890051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.380198, 17.434332, 16.068489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282839, -0.403118, -0.870343,
		0.529834, -0.822055, 0.208570,
		-0.799548, -0.402146, 0.446095,
		17.140333, 17.313688, 16.202318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.479494, 17.065695, 15.450843>,  <17.700016, 17.595190, 15.890051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.479494, 17.065695, 15.450843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.159063, 17.085388, 15.689456>,  <16.966805, 17.097204, 15.832623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.159063, 17.085388, 15.689456>,  <17.479494, 17.065695, 15.450843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.159063, 17.085388, 15.689456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500391, -0.601970, -0.622287,
		0.328457, -0.796999, 0.506861,
		-0.801077, 0.049234, 0.596533,
		16.918739, 17.100159, 15.868416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.454340, 16.428030, 15.561183>,  <17.479494, 17.065695, 15.450843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.454340, 16.428030, 15.561183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.117336, 16.641811, 15.588129>,  <16.915134, 16.770081, 15.604297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.117336, 16.641811, 15.588129>,  <17.454340, 16.428030, 15.561183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.117336, 16.641811, 15.588129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418922, -0.571440, -0.705663,
		-0.338650, -0.622748, 0.705337,
		-0.842508, 0.534454, 0.067365,
		16.864584, 16.802147, 15.608338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.944368, 16.038589, 15.634494>,  <17.454340, 16.428030, 15.561183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.944368, 16.038589, 15.634494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.760427, 16.361658, 15.486872>,  <16.650063, 16.555500, 15.398298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.760427, 16.361658, 15.486872>,  <16.944368, 16.038589, 15.634494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.760427, 16.361658, 15.486872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498384, -0.578719, -0.645521,
		-0.734949, -0.112912, 0.668656,
		-0.459851, 0.807673, -0.369056,
		16.622473, 16.603960, 15.376155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.190315, 15.974291, 15.717372>,  <16.944368, 16.038589, 15.634494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.190315, 15.974291, 15.717372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.268585, 16.202713, 15.398472>,  <16.315548, 16.339766, 15.207132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.268585, 16.202713, 15.398472>,  <16.190315, 15.974291, 15.717372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.268585, 16.202713, 15.398472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524351, -0.626072, -0.577139,
		-0.828714, 0.530970, 0.176926,
		0.195675, 0.571055, -0.797250,
		16.327288, 16.374029, 15.159297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.588585, 15.467779, 16.134981>,  <16.190315, 15.974291, 15.717372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.588585, 15.467779, 16.134981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.479582, 15.083481, 16.155787>,  <16.414179, 14.852901, 16.168270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.479582, 15.083481, 16.155787>,  <16.588585, 15.467779, 16.134981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.479582, 15.083481, 16.155787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361778, 0.052226, -0.930800,
		0.891546, -0.272468, -0.361809,
		-0.272509, -0.960746, 0.052011,
		16.397829, 14.795257, 16.171391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.975384, 15.245062, 15.670887>,  <16.588585, 15.467779, 16.134981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.975384, 15.245062, 15.670887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.630713, 15.045309, 15.706955>,  <16.423910, 14.925458, 15.728596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.630713, 15.045309, 15.706955>,  <16.975384, 15.245062, 15.670887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.630713, 15.045309, 15.706955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253465, 0.269607, -0.929014,
		0.439623, -0.823365, -0.358890,
		-0.861677, -0.499382, 0.090169,
		16.372210, 14.895494, 15.734006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822575, 15.085528, 14.857251>,  <16.975384, 15.245062, 15.670887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.822575, 15.085528, 14.857251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.181393, 15.104951, 15.032957>,  <17.396683, 15.116604, 15.138381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.181393, 15.104951, 15.032957>,  <16.822575, 15.085528, 14.857251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.181393, 15.104951, 15.032957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312035, -0.773456, -0.551725,
		0.312964, 0.631988, -0.708975,
		0.897044, 0.048555, 0.439266,
		17.450506, 15.119517, 15.164737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.318020, 15.096502, 14.269984>,  <16.822575, 15.085528, 14.857251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.318020, 15.096502, 14.269984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.524599, 14.991012, 14.595862>,  <17.648546, 14.927717, 14.791389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.524599, 14.991012, 14.595862>,  <17.318020, 15.096502, 14.269984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.524599, 14.991012, 14.595862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553727, -0.622870, -0.552648,
		0.653197, 0.736533, -0.175649,
		0.516450, -0.263726, 0.814695,
		17.679535, 14.911894, 14.840271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.029184, 15.224663, 14.148859>,  <17.318020, 15.096502, 14.269984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.029184, 15.224663, 14.148859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.927536, 14.939291, 14.410069>,  <17.866547, 14.768067, 14.566794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.927536, 14.939291, 14.410069>,  <18.029184, 15.224663, 14.148859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.927536, 14.939291, 14.410069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519772, -0.670138, -0.529861,
		0.815635, 0.204775, 0.541116,
		-0.254120, -0.713430, 0.653024,
		17.851299, 14.725262, 14.605976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.620335, 14.833005, 14.569341>,  <18.029184, 15.224663, 14.148859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.620335, 14.833005, 14.569341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.299894, 14.610030, 14.482161>,  <18.107630, 14.476245, 14.429852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.299894, 14.610030, 14.482161>,  <18.620335, 14.833005, 14.569341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.299894, 14.610030, 14.482161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584101, -0.648642, -0.487944,
		0.130627, -0.518196, 0.845227,
		-0.801101, -0.557437, -0.217949,
		18.059565, 14.442799, 14.416776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.877192, 14.138222, 14.574080>,  <18.620335, 14.833005, 14.569341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.877192, 14.138222, 14.574080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.944620, 13.780328, 14.408655>,  <18.985077, 13.565592, 14.309401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.944620, 13.780328, 14.408655>,  <18.877192, 14.138222, 14.574080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.944620, 13.780328, 14.408655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163005, 0.388484, -0.906923,
		0.972118, 0.220294, -0.080359,
		0.168572, -0.894735, -0.413562,
		18.995192, 13.511908, 14.284587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.217613, 14.282511, 14.001975>,  <18.877192, 14.138222, 14.574080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.217613, 14.282511, 14.001975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.015430, 13.939813, 13.960982>,  <18.894121, 13.734194, 13.936387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.015430, 13.939813, 13.960982>,  <19.217613, 14.282511, 14.001975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.015430, 13.939813, 13.960982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439685, 0.357937, -0.823746,
		0.742422, -0.371308, -0.557619,
		-0.505457, -0.856744, -0.102482,
		18.863792, 13.682790, 13.930238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.379421, 14.114159, 13.286727>,  <19.217613, 14.282511, 14.001975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.379421, 14.114159, 13.286727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.047087, 13.912028, 13.379984>,  <18.847687, 13.790750, 13.435938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.047087, 13.912028, 13.379984>,  <19.379421, 14.114159, 13.286727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.047087, 13.912028, 13.379984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392591, 0.235273, -0.889111,
		0.394441, -0.830235, -0.393861,
		-0.830836, -0.505328, 0.233142,
		18.797836, 13.760430, 13.449926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.056160, 13.596140, 12.692518>,  <19.379421, 14.114159, 13.286727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.056160, 13.596140, 12.692518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.756176, 13.696164, 12.937476>,  <18.576185, 13.756179, 13.084451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.756176, 13.696164, 12.937476>,  <19.056160, 13.596140, 12.692518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.756176, 13.696164, 12.937476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486827, 0.418130, -0.766921,
		-0.447838, -0.873291, -0.191845,
		-0.749961, 0.250061, 0.612395,
		18.531187, 13.771182, 13.121195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.435589, 13.511592, 12.288209>,  <19.056160, 13.596140, 12.692518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.435589, 13.511592, 12.288209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.282743, 13.719939, 12.593544>,  <18.191036, 13.844948, 12.776745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.282743, 13.719939, 12.593544>,  <18.435589, 13.511592, 12.288209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.282743, 13.719939, 12.593544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552633, 0.533248, -0.640502,
		-0.740666, -0.666590, 0.084089,
		-0.382113, 0.520868, 0.763338,
		18.168110, 13.876200, 12.822546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.641838, 13.596490, 12.090080>,  <18.435589, 13.511592, 12.288209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.641838, 13.596490, 12.090080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.734972, 13.860375, 12.375896>,  <17.790852, 14.018706, 12.547386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.734972, 13.860375, 12.375896>,  <17.641838, 13.596490, 12.090080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.734972, 13.860375, 12.375896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569736, 0.687978, -0.449540,
		-0.788156, -0.302432, 0.536047,
		0.232833, 0.659713, 0.714540,
		17.804823, 14.058290, 12.590259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.941818, 13.882274, 12.308150>,  <17.641838, 13.596490, 12.090080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.941818, 13.882274, 12.308150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.241655, 14.130926, 12.399087>,  <17.421558, 14.280117, 12.453649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.241655, 14.130926, 12.399087>,  <16.941818, 13.882274, 12.308150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.241655, 14.130926, 12.399087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513553, 0.762901, -0.392740,
		-0.417578, 0.177645, 0.891107,
		0.749595, 0.621630, 0.227341,
		17.466534, 14.317415, 12.467289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.561018, 14.469721, 12.541986>,  <16.941818, 13.882274, 12.308150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.561018, 14.469721, 12.541986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.934181, 14.578518, 12.447582>,  <17.158079, 14.643796, 12.390940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.934181, 14.578518, 12.447582>,  <16.561018, 14.469721, 12.541986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.934181, 14.578518, 12.447582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359276, 0.747652, -0.558514,
		0.024541, 0.605835, 0.795211,
		0.932909, 0.271994, -0.236011,
		17.214054, 14.660116, 12.376779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.530972, 15.205464, 12.599950>,  <16.561018, 14.469721, 12.541986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.530972, 15.205464, 12.599950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.844007, 15.108540, 12.370572>,  <17.031830, 15.050385, 12.232945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.844007, 15.108540, 12.370572>,  <16.530972, 15.205464, 12.599950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.844007, 15.108540, 12.370572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217229, 0.756951, -0.616309,
		0.583408, 0.606886, 0.539745,
		0.782590, -0.242312, -0.573444,
		17.078785, 15.035846, 12.198539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.664841, 15.767191, 12.348061>,  <16.530972, 15.205464, 12.599950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.664841, 15.767191, 12.348061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.910412, 15.538204, 12.130668>,  <17.057755, 15.400812, 12.000232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.910412, 15.538204, 12.130668>,  <16.664841, 15.767191, 12.348061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.910412, 15.538204, 12.130668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089300, 0.633720, -0.768391,
		0.784293, 0.520271, 0.337938,
		0.613930, -0.572466, -0.543482,
		17.094591, 15.366465, 11.967623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.085348, 16.296034, 12.084176>,  <16.664841, 15.767191, 12.348061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.085348, 16.296034, 12.084176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.094786, 15.972047, 11.849775>,  <17.100449, 15.777655, 11.709135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.094786, 15.972047, 11.849775>,  <17.085348, 16.296034, 12.084176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094786, 15.972047, 11.849775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134302, 0.578284, -0.804705,
		0.990660, 0.097686, -0.095137,
		0.023592, -0.809966, -0.586002,
		17.101864, 15.729057, 11.673975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.488562, 16.447851, 11.520530>,  <17.085348, 16.296034, 12.084176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.488562, 16.447851, 11.520530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.270945, 16.137362, 11.393097>,  <17.140373, 15.951068, 11.316637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.270945, 16.137362, 11.393097>,  <17.488562, 16.447851, 11.520530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.270945, 16.137362, 11.393097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146093, 0.461525, -0.875015,
		0.826241, -0.429503, -0.364489,
		-0.544043, -0.776223, -0.318583,
		17.107731, 15.904494, 11.297522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.736969, 16.224939, 10.915119>,  <17.488562, 16.447851, 11.520530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.736969, 16.224939, 10.915119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.352924, 16.113111, 10.917367>,  <17.122498, 16.046015, 10.918715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.352924, 16.113111, 10.917367>,  <17.736969, 16.224939, 10.915119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.352924, 16.113111, 10.917367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108266, 0.353137, -0.929286,
		0.257813, -0.892825, -0.369318,
		-0.960110, -0.279567, 0.005619,
		17.064892, 16.029242, 10.919052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.566422, 16.031258, 10.128967>,  <17.736969, 16.224939, 10.915119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.566422, 16.031258, 10.128967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.207417, 16.071136, 10.300795>,  <16.992014, 16.095064, 10.403891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.207417, 16.071136, 10.300795>,  <17.566422, 16.031258, 10.128967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.207417, 16.071136, 10.300795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360958, 0.393509, -0.845494,
		-0.253331, -0.913899, -0.317194,
		-0.897515, 0.099696, 0.429568,
		16.938162, 16.101046, 10.429665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.266737, 15.844380, 9.585813>,  <17.566422, 16.031258, 10.128967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.266737, 15.844380, 9.585813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.028320, 16.033689, 9.845273>,  <16.885271, 16.147274, 10.000950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.028320, 16.033689, 9.845273>,  <17.266737, 15.844380, 9.585813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.028320, 16.033689, 9.845273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482346, 0.434793, -0.760459,
		-0.641934, -0.766138, -0.030873,
		-0.596040, 0.473273, 0.648652,
		16.849508, 16.175671, 10.039868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.629438, 15.717885, 9.378152>,  <17.266737, 15.844380, 9.585813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.629438, 15.717885, 9.378152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.559746, 16.038731, 9.606627>,  <16.517931, 16.231237, 9.743712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.559746, 16.038731, 9.606627>,  <16.629438, 15.717885, 9.378152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.559746, 16.038731, 9.606627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526025, 0.414546, -0.742597,
		-0.832432, -0.429841, 0.349706,
		-0.174229, 0.802115, 0.571188,
		16.507477, 16.279366, 9.777984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.964575, 15.992000, 9.110406>,  <16.629438, 15.717885, 9.378152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.964575, 15.992000, 9.110406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.125727, 16.308855, 9.293798>,  <16.222418, 16.498968, 9.403834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.125727, 16.308855, 9.293798>,  <15.964575, 15.992000, 9.110406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.125727, 16.308855, 9.293798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474240, 0.609116, -0.635668,
		-0.782805, 0.038668, 0.621064,
		0.402880, 0.792138, 0.458481,
		16.246592, 16.546497, 9.431343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.457561, 16.584026, 9.187223>,  <15.964575, 15.992000, 9.110406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.457561, 16.584026, 9.187223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.815043, 16.763296, 9.195500>,  <16.029533, 16.870857, 9.200466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.815043, 16.763296, 9.195500>,  <15.457561, 16.584026, 9.187223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815043, 16.763296, 9.195500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307118, 0.644746, -0.699987,
		-0.327057, 0.619228, 0.713856,
		0.893707, 0.448174, 0.020693,
		16.083155, 16.897749, 9.201708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.304465, 17.239717, 9.217922>,  <15.457561, 16.584026, 9.187223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.304465, 17.239717, 9.217922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.689491, 17.246170, 9.109693>,  <15.920506, 17.250042, 9.044755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.689491, 17.246170, 9.109693>,  <15.304465, 17.239717, 9.217922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.689491, 17.246170, 9.109693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188221, 0.758086, -0.624402,
		0.195046, 0.651955, 0.732742,
		0.962564, 0.016130, -0.270574,
		15.978260, 17.251009, 9.028521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.485714, 18.046957, 9.539445>,  <15.304465, 17.239717, 9.217922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.485714, 18.046957, 9.539445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.743566, 17.911806, 9.265133>,  <15.898276, 17.830715, 9.100546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.743566, 17.911806, 9.265133>,  <15.485714, 18.046957, 9.539445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.743566, 17.911806, 9.265133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217145, 0.779167, -0.588002,
		0.733008, 0.527957, 0.428906,
		0.644629, -0.337876, -0.685780,
		15.936954, 17.810444, 9.059399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.994367, 18.560188, 9.370850>,  <15.485714, 18.046957, 9.539445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.994367, 18.560188, 9.370850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976416, 18.319952, 9.051531>,  <15.965645, 18.175810, 8.859940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976416, 18.319952, 9.051531>,  <15.994367, 18.560188, 9.370850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.976416, 18.319952, 9.051531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124967, 0.796199, -0.591988,
		0.991145, 0.073193, -0.110786,
		-0.044878, -0.600590, -0.798296,
		15.962952, 18.139774, 8.812042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.181995, 18.326414, 10.126913>,  <15.994367, 18.560188, 9.370850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.181995, 18.326414, 10.126913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.003830, 18.325396, 10.485042>,  <15.896931, 18.324785, 10.699919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.003830, 18.325396, 10.485042>,  <16.181995, 18.326414, 10.126913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.003830, 18.325396, 10.485042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605169, -0.737827, 0.298968,
		0.659831, 0.674985, 0.330179,
		-0.445414, -0.002546, 0.895321,
		15.870206, 18.324633, 10.753638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688749, 18.250683, 10.513061>,  <16.181995, 18.326414, 10.126913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.688749, 18.250683, 10.513061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.352783, 18.145210, 10.702804>,  <16.151203, 18.081926, 10.816649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.352783, 18.145210, 10.702804>,  <16.688749, 18.250683, 10.513061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.352783, 18.145210, 10.702804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484211, -0.758844, 0.435539,
		0.245120, 0.595505, 0.765042,
		-0.839914, -0.263683, 0.474358,
		16.100809, 18.066105, 10.845111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.014530, 18.806484, 10.130076>,  <16.688749, 18.250683, 10.513061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.014530, 18.806484, 10.130076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.088972, 18.956974, 10.493134>,  <17.133636, 19.047268, 10.710969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.088972, 18.956974, 10.493134>,  <17.014530, 18.806484, 10.130076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.088972, 18.956974, 10.493134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771067, -0.628466, 0.102403,
		0.608951, 0.680798, -0.407055,
		0.186104, 0.376225, 0.907645,
		17.144804, 19.069841, 10.765428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.735844, 18.830257, 10.228793>,  <17.014530, 18.806484, 10.130076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.735844, 18.830257, 10.228793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.579071, 18.826225, 10.596768>,  <17.485006, 18.823805, 10.817554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.579071, 18.826225, 10.596768>,  <17.735844, 18.830257, 10.228793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.579071, 18.826225, 10.596768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672436, -0.685568, 0.278973,
		0.627868, 0.727939, 0.275475,
		-0.391932, -0.010081, 0.919939,
		17.461491, 18.823200, 10.872750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.158842, 19.043381, 10.834523>,  <17.735844, 18.830257, 10.228793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.158842, 19.043381, 10.834523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.887768, 18.782940, 10.971229>,  <17.725122, 18.626675, 11.053252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.887768, 18.782940, 10.971229>,  <18.158842, 19.043381, 10.834523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.887768, 18.782940, 10.971229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713840, -0.470910, 0.518340,
		-0.176553, 0.595237, 0.783914,
		-0.677688, -0.651104, 0.341764,
		17.684462, 18.587608, 11.073758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.179117, 18.967329, 11.674220>,  <18.158842, 19.043381, 10.834523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.179117, 18.967329, 11.674220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.069359, 18.645201, 11.464015>,  <18.003504, 18.451923, 11.337893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.069359, 18.645201, 11.464015>,  <18.179117, 18.967329, 11.674220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.069359, 18.645201, 11.464015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812816, -0.486259, 0.320754,
		-0.513845, -0.339130, 0.788006,
		-0.274398, -0.805322, -0.525512,
		17.987040, 18.403605, 11.306361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.064713, 18.352571, 12.118190>,  <18.179117, 18.967329, 11.674220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.064713, 18.352571, 12.118190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.180370, 18.271412, 11.743976>,  <18.249765, 18.222715, 11.519447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.180370, 18.271412, 11.743976>,  <18.064713, 18.352571, 12.118190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.180370, 18.271412, 11.743976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872093, -0.347191, 0.344836,
		-0.394777, -0.915582, 0.076560,
		0.289144, -0.202901, -0.935535,
		18.267115, 18.210543, 11.463315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.098776, 17.636894, 11.838796>,  <18.064713, 18.352571, 12.118190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.098776, 17.636894, 11.838796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.370909, 17.861029, 11.649831>,  <18.534187, 17.995510, 11.536451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.370909, 17.861029, 11.649831>,  <18.098776, 17.636894, 11.838796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.370909, 17.861029, 11.649831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730399, -0.465093, 0.500207,
		0.060569, -0.685355, -0.725686,
		0.680331, 0.560336, -0.472412,
		18.575008, 18.029129, 11.508107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.649712, 17.168118, 11.512468>,  <18.098776, 17.636894, 11.838796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.649712, 17.168118, 11.512468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.763775, 17.537161, 11.616375>,  <18.832212, 17.758587, 11.678719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.763775, 17.537161, 11.616375>,  <18.649712, 17.168118, 11.512468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.763775, 17.537161, 11.616375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686093, -0.385732, 0.616836,
		0.669299, 0.002328, -0.742990,
		0.285159, 0.922608, 0.259767,
		18.849323, 17.813944, 11.694305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.417439, 17.189026, 11.432088>,  <18.649712, 17.168118, 11.512468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.417439, 17.189026, 11.432088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.254147, 17.447702, 11.689812>,  <19.156172, 17.602909, 11.844446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.254147, 17.447702, 11.689812>,  <19.417439, 17.189026, 11.432088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.254147, 17.447702, 11.689812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778069, -0.122655, 0.616088,
		0.477448, 0.752823, -0.453101,
		-0.408230, 0.646694, 0.644310,
		19.131678, 17.641710, 11.883104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.917795, 17.739971, 11.501020>,  <19.417439, 17.189026, 11.432088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.917795, 17.739971, 11.501020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.692190, 17.753307, 11.831058>,  <19.556828, 17.761309, 12.029079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.692190, 17.753307, 11.831058>,  <19.917795, 17.739971, 11.501020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.692190, 17.753307, 11.831058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809126, -0.177261, 0.560262,
		0.164936, 0.983599, 0.073000,
		-0.564013, 0.033341, 0.825093,
		19.522985, 17.763309, 12.078586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.337732, 18.184591, 11.935499>,  <19.917795, 17.739971, 11.501020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.337732, 18.184591, 11.935499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.085369, 17.983162, 12.171590>,  <19.933950, 17.862305, 12.313245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.085369, 17.983162, 12.171590>,  <20.337732, 18.184591, 11.935499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.085369, 17.983162, 12.171590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768036, -0.297620, 0.567047,
		-0.109887, 0.811071, 0.574534,
		-0.630908, -0.503574, 0.590227,
		19.896097, 17.832090, 12.348658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.521503, 18.436436, 12.641923>,  <20.337732, 18.184591, 11.935499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.521503, 18.436436, 12.641923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.331085, 18.085646, 12.668144>,  <20.216833, 17.875172, 12.683877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.331085, 18.085646, 12.668144>,  <20.521503, 18.436436, 12.641923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.331085, 18.085646, 12.668144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738895, -0.358445, 0.570571,
		-0.476879, 0.320055, 0.818628,
		-0.476047, -0.876973, 0.065552,
		20.188271, 17.822554, 12.687810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.371029, 18.298374, 13.309594>,  <20.521503, 18.436436, 12.641923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.371029, 18.298374, 13.309594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.355402, 17.937305, 13.138174>,  <20.346025, 17.720663, 13.035322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.355402, 17.937305, 13.138174>,  <20.371029, 18.298374, 13.309594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.355402, 17.937305, 13.138174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657121, -0.346301, 0.669528,
		-0.752772, -0.255453, 0.606694,
		-0.039065, -0.902674, -0.428549,
		20.343683, 17.666504, 13.009609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.331989, 17.730240, 13.834858>,  <20.371029, 18.298374, 13.309594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.331989, 17.730240, 13.834858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.494444, 17.549335, 13.517239>,  <20.591917, 17.440794, 13.326667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.494444, 17.549335, 13.517239>,  <20.331989, 17.730240, 13.834858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.494444, 17.549335, 13.517239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647210, -0.471076, 0.599338,
		-0.645114, -0.757330, 0.101387,
		0.406136, -0.452260, -0.794049,
		20.616285, 17.413658, 13.279024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.485733, 17.094763, 14.131083>,  <20.331989, 17.730240, 13.834858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.485733, 17.094763, 14.131083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.695002, 17.057606, 13.792224>,  <20.820562, 17.035311, 13.588908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.695002, 17.057606, 13.792224>,  <20.485733, 17.094763, 14.131083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.695002, 17.057606, 13.792224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737397, -0.448995, 0.504628,
		-0.427242, -0.888692, -0.166403,
		0.523173, -0.092894, -0.847148,
		20.851954, 17.029737, 13.538079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.593847, 16.374081, 14.013063>,  <20.485733, 17.094763, 14.131083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.593847, 16.374081, 14.013063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.890049, 16.552650, 13.812121>,  <21.067770, 16.659792, 13.691556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.890049, 16.552650, 13.812121>,  <20.593847, 16.374081, 14.013063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.890049, 16.552650, 13.812121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663678, -0.603399, 0.442087,
		-0.105763, -0.660769, -0.743100,
		0.740504, 0.446423, -0.502355,
		21.112200, 16.686577, 13.661415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.089182, 15.728541, 13.719441>,  <20.593847, 16.374081, 14.013063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.089182, 15.728541, 13.719441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.298275, 16.069502, 13.714341>,  <21.423731, 16.274078, 13.711281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.298275, 16.069502, 13.714341>,  <21.089182, 15.728541, 13.719441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.298275, 16.069502, 13.714341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815440, -0.495593, 0.299073,
		0.248612, -0.166732, -0.954145,
		0.522733, 0.852401, -0.012749,
		21.455095, 16.325222, 13.710516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.606537, 15.633566, 13.340443>,  <21.089182, 15.728541, 13.719441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.606537, 15.633566, 13.340443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702101, 15.932714, 13.588189>,  <21.759439, 16.112202, 13.736837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702101, 15.932714, 13.588189>,  <21.606537, 15.633566, 13.340443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.702101, 15.932714, 13.588189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727370, -0.560396, 0.396092,
		0.643315, 0.355878, -0.677861,
		0.238910, 0.747868, 0.619367,
		21.773773, 16.157074, 13.773999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.339848, 15.716624, 13.341553>,  <21.606537, 15.633566, 13.340443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.339848, 15.716624, 13.341553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.238552, 15.922810, 13.669007>,  <22.177774, 16.046520, 13.865480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.238552, 15.922810, 13.669007>,  <22.339848, 15.716624, 13.341553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.238552, 15.922810, 13.669007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791527, -0.376121, 0.481682,
		0.556196, 0.769954, -0.312755,
		-0.253239, 0.515464, 0.818637,
		22.162580, 16.077448, 13.914598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.936481, 16.008713, 13.498545>,  <22.339848, 15.716624, 13.341553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.936481, 16.008713, 13.498545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.705959, 16.009577, 13.825438>,  <22.567646, 16.010096, 14.021573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.705959, 16.009577, 13.825438>,  <22.936481, 16.008713, 13.498545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.705959, 16.009577, 13.825438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784820, -0.277378, 0.554183,
		0.227880, 0.960758, 0.158158,
		-0.576305, 0.002162, 0.817232,
		22.533068, 16.010225, 14.070607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.320169, 16.275076, 13.924364>,  <22.936481, 16.008713, 13.498545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.320169, 16.275076, 13.924364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.039881, 16.110939, 14.157811>,  <22.871708, 16.012457, 14.297879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.039881, 16.110939, 14.157811>,  <23.320169, 16.275076, 13.924364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.039881, 16.110939, 14.157811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711123, -0.467555, 0.525068,
		0.057415, 0.782949, 0.619430,
		-0.700720, -0.410345, 0.583618,
		22.829664, 15.987836, 14.332896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.506334, 16.344061, 14.584818>,  <23.320169, 16.275076, 13.924364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.506334, 16.344061, 14.584818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.262886, 16.028418, 14.618019>,  <23.116817, 15.839031, 14.637939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.262886, 16.028418, 14.618019>,  <23.506334, 16.344061, 14.584818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.262886, 16.028418, 14.618019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671271, -0.456296, 0.584113,
		-0.423055, 0.411221, 0.807417,
		-0.608621, -0.789108, 0.083002,
		23.080299, 15.791685, 14.642920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.406004, 16.049690, 15.360825>,  <23.506334, 16.344061, 14.584818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.406004, 16.049690, 15.360825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.367876, 15.778971, 15.068836>,  <23.344999, 15.616539, 14.893643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.367876, 15.778971, 15.068836>,  <23.406004, 16.049690, 15.360825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.367876, 15.778971, 15.068836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632956, -0.607186, 0.480304,
		-0.768297, -0.416256, 0.486261,
		-0.095321, -0.676799, -0.729971,
		23.339279, 15.575932, 14.849845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.302805, 15.418822, 15.711853>,  <23.406004, 16.049690, 15.360825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.302805, 15.418822, 15.711853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.463737, 15.371046, 15.348785>,  <23.560297, 15.342381, 15.130945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.463737, 15.371046, 15.348785>,  <23.302805, 15.418822, 15.711853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.463737, 15.371046, 15.348785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793190, -0.449594, 0.410750,
		-0.457144, -0.885211, -0.086142,
		0.402330, -0.119445, -0.907669,
		23.584436, 15.335214, 15.076485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.406761, 14.749442, 15.473252>,  <23.302805, 15.418822, 15.711853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.406761, 14.749442, 15.473252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.676092, 14.937445, 15.244963>,  <23.837690, 15.050246, 15.107989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.676092, 14.937445, 15.244963>,  <23.406761, 14.749442, 15.473252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.676092, 14.937445, 15.244963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736430, -0.494840, 0.461307,
		-0.065600, -0.730908, -0.679316,
		0.673326, 0.470007, -0.570724,
		23.878090, 15.078446, 15.073746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.118477, 14.347515, 15.293478>,  <23.406761, 14.749442, 15.473252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.118477, 14.347515, 15.293478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214481, 14.735102, 15.269815>,  <24.272085, 14.967653, 15.255618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.214481, 14.735102, 15.269815>,  <24.118477, 14.347515, 15.293478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.214481, 14.735102, 15.269815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797646, -0.162110, 0.580931,
		0.553312, -0.186617, -0.811800,
		0.240012, 0.968966, -0.059157,
		24.286486, 15.025791, 15.252069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.803497, 14.472573, 15.219302>,  <24.118477, 14.347515, 15.293478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.803497, 14.472573, 15.219302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.666727, 14.810391, 15.384144>,  <24.584665, 15.013083, 15.483048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.666727, 14.810391, 15.384144>,  <24.803497, 14.472573, 15.219302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.666727, 14.810391, 15.384144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786601, 0.017289, 0.617220,
		0.514145, 0.535206, -0.670231,
		-0.341927, 0.844545, 0.412104,
		24.564150, 15.063755, 15.507775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218426, 14.097474, 15.760312>,  <24.803497, 14.472573, 15.219302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.218426, 14.097474, 15.760312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364014, 14.465956, 15.705308>,  <25.451366, 14.687044, 15.672306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364014, 14.465956, 15.705308>,  <25.218426, 14.097474, 15.760312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364014, 14.465956, 15.705308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885277, 0.388040, 0.256338,
		0.289499, 0.028435, 0.956756,
		0.363971, 0.921204, -0.137510,
		25.473206, 14.742317, 15.664055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308243, 14.510050, 16.405222>,  <25.218426, 14.097474, 15.760312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308243, 14.510050, 16.405222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247961, 14.763186, 16.101433>,  <25.211792, 14.915069, 15.919159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247961, 14.763186, 16.101433>,  <25.308243, 14.510050, 16.405222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247961, 14.763186, 16.101433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902164, 0.226080, 0.367406,
		0.404212, 0.740539, 0.536856,
		-0.150706, 0.632842, -0.759472,
		25.202749, 14.953039, 15.873591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085106, 14.592482, 16.190914>,  <25.308243, 14.510050, 16.405222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085106, 14.592482, 16.190914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458834, 14.461110, 16.135515>,  <26.683071, 14.382287, 16.102276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458834, 14.461110, 16.135515>,  <26.085106, 14.592482, 16.190914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458834, 14.461110, 16.135515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037903, 0.294808, -0.954805,
		0.354414, 0.897343, 0.262996,
		0.934320, -0.328428, -0.138496,
		26.739130, 14.362582, 16.093966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784439, 15.112742, 16.148813>,  <26.085106, 14.592482, 16.190914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784439, 15.112742, 16.148813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764584, 14.774635, 15.936001>,  <26.752670, 14.571771, 15.808313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764584, 14.774635, 15.936001>,  <26.784439, 15.112742, 16.148813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764584, 14.774635, 15.936001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096417, 0.534256, -0.839806,
		0.994102, 0.009611, -0.108018,
		-0.049638, -0.845268, -0.532032,
		26.749693, 14.521055, 15.776391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219929, 15.091544, 15.579309>,  <26.784439, 15.112742, 16.148813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219929, 15.091544, 15.579309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900505, 14.861336, 15.508791>,  <26.708851, 14.723210, 15.466479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900505, 14.861336, 15.508791>,  <27.219929, 15.091544, 15.579309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900505, 14.861336, 15.508791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115600, 0.434079, -0.893427,
		0.590714, -0.693073, -0.413167,
		-0.798557, -0.575522, -0.176297,
		26.660938, 14.688680, 15.455902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312933, 14.889259, 14.978213>,  <27.219929, 15.091544, 15.579309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312933, 14.889259, 14.978213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917257, 14.855673, 15.026299>,  <26.679852, 14.835521, 15.055150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917257, 14.855673, 15.026299>,  <27.312933, 14.889259, 14.978213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.917257, 14.855673, 15.026299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146420, 0.521399, -0.840657,
		0.007907, -0.849171, -0.528058,
		-0.989191, -0.083966, 0.120213,
		26.620501, 14.830483, 15.062363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.667389, 21.358992, 25.191147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.445125, 21.080112, 25.372324>,  <12.311767, 20.912785, 25.481030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.445125, 21.080112, 25.372324>,  <12.667389, 21.358992, 25.191147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.445125, 21.080112, 25.372324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118096, -0.605452, -0.787072,
		0.822980, -0.383853, 0.418761,
		-0.555660, -0.697198, 0.452943,
		12.278427, 20.870953, 25.508207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.071584, 20.722157, 25.100769>,  <12.667389, 21.358992, 25.191147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.071584, 20.722157, 25.100769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.679259, 20.663538, 25.152203>,  <12.443865, 20.628366, 25.183062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.679259, 20.663538, 25.152203>,  <13.071584, 20.722157, 25.100769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.679259, 20.663538, 25.152203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018770, -0.727453, -0.685901,
		0.194054, -0.670326, 0.716245,
		-0.980811, -0.146546, 0.128583,
		12.385015, 20.619574, 25.190777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.964659, 20.044918, 25.036991>,  <13.071584, 20.722157, 25.100769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.964659, 20.044918, 25.036991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.585258, 20.167974, 25.006786>,  <12.357618, 20.241808, 24.988663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.585258, 20.167974, 25.006786>,  <12.964659, 20.044918, 25.036991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.585258, 20.167974, 25.006786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149471, -0.644829, -0.749569,
		-0.279290, -0.699681, 0.657605,
		-0.948501, 0.307640, -0.075513,
		12.300708, 20.260267, 24.984133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.464068, 19.350765, 25.082518>,  <12.964659, 20.044918, 25.036991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.464068, 19.350765, 25.082518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.269324, 19.645655, 24.895126>,  <12.152478, 19.822588, 24.782692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.269324, 19.645655, 24.895126>,  <12.464068, 19.350765, 25.082518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.269324, 19.645655, 24.895126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114631, -0.585623, -0.802438,
		-0.865926, -0.336973, 0.369624,
		-0.486860, 0.737221, -0.468478,
		12.123266, 19.866821, 24.754583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.818535, 19.022036, 24.726452>,  <12.464068, 19.350765, 25.082518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.818535, 19.022036, 24.726452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.859561, 19.363222, 24.521736>,  <11.884176, 19.567934, 24.398907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.859561, 19.363222, 24.521736>,  <11.818535, 19.022036, 24.726452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.859561, 19.363222, 24.521736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215919, -0.483145, -0.848499,
		-0.971009, 0.197531, 0.134619,
		0.102564, 0.852967, -0.511789,
		11.890330, 19.619112, 24.368200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.324445, 18.948671, 24.297930>,  <11.818535, 19.022036, 24.726452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.324445, 18.948671, 24.297930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.541027, 19.246805, 24.142342>,  <11.670977, 19.425686, 24.048988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.541027, 19.246805, 24.142342>,  <11.324445, 18.948671, 24.297930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.541027, 19.246805, 24.142342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100510, -0.401956, -0.910126,
		-0.834699, 0.531889, -0.142728,
		0.541456, 0.745336, -0.388972,
		11.703464, 19.470406, 24.025650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.958995, 19.231981, 23.790319>,  <11.324445, 18.948671, 24.297930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.958995, 19.231981, 23.790319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.339984, 19.294304, 23.685616>,  <11.568578, 19.331697, 23.622793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.339984, 19.294304, 23.685616>,  <10.958995, 19.231981, 23.790319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.339984, 19.294304, 23.685616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176657, -0.417529, -0.891326,
		-0.248165, 0.895206, -0.370162,
		0.952474, 0.155804, -0.261761,
		11.625726, 19.341045, 23.607088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.940375, 19.453733, 23.057810>,  <10.958995, 19.231981, 23.790319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.940375, 19.453733, 23.057810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.309523, 19.313742, 23.122093>,  <11.531011, 19.229746, 23.160664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.309523, 19.313742, 23.122093>,  <10.940375, 19.453733, 23.057810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.309523, 19.313742, 23.122093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027655, -0.355993, -0.934079,
		0.384121, 0.866477, -0.318856,
		0.922868, -0.349982, 0.160707,
		11.586383, 19.208748, 23.170305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.303080, 19.475828, 22.517412>,  <10.940375, 19.453733, 23.057810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.303080, 19.475828, 22.517412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.573094, 19.235264, 22.688354>,  <11.735104, 19.090925, 22.790920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.573094, 19.235264, 22.688354>,  <11.303080, 19.475828, 22.517412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.573094, 19.235264, 22.688354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224094, -0.384738, -0.895410,
		0.702927, 0.700203, -0.124940,
		0.675038, -0.601409, 0.427354,
		11.775606, 19.054842, 22.816561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.870610, 19.598839, 22.156067>,  <11.303080, 19.475828, 22.517412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.870610, 19.598839, 22.156067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.940228, 19.255497, 22.349121>,  <11.981997, 19.049492, 22.464954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.940228, 19.255497, 22.349121>,  <11.870610, 19.598839, 22.156067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.940228, 19.255497, 22.349121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332824, -0.410000, -0.849193,
		0.926789, 0.308428, 0.214323,
		0.174043, -0.858354, 0.482636,
		11.992440, 18.997992, 22.493912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.593316, 19.408844, 22.035229>,  <11.870610, 19.598839, 22.156067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.593316, 19.408844, 22.035229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.362386, 19.090384, 22.107710>,  <12.223827, 18.899307, 22.151199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.362386, 19.090384, 22.107710>,  <12.593316, 19.408844, 22.035229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.362386, 19.090384, 22.107710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274834, -0.398455, -0.875043,
		0.768869, -0.455384, 0.448849,
		-0.577327, -0.796153, 0.181205,
		12.189188, 18.851538, 22.162071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.039334, 18.757069, 21.862612>,  <12.593316, 19.408844, 22.035229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.039334, 18.757069, 21.862612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.651744, 18.659077, 21.849541>,  <12.419189, 18.600281, 21.841698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.651744, 18.659077, 21.849541>,  <13.039334, 18.757069, 21.862612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.651744, 18.659077, 21.849541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119061, -0.346820, -0.930344,
		0.216583, -0.905373, 0.365228,
		-0.968977, -0.244981, -0.032679,
		12.361051, 18.585583, 21.839737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.040321, 18.186789, 21.490456>,  <13.039334, 18.757069, 21.862612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.040321, 18.186789, 21.490456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.645816, 18.234360, 21.444603>,  <12.409113, 18.262903, 21.417091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.645816, 18.234360, 21.444603>,  <13.040321, 18.186789, 21.490456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.645816, 18.234360, 21.444603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039524, -0.503915, -0.862848,
		-0.160383, -0.855526, 0.492292,
		-0.986264, 0.118929, -0.114633,
		12.349936, 18.270039, 21.410213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.812895, 17.555176, 21.394438>,  <13.040321, 18.186789, 21.490456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.812895, 17.555176, 21.394438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.547721, 17.803837, 21.227554>,  <12.388617, 17.953033, 21.127424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.547721, 17.803837, 21.227554>,  <12.812895, 17.555176, 21.394438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.547721, 17.803837, 21.227554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143997, -0.440987, -0.885887,
		-0.734697, -0.647364, 0.202830,
		-0.662936, 0.621652, -0.417211,
		12.348840, 17.990332, 21.102390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.364779, 17.167366, 21.116093>,  <12.812895, 17.555176, 21.394438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.364779, 17.167366, 21.116093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.318185, 17.492214, 20.887394>,  <12.290228, 17.687122, 20.750175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.318185, 17.492214, 20.887394>,  <12.364779, 17.167366, 21.116093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.318185, 17.492214, 20.887394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178106, -0.549252, -0.816456,
		-0.977092, -0.196937, -0.080663,
		-0.116486, 0.812120, -0.571745,
		12.283239, 17.735849, 20.715870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.999560, 17.011703, 20.497421>,  <12.364779, 17.167366, 21.116093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.999560, 17.011703, 20.497421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.151582, 17.363234, 20.382029>,  <12.242795, 17.574152, 20.312794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.151582, 17.363234, 20.382029>,  <11.999560, 17.011703, 20.497421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.151582, 17.363234, 20.382029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222761, -0.389668, -0.893609,
		-0.897740, 0.275357, -0.343863,
		0.380054, 0.878827, -0.288482,
		12.265598, 17.626883, 20.295485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.732162, 17.057308, 19.835028>,  <11.999560, 17.011703, 20.497421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.732162, 17.057308, 19.835028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.056205, 17.291361, 19.849691>,  <12.250630, 17.431793, 19.858490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.056205, 17.291361, 19.849691>,  <11.732162, 17.057308, 19.835028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.056205, 17.291361, 19.849691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254890, -0.295203, -0.920807,
		-0.527973, 0.755297, -0.388291,
		0.810108, 0.585133, 0.036659,
		12.299237, 17.466902, 19.860689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.725594, 17.525023, 19.145725>,  <11.732162, 17.057308, 19.835028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.725594, 17.525023, 19.145725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.099020, 17.558985, 19.285007>,  <12.323076, 17.579363, 19.368576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.099020, 17.558985, 19.285007>,  <11.725594, 17.525023, 19.145725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.099020, 17.558985, 19.285007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350830, -0.017785, -0.936270,
		-0.073303, 0.996230, -0.046392,
		0.933566, 0.084907, 0.348203,
		12.379089, 17.584457, 19.389469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.020082, 17.911024, 18.632668>,  <11.725594, 17.525023, 19.145725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.020082, 17.911024, 18.632668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.339563, 17.763643, 18.822958>,  <12.531252, 17.675215, 18.937132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.339563, 17.763643, 18.822958>,  <12.020082, 17.911024, 18.632668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.339563, 17.763643, 18.822958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452285, -0.153852, -0.878503,
		0.396878, 0.916828, 0.043763,
		0.798703, -0.368452, 0.475728,
		12.579174, 17.653109, 18.965677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.575017, 18.275490, 18.350248>,  <12.020082, 17.911024, 18.632668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.575017, 18.275490, 18.350248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.712882, 17.932571, 18.503220>,  <12.795601, 17.726820, 18.595003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.712882, 17.932571, 18.503220>,  <12.575017, 18.275490, 18.350248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.712882, 17.932571, 18.503220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437090, -0.213974, -0.873595,
		0.830758, 0.468252, 0.300966,
		0.344664, -0.857295, 0.382429,
		12.816281, 17.675383, 18.617949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.275253, 18.224291, 18.217999>,  <12.575017, 18.275490, 18.350248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.275253, 18.224291, 18.217999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.139227, 17.852640, 18.276079>,  <13.057611, 17.629650, 18.310928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.139227, 17.852640, 18.276079>,  <13.275253, 18.224291, 18.217999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.139227, 17.852640, 18.276079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427653, -0.290307, -0.856058,
		0.837537, -0.229019, 0.496066,
		-0.340065, -0.929124, 0.145202,
		13.037208, 17.573902, 18.319639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.894363, 17.714155, 18.004679>,  <13.275253, 18.224291, 18.217999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.894363, 17.714155, 18.004679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.544033, 17.525555, 17.963459>,  <13.333835, 17.412395, 17.938728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.544033, 17.525555, 17.963459>,  <13.894363, 17.714155, 18.004679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.544033, 17.525555, 17.963459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297995, -0.360346, -0.883940,
		0.379645, -0.804884, 0.456104,
		-0.875825, -0.471500, -0.103048,
		13.281285, 17.384106, 17.932545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.412474, 17.260996, 17.877899>,  <13.894363, 17.714155, 18.004679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.412474, 17.260996, 17.877899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.590856, 17.595621, 17.750597>,  <14.697885, 17.796396, 17.674215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.590856, 17.595621, 17.750597>,  <14.412474, 17.260996, 17.877899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.590856, 17.595621, 17.750597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061704, 0.325989, 0.943358,
		0.892926, -0.440332, 0.093757,
		0.445955, 0.836563, -0.318255,
		14.724642, 17.846590, 17.655121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.105100, 17.318562, 18.120615>,  <14.412474, 17.260996, 17.877899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.105100, 17.318562, 18.120615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.014705, 17.696949, 18.027603>,  <14.960467, 17.923983, 17.971796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.014705, 17.696949, 18.027603>,  <15.105100, 17.318562, 18.120615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.014705, 17.696949, 18.027603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402156, 0.308014, 0.862205,
		0.887242, 0.101335, -0.450035,
		-0.225988, 0.945970, -0.232531,
		14.946908, 17.980740, 17.957844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.618878, 17.699917, 18.399796>,  <15.105100, 17.318562, 18.120615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.618878, 17.699917, 18.399796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.335261, 17.974051, 18.333370>,  <15.165091, 18.138531, 18.293516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.335261, 17.974051, 18.333370>,  <15.618878, 17.699917, 18.399796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.335261, 17.974051, 18.333370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367754, 0.560310, 0.742166,
		0.601676, 0.465158, -0.649318,
		-0.709044, 0.685333, -0.166062,
		15.122548, 18.179651, 18.283552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.981271, 18.370998, 18.554733>,  <15.618878, 17.699917, 18.399796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.981271, 18.370998, 18.554733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.590060, 18.454357, 18.557056>,  <15.355333, 18.504372, 18.558451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.590060, 18.454357, 18.557056>,  <15.981271, 18.370998, 18.554733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.590060, 18.454357, 18.557056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141981, 0.645415, 0.750520,
		0.152655, 0.734854, -0.660822,
		-0.978027, 0.208395, 0.005809,
		15.296652, 18.516876, 18.558800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.981763, 18.951588, 18.960577>,  <15.981271, 18.370998, 18.554733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.981763, 18.951588, 18.960577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.589464, 18.890575, 18.911800>,  <15.354085, 18.853968, 18.882534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.589464, 18.890575, 18.911800>,  <15.981763, 18.951588, 18.960577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.589464, 18.890575, 18.911800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181475, 0.481232, 0.857603,
		-0.072130, 0.863220, -0.499648,
		-0.980747, -0.152532, -0.121941,
		15.295240, 18.844816, 18.875217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.614217, 19.516533, 19.047382>,  <15.981763, 18.951588, 18.960577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.614217, 19.516533, 19.047382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.322160, 19.256315, 19.130987>,  <15.146926, 19.100185, 19.181150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.322160, 19.256315, 19.130987>,  <15.614217, 19.516533, 19.047382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.322160, 19.256315, 19.130987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199033, 0.495111, 0.845725,
		-0.653666, 0.575899, -0.490981,
		-0.730142, -0.650543, 0.209014,
		15.103117, 19.061152, 19.193691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.925419, 19.934061, 19.176975>,  <15.614217, 19.516533, 19.047382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.925419, 19.934061, 19.176975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.929630, 19.578417, 19.360003>,  <14.932158, 19.365030, 19.469820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.929630, 19.578417, 19.360003>,  <14.925419, 19.934061, 19.176975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.929630, 19.578417, 19.360003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222053, 0.444091, 0.868030,
		-0.974978, -0.110744, -0.192755,
		0.010528, -0.889111, 0.457570,
		14.932789, 19.311684, 19.497274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.370934, 20.005470, 19.523525>,  <14.925419, 19.934061, 19.176975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.370934, 20.005470, 19.523525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.569554, 19.702726, 19.693514>,  <14.688726, 19.521080, 19.795507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.569554, 19.702726, 19.693514>,  <14.370934, 20.005470, 19.523525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.569554, 19.702726, 19.693514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175860, 0.391718, 0.903122,
		-0.850007, -0.523181, 0.061406,
		0.496550, -0.756861, 0.424970,
		14.718519, 19.475668, 19.821005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.969494, 19.641514, 20.012882>,  <14.370934, 20.005470, 19.523525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.969494, 19.641514, 20.012882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.340730, 19.565634, 20.141047>,  <14.563471, 19.520105, 20.217945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.340730, 19.565634, 20.141047>,  <13.969494, 19.641514, 20.012882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.340730, 19.565634, 20.141047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273388, 0.237056, 0.932236,
		-0.252801, -0.952795, 0.168147,
		0.928090, -0.189700, 0.320411,
		14.619157, 19.508724, 20.237169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.865892, 19.362066, 20.711025>,  <13.969494, 19.641514, 20.012882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.865892, 19.362066, 20.711025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.255273, 19.451569, 20.691729>,  <14.488901, 19.505270, 20.680151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.255273, 19.451569, 20.691729>,  <13.865892, 19.362066, 20.711025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.255273, 19.451569, 20.691729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017030, 0.280973, 0.959565,
		0.228260, -0.933268, 0.277324,
		0.973451, 0.223753, -0.048241,
		14.547308, 19.518696, 20.677256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.134636, 19.183870, 21.385914>,  <13.865892, 19.362066, 20.711025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.134636, 19.183870, 21.385914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.381603, 19.452177, 21.221542>,  <14.529784, 19.613161, 21.122919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.381603, 19.452177, 21.221542>,  <14.134636, 19.183870, 21.385914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.381603, 19.452177, 21.221542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172209, 0.394463, 0.902631,
		0.767553, -0.628068, 0.128037,
		0.617419, 0.670768, -0.410931,
		14.566829, 19.653408, 21.098263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.577530, 19.215567, 21.802074>,  <14.134636, 19.183870, 21.385914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.577530, 19.215567, 21.802074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.618193, 19.563370, 21.608736>,  <14.642591, 19.772051, 21.492733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.618193, 19.563370, 21.608736>,  <14.577530, 19.215567, 21.802074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.618193, 19.563370, 21.608736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061014, 0.479499, 0.875419,
		0.992947, -0.118483, -0.004308,
		0.101657, 0.869507, -0.483346,
		14.648689, 19.824223, 21.463732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.903643, 19.592268, 22.219879>,  <14.577530, 19.215567, 21.802074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.903643, 19.592268, 22.219879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.768599, 19.883909, 21.981743>,  <14.687572, 20.058893, 21.838861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.768599, 19.883909, 21.981743>,  <14.903643, 19.592268, 22.219879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.768599, 19.883909, 21.981743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083495, 0.606785, 0.790469,
		0.937576, 0.316578, -0.143980,
		-0.337610, 0.729103, -0.595339,
		14.667315, 20.102640, 21.803141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.374475, 20.306555, 22.287088>,  <14.903643, 19.592268, 22.219879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.374475, 20.306555, 22.287088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.006838, 20.395994, 22.157307>,  <14.786256, 20.449657, 22.079437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.006838, 20.395994, 22.157307>,  <15.374475, 20.306555, 22.287088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.006838, 20.395994, 22.157307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036467, 0.771604, 0.635057,
		0.392350, 0.595508, -0.701022,
		-0.919093, 0.223600, -0.324456,
		14.731110, 20.463074, 22.059971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.338035, 21.088621, 22.319016>,  <15.374475, 20.306555, 22.287088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.338035, 21.088621, 22.319016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.951560, 20.998138, 22.269516>,  <14.719675, 20.943850, 22.239817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.951560, 20.998138, 22.269516>,  <15.338035, 21.088621, 22.319016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.951560, 20.998138, 22.269516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250440, 0.709136, 0.659095,
		-0.061335, 0.667801, -0.741809,
		-0.966187, -0.226205, -0.123749,
		14.661704, 20.930277, 22.232391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.937724, 21.705391, 22.279440>,  <15.338035, 21.088621, 22.319016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.937724, 21.705391, 22.279440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.643848, 21.454912, 22.383833>,  <14.467523, 21.304626, 22.446468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.643848, 21.454912, 22.383833>,  <14.937724, 21.705391, 22.279440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.643848, 21.454912, 22.383833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272763, 0.624898, 0.731508,
		-0.621154, 0.466244, -0.629908,
		-0.734689, -0.626195, 0.260984,
		14.423442, 21.267054, 22.462128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.298977, 22.130650, 22.411327>,  <14.937724, 21.705391, 22.279440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.298977, 22.130650, 22.411327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.264265, 21.786320, 22.611908>,  <14.243438, 21.579721, 22.732256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.264265, 21.786320, 22.611908>,  <14.298977, 22.130650, 22.411327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.264265, 21.786320, 22.611908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304570, 0.502174, 0.809357,
		-0.948529, -0.082491, -0.305759,
		-0.086780, -0.860823, 0.501451,
		14.238231, 21.528072, 22.762342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.757042, 22.163734, 22.816404>,  <14.298977, 22.130650, 22.411327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.757042, 22.163734, 22.816404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.953188, 21.863165, 22.992996>,  <14.070876, 21.682823, 23.098951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.953188, 21.863165, 22.992996>,  <13.757042, 22.163734, 22.816404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.953188, 21.863165, 22.992996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265459, 0.353711, 0.896895,
		-0.830105, -0.557000, -0.026025,
		0.490365, -0.751425, 0.441478,
		14.100298, 21.637737, 23.125439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.316960, 21.891640, 23.425465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.674558, 21.746815, 23.531057>,  <13.889116, 21.659920, 23.594412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.674558, 21.746815, 23.531057>,  <13.316960, 21.891640, 23.425465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.674558, 21.746815, 23.531057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076603, 0.456969, 0.886178,
		-0.441484, -0.812459, 0.380792,
		0.893993, -0.362063, 0.263981,
		13.942756, 21.638195, 23.610252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.192318, 21.485628, 24.031664>,  <13.316960, 21.891640, 23.425465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.192318, 21.485628, 24.031664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.580193, 21.578436, 24.000999>,  <13.812917, 21.634121, 23.982601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.580193, 21.578436, 24.000999>,  <13.192318, 21.485628, 24.031664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.580193, 21.578436, 24.000999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057076, 0.520116, 0.852186,
		0.237597, -0.821977, 0.517592,
		0.969685, 0.232019, -0.076663,
		13.871099, 21.648041, 23.978001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.548632, 21.115959, 24.585800>,  <13.192318, 21.485628, 24.031664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.548632, 21.115959, 24.585800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.757071, 21.433426, 24.460234>,  <13.882135, 21.623907, 24.384893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.757071, 21.433426, 24.460234>,  <13.548632, 21.115959, 24.585800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.757071, 21.433426, 24.460234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084029, 0.413723, 0.906517,
		0.849349, -0.446008, 0.282283,
		0.521100, 0.793669, -0.313917,
		13.913402, 21.671526, 24.366058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.897634, 21.318148, 25.207821>,  <13.548632, 21.115959, 24.585800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.897634, 21.318148, 25.207821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.020319, 21.638775, 25.002525>,  <14.093930, 21.831152, 24.879347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.020319, 21.638775, 25.002525>,  <13.897634, 21.318148, 25.207821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.020319, 21.638775, 25.002525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202833, 0.471799, 0.858059,
		0.929939, -0.367280, -0.017878,
		0.306713, 0.801568, -0.513241,
		14.112333, 21.879246, 24.848553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.542665, 21.507015, 25.490416>,  <13.897634, 21.318148, 25.207821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.542665, 21.507015, 25.490416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.396639, 21.826548, 25.299171>,  <14.309023, 22.018267, 25.184425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.396639, 21.826548, 25.299171>,  <14.542665, 21.507015, 25.490416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.396639, 21.826548, 25.299171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162968, 0.560462, 0.811988,
		0.916607, 0.218513, -0.334790,
		-0.365067, 0.798833, -0.478113,
		14.287119, 22.066198, 25.155737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.021045, 22.058788, 25.490807>,  <14.542665, 21.507015, 25.490416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.021045, 22.058788, 25.490807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.660349, 22.223902, 25.439461>,  <14.443932, 22.322969, 25.408653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.660349, 22.223902, 25.439461>,  <15.021045, 22.058788, 25.490807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.660349, 22.223902, 25.439461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145715, 0.569819, 0.808748,
		0.406982, 0.710575, -0.573977,
		-0.901739, 0.412783, -0.128365,
		14.389828, 22.347736, 25.400951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.126986, 22.669779, 25.584314>,  <15.021045, 22.058788, 25.490807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.126986, 22.669779, 25.584314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.728558, 22.688511, 25.614382>,  <14.489501, 22.699749, 25.632421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.728558, 22.688511, 25.614382>,  <15.126986, 22.669779, 25.584314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.728558, 22.688511, 25.614382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086755, 0.686504, 0.721932,
		-0.017796, 0.725617, -0.687869,
		-0.996071, 0.046829, 0.075168,
		14.429736, 22.702560, 25.636932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.922078, 23.366915, 25.851286>,  <15.126986, 22.669779, 25.584314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.922078, 23.366915, 25.851286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.598720, 23.144175, 25.927614>,  <14.404704, 23.010530, 25.973412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.598720, 23.144175, 25.927614>,  <14.922078, 23.366915, 25.851286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.598720, 23.144175, 25.927614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116011, 0.468533, 0.875796,
		-0.577093, 0.685853, -0.443361,
		-0.808397, -0.556850, 0.190821,
		14.356200, 22.977119, 25.984861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.399109, 23.774441, 25.917412>,  <14.922078, 23.366915, 25.851286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.399109, 23.774441, 25.917412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.300016, 23.440821, 26.114588>,  <14.240561, 23.240648, 26.232893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.300016, 23.440821, 26.114588>,  <14.399109, 23.774441, 25.917412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.300016, 23.440821, 26.114588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137315, 0.533890, 0.834330,
		-0.959048, 0.139002, -0.246789,
		-0.247732, -0.834051, 0.492939,
		14.225697, 23.190605, 26.262470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.984082, 24.030430, 26.352961>,  <14.399109, 23.774441, 25.917412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.984082, 24.030430, 26.352961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.084927, 23.676493, 26.509674>,  <14.145433, 23.464130, 26.603703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.084927, 23.676493, 26.509674>,  <13.984082, 24.030430, 26.352961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.084927, 23.676493, 26.509674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064052, 0.419231, 0.905617,
		-0.965576, -0.203221, 0.162368,
		0.252110, -0.884843, 0.391783,
		14.160560, 23.411039, 26.627209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.600052, 23.978693, 27.048252>,  <13.984082, 24.030430, 26.352961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.600052, 23.978693, 27.048252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.885113, 23.698147, 27.054134>,  <14.056149, 23.529819, 27.057665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.885113, 23.698147, 27.054134>,  <13.600052, 23.978693, 27.048252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.885113, 23.698147, 27.054134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258232, 0.281766, 0.924080,
		-0.652260, -0.654750, 0.381916,
		0.712652, -0.701364, 0.014707,
		14.098908, 23.487738, 27.058546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.508128, 23.602669, 27.713642>,  <13.600052, 23.978693, 27.048252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.508128, 23.602669, 27.713642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.886661, 23.581295, 27.586143>,  <14.113780, 23.568470, 27.509644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.886661, 23.581295, 27.586143>,  <13.508128, 23.602669, 27.713642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.886661, 23.581295, 27.586143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322524, 0.219712, 0.920709,
		0.020835, -0.974100, 0.225155,
		0.946332, -0.053435, -0.318748,
		14.170560, 23.565264, 27.490519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.819474, 23.414557, 28.324110>,  <13.508128, 23.602669, 27.713642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.819474, 23.414557, 28.324110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.143357, 23.471851, 28.096478>,  <14.337687, 23.506227, 27.959898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.143357, 23.471851, 28.096478>,  <13.819474, 23.414557, 28.324110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.143357, 23.471851, 28.096478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529368, 0.240237, 0.813668,
		0.253264, -0.960088, 0.118696,
		0.809708, 0.143239, -0.569083,
		14.386270, 23.514822, 27.925753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.400914, 22.981121, 28.631903>,  <13.819474, 23.414557, 28.324110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.400914, 22.981121, 28.631903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.528354, 23.282648, 28.402031>,  <14.604817, 23.463564, 28.264109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.528354, 23.282648, 28.402031>,  <14.400914, 22.981121, 28.631903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.528354, 23.282648, 28.402031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439703, 0.419565, 0.794120,
		0.839736, -0.505693, -0.197783,
		0.318598, 0.753817, -0.574678,
		14.623933, 23.508793, 28.229628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.065406, 22.927994, 28.634586>,  <14.400914, 22.981121, 28.631903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.065406, 22.927994, 28.634586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.015328, 23.317820, 28.560234>,  <14.985282, 23.551714, 28.515623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.015328, 23.317820, 28.560234>,  <15.065406, 22.927994, 28.634586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.015328, 23.317820, 28.560234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733836, 0.217050, 0.643719,
		0.667691, -0.055817, -0.742343,
		-0.125195, 0.974563, -0.185883,
		14.977770, 23.610189, 28.504469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.626054, 23.122259, 28.815668>,  <15.065406, 22.927994, 28.634586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.626054, 23.122259, 28.815668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.440431, 23.474884, 28.781023>,  <15.329057, 23.686459, 28.760237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.440431, 23.474884, 28.781023>,  <15.626054, 23.122259, 28.815668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.440431, 23.474884, 28.781023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612433, 0.389947, 0.687653,
		0.639982, 0.266067, -0.720855,
		-0.464057, 0.881561, -0.086611,
		15.301213, 23.739353, 28.755039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099205, 23.625168, 28.687815>,  <15.626054, 23.122259, 28.815668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.099205, 23.625168, 28.687815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.794087, 23.822399, 28.855156>,  <15.611017, 23.940739, 28.955561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.794087, 23.822399, 28.855156>,  <16.099205, 23.625168, 28.687815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.794087, 23.822399, 28.855156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587187, 0.257187, 0.767506,
		0.270846, 0.831100, -0.485711,
		-0.762793, 0.493079, 0.418353,
		15.565249, 23.970324, 28.980661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.415352, 24.153910, 29.011662>,  <16.099205, 23.625168, 28.687815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.415352, 24.153910, 29.011662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.052944, 24.187370, 29.177618>,  <15.835500, 24.207447, 29.277193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.052944, 24.187370, 29.177618>,  <16.415352, 24.153910, 29.011662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.052944, 24.187370, 29.177618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409915, 0.417482, 0.810974,
		-0.105370, 0.904826, -0.412536,
		-0.906017, 0.083652, 0.414892,
		15.781139, 24.212465, 29.302086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.361553, 24.764297, 29.232824>,  <16.415352, 24.153910, 29.011662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.361553, 24.764297, 29.232824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.094919, 24.559553, 29.449589>,  <15.934939, 24.436707, 29.579647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.094919, 24.559553, 29.449589>,  <16.361553, 24.764297, 29.232824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.094919, 24.559553, 29.449589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497266, 0.236245, 0.834814,
		-0.555332, 0.825946, 0.097054,
		-0.666583, -0.511861, 0.541909,
		15.894944, 24.405994, 29.612162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217255, 25.167553, 29.801714>,  <16.361553, 24.764297, 29.232824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.217255, 25.167553, 29.801714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.082474, 24.820736, 29.948517>,  <16.001604, 24.612644, 30.036598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.082474, 24.820736, 29.948517>,  <16.217255, 25.167553, 29.801714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.082474, 24.820736, 29.948517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495450, 0.168181, 0.852200,
		-0.800619, 0.468986, 0.372908,
		-0.336954, -0.867045, 0.367008,
		15.981387, 24.560623, 30.058619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.004786, 25.279825, 30.450325>,  <16.217255, 25.167553, 29.801714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.004786, 25.279825, 30.450325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.079369, 24.886850, 30.453169>,  <16.124119, 24.651066, 30.454876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.079369, 24.886850, 30.453169>,  <16.004786, 25.279825, 30.450325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.079369, 24.886850, 30.453169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467209, 0.095033, 0.879025,
		-0.864262, -0.160578, 0.476724,
		0.186456, -0.982437, 0.007110,
		16.135305, 24.592119, 30.455301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.764671, 25.003193, 31.183640>,  <16.004786, 25.279825, 30.450325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.764671, 25.003193, 31.183640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.047010, 24.771431, 31.020634>,  <16.216413, 24.632374, 30.922831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.047010, 24.771431, 31.020634>,  <15.764671, 25.003193, 31.183640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.047010, 24.771431, 31.020634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560905, 0.105807, 0.821091,
		-0.432628, -0.808142, 0.399675,
		0.705846, -0.579406, -0.407515,
		16.258764, 24.597609, 30.898378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.889498, 24.516411, 31.679974>,  <15.764671, 25.003193, 31.183640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.889498, 24.516411, 31.679974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.194715, 24.606379, 31.437593>,  <16.377846, 24.660358, 31.292166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.194715, 24.606379, 31.437593>,  <15.889498, 24.516411, 31.679974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.194715, 24.606379, 31.437593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538563, 0.297103, 0.788467,
		0.357372, -0.927977, 0.105568,
		0.763043, 0.224921, -0.605950,
		16.423630, 24.673853, 31.255808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.663620, 24.061871, 32.327393>,  <15.889498, 24.516411, 31.679974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.663620, 24.061871, 32.327393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.530485, 23.702333, 32.441444>,  <15.450604, 23.486610, 32.509876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.530485, 23.702333, 32.441444>,  <15.663620, 24.061871, 32.327393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.530485, 23.702333, 32.441444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431347, -0.123759, -0.893657,
		0.838545, -0.420434, -0.346522,
		-0.332838, -0.898843, 0.285131,
		15.430634, 23.432680, 32.526985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.554301, 23.752956, 31.729471>,  <15.663620, 24.061871, 32.327393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.554301, 23.752956, 31.729471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.369404, 23.507570, 31.985594>,  <15.258466, 23.360338, 32.139267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.369404, 23.507570, 31.985594>,  <15.554301, 23.752956, 31.729471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.369404, 23.507570, 31.985594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629496, -0.281558, -0.724196,
		0.624553, -0.737824, -0.256026,
		-0.462244, -0.613466, 0.640305,
		15.230731, 23.323530, 32.177685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.589139, 23.044987, 31.458851>,  <15.554301, 23.752956, 31.729471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.589139, 23.044987, 31.458851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.283168, 23.057756, 31.716181>,  <15.099586, 23.065418, 31.870579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.283168, 23.057756, 31.716181>,  <15.589139, 23.044987, 31.458851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.283168, 23.057756, 31.716181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610944, -0.352344, -0.708943,
		0.204040, -0.935326, 0.289021,
		-0.764928, 0.031923, 0.643324,
		15.053689, 23.067333, 31.909178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275745, 22.384457, 31.577078>,  <15.589139, 23.044987, 31.458851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.275745, 22.384457, 31.577078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.002948, 22.662495, 31.668049>,  <14.839269, 22.829317, 31.722631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.002948, 22.662495, 31.668049>,  <15.275745, 22.384457, 31.577078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.002948, 22.662495, 31.668049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627929, -0.397086, -0.669349,
		-0.374953, -0.599302, 0.707282,
		-0.681994, 0.695097, 0.227430,
		14.798349, 22.871023, 31.736279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.598463, 22.001444, 31.552536>,  <15.275745, 22.384457, 31.577078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.598463, 22.001444, 31.552536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.465301, 22.377895, 31.529043>,  <14.385403, 22.603765, 31.514948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.465301, 22.377895, 31.529043>,  <14.598463, 22.001444, 31.552536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.465301, 22.377895, 31.529043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659490, -0.276896, -0.698858,
		-0.673978, -0.193921, 0.712846,
		-0.332907, 0.941129, -0.058732,
		14.365429, 22.660234, 31.511423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.791080, 22.009697, 31.774557>,  <14.598463, 22.001444, 31.552536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.791080, 22.009697, 31.774557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.874311, 22.324078, 31.541670>,  <13.924251, 22.512707, 31.401937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.874311, 22.324078, 31.541670>,  <13.791080, 22.009697, 31.774557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.874311, 22.324078, 31.541670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693665, -0.301085, -0.654351,
		-0.689588, 0.540023, 0.482539,
		0.208079, 0.785954, -0.582220,
		13.936735, 22.559864, 31.367004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.247938, 22.050688, 31.480234>,  <13.791080, 22.009697, 31.774557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.247938, 22.050688, 31.480234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.469885, 22.282211, 31.241201>,  <13.603053, 22.421125, 31.097782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.469885, 22.282211, 31.241201>,  <13.247938, 22.050688, 31.480234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.469885, 22.282211, 31.241201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528638, -0.309343, -0.790474,
		-0.642390, 0.754512, 0.134336,
		0.554866, 0.578808, -0.597583,
		13.636345, 22.455854, 31.061926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.825118, 22.390112, 31.025314>,  <13.247938, 22.050688, 31.480234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.825118, 22.390112, 31.025314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.184565, 22.401484, 30.850189>,  <13.400232, 22.408306, 30.745115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.184565, 22.401484, 30.850189>,  <12.825118, 22.390112, 31.025314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.184565, 22.401484, 30.850189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413966, -0.275601, -0.867570,
		-0.145327, 0.960852, -0.235890,
		0.898617, 0.028431, -0.437812,
		13.454149, 22.410013, 30.718845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.636172, 22.642303, 30.411739>,  <12.825118, 22.390112, 31.025314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.636172, 22.642303, 30.411739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.006311, 22.496023, 30.371746>,  <13.228395, 22.408255, 30.347750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.006311, 22.496023, 30.371746>,  <12.636172, 22.642303, 30.411739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.006311, 22.496023, 30.371746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192528, -0.226100, -0.954888,
		0.326596, 0.902853, -0.279628,
		0.925348, -0.365699, -0.099982,
		13.283916, 22.386314, 30.341751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.023476, 22.993765, 29.851963>,  <12.636172, 22.642303, 30.411739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.023476, 22.993765, 29.851963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.208279, 22.641544, 29.894257>,  <13.319160, 22.430212, 29.919634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.208279, 22.641544, 29.894257>,  <13.023476, 22.993765, 29.851963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.208279, 22.641544, 29.894257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172522, -0.206176, -0.963186,
		0.869934, 0.426757, -0.247170,
		0.462007, -0.880551, 0.105735,
		13.346881, 22.377378, 29.925978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.314363, 22.868090, 29.296726>,  <13.023476, 22.993765, 29.851963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.314363, 22.868090, 29.296726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.308125, 22.493149, 29.435940>,  <13.304383, 22.268185, 29.519468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.308125, 22.493149, 29.435940>,  <13.314363, 22.868090, 29.296726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.308125, 22.493149, 29.435940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264497, -0.331811, -0.905507,
		0.964261, -0.106175, -0.242752,
		-0.015594, -0.937352, 0.348035,
		13.303447, 22.211943, 29.540350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.907638, 22.527874, 28.859783>,  <13.314363, 22.868090, 29.296726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.907638, 22.527874, 28.859783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.630808, 22.279325, 29.006714>,  <13.464710, 22.130196, 29.094872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.630808, 22.279325, 29.006714>,  <13.907638, 22.527874, 28.859783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.630808, 22.279325, 29.006714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165988, -0.358250, -0.918752,
		0.702482, -0.696817, 0.144795,
		-0.692075, -0.621372, 0.367327,
		13.423185, 22.092915, 29.116913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.023124, 21.894030, 28.536730>,  <13.907638, 22.527874, 28.859783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.023124, 21.894030, 28.536730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.648417, 21.841158, 28.666342>,  <13.423593, 21.809435, 28.744108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.648417, 21.841158, 28.666342>,  <14.023124, 21.894030, 28.536730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.648417, 21.841158, 28.666342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232932, -0.455507, -0.859218,
		0.261169, -0.880365, 0.395915,
		-0.936768, -0.132180, 0.324030,
		13.367386, 21.801504, 28.763550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.725625, 21.265949, 28.174463>,  <14.023124, 21.894030, 28.536730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.725625, 21.265949, 28.174463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.388043, 21.432606, 28.309608>,  <13.185494, 21.532600, 28.390696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.388043, 21.432606, 28.309608>,  <13.725625, 21.265949, 28.174463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.388043, 21.432606, 28.309608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456178, -0.226088, -0.860689,
		-0.282218, -0.880505, 0.380873,
		-0.843952, 0.416648, 0.337861,
		13.134857, 21.557598, 28.410967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.137626, 20.767109, 28.254257>,  <13.725625, 21.265949, 28.174463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.137626, 20.767109, 28.254257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.922317, 21.104122, 28.246294>,  <12.793131, 21.306330, 28.241516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.922317, 21.104122, 28.246294>,  <13.137626, 20.767109, 28.254257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.922317, 21.104122, 28.246294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575835, -0.384928, -0.721280,
		-0.615367, -0.376783, 0.692357,
		-0.538273, 0.842535, -0.019907,
		12.760835, 21.356882, 28.240322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.514642, 20.601835, 27.999235>,  <13.137626, 20.767109, 28.254257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.514642, 20.601835, 27.999235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.528055, 20.998697, 27.951065>,  <12.536103, 21.236814, 27.922163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.528055, 20.998697, 27.951065>,  <12.514642, 20.601835, 27.999235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.528055, 20.998697, 27.951065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365372, -0.099981, -0.925477,
		-0.930258, 0.075034, 0.359153,
		0.033534, 0.992156, -0.120424,
		12.538116, 21.296345, 27.914938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.854686, 20.806540, 27.769674>,  <12.514642, 20.601835, 27.999235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.854686, 20.806540, 27.769674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.107017, 21.092911, 27.650005>,  <12.258415, 21.264734, 27.578205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.107017, 21.092911, 27.650005>,  <11.854686, 20.806540, 27.769674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.107017, 21.092911, 27.650005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405417, -0.024632, -0.913800,
		-0.661585, 0.697739, 0.274711,
		0.630827, 0.715929, -0.299171,
		12.296265, 21.307690, 27.560253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.474063, 21.373487, 27.404337>,  <11.854686, 20.806540, 27.769674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.474063, 21.373487, 27.404337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.851818, 21.383705, 27.273201>,  <12.078471, 21.389835, 27.194519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.851818, 21.383705, 27.273201>,  <11.474063, 21.373487, 27.404337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.851818, 21.383705, 27.273201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319567, -0.163739, -0.933309,
		-0.077521, 0.986173, -0.146469,
		0.944387, 0.025545, -0.327842,
		12.135135, 21.391369, 27.174849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.422980, 21.745314, 26.800512>,  <11.474063, 21.373487, 27.404337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.422980, 21.745314, 26.800512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.784899, 21.583502, 26.747299>,  <12.002049, 21.486414, 26.715370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.784899, 21.583502, 26.747299>,  <11.422980, 21.745314, 26.800512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.784899, 21.583502, 26.747299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201648, -0.131844, -0.970544,
		0.375076, 0.904970, -0.200865,
		0.904796, -0.404531, -0.133034,
		12.056337, 21.462143, 26.707390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.614637, 21.879240, 26.103125>,  <11.422980, 21.745314, 26.800512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.614637, 21.879240, 26.103125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.889146, 21.597334, 26.175056>,  <12.053851, 21.428190, 26.218216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.889146, 21.597334, 26.175056>,  <11.614637, 21.879240, 26.103125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.889146, 21.597334, 26.175056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078896, -0.317913, -0.944832,
		0.723055, 0.634222, -0.273777,
		0.686270, -0.704765, 0.179831,
		12.095027, 21.385904, 26.229006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.974865, 21.686724, 25.441723>,  <11.614637, 21.879240, 26.103125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.974865, 21.686724, 25.441723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.032007, 21.356960, 25.660789>,  <12.066293, 21.159101, 25.792229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.032007, 21.356960, 25.660789>,  <11.974865, 21.686724, 25.441723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.032007, 21.356960, 25.660789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143540, -0.564749, -0.812683,
		0.979279, 0.037485, -0.199014,
		0.142856, -0.824411, 0.547667,
		12.074864, 21.109636, 25.825090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.875898, 20.007233, 7.716593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.201777, 20.065382, 7.941142>,  <17.397303, 20.100271, 8.075871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.201777, 20.065382, 7.941142>,  <16.875898, 20.007233, 7.716593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.201777, 20.065382, 7.941142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314914, -0.923793, -0.217797,
		0.486930, 0.354222, -0.798390,
		0.814695, 0.145372, 0.561372,
		17.446186, 20.108994, 8.109553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.306999, 20.550135, 7.754831>,  <16.875898, 20.007233, 7.716593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.306999, 20.550135, 7.754831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.250908, 20.673885, 8.131048>,  <16.217253, 20.748137, 8.356779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.250908, 20.673885, 8.131048>,  <16.306999, 20.550135, 7.754831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.250908, 20.673885, 8.131048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552856, 0.763586, -0.333597,
		-0.821393, -0.566765, 0.063964,
		-0.140229, 0.309377, 0.940543,
		16.208839, 20.766699, 8.413211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.570863, 20.765738, 7.811032>,  <16.306999, 20.550135, 7.754831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.570863, 20.765738, 7.811032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.835404, 20.950315, 8.047566>,  <15.994129, 21.061062, 8.189487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.835404, 20.950315, 8.047566>,  <15.570863, 20.765738, 7.811032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.835404, 20.950315, 8.047566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314605, 0.886326, -0.339779,
		-0.680906, 0.038678, 0.731349,
		0.661355, 0.461444, 0.591337,
		16.033812, 21.088749, 8.224968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.039410, 20.259789, 8.244328>,  <15.570863, 20.765738, 7.811032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.039410, 20.259789, 8.244328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.826277, 20.017181, 8.480372>,  <14.698398, 19.871618, 8.621999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.826277, 20.017181, 8.480372>,  <15.039410, 20.259789, 8.244328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.826277, 20.017181, 8.480372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061213, -0.723144, -0.687979,
		0.844005, -0.330454, 0.422440,
		-0.532831, -0.606517, 0.590109,
		14.666428, 19.835226, 8.657405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.291960, 19.571266, 8.462026>,  <15.039410, 20.259789, 8.244328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.291960, 19.571266, 8.462026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.896116, 19.563227, 8.405076>,  <14.658610, 19.558403, 8.370906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.896116, 19.563227, 8.405076>,  <15.291960, 19.571266, 8.462026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.896116, 19.563227, 8.405076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084568, -0.882177, -0.463263,
		-0.116288, -0.470490, 0.874710,
		-0.989609, -0.020101, -0.142375,
		14.599234, 19.557196, 8.362364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.051591, 18.961927, 8.795230>,  <15.291960, 19.571266, 8.462026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.051591, 18.961927, 8.795230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.858708, 19.042900, 8.454290>,  <14.742979, 19.091484, 8.249727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.858708, 19.042900, 8.454290>,  <15.051591, 18.961927, 8.795230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.858708, 19.042900, 8.454290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133642, -0.944551, -0.299937,
		-0.865803, -0.258541, 0.428417,
		-0.482208, 0.202432, -0.852348,
		14.714046, 19.103630, 8.198586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.535751, 18.494225, 8.687960>,  <15.051591, 18.961927, 8.795230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.535751, 18.494225, 8.687960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.567216, 18.625280, 8.311351>,  <14.586095, 18.703915, 8.085385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.567216, 18.625280, 8.311351>,  <14.535751, 18.494225, 8.687960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.567216, 18.625280, 8.311351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152030, -0.929459, -0.336143,
		-0.985241, 0.169581, -0.023301,
		0.078661, 0.327639, -0.941523,
		14.590815, 18.723572, 8.028894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.906702, 18.076344, 8.241494>,  <14.535751, 18.494225, 8.687960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.906702, 18.076344, 8.241494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.230990, 18.112484, 8.010127>,  <15.425564, 18.134169, 7.871307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.230990, 18.112484, 8.010127>,  <14.906702, 18.076344, 8.241494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.230990, 18.112484, 8.010127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551074, -0.451275, 0.701903,
		-0.197607, -0.887799, -0.415649,
		0.810721, 0.090353, -0.578418,
		15.474207, 18.139589, 7.836602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.234194, 17.471090, 8.031013>,  <14.906702, 18.076344, 8.241494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.234194, 17.471090, 8.031013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.521818, 17.744396, 8.081774>,  <15.694393, 17.908379, 8.112229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.521818, 17.744396, 8.081774>,  <15.234194, 17.471090, 8.031013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.521818, 17.744396, 8.081774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337574, -0.503028, 0.795617,
		0.607450, -0.529258, -0.592360,
		0.719061, 0.683263, 0.126900,
		15.737536, 17.949375, 8.119843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.967986, 17.183891, 7.954944>,  <15.234194, 17.471090, 8.031013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.967986, 17.183891, 7.954944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.994634, 17.500669, 8.197722>,  <16.010622, 17.690737, 8.343390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.994634, 17.500669, 8.197722>,  <15.967986, 17.183891, 7.954944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.994634, 17.500669, 8.197722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588758, -0.522311, 0.616892,
		0.805560, 0.316247, -0.501060,
		0.066619, 0.791946, 0.606946,
		16.014620, 17.738253, 8.379807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671474, 17.304846, 8.138430>,  <15.967986, 17.183891, 7.954944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.671474, 17.304846, 8.138430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.453379, 17.467686, 8.431546>,  <16.322521, 17.565390, 8.607416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.453379, 17.467686, 8.431546>,  <16.671474, 17.304846, 8.138430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.453379, 17.467686, 8.431546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385482, -0.654490, 0.650420,
		0.744392, 0.637112, 0.199922,
		-0.545237, 0.407101, 0.732792,
		16.289808, 17.589817, 8.651384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.165953, 17.464876, 8.651114>,  <16.671474, 17.304846, 8.138430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.165953, 17.464876, 8.651114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.798241, 17.413956, 8.800093>,  <16.577614, 17.383404, 8.889480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.798241, 17.413956, 8.800093>,  <17.165953, 17.464876, 8.651114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798241, 17.413956, 8.800093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377671, -0.551767, 0.743584,
		0.110846, 0.824226, 0.555306,
		-0.919281, -0.127300, 0.372447,
		16.522457, 17.375767, 8.911827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.246056, 17.447449, 9.363405>,  <17.165953, 17.464876, 8.651114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.246056, 17.447449, 9.363405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.883516, 17.289640, 9.302891>,  <16.665993, 17.194956, 9.266582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.883516, 17.289640, 9.302891>,  <17.246056, 17.447449, 9.363405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.883516, 17.289640, 9.302891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127455, -0.596641, 0.792323,
		-0.402851, 0.698837, 0.591048,
		-0.906348, -0.394520, -0.151287,
		16.611612, 17.171284, 9.257504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.850681, 17.569269, 9.960895>,  <17.246056, 17.447449, 9.363405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.850681, 17.569269, 9.960895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.668917, 17.242043, 9.819882>,  <16.559858, 17.045706, 9.735275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.668917, 17.242043, 9.819882>,  <16.850681, 17.569269, 9.960895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.668917, 17.242043, 9.819882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130351, -0.452556, 0.882157,
		-0.881204, 0.354909, 0.312282,
		-0.454411, -0.818066, -0.352531,
		16.532593, 16.996622, 9.714123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.303120, 17.324184, 10.500192>,  <16.850681, 17.569269, 9.960895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.303120, 17.324184, 10.500192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.395332, 17.012085, 10.267618>,  <16.450661, 16.824825, 10.128074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.395332, 17.012085, 10.267618>,  <16.303120, 17.324184, 10.500192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.395332, 17.012085, 10.267618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099476, -0.575502, 0.811728,
		-0.967967, -0.244969, -0.055056,
		0.230532, -0.780249, -0.581435,
		16.464493, 16.778009, 10.093187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919252, 16.812529, 10.779675>,  <16.303120, 17.324184, 10.500192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.919252, 16.812529, 10.779675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.186623, 16.617378, 10.555109>,  <16.347044, 16.500288, 10.420370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.186623, 16.617378, 10.555109>,  <15.919252, 16.812529, 10.779675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.186623, 16.617378, 10.555109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117686, -0.675929, 0.727509,
		-0.734411, -0.552355, -0.394390,
		0.668423, -0.487877, -0.561415,
		16.387150, 16.471016, 10.386685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.765798, 16.092686, 11.037598>,  <15.919252, 16.812529, 10.779675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.765798, 16.092686, 11.037598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.115755, 16.084459, 10.844048>,  <16.325729, 16.079523, 10.727918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.115755, 16.084459, 10.844048>,  <15.765798, 16.092686, 11.037598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.115755, 16.084459, 10.844048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326667, -0.712551, 0.620935,
		-0.357557, -0.701319, -0.616688,
		0.874895, -0.020568, -0.483876,
		16.378223, 16.078289, 10.698885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.888797, 15.477687, 10.877740>,  <15.765798, 16.092686, 11.037598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.888797, 15.477687, 10.877740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.257500, 15.632717, 10.872871>,  <16.478722, 15.725736, 10.869950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.257500, 15.632717, 10.872871>,  <15.888797, 15.477687, 10.877740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.257500, 15.632717, 10.872871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320914, -0.744847, 0.584994,
		0.217665, -0.543128, -0.810947,
		0.921757, 0.387576, -0.012170,
		16.534027, 15.748990, 10.869221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.355844, 14.956066, 10.966807>,  <15.888797, 15.477687, 10.877740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.355844, 14.956066, 10.966807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.592916, 15.265790, 11.055509>,  <16.735159, 15.451625, 11.108729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.592916, 15.265790, 11.055509>,  <16.355844, 14.956066, 10.966807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.592916, 15.265790, 11.055509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488057, -0.564273, 0.665881,
		0.640727, -0.286426, -0.712340,
		0.592680, 0.774310, 0.221753,
		16.770720, 15.498083, 11.122034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.940958, 14.620387, 10.916039>,  <16.355844, 14.956066, 10.966807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.940958, 14.620387, 10.916039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.032450, 14.950086, 11.123229>,  <17.087345, 15.147904, 11.247543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.032450, 14.950086, 11.123229>,  <16.940958, 14.620387, 10.916039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.032450, 14.950086, 11.123229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563546, -0.545974, 0.619943,
		0.793787, 0.150104, -0.589381,
		0.228731, 0.824246, 0.517977,
		17.101068, 15.197359, 11.278623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.667332, 14.628337, 11.088627>,  <16.940958, 14.620387, 10.916039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.667332, 14.628337, 11.088627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.482744, 14.856839, 11.360131>,  <17.371992, 14.993940, 11.523034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.482744, 14.856839, 11.360131>,  <17.667332, 14.628337, 11.088627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.482744, 14.856839, 11.360131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557948, -0.407961, 0.722677,
		0.689741, 0.712204, -0.130471,
		-0.461466, 0.571256, 0.678760,
		17.344305, 15.028216, 11.563759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.192841, 14.890575, 11.594202>,  <17.667332, 14.628337, 11.088627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.192841, 14.890575, 11.594202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.841574, 14.930572, 11.781316>,  <17.630814, 14.954570, 11.893584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.841574, 14.930572, 11.781316>,  <18.192841, 14.890575, 11.594202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.841574, 14.930572, 11.781316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389959, -0.416721, 0.821143,
		0.277043, 0.903518, 0.326959,
		-0.878168, 0.099991, 0.467785,
		17.578123, 14.960568, 11.921651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.451408, 15.037235, 12.181716>,  <18.192841, 14.890575, 11.594202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.451408, 15.037235, 12.181716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.070208, 14.943137, 12.258083>,  <17.841488, 14.886679, 12.303904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.070208, 14.943137, 12.258083>,  <18.451408, 15.037235, 12.181716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.070208, 14.943137, 12.258083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281955, -0.458052, 0.843024,
		-0.110867, 0.857233, 0.502852,
		-0.953000, -0.235245, 0.190918,
		17.784307, 14.872563, 12.315359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.418602, 15.082183, 12.926887>,  <18.451408, 15.037235, 12.181716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.418602, 15.082183, 12.926887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.122936, 14.857997, 12.777479>,  <17.945538, 14.723485, 12.687835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.122936, 14.857997, 12.777479>,  <18.418602, 15.082183, 12.926887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.122936, 14.857997, 12.777479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110101, -0.647660, 0.753932,
		-0.664467, 0.516154, 0.540435,
		-0.739163, -0.560465, -0.373520,
		17.901188, 14.689857, 12.665423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.063292, 14.992035, 13.448075>,  <18.418602, 15.082183, 12.926887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.063292, 14.992035, 13.448075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.981091, 14.689750, 13.199346>,  <17.931770, 14.508379, 13.050108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.981091, 14.689750, 13.199346>,  <18.063292, 14.992035, 13.448075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.981091, 14.689750, 13.199346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202797, -0.654478, 0.728377,
		-0.957414, 0.023580, 0.287753,
		-0.205504, -0.755713, -0.621825,
		17.919439, 14.463036, 13.012798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.689238, 14.522892, 13.859857>,  <18.063292, 14.992035, 13.448075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.689238, 14.522892, 13.859857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.843987, 14.320148, 13.551722>,  <17.936836, 14.198501, 13.366840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.843987, 14.320148, 13.551722>,  <17.689238, 14.522892, 13.859857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.843987, 14.320148, 13.551722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288081, -0.727141, 0.623117,
		-0.875979, -0.462987, -0.135294,
		0.386873, -0.506862, -0.770338,
		17.960049, 14.168089, 13.320621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545416, 13.912271, 13.915774>,  <17.689238, 14.522892, 13.859857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.545416, 13.912271, 13.915774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.860929, 13.880907, 13.671915>,  <18.050238, 13.862088, 13.525599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.860929, 13.880907, 13.671915>,  <17.545416, 13.912271, 13.915774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.860929, 13.880907, 13.671915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460512, -0.581545, 0.670622,
		-0.407122, -0.809727, -0.422605,
		0.788784, -0.078410, -0.609649,
		18.097565, 13.857384, 13.489020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.716866, 13.101106, 13.818627>,  <17.545416, 13.912271, 13.915774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.716866, 13.101106, 13.818627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.037985, 13.314200, 13.711515>,  <18.230656, 13.442058, 13.647248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.037985, 13.314200, 13.711515>,  <17.716866, 13.101106, 13.818627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.037985, 13.314200, 13.711515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589378, -0.641029, 0.491646,
		0.090264, -0.552516, -0.828600,
		0.802799, 0.532737, -0.267780,
		18.278824, 13.474021, 13.631182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.256943, 12.569117, 13.642225>,  <17.716866, 13.101106, 13.818627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.256943, 12.569117, 13.642225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.427652, 12.914900, 13.748492>,  <18.530077, 13.122370, 13.812253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.427652, 12.914900, 13.748492>,  <18.256943, 12.569117, 13.642225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.427652, 12.914900, 13.748492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733204, -0.502706, 0.457928,
		0.529412, -0.000641, -0.848365,
		0.426772, 0.864457, 0.265669,
		18.555683, 13.174237, 13.828193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.925276, 12.415870, 13.589243>,  <18.256943, 12.569117, 13.642225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.925276, 12.415870, 13.589243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.942249, 12.752064, 13.805312>,  <18.952433, 12.953780, 13.934954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.942249, 12.752064, 13.805312>,  <18.925276, 12.415870, 13.589243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.942249, 12.752064, 13.805312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694224, -0.413621, 0.589041,
		0.718507, 0.350006, -0.601036,
		0.042433, 0.840484, 0.540172,
		18.954979, 13.004209, 13.967363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.637878, 12.467827, 14.001913>,  <18.925276, 12.415870, 13.589243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.637878, 12.467827, 14.001913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.379196, 12.687908, 14.213214>,  <19.223988, 12.819957, 14.339994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.379196, 12.687908, 14.213214>,  <19.637878, 12.467827, 14.001913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.379196, 12.687908, 14.213214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400257, -0.344751, 0.849082,
		0.649283, 0.760542, 0.002729,
		-0.646704, 0.550203, 0.528253,
		19.185184, 12.852969, 14.371690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.811611, 12.252474, 14.686602>,  <19.637878, 12.467827, 14.001913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.811611, 12.252474, 14.686602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.547291, 12.551246, 14.716105>,  <19.388699, 12.730509, 14.733808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.547291, 12.551246, 14.716105>,  <19.811611, 12.252474, 14.686602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.547291, 12.551246, 14.716105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169631, 0.052891, 0.984087,
		0.731143, 0.662796, -0.161653,
		-0.660799, 0.746930, 0.073759,
		19.349051, 12.775325, 14.738234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.483154, 12.041718, 15.035306>,  <19.811611, 12.252474, 14.686602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.483154, 12.041718, 15.035306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.396265, 12.126026, 14.654068>,  <20.344131, 12.176611, 14.425325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.396265, 12.126026, 14.654068>,  <20.483154, 12.041718, 15.035306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.396265, 12.126026, 14.654068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618822, -0.784858, -0.032530,
		-0.754900, 0.582730, 0.300918,
		-0.217222, 0.210771, -0.953095,
		20.331099, 12.189258, 14.368139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.494854, 12.724809, 14.999683>,  <20.483154, 12.041718, 15.035306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.494854, 12.724809, 14.999683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.874685, 12.718399, 14.874436>,  <21.102585, 12.714554, 14.799288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.874685, 12.718399, 14.874436>,  <20.494854, 12.724809, 14.999683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.874685, 12.718399, 14.874436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097540, 0.964232, 0.246460,
		0.297970, -0.264575, 0.917177,
		0.949579, -0.016024, -0.313119,
		21.159559, 12.713592, 14.780500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.984291, 12.875402, 15.570227>,  <20.494854, 12.724809, 14.999683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.984291, 12.875402, 15.570227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.131311, 12.967258, 15.209744>,  <21.219522, 13.022372, 14.993455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.131311, 12.967258, 15.209744>,  <20.984291, 12.875402, 15.570227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.131311, 12.967258, 15.209744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132444, 0.946233, 0.295131,
		0.920524, -0.227835, 0.317374,
		0.367551, 0.229641, -0.901205,
		21.241577, 13.036151, 14.939383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.031456, 13.551215, 15.537131>,  <20.984291, 12.875402, 15.570227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.031456, 13.551215, 15.537131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.206352, 13.486014, 15.183352>,  <21.311289, 13.446894, 14.971084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.206352, 13.486014, 15.183352>,  <21.031456, 13.551215, 15.537131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.206352, 13.486014, 15.183352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217922, 0.973333, -0.071650,
		0.872543, -0.161413, 0.461101,
		0.437239, -0.163002, -0.884450,
		21.337524, 13.437114, 14.918016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.870821, 13.755571, 15.574191>,  <21.031456, 13.551215, 15.537131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.870821, 13.755571, 15.574191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.674667, 13.770455, 15.225906>,  <21.556974, 13.779386, 15.016935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.674667, 13.770455, 15.225906>,  <21.870821, 13.755571, 15.574191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.674667, 13.770455, 15.225906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284981, 0.951010, -0.119858,
		0.823596, -0.306913, -0.476964,
		-0.490383, 0.037211, -0.870712,
		21.527552, 13.781619, 14.964693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.261776, 14.161460, 15.041363>,  <21.870821, 13.755571, 15.574191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.261776, 14.161460, 15.041363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.864601, 14.193793, 15.006628>,  <21.626297, 14.213194, 14.985787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.864601, 14.193793, 15.006628>,  <22.261776, 14.161460, 15.041363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.864601, 14.193793, 15.006628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088607, 0.992017, -0.089732,
		0.078889, -0.096792, -0.992173,
		-0.992938, 0.080834, -0.086836,
		21.566719, 14.218043, 14.980577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.210835, 14.849862, 14.750113>,  <22.261776, 14.161460, 15.041363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.210835, 14.849862, 14.750113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.467323, 15.154165, 14.709954>,  <22.621218, 15.336747, 14.685859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.467323, 15.154165, 14.709954>,  <22.210835, 14.849862, 14.750113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.467323, 15.154165, 14.709954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747888, 0.590301, -0.303658,
		-0.171746, 0.269798, 0.947477,
		0.641223, 0.760759, -0.100397,
		22.659691, 15.382393, 14.679835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.903673, 15.449544, 15.043943>,  <22.210835, 14.849862, 14.750113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.903673, 15.449544, 15.043943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.186234, 15.598612, 14.803241>,  <22.355770, 15.688052, 14.658819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.186234, 15.598612, 14.803241>,  <21.903673, 15.449544, 15.043943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.186234, 15.598612, 14.803241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659930, 0.654144, -0.369579,
		0.255906, 0.658189, 0.708025,
		0.706403, 0.372669, -0.601758,
		22.398155, 15.710413, 14.622713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.851879, 16.176069, 15.124314>,  <21.903673, 15.449544, 15.043943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.851879, 16.176069, 15.124314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.073446, 16.143896, 14.792843>,  <22.206387, 16.124592, 14.593960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.073446, 16.143896, 14.792843>,  <21.851879, 16.176069, 15.124314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.073446, 16.143896, 14.792843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467510, 0.793541, -0.389521,
		0.688920, 0.603177, 0.401954,
		0.553917, -0.080431, -0.828677,
		22.239622, 16.119766, 14.544240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.092175, 16.855656, 14.925271>,  <21.851879, 16.176069, 15.124314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.092175, 16.855656, 14.925271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.106737, 16.614996, 14.606099>,  <22.115475, 16.470600, 14.414596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.106737, 16.614996, 14.606099>,  <22.092175, 16.855656, 14.925271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.106737, 16.614996, 14.606099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426635, 0.712681, -0.556837,
		0.903691, 0.360697, -0.230739,
		0.036406, -0.601650, -0.797930,
		22.117659, 16.434502, 14.366720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.176083, 17.269442, 14.320486>,  <22.092175, 16.855656, 14.925271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.176083, 17.269442, 14.320486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.039228, 16.928350, 14.162599>,  <21.957117, 16.723696, 14.067865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.039228, 16.928350, 14.162599>,  <22.176083, 17.269442, 14.320486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.039228, 16.928350, 14.162599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598192, 0.521609, -0.608350,
		0.724645, 0.027981, -0.688553,
		-0.342133, -0.852726, -0.394720,
		21.936588, 16.672533, 14.044183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.287231, 17.341045, 13.616280>,  <22.176083, 17.269442, 14.320486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.287231, 17.341045, 13.616280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.024328, 17.041714, 13.652092>,  <21.866587, 16.862116, 13.673579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.024328, 17.041714, 13.652092>,  <22.287231, 17.341045, 13.616280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.024328, 17.041714, 13.652092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571254, 0.417165, -0.706853,
		0.491611, -0.515729, -0.701671,
		-0.657258, -0.748329, 0.089529,
		21.827150, 16.817215, 13.678951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.054321, 17.194859, 12.945831>,  <22.287231, 17.341045, 13.616280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.054321, 17.194859, 12.945831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.767273, 17.070080, 13.194897>,  <21.595043, 16.995213, 13.344336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.767273, 17.070080, 13.194897>,  <22.054321, 17.194859, 12.945831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.767273, 17.070080, 13.194897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696324, 0.337307, -0.633527,
		-0.012402, -0.888208, -0.459275,
		-0.717620, -0.311947, 0.622663,
		21.551987, 16.976496, 13.381696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.539772, 17.036007, 12.414463>,  <22.054321, 17.194859, 12.945831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.539772, 17.036007, 12.414463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.331375, 17.029892, 12.755833>,  <21.206337, 17.026222, 12.960654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.331375, 17.029892, 12.755833>,  <21.539772, 17.036007, 12.414463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.331375, 17.029892, 12.755833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832973, 0.227383, -0.504433,
		-0.186343, -0.973685, -0.131198,
		-0.520992, -0.015287, 0.853425,
		21.175077, 17.025307, 13.011860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.967974, 16.679239, 12.285288>,  <21.539772, 17.036007, 12.414463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.967974, 16.679239, 12.285288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.892988, 16.931816, 12.586256>,  <20.847996, 17.083363, 12.766837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.892988, 16.931816, 12.586256>,  <20.967974, 16.679239, 12.285288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.892988, 16.931816, 12.586256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639951, 0.502612, -0.581243,
		-0.745198, -0.590475, 0.309871,
		-0.187464, 0.631443, 0.752420,
		20.836748, 17.121248, 12.811982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.233450, 16.529360, 12.368215>,  <20.967974, 16.679239, 12.285288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.233450, 16.529360, 12.368215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.274048, 16.878014, 12.560026>,  <20.298407, 17.087206, 12.675114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.274048, 16.878014, 12.560026>,  <20.233450, 16.529360, 12.368215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.274048, 16.878014, 12.560026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866984, 0.313891, -0.387055,
		-0.487891, -0.376460, 0.787553,
		0.101496, 0.871636, 0.479529,
		20.304497, 17.139505, 12.703885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.564953, 16.664036, 12.728312>,  <20.233450, 16.529360, 12.368215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.564953, 16.664036, 12.728312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.759878, 17.012941, 12.711912>,  <19.876833, 17.222284, 12.702072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.759878, 17.012941, 12.711912>,  <19.564953, 16.664036, 12.728312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.759878, 17.012941, 12.711912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841300, 0.456397, -0.289682,
		-0.233968, 0.175658, 0.956244,
		0.487312, 0.872265, -0.040999,
		19.906073, 17.274620, 12.699613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.148048, 17.117966, 13.108239>,  <19.564953, 16.664036, 12.728312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.148048, 17.117966, 13.108239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.370329, 17.342218, 12.862674>,  <19.503696, 17.476770, 12.715335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.370329, 17.342218, 12.862674>,  <19.148048, 17.117966, 13.108239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.370329, 17.342218, 12.862674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830452, 0.409254, -0.377969,
		0.039345, 0.719863, 0.693000,
		0.555700, 0.560632, -0.613913,
		19.537039, 17.510408, 12.678499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.901716, 17.779659, 13.172834>,  <19.148048, 17.117966, 13.108239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.901716, 17.779659, 13.172834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.099260, 17.789948, 12.825171>,  <19.217787, 17.796120, 12.616572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.099260, 17.789948, 12.825171>,  <18.901716, 17.779659, 13.172834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.099260, 17.789948, 12.825171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804876, 0.391775, -0.445743,
		0.329051, 0.919701, 0.214183,
		0.493862, 0.025719, -0.869160,
		19.247419, 17.797663, 12.564423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.780479, 18.451822, 12.860937>,  <18.901716, 17.779659, 13.172834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.780479, 18.451822, 12.860937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.880451, 18.191668, 12.574014>,  <18.940435, 18.035574, 12.401860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.880451, 18.191668, 12.574014>,  <18.780479, 18.451822, 12.860937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.880451, 18.191668, 12.574014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828560, 0.239674, -0.506009,
		0.501021, 0.720800, -0.478983,
		0.249931, -0.650388, -0.717308,
		18.955431, 17.996552, 12.358822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.820020, 20.892883, 20.814337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.714770, 20.556931, 21.004229>,  <14.651621, 20.355358, 21.118164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.714770, 20.556931, 21.004229>,  <14.820020, 20.892883, 20.814337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.714770, 20.556931, 21.004229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343589, -0.541382, -0.767367,
		0.901506, -0.038800, 0.431024,
		-0.263122, -0.839881, 0.474728,
		14.635834, 20.304966, 21.146646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.463892, 20.500118, 20.713467>,  <14.820020, 20.892883, 20.814337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.463892, 20.500118, 20.713467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.162735, 20.255064, 20.809658>,  <14.982040, 20.108032, 20.867373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.162735, 20.255064, 20.809658>,  <15.463892, 20.500118, 20.713467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.162735, 20.255064, 20.809658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310993, -0.653191, -0.690380,
		0.580031, -0.444994, 0.682308,
		-0.752893, -0.612635, 0.240481,
		14.936867, 20.071274, 20.881802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.796212, 19.832392, 20.673157>,  <15.463892, 20.500118, 20.713467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.796212, 19.832392, 20.673157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.402025, 19.764547, 20.669474>,  <15.165513, 19.723841, 20.667263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.402025, 19.764547, 20.669474>,  <15.796212, 19.832392, 20.673157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.402025, 19.764547, 20.669474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121828, -0.667990, -0.734131,
		0.118367, -0.724584, 0.678946,
		-0.985468, -0.169612, -0.009207,
		15.106385, 19.713663, 20.666712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.794436, 19.047707, 20.561665>,  <15.796212, 19.832392, 20.673157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.794436, 19.047707, 20.561665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.446204, 19.219555, 20.465733>,  <15.237265, 19.322664, 20.408173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.446204, 19.219555, 20.465733>,  <15.794436, 19.047707, 20.561665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.446204, 19.219555, 20.465733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008801, -0.473756, -0.880612,
		-0.491947, -0.768754, 0.408662,
		-0.870581, 0.429618, -0.239829,
		15.185030, 19.348440, 20.393784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.412926, 18.445877, 20.375296>,  <15.794436, 19.047707, 20.561665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.412926, 18.445877, 20.375296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.224719, 18.766172, 20.227009>,  <15.111795, 18.958349, 20.138037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.224719, 18.766172, 20.227009>,  <15.412926, 18.445877, 20.375296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.224719, 18.766172, 20.227009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235899, -0.518985, -0.821587,
		-0.850274, -0.299117, 0.433085,
		-0.470516, 0.800739, -0.370718,
		15.083564, 19.006393, 20.115793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.715017, 18.233837, 20.239506>,  <15.412926, 18.445877, 20.375296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.715017, 18.233837, 20.239506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.801891, 18.551783, 20.012871>,  <14.854015, 18.742550, 19.876890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.801891, 18.551783, 20.012871>,  <14.715017, 18.233837, 20.239506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.801891, 18.551783, 20.012871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115919, -0.555334, -0.823509,
		-0.969223, 0.244531, -0.028470,
		0.217184, 0.794864, -0.566589,
		14.867046, 18.790241, 19.842894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.246118, 18.216677, 19.639193>,  <14.715017, 18.233837, 20.239506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.246118, 18.216677, 19.639193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.522814, 18.471880, 19.503874>,  <14.688831, 18.625002, 19.422684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.522814, 18.471880, 19.503874>,  <14.246118, 18.216677, 19.639193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.522814, 18.471880, 19.503874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087174, -0.391258, -0.916143,
		-0.716866, 0.663223, -0.215031,
		0.691739, 0.638007, -0.338296,
		14.730335, 18.663282, 19.402386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.093706, 18.295156, 18.958336>,  <14.246118, 18.216677, 19.639193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.093706, 18.295156, 18.958336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.454898, 18.465139, 18.932913>,  <14.671613, 18.567129, 18.917658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.454898, 18.465139, 18.932913>,  <14.093706, 18.295156, 18.958336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.454898, 18.465139, 18.932913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063884, -0.279051, -0.958149,
		-0.424909, 0.861128, -0.279125,
		0.902979, 0.424958, -0.063559,
		14.725792, 18.592627, 18.913845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.966657, 18.747982, 18.585484>,  <14.093706, 18.295156, 18.958336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.966657, 18.747982, 18.585484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.362752, 18.696466, 18.564161>,  <14.600410, 18.665556, 18.551369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.362752, 18.696466, 18.564161>,  <13.966657, 18.747982, 18.585484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.362752, 18.696466, 18.564161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089922, -0.298060, -0.950302,
		0.106501, 0.945819, -0.306732,
		0.990238, -0.128790, -0.053306,
		14.659823, 18.657829, 18.548170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.208426, 19.046669, 17.904818>,  <13.966657, 18.747982, 18.585484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.208426, 19.046669, 17.904818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.507143, 18.809837, 18.025972>,  <14.686374, 18.667738, 18.098665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.507143, 18.809837, 18.025972>,  <14.208426, 19.046669, 17.904818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507143, 18.809837, 18.025972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091003, -0.360172, -0.928437,
		0.658801, 0.720914, -0.215093,
		0.746793, -0.592081, 0.302887,
		14.731181, 18.632214, 18.116838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.733948, 19.152338, 17.443874>,  <14.208426, 19.046669, 17.904818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.733948, 19.152338, 17.443874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.773667, 18.795771, 17.620741>,  <14.797500, 18.581831, 17.726862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.773667, 18.795771, 17.620741>,  <14.733948, 19.152338, 17.443874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.773667, 18.795771, 17.620741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096093, -0.433697, -0.895920,
		0.990407, 0.131454, 0.042593,
		0.099300, -0.891418, 0.442168,
		14.803457, 18.528345, 17.753391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.303166, 18.968966, 17.162783>,  <14.733948, 19.152338, 17.443874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.303166, 18.968966, 17.162783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.115493, 18.652317, 17.319347>,  <15.002889, 18.462328, 17.413286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.115493, 18.652317, 17.319347>,  <15.303166, 18.968966, 17.162783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.115493, 18.652317, 17.319347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089795, -0.483691, -0.870621,
		0.878523, -0.373335, 0.298024,
		-0.469185, -0.791621, 0.391410,
		14.974737, 18.414831, 17.436769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849198, 18.368616, 17.185240>,  <15.303166, 18.968966, 17.162783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.849198, 18.368616, 17.185240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.463921, 18.262037, 17.171030>,  <15.232754, 18.198090, 17.162504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.463921, 18.262037, 17.171030>,  <15.849198, 18.368616, 17.185240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.463921, 18.262037, 17.171030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210430, -0.665183, -0.716415,
		0.167256, -0.697523, 0.696769,
		-0.963195, -0.266446, -0.035524,
		15.174962, 18.182104, 17.160374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.610305, 18.147911, 16.586283>,  <15.849198, 18.368616, 17.185240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.610305, 18.147911, 16.586283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.623820, 18.107832, 16.188526>,  <15.631929, 18.083784, 15.949872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.623820, 18.107832, 16.188526>,  <15.610305, 18.147911, 16.586283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.623820, 18.107832, 16.188526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459487, -0.882017, 0.104488,
		-0.887541, -0.460442, 0.016239,
		0.033788, -0.100199, -0.994394,
		15.633957, 18.077772, 15.890208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696915, 17.608078, 16.053490>,  <15.610305, 18.147911, 16.586283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.696915, 17.608078, 16.053490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.979237, 17.351097, 15.934093>,  <16.148630, 17.196909, 15.862454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.979237, 17.351097, 15.934093>,  <15.696915, 17.608078, 16.053490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.979237, 17.351097, 15.934093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463083, 0.099562, 0.880705,
		-0.536091, -0.759832, 0.367779,
		0.705804, -0.642451, -0.298491,
		16.190977, 17.158361, 15.844545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.761017, 16.915731, 16.489603>,  <15.696915, 17.608078, 16.053490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.761017, 16.915731, 16.489603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.112406, 16.991840, 16.314295>,  <16.323238, 17.037506, 16.209110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.112406, 16.991840, 16.314295>,  <15.761017, 16.915731, 16.489603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.112406, 16.991840, 16.314295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419437, 0.132187, 0.898109,
		0.228823, -0.972791, 0.036313,
		0.878472, 0.190277, -0.438272,
		16.375948, 17.048923, 16.182814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.236050, 16.661472, 16.920897>,  <15.761017, 16.915731, 16.489603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.236050, 16.661472, 16.920897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.483969, 16.856009, 16.674540>,  <16.632719, 16.972731, 16.526726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.483969, 16.856009, 16.674540>,  <16.236050, 16.661472, 16.920897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.483969, 16.856009, 16.674540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624012, 0.170486, 0.762590,
		0.475880, -0.856976, -0.197815,
		0.619797, 0.486340, -0.615894,
		16.669909, 17.001911, 16.489771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.802050, 16.289801, 16.849676>,  <16.236050, 16.661472, 16.920897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.802050, 16.289801, 16.849676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.911087, 16.667406, 16.775345>,  <16.976509, 16.893969, 16.730745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.911087, 16.667406, 16.775345>,  <16.802050, 16.289801, 16.849676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.911087, 16.667406, 16.775345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456029, 0.043298, 0.888911,
		0.847189, -0.327056, -0.418695,
		0.272595, 0.944012, -0.185828,
		16.992867, 16.950609, 16.719597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.517084, 16.365925, 17.100632>,  <16.802050, 16.289801, 16.849676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.517084, 16.365925, 17.100632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.404425, 16.749443, 17.085730>,  <17.336828, 16.979553, 17.076788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.404425, 16.749443, 17.085730>,  <17.517084, 16.365925, 17.100632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.404425, 16.749443, 17.085730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496365, 0.178816, 0.849498,
		0.821155, 0.220770, -0.526275,
		-0.281650, 0.958794, -0.037253,
		17.319929, 17.037081, 17.074554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.009701, 16.656036, 17.378778>,  <17.517084, 16.365925, 17.100632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.009701, 16.656036, 17.378778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751152, 16.958076, 17.422647>,  <17.596022, 17.139299, 17.448969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751152, 16.958076, 17.422647>,  <18.009701, 16.656036, 17.378778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.751152, 16.958076, 17.422647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322752, 0.140328, 0.936023,
		0.691399, 0.640418, -0.334413,
		-0.646374, 0.755098, 0.109674,
		17.557240, 17.184607, 17.455549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.358639, 17.213001, 17.707260>,  <18.009701, 16.656036, 17.378778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.358639, 17.213001, 17.707260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.970030, 17.280867, 17.773422>,  <17.736864, 17.321585, 17.813120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.970030, 17.280867, 17.773422>,  <18.358639, 17.213001, 17.707260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.970030, 17.280867, 17.773422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178370, 0.064145, 0.981870,
		0.155975, 0.983413, -0.092581,
		-0.971522, 0.169661, 0.165407,
		17.678574, 17.331764, 17.823044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.396013, 17.770029, 18.269672>,  <18.358639, 17.213001, 17.707260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.396013, 17.770029, 18.269672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.020655, 17.632250, 18.280737>,  <17.795439, 17.549582, 18.287376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.020655, 17.632250, 18.280737>,  <18.396013, 17.770029, 18.269672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.020655, 17.632250, 18.280737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025533, 0.148951, 0.988515,
		-0.344614, 0.926913, -0.148570,
		-0.938397, -0.344449, 0.027663,
		17.739136, 17.528915, 18.289036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.869032, 18.308905, 18.532255>,  <18.396013, 17.770029, 18.269672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.869032, 18.308905, 18.532255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.720247, 17.941635, 18.586805>,  <17.630978, 17.721273, 18.619535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.720247, 17.941635, 18.586805>,  <17.869032, 18.308905, 18.532255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.720247, 17.941635, 18.586805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108035, 0.188738, 0.976067,
		-0.921940, 0.348325, -0.169398,
		-0.371961, -0.918176, 0.136374,
		17.608660, 17.666182, 18.627718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.360668, 18.427746, 19.030413>,  <17.869032, 18.308905, 18.532255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.360668, 18.427746, 19.030413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.379221, 18.028215, 19.036051>,  <17.390352, 17.788498, 19.039434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.379221, 18.028215, 19.036051>,  <17.360668, 18.427746, 19.030413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.379221, 18.028215, 19.036051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249480, 0.002082, 0.968378,
		-0.967269, -0.048430, -0.249090,
		0.046380, -0.998824, 0.014096,
		17.393135, 17.728569, 19.040279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.684408, 18.223286, 19.296125>,  <17.360668, 18.427746, 19.030413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.684408, 18.223286, 19.296125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.953609, 17.936026, 19.366919>,  <17.115131, 17.763670, 19.409393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.953609, 17.936026, 19.366919>,  <16.684408, 18.223286, 19.296125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.953609, 17.936026, 19.366919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258108, -0.003794, 0.966108,
		-0.693141, -0.695876, -0.187914,
		0.673004, -0.718152, 0.176981,
		17.155510, 17.720579, 19.420013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.365088, 17.879580, 19.799536>,  <16.684408, 18.223286, 19.296125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.365088, 17.879580, 19.799536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734426, 17.728840, 19.828955>,  <16.956030, 17.638395, 19.846605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734426, 17.728840, 19.828955>,  <16.365088, 17.879580, 19.799536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.734426, 17.728840, 19.828955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075690, 0.009139, 0.997090,
		-0.376426, -0.926229, -0.020085,
		0.923350, -0.376851, 0.073546,
		17.011431, 17.615786, 19.851019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.335527, 17.285419, 20.264595>,  <16.365088, 17.879580, 19.799536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.335527, 17.285419, 20.264595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.698368, 17.453621, 20.257168>,  <16.916073, 17.554541, 20.252712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.698368, 17.453621, 20.257168>,  <16.335527, 17.285419, 20.264595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.698368, 17.453621, 20.257168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012568, 0.071153, 0.997386,
		0.420725, -0.904497, 0.069828,
		0.907101, 0.420503, -0.018568,
		16.970499, 17.579771, 20.251596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.594963, 16.965948, 20.825144>,  <16.335527, 17.285419, 20.264595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.594963, 16.965948, 20.825144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.835587, 17.275597, 20.746292>,  <16.979961, 17.461386, 20.698982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.835587, 17.275597, 20.746292>,  <16.594963, 16.965948, 20.825144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.835587, 17.275597, 20.746292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014836, 0.257555, 0.966150,
		0.798691, -0.578271, 0.166419,
		0.601559, 0.774124, -0.197128,
		17.016054, 17.507833, 20.687155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.941580, 16.278893, 21.046618>,  <16.594963, 16.965948, 20.825144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.941580, 16.278893, 21.046618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.927290, 15.901723, 21.179054>,  <16.918716, 15.675422, 21.258516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.927290, 15.901723, 21.179054>,  <16.941580, 16.278893, 21.046618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.927290, 15.901723, 21.179054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389876, -0.291901, -0.873379,
		0.920174, -0.160286, -0.357194,
		-0.035725, -0.942922, 0.331092,
		16.916573, 15.618846, 21.278381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.328564, 15.889054, 20.495750>,  <16.941580, 16.278893, 21.046618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.328564, 15.889054, 20.495750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058796, 15.664999, 20.688168>,  <16.896935, 15.530566, 20.803617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058796, 15.664999, 20.688168>,  <17.328564, 15.889054, 20.495750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.058796, 15.664999, 20.688168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435657, -0.224122, -0.871764,
		0.596120, -0.797506, -0.092875,
		-0.674421, -0.560138, 0.481042,
		16.856470, 15.496958, 20.832479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.413239, 15.316618, 20.084497>,  <17.328564, 15.889054, 20.495750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.413239, 15.316618, 20.084497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.061676, 15.295731, 20.274151>,  <16.850739, 15.283198, 20.387943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.061676, 15.295731, 20.274151>,  <17.413239, 15.316618, 20.084497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.061676, 15.295731, 20.274151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396858, -0.471404, -0.787579,
		0.264634, -0.880370, 0.393596,
		-0.878904, -0.052218, 0.474132,
		16.798004, 15.280066, 20.416389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.106258, 14.722228, 19.865671>,  <17.413239, 15.316618, 20.084497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.106258, 14.722228, 19.865671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.797108, 14.915687, 20.029987>,  <16.611618, 15.031761, 20.128578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.797108, 14.915687, 20.029987>,  <17.106258, 14.722228, 19.865671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.797108, 14.915687, 20.029987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621698, -0.447470, -0.642854,
		-0.127097, -0.752234, 0.646521,
		-0.772876, 0.483646, 0.410791,
		16.565245, 15.060781, 20.153225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.476316, 14.201271, 19.924232>,  <17.106258, 14.722228, 19.865671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.476316, 14.201271, 19.924232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.335665, 14.574134, 19.889730>,  <16.251274, 14.797852, 19.869030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.335665, 14.574134, 19.889730>,  <16.476316, 14.201271, 19.924232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.335665, 14.574134, 19.889730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663131, -0.313059, -0.679890,
		-0.660767, -0.181872, 0.728223,
		-0.351630, 0.932157, -0.086254,
		16.230175, 14.853781, 19.863853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.757354, 14.134248, 19.909849>,  <16.476316, 14.201271, 19.924232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.757354, 14.134248, 19.909849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.787583, 14.512342, 19.782843>,  <15.805721, 14.739199, 19.706638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.787583, 14.512342, 19.782843>,  <15.757354, 14.134248, 19.909849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.787583, 14.512342, 19.782843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752115, -0.155032, -0.640537,
		-0.654684, 0.287217, 0.699210,
		0.075573, 0.945236, -0.317518,
		15.810255, 14.795914, 19.687588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.063043, 14.366476, 19.898012>,  <15.757354, 14.134248, 19.909849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.063043, 14.366476, 19.898012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.276127, 14.605403, 19.658201>,  <15.403977, 14.748759, 19.514315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.276127, 14.605403, 19.658201>,  <15.063043, 14.366476, 19.898012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.276127, 14.605403, 19.658201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664835, -0.142967, -0.733181,
		-0.523654, 0.789159, 0.320957,
		0.532710, 0.597317, -0.599526,
		15.435940, 14.784598, 19.478344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.566776, 14.913877, 19.715307>,  <15.063043, 14.366476, 19.898012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.566776, 14.913877, 19.715307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.859015, 14.900564, 19.442509>,  <15.034357, 14.892577, 19.278830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.859015, 14.900564, 19.442509>,  <14.566776, 14.913877, 19.715307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.859015, 14.900564, 19.442509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681366, 0.029397, -0.731353,
		0.044388, 0.999014, -0.001199,
		0.730596, -0.033281, -0.681999,
		15.078194, 14.890580, 19.237909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.341430, 15.387888, 19.162378>,  <14.566776, 14.913877, 19.715307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.341430, 15.387888, 19.162378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.597526, 15.129733, 18.995731>,  <14.751184, 14.974840, 18.895744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.597526, 15.129733, 18.995731>,  <14.341430, 15.387888, 19.162378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.597526, 15.129733, 18.995731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548469, -0.004330, -0.836160,
		0.537842, 0.763844, -0.356746,
		0.640241, -0.645386, -0.416616,
		14.789598, 14.936117, 18.870747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.496093, 15.667628, 18.462481>,  <14.341430, 15.387888, 19.162378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.496093, 15.667628, 18.462481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.561802, 15.273655, 18.484091>,  <14.601228, 15.037271, 18.497057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.561802, 15.273655, 18.484091>,  <14.496093, 15.667628, 18.462481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.561802, 15.273655, 18.484091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516230, -0.132511, -0.846137,
		0.840548, 0.111108, -0.530221,
		0.164272, -0.984935, 0.054025,
		14.611084, 14.978174, 18.500298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.760662, 15.428201, 17.848570>,  <14.496093, 15.667628, 18.462481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.760662, 15.428201, 17.848570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.619386, 15.090747, 18.010328>,  <14.534619, 14.888275, 18.107384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.619386, 15.090747, 18.010328>,  <14.760662, 15.428201, 17.848570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.619386, 15.090747, 18.010328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327733, -0.293295, -0.898092,
		0.876269, -0.449733, -0.172897,
		-0.353191, -0.843634, 0.404397,
		14.513428, 14.837657, 18.131647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.001925, 14.921180, 17.298525>,  <14.760662, 15.428201, 17.848570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.001925, 14.921180, 17.298525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.693154, 14.818250, 17.531046>,  <14.507892, 14.756492, 17.670559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.693154, 14.818250, 17.531046>,  <15.001925, 14.921180, 17.298525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.693154, 14.818250, 17.531046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433374, -0.455987, -0.777344,
		0.465095, -0.851974, 0.240471,
		-0.771929, -0.257325, 0.581301,
		14.461576, 14.741053, 17.705437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<17.303154, 17.014196, 26.763210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.697449, 17.079796, 26.748110>,  <17.934027, 17.119156, 26.739050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.697449, 17.079796, 26.748110>,  <17.303154, 17.014196, 26.763210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.697449, 17.079796, 26.748110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008321, -0.271548, -0.962389,
		-0.168080, 0.948349, -0.269040,
		0.985738, 0.163997, -0.037751,
		17.993170, 17.128996, 26.736784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.333805, 17.230661, 26.137686>,  <17.303154, 17.014196, 26.763210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.333805, 17.230661, 26.137686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.715782, 17.138079, 26.211994>,  <17.944969, 17.082529, 26.256580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.715782, 17.138079, 26.211994>,  <17.333805, 17.230661, 26.137686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.715782, 17.138079, 26.211994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090586, -0.368764, -0.925099,
		0.282627, 0.900245, -0.331182,
		0.954943, -0.231458, 0.185772,
		18.002266, 17.068642, 26.267725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.710138, 17.541676, 25.629896>,  <17.333805, 17.230661, 26.137686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.710138, 17.541676, 25.629896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.929703, 17.228081, 25.745869>,  <18.061441, 17.039923, 25.815453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.929703, 17.228081, 25.745869>,  <17.710138, 17.541676, 25.629896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.929703, 17.228081, 25.745869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086594, -0.291654, -0.952596,
		0.831384, 0.547995, -0.092203,
		0.548909, -0.783989, 0.289929,
		18.094376, 16.992884, 25.832848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293438, 17.571316, 25.213547>,  <17.710138, 17.541676, 25.629896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293438, 17.571316, 25.213547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.297167, 17.189083, 25.331377>,  <18.299404, 16.959743, 25.402075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.297167, 17.189083, 25.331377>,  <18.293438, 17.571316, 25.213547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.297167, 17.189083, 25.331377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248942, -0.283095, -0.926221,
		0.968474, 0.081968, 0.235245,
		0.009324, -0.955583, 0.294575,
		18.299965, 16.902409, 25.419750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.793631, 17.405869, 24.868723>,  <18.293438, 17.571316, 25.213547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.793631, 17.405869, 24.868723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.598898, 17.065502, 24.947655>,  <18.482058, 16.861282, 24.995014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.598898, 17.065502, 24.947655>,  <18.793631, 17.405869, 24.868723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.598898, 17.065502, 24.947655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053279, -0.254414, -0.965627,
		0.871869, -0.459585, 0.169193,
		-0.486833, -0.850914, 0.197329,
		18.452848, 16.810228, 25.006853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.149900, 16.701994, 24.616919>,  <18.793631, 17.405869, 24.868723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.149900, 16.701994, 24.616919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.763853, 16.603029, 24.651182>,  <18.532225, 16.543650, 24.671740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.763853, 16.603029, 24.651182>,  <19.149900, 16.701994, 24.616919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.763853, 16.603029, 24.651182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026669, -0.232561, -0.972216,
		0.260460, -0.940586, 0.217850,
		-0.965116, -0.247413, 0.085657,
		18.474318, 16.528805, 24.676880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.074532, 16.174194, 24.195883>,  <19.149900, 16.701994, 24.616919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.074532, 16.174194, 24.195883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.687582, 16.254845, 24.257242>,  <18.455412, 16.303234, 24.294058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.687582, 16.254845, 24.257242>,  <19.074532, 16.174194, 24.195883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.687582, 16.254845, 24.257242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187821, -0.164418, -0.968344,
		-0.170045, -0.965559, 0.196928,
		-0.967372, 0.201649, 0.153394,
		18.397369, 16.315332, 24.303261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.745295, 15.612991, 23.985527>,  <19.074532, 16.174194, 24.195883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.745295, 15.612991, 23.985527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.453516, 15.884489, 23.951548>,  <18.278450, 16.047388, 23.931160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.453516, 15.884489, 23.951548>,  <18.745295, 15.612991, 23.985527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.453516, 15.884489, 23.951548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195967, -0.326338, -0.924716,
		-0.655368, -0.657882, 0.371057,
		-0.729445, 0.678744, -0.084949,
		18.234682, 16.088112, 23.926064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.159456, 15.218582, 23.693153>,  <18.745295, 15.612991, 23.985527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.159456, 15.218582, 23.693153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.053513, 15.597961, 23.623529>,  <17.989946, 15.825589, 23.581755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.053513, 15.597961, 23.623529>,  <18.159456, 15.218582, 23.693153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.053513, 15.597961, 23.623529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524841, -0.293218, -0.799103,
		-0.808945, -0.120293, 0.575445,
		-0.264857, 0.948448, -0.174062,
		17.974056, 15.882496, 23.571310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.566677, 15.070189, 23.416428>,  <18.159456, 15.218582, 23.693153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.566677, 15.070189, 23.416428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.598936, 15.456044, 23.316055>,  <17.618292, 15.687558, 23.255833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.598936, 15.456044, 23.316055>,  <17.566677, 15.070189, 23.416428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.598936, 15.456044, 23.316055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572154, -0.161340, -0.804120,
		-0.816171, 0.208419, 0.538912,
		0.080646, 0.964640, -0.250929,
		17.623129, 15.745437, 23.240776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.937386, 15.383454, 23.404673>,  <17.566677, 15.070189, 23.416428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.937386, 15.383454, 23.404673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.195383, 15.570916, 23.163229>,  <17.350182, 15.683393, 23.018362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.195383, 15.570916, 23.163229>,  <16.937386, 15.383454, 23.404673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.195383, 15.570916, 23.163229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564662, -0.239945, -0.789673,
		-0.514917, 0.850170, 0.109868,
		0.644994, 0.468655, -0.603610,
		17.388882, 15.711513, 22.982145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.502539, 15.551373, 22.951033>,  <16.937386, 15.383454, 23.404673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.502539, 15.551373, 22.951033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.843952, 15.640823, 22.762789>,  <17.048800, 15.694493, 22.649843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.843952, 15.640823, 22.762789>,  <16.502539, 15.551373, 22.951033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.843952, 15.640823, 22.762789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458407, -0.107049, -0.882272,
		-0.247676, 0.968778, 0.011141,
		0.853534, 0.223625, -0.470608,
		17.100012, 15.707911, 22.621607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.409662, 16.144384, 22.386965>,  <16.502539, 15.551373, 22.951033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.409662, 16.144384, 22.386965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.728336, 15.926279, 22.282673>,  <16.919540, 15.795416, 22.220098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.728336, 15.926279, 22.282673>,  <16.409662, 16.144384, 22.386965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.728336, 15.926279, 22.282673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374160, -0.106165, -0.921267,
		0.474651, 0.831516, -0.288596,
		0.796687, -0.545262, -0.260729,
		16.967342, 15.762700, 22.204454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670643, 16.412319, 21.741816>,  <16.409662, 16.144384, 22.386965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670643, 16.412319, 21.741816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.810246, 16.037561, 21.750063>,  <16.894007, 15.812707, 21.755011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.810246, 16.037561, 21.750063>,  <16.670643, 16.412319, 21.741816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810246, 16.037561, 21.750063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426365, -0.178343, -0.886795,
		0.834511, 0.300705, -0.461702,
		0.349005, -0.936894, 0.020619,
		16.914948, 15.756494, 21.756248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.044130, 16.989990, 21.499884>,  <16.670643, 16.412319, 21.741816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.044130, 16.989990, 21.499884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.043934, 17.337530, 21.301853>,  <17.043816, 17.546055, 21.183035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.043934, 17.337530, 21.301853>,  <17.044130, 16.989990, 21.499884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.043934, 17.337530, 21.301853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009915, 0.495048, 0.868809,
		0.999951, 0.005338, 0.008371,
		-0.000493, 0.868849, -0.495076,
		17.043785, 17.598185, 21.153330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.377079, 17.370459, 21.942795>,  <17.044130, 16.989990, 21.499884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.377079, 17.370459, 21.942795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.198193, 17.638176, 21.705462>,  <17.090860, 17.798805, 21.563061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.198193, 17.638176, 21.705462>,  <17.377079, 17.370459, 21.942795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.198193, 17.638176, 21.705462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125300, 0.609945, 0.782475,
		0.885605, 0.424282, -0.188916,
		-0.447218, 0.669292, -0.593333,
		17.064028, 17.838964, 21.527462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.651506, 18.002781, 22.200008>,  <17.377079, 17.370459, 21.942795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.651506, 18.002781, 22.200008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.330526, 18.101791, 21.982824>,  <17.137938, 18.161198, 21.852514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.330526, 18.101791, 21.982824>,  <17.651506, 18.002781, 22.200008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.330526, 18.101791, 21.982824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260532, 0.673268, 0.691978,
		0.536839, 0.696736, -0.475776,
		-0.802450, 0.247526, -0.542959,
		17.089792, 18.176048, 21.819937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751568, 18.709879, 22.039991>,  <17.651506, 18.002781, 22.200008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751568, 18.709879, 22.039991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.360952, 18.624926, 22.025734>,  <17.126583, 18.573954, 22.017179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.360952, 18.624926, 22.025734>,  <17.751568, 18.709879, 22.039991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.360952, 18.624926, 22.025734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164964, 0.631334, 0.757763,
		-0.138433, 0.745863, -0.651556,
		-0.976536, -0.212383, -0.035644,
		17.067991, 18.561211, 22.015041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.471739, 19.330973, 22.014057>,  <17.751568, 18.709879, 22.039991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.471739, 19.330973, 22.014057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.175032, 19.092524, 22.136971>,  <16.997007, 18.949455, 22.210718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.175032, 19.092524, 22.136971>,  <17.471739, 19.330973, 22.014057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.175032, 19.092524, 22.136971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313518, 0.713254, 0.626877,
		-0.592866, 0.368657, -0.715962,
		-0.741766, -0.596121, 0.307283,
		16.952501, 18.913687, 22.229156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.944439, 19.757244, 21.984901>,  <17.471739, 19.330973, 22.014057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.944439, 19.757244, 21.984901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.834894, 19.451464, 22.218351>,  <16.769167, 19.267996, 22.358421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.834894, 19.451464, 22.218351>,  <16.944439, 19.757244, 21.984901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.834894, 19.451464, 22.218351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366410, 0.643989, 0.671582,
		-0.889237, -0.029923, -0.456467,
		-0.273864, -0.764450, 0.583623,
		16.752735, 19.222128, 22.393438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332426, 19.997589, 22.310822>,  <16.944439, 19.757244, 21.984901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332426, 19.997589, 22.310822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.426756, 19.678856, 22.533333>,  <16.483353, 19.487616, 22.666840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.426756, 19.678856, 22.533333>,  <16.332426, 19.997589, 22.310822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.426756, 19.678856, 22.533333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123740, 0.543140, 0.830474,
		-0.963886, -0.264679, 0.029485,
		0.235823, -0.796833, 0.556277,
		16.497503, 19.439806, 22.700216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.868627, 20.013065, 22.981995>,  <16.332426, 19.997589, 22.310822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.868627, 20.013065, 22.981995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.178072, 19.785383, 23.093370>,  <16.363739, 19.648775, 23.160196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.178072, 19.785383, 23.093370>,  <15.868627, 20.013065, 22.981995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.178072, 19.785383, 23.093370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233222, 0.664344, 0.710109,
		-0.589177, -0.484411, 0.646696,
		0.773613, -0.569204, 0.278441,
		16.410156, 19.614622, 23.176903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745363, 19.827986, 23.686527>,  <15.868627, 20.013065, 22.981995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.745363, 19.827986, 23.686527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.141472, 19.809917, 23.633884>,  <16.379137, 19.799076, 23.602299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.141472, 19.809917, 23.633884>,  <15.745363, 19.827986, 23.686527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.141472, 19.809917, 23.633884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136587, 0.496070, 0.857472,
		0.026555, -0.867107, 0.497414,
		0.990272, -0.045170, -0.131608,
		16.438553, 19.796366, 23.594402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.889265, 19.655327, 24.325741>,  <15.745363, 19.827986, 23.686527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.889265, 19.655327, 24.325741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.240208, 19.757431, 24.163216>,  <16.450773, 19.818693, 24.065701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.240208, 19.757431, 24.163216>,  <15.889265, 19.655327, 24.325741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.240208, 19.757431, 24.163216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345643, 0.251144, 0.904133,
		0.332830, -0.933686, 0.132115,
		0.877357, 0.255258, -0.406310,
		16.503414, 19.834009, 24.041323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.375544, 19.352440, 24.655674>,  <15.889265, 19.655327, 24.325741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.375544, 19.352440, 24.655674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.568388, 19.673088, 24.514267>,  <16.684095, 19.865477, 24.429422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.568388, 19.673088, 24.514267>,  <16.375544, 19.352440, 24.655674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568388, 19.673088, 24.514267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283908, 0.238788, 0.928642,
		0.828833, -0.548076, -0.112463,
		0.482112, 0.801619, -0.353519,
		16.713022, 19.913574, 24.408211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.017153, 19.436605, 25.082258>,  <16.375544, 19.352440, 24.655674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.017153, 19.436605, 25.082258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.915857, 19.799852, 24.948877>,  <16.855080, 20.017801, 24.868849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.915857, 19.799852, 24.948877>,  <17.017153, 19.436605, 25.082258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915857, 19.799852, 24.948877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354600, 0.407833, 0.841387,
		0.900072, 0.094828, -0.425297,
		-0.253237, 0.908119, -0.333453,
		16.839886, 20.072289, 24.848841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.492643, 19.768906, 25.360411>,  <17.017153, 19.436605, 25.082258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.492643, 19.768906, 25.360411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.248966, 20.060045, 25.234474>,  <17.102760, 20.234728, 25.158913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.248966, 20.060045, 25.234474>,  <17.492643, 19.768906, 25.360411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.248966, 20.060045, 25.234474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326647, 0.592074, 0.736716,
		0.722625, 0.345959, -0.598435,
		-0.609191, 0.727847, -0.314841,
		17.066208, 20.278399, 25.140022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.029215, 20.337309, 25.302425>,  <17.492643, 19.768906, 25.360411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.029215, 20.337309, 25.302425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.651106, 20.466543, 25.320660>,  <17.424240, 20.544085, 25.331600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.651106, 20.466543, 25.320660>,  <18.029215, 20.337309, 25.302425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.651106, 20.466543, 25.320660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235554, 0.579046, 0.780526,
		0.225781, 0.748546, -0.623460,
		-0.945271, 0.323086, 0.045585,
		17.367525, 20.563469, 25.334335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<12.398261, 17.755642, 28.298777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.606420, 18.001097, 28.061243>,  <12.731315, 18.148369, 27.918722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.606420, 18.001097, 28.061243>,  <12.398261, 17.755642, 28.298777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.606420, 18.001097, 28.061243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574875, -0.262470, -0.775002,
		-0.631432, 0.744689, 0.216175,
		0.520396, 0.613635, -0.593835,
		12.762538, 18.185186, 27.883093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.877036, 18.107788, 28.000206>,  <12.398261, 17.755642, 28.298777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.877036, 18.107788, 28.000206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.208760, 18.171711, 27.786026>,  <12.407795, 18.210066, 27.657518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.208760, 18.171711, 27.786026>,  <11.877036, 18.107788, 28.000206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.208760, 18.171711, 27.786026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462345, -0.341907, -0.818130,
		-0.313819, 0.926046, -0.209660,
		0.829310, 0.159809, -0.535450,
		12.457553, 18.219654, 27.625391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.712759, 18.507500, 27.344442>,  <11.877036, 18.107788, 28.000206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.712759, 18.507500, 27.344442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.053927, 18.307447, 27.284582>,  <12.258628, 18.187416, 27.248667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.053927, 18.307447, 27.284582>,  <11.712759, 18.507500, 27.344442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.053927, 18.307447, 27.284582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412982, -0.471070, -0.779447,
		0.319331, 0.726609, -0.608331,
		0.852920, -0.500132, -0.149650,
		12.309804, 18.157408, 27.239687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.782839, 18.539457, 26.655684>,  <11.712759, 18.507500, 27.344442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.782839, 18.539457, 26.655684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.010781, 18.232454, 26.773123>,  <12.147547, 18.048252, 26.843586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.010781, 18.232454, 26.773123>,  <11.782839, 18.539457, 26.655684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.010781, 18.232454, 26.773123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250777, -0.502668, -0.827306,
		0.782544, 0.397818, -0.478921,
		0.569856, -0.767506, 0.293597,
		12.181738, 18.002203, 26.861202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.342810, 18.406584, 26.062675>,  <11.782839, 18.539457, 26.655684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.342810, 18.406584, 26.062675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.312375, 18.061041, 26.261860>,  <12.294114, 17.853716, 26.381371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.312375, 18.061041, 26.261860>,  <12.342810, 18.406584, 26.062675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.312375, 18.061041, 26.261860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129419, -0.486626, -0.863971,
		0.988666, -0.130182, -0.074774,
		-0.076087, -0.863856, 0.497959,
		12.289549, 17.801884, 26.411247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.697016, 17.908997, 25.655817>,  <12.342810, 18.406584, 26.062675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.697016, 17.908997, 25.655817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.454787, 17.701344, 25.897076>,  <12.309450, 17.576752, 26.041830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.454787, 17.701344, 25.897076>,  <12.697016, 17.908997, 25.655817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.454787, 17.701344, 25.897076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279695, -0.570720, -0.772042,
		0.745020, -0.636224, 0.200412,
		-0.605571, -0.519132, 0.603146,
		12.273116, 17.545605, 26.078020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.926253, 17.230434, 25.464558>,  <12.697016, 17.908997, 25.655817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.926253, 17.230434, 25.464558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.561166, 17.235325, 25.627918>,  <12.342113, 17.238258, 25.725935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.561166, 17.235325, 25.627918>,  <12.926253, 17.230434, 25.464558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.561166, 17.235325, 25.627918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391113, -0.315328, -0.864638,
		0.118209, -0.948904, 0.292588,
		-0.912720, 0.012227, 0.408403,
		12.287350, 17.238993, 25.750439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.818058, 16.523048, 25.684681>,  <12.926253, 17.230434, 25.464558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.818058, 16.523048, 25.684681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.473442, 16.710106, 25.605629>,  <12.266672, 16.822340, 25.558197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.473442, 16.710106, 25.605629>,  <12.818058, 16.523048, 25.684681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.473442, 16.710106, 25.605629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116261, -0.560663, -0.819842,
		-0.494195, -0.683352, 0.537403,
		-0.861542, 0.467640, -0.197630,
		12.214980, 16.850399, 25.546339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.343065, 16.062147, 25.263475>,  <12.818058, 16.523048, 25.684681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.343065, 16.062147, 25.263475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.180205, 16.421631, 25.198294>,  <12.082489, 16.637321, 25.159185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.180205, 16.421631, 25.198294>,  <12.343065, 16.062147, 25.263475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.180205, 16.421631, 25.198294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226760, -0.272285, -0.935115,
		-0.884765, -0.343781, 0.314652,
		-0.407150, 0.898708, -0.162952,
		12.058061, 16.691242, 25.149408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.657230, 15.913499, 24.989899>,  <12.343065, 16.062147, 25.263475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.657230, 15.913499, 24.989899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.747038, 16.284765, 24.871172>,  <11.800922, 16.507524, 24.799936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.747038, 16.284765, 24.871172>,  <11.657230, 15.913499, 24.989899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.747038, 16.284765, 24.871172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442639, -0.174219, -0.879613,
		-0.868137, 0.328873, 0.371726,
		0.224519, 0.928165, -0.296817,
		11.814394, 16.563215, 24.782127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.025335, 16.228024, 24.613571>,  <11.657230, 15.913499, 24.989899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.025335, 16.228024, 24.613571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.325960, 16.459854, 24.487560>,  <11.506335, 16.598953, 24.411953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.325960, 16.459854, 24.487560>,  <11.025335, 16.228024, 24.613571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.325960, 16.459854, 24.487560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328842, -0.084822, -0.940568,
		-0.571854, 0.810491, 0.126841,
		0.751562, 0.579578, -0.315029,
		11.551429, 16.633728, 24.393051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.765495, 16.624716, 24.132074>,  <11.025335, 16.228024, 24.613571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.765495, 16.624716, 24.132074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.154992, 16.661211, 24.048645>,  <11.388690, 16.683107, 23.998587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.154992, 16.661211, 24.048645>,  <10.765495, 16.624716, 24.132074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.154992, 16.661211, 24.048645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199877, -0.095952, -0.975111,
		-0.108980, 0.991195, -0.075197,
		0.973741, 0.091237, -0.208574,
		11.447115, 16.688581, 23.986073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.007961, 17.155966, 23.631243>,  <10.765495, 16.624716, 24.132074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.007961, 17.155966, 23.631243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.333232, 16.923174, 23.628729>,  <11.528395, 16.783499, 23.627220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.333232, 16.923174, 23.628729>,  <11.007961, 17.155966, 23.631243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.333232, 16.923174, 23.628729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017018, -0.012979, -0.999771,
		0.581767, 0.813098, -0.020459,
		0.813177, -0.581982, -0.006286,
		11.577185, 16.748579, 23.626842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.341287, 17.322472, 23.012009>,  <11.007961, 17.155966, 23.631243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.341287, 17.322472, 23.012009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.480567, 16.960854, 23.111176>,  <11.564135, 16.743883, 23.170675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.480567, 16.960854, 23.111176>,  <11.341287, 17.322472, 23.012009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.480567, 16.960854, 23.111176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087293, -0.294588, -0.951629,
		0.933347, 0.309716, -0.181492,
		0.348200, -0.904043, 0.247917,
		11.585027, 16.689640, 23.185551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.001040, 17.848053, 23.073648>,  <11.341287, 17.322472, 23.012009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.001040, 17.848053, 23.073648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.011408, 18.196760, 22.877954>,  <12.017629, 18.405985, 22.760538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.011408, 18.196760, 22.877954>,  <12.001040, 17.848053, 23.073648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.011408, 18.196760, 22.877954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048386, 0.489921, 0.870423,
		0.998492, 0.001111, 0.054880,
		0.025920, 0.871766, -0.489236,
		12.019184, 18.458290, 22.731184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.493171, 18.214573, 23.530668>,  <12.001040, 17.848053, 23.073648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.493171, 18.214573, 23.530668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.289074, 18.479303, 23.310982>,  <12.166616, 18.638142, 23.179171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.289074, 18.479303, 23.310982>,  <12.493171, 18.214573, 23.530668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.289074, 18.479303, 23.310982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063352, 0.665788, 0.743447,
		0.857695, 0.344543, -0.381640,
		-0.510241, 0.661828, -0.549216,
		12.136002, 18.677853, 23.146217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.832003, 18.851927, 23.434570>,  <12.493171, 18.214573, 23.530668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.832003, 18.851927, 23.434570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.453219, 18.949060, 23.350380>,  <12.225949, 19.007341, 23.299866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.453219, 18.949060, 23.350380>,  <12.832003, 18.851927, 23.434570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.453219, 18.949060, 23.350380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078847, 0.810516, 0.580385,
		0.311532, 0.533005, -0.786672,
		-0.946959, 0.242835, -0.210476,
		12.169132, 19.021912, 23.287237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.843362, 19.633654, 23.323725>,  <12.832003, 18.851927, 23.434570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.843362, 19.633654, 23.323725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.459787, 19.552893, 23.403400>,  <12.229643, 19.504436, 23.451206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.459787, 19.552893, 23.403400>,  <12.843362, 19.633654, 23.323725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.459787, 19.552893, 23.403400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015909, 0.662917, 0.748524,
		-0.283175, 0.720955, -0.632483,
		-0.958936, -0.201902, 0.199191,
		12.172107, 19.492323, 23.463158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.584236, 20.288019, 23.543917>,  <12.843362, 19.633654, 23.323725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.584236, 20.288019, 23.543917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.316618, 20.025145, 23.682762>,  <12.156047, 19.867420, 23.766069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.316618, 20.025145, 23.682762>,  <12.584236, 20.288019, 23.543917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.316618, 20.025145, 23.682762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188052, 0.601527, 0.776403,
		-0.719038, 0.454172, -0.526034,
		-0.669045, -0.657185, 0.347113,
		12.115905, 19.827990, 23.786896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.013995, 20.723942, 23.721455>,  <12.584236, 20.288019, 23.543917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.013995, 20.723942, 23.721455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.998180, 20.381470, 23.927519>,  <11.988691, 20.175985, 24.051157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.998180, 20.381470, 23.927519>,  <12.013995, 20.723942, 23.721455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.998180, 20.381470, 23.927519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078868, 0.516629, 0.852569,
		-0.996101, -0.006921, -0.087951,
		-0.039538, -0.856181, 0.515161,
		11.986319, 20.124615, 24.082067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.436029, 20.810705, 24.221729>,  <12.013995, 20.723942, 23.721455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.436029, 20.810705, 24.221729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.648824, 20.517916, 24.392002>,  <11.776500, 20.342241, 24.494165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.648824, 20.517916, 24.392002>,  <11.436029, 20.810705, 24.221729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.648824, 20.517916, 24.392002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115850, 0.435075, 0.892910,
		-0.838791, -0.524330, 0.146654,
		0.531985, -0.731975, 0.425681,
		11.808419, 20.298323, 24.519707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.082972, 20.557777, 24.876488>,  <11.436029, 20.810705, 24.221729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.082972, 20.557777, 24.876488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.465034, 20.454163, 24.933868>,  <11.694271, 20.391994, 24.968296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.465034, 20.454163, 24.933868>,  <11.082972, 20.557777, 24.876488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.465034, 20.454163, 24.933868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018377, 0.431669, 0.901845,
		-0.295535, -0.864038, 0.407551,
		0.955155, -0.259037, 0.143452,
		11.751580, 20.376451, 24.976904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.174675, 20.256117, 25.601021>,  <11.082972, 20.557777, 24.876488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.174675, 20.256117, 25.601021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.542000, 20.358393, 25.480141>,  <11.762395, 20.419758, 25.407614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.542000, 20.358393, 25.480141>,  <11.174675, 20.256117, 25.601021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.542000, 20.358393, 25.480141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178871, 0.413008, 0.892989,
		0.353138, -0.874098, 0.333536,
		0.918313, 0.255688, -0.302199,
		11.817493, 20.435099, 25.389481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.570630, 20.019878, 26.117737>,  <11.174675, 20.256117, 25.601021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.570630, 20.019878, 26.117737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.792531, 20.283073, 25.914049>,  <11.925672, 20.440990, 25.791838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.792531, 20.283073, 25.914049>,  <11.570630, 20.019878, 26.117737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.792531, 20.283073, 25.914049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116001, 0.544884, 0.830449,
		0.823890, -0.519763, 0.225948,
		0.554752, 0.657988, -0.509218,
		11.958957, 20.480469, 25.761284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.168620, 20.097719, 26.546841>,  <11.570630, 20.019878, 26.117737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.168620, 20.097719, 26.546841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.193494, 20.419479, 26.310513>,  <12.208418, 20.612535, 26.168715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.193494, 20.419479, 26.310513>,  <12.168620, 20.097719, 26.546841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.193494, 20.419479, 26.310513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451315, 0.505326, 0.735500,
		0.890195, -0.312383, -0.331615,
		0.062184, 0.804402, -0.590823,
		12.212149, 20.660799, 26.133266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.821581, 20.314102, 26.588575>,  <12.168620, 20.097719, 26.546841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.821581, 20.314102, 26.588575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.619839, 20.641088, 26.477306>,  <12.498794, 20.837280, 26.410545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.619839, 20.641088, 26.477306>,  <12.821581, 20.314102, 26.588575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.619839, 20.641088, 26.477306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372161, 0.496476, 0.784224,
		0.779181, 0.292002, -0.554628,
		-0.504355, 0.817463, -0.278173,
		12.468533, 20.886328, 26.393854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.254507, 20.818497, 26.552462>,  <12.821581, 20.314102, 26.588575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.254507, 20.818497, 26.552462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.906845, 21.010563, 26.599806>,  <12.698248, 21.125803, 26.628212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.906845, 21.010563, 26.599806>,  <13.254507, 20.818497, 26.552462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.906845, 21.010563, 26.599806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370459, 0.473611, 0.799032,
		0.327609, 0.738332, -0.589523,
		-0.869156, 0.480165, 0.118363,
		12.646098, 21.154612, 26.635315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.319619, 21.571068, 26.796883>,  <13.254507, 20.818497, 26.552462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.319619, 21.571068, 26.796883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.942054, 21.491261, 26.902121>,  <12.715514, 21.443377, 26.965263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.942054, 21.491261, 26.902121>,  <13.319619, 21.571068, 26.796883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.942054, 21.491261, 26.902121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147426, 0.458312, 0.876479,
		-0.295453, 0.866108, -0.403194,
		-0.943914, -0.199517, 0.263096,
		12.658879, 21.431406, 26.981049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.308036, 22.213188, 26.216825>,  <13.319619, 21.571068, 26.796883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.308036, 22.213188, 26.216825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.630131, 22.435598, 26.134434>,  <13.823387, 22.569044, 26.084999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.630131, 22.435598, 26.134434>,  <13.308036, 22.213188, 26.216825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.630131, 22.435598, 26.134434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070916, -0.254578, -0.964448,
		-0.588697, 0.791217, -0.165565,
		0.805237, 0.556027, -0.205979,
		13.871702, 22.602407, 26.072639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.075141, 22.635870, 25.736105>,  <13.308036, 22.213188, 26.216825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.075141, 22.635870, 25.736105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.473435, 22.652216, 25.703018>,  <13.712412, 22.662024, 25.683167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.473435, 22.652216, 25.703018>,  <13.075141, 22.635870, 25.736105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.473435, 22.652216, 25.703018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072426, -0.209150, -0.975198,
		-0.057149, 0.977029, -0.205299,
		0.995735, 0.040863, -0.082715,
		13.772156, 22.664474, 25.678204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.312304, 23.002419, 25.136005>,  <13.075141, 22.635870, 25.736105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.312304, 23.002419, 25.136005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.645794, 22.800177, 25.224787>,  <13.845888, 22.678831, 25.278055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.645794, 22.800177, 25.224787>,  <13.312304, 23.002419, 25.136005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.645794, 22.800177, 25.224787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054914, -0.324047, -0.944446,
		0.549441, 0.799598, -0.242401,
		0.833726, -0.505606, 0.221954,
		13.895912, 22.648495, 25.291372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.699608, 23.064819, 24.550034>,  <13.312304, 23.002419, 25.136005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.699608, 23.064819, 24.550034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.893096, 22.772121, 24.742102>,  <14.009189, 22.596502, 24.857344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.893096, 22.772121, 24.742102>,  <13.699608, 23.064819, 24.550034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.893096, 22.772121, 24.742102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190869, -0.447226, -0.873818,
		0.854157, 0.514332, -0.076665,
		0.483719, -0.731745, 0.480172,
		14.038212, 22.552597, 24.886152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.350409, 22.941441, 24.156279>,  <13.699608, 23.064819, 24.550034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.350409, 22.941441, 24.156279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.253978, 22.617435, 24.370104>,  <14.196119, 22.423033, 24.498400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.253978, 22.617435, 24.370104>,  <14.350409, 22.941441, 24.156279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.253978, 22.617435, 24.370104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257674, -0.584462, -0.769421,
		0.935674, -0.047746, 0.349619,
		-0.241076, -0.810015, 0.534563,
		14.181655, 22.374432, 24.530474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.915149, 22.477640, 24.172285>,  <14.350409, 22.941441, 24.156279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.915149, 22.477640, 24.172285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.601357, 22.235260, 24.225073>,  <14.413081, 22.089832, 24.256746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.601357, 22.235260, 24.225073>,  <14.915149, 22.477640, 24.172285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.601357, 22.235260, 24.225073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277224, -0.533003, -0.799409,
		0.554742, -0.590535, 0.586114,
		-0.784479, -0.605950, 0.131969,
		14.366013, 22.053474, 24.264664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.167854, 21.849802, 24.057999>,  <14.915149, 22.477640, 24.172285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.167854, 21.849802, 24.057999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.773456, 21.802305, 24.011160>,  <14.536817, 21.773808, 23.983057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.773456, 21.802305, 24.011160>,  <15.167854, 21.849802, 24.057999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.773456, 21.802305, 24.011160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164807, -0.586506, -0.793000,
		0.025486, -0.801194, 0.597862,
		-0.985997, -0.118742, -0.117095,
		14.477656, 21.766682, 23.976032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.147080, 21.262766, 23.807360>,  <15.167854, 21.849802, 24.057999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.147080, 21.262766, 23.807360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.777157, 21.402763, 23.747721>,  <14.555202, 21.486763, 23.711937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.777157, 21.402763, 23.747721>,  <15.147080, 21.262766, 23.807360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.777157, 21.402763, 23.747721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068131, -0.537957, -0.840215,
		-0.374279, -0.766881, 0.521353,
		-0.924810, 0.349995, -0.149098,
		14.499714, 21.507763, 23.702991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.774539, 20.639038, 23.676577>,  <15.147080, 21.262766, 23.807360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.774539, 20.639038, 23.676577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.568475, 20.943712, 23.519379>,  <14.444836, 21.126516, 23.425060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.568475, 20.943712, 23.519379>,  <14.774539, 20.639038, 23.676577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.568475, 20.943712, 23.519379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033097, -0.440499, -0.897143,
		-0.856454, -0.475180, 0.201719,
		-0.515161, 0.761685, -0.392994,
		14.413926, 21.172218, 23.401480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.146632, 20.368872, 23.333017>,  <14.774539, 20.639038, 23.676577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.146632, 20.368872, 23.333017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.149903, 20.724072, 23.149109>,  <14.151866, 20.937191, 23.038765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.149903, 20.724072, 23.149109>,  <14.146632, 20.368872, 23.333017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.149903, 20.724072, 23.149109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034711, -0.459760, -0.887365,
		-0.999364, -0.008703, -0.034583,
		0.008178, 0.888001, -0.459769,
		14.152356, 20.990471, 23.011179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.601832, 20.390955, 22.883831>,  <14.146632, 20.368872, 23.333017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.601832, 20.390955, 22.883831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.862821, 20.663155, 22.750441>,  <14.019414, 20.826473, 22.670406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.862821, 20.663155, 22.750441>,  <13.601832, 20.390955, 22.883831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.862821, 20.663155, 22.750441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092001, -0.507925, -0.856474,
		-0.752209, 0.528144, -0.394013,
		0.652470, 0.680497, -0.333476,
		14.058561, 20.867304, 22.650398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.466629, 20.488781, 22.177774>,  <13.601832, 20.390955, 22.883831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.466629, 20.488781, 22.177774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.820617, 20.674156, 22.159645>,  <14.033010, 20.785381, 22.148767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.820617, 20.674156, 22.159645>,  <13.466629, 20.488781, 22.177774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.820617, 20.674156, 22.159645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230142, -0.519920, -0.822629,
		-0.404803, 0.717570, -0.566770,
		0.884968, 0.463440, -0.045323,
		14.086107, 20.813189, 22.146048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.554235, 20.789886, 21.556877>,  <13.466629, 20.488781, 22.177774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.554235, 20.789886, 21.556877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.922519, 20.707701, 21.689589>,  <14.143489, 20.658390, 21.769215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.922519, 20.707701, 21.689589>,  <13.554235, 20.789886, 21.556877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.922519, 20.707701, 21.689589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199744, -0.482257, -0.852954,
		0.335253, 0.851594, -0.402980,
		0.920711, -0.205463, 0.331779,
		14.198732, 20.646063, 21.789122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.955250, 20.881777, 20.977373>,  <13.554235, 20.789886, 21.556877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.955250, 20.881777, 20.977373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.167057, 20.660376, 21.234510>,  <14.294142, 20.527534, 21.388792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.167057, 20.660376, 21.234510>,  <13.955250, 20.881777, 20.977373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.167057, 20.660376, 21.234510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384725, -0.518691, -0.763509,
		0.756040, 0.651610, -0.061710,
		0.529519, -0.553502, 0.642842,
		14.325912, 20.494326, 21.427362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<7.316928, 5.347907, 7.392645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.402722, 5.508678, 7.036567>,  <7.454199, 5.605142, 6.822920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.402722, 5.508678, 7.036567>,  <7.316928, 5.347907, 7.392645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.402722, 5.508678, 7.036567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739593, 0.662132, 0.120759,
		0.637964, 0.632482, 0.439282,
		0.214485, 0.401930, -0.890196,
		7.467068, 5.629257, 6.769508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.469930, 6.045622, 7.373351>,  <7.316928, 5.347907, 7.392645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.469930, 6.045622, 7.373351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.252746, 5.928013, 7.058710>,  <7.122435, 5.857447, 6.869925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.252746, 5.928013, 7.058710>,  <7.469930, 6.045622, 7.373351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.252746, 5.928013, 7.058710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707570, 0.664650, 0.239967,
		0.452260, 0.686870, -0.568920,
		-0.542960, -0.294023, -0.786603,
		7.089858, 5.839806, 6.822729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.213722, 6.635969, 7.040617>,  <7.469930, 6.045622, 7.373351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.213722, 6.635969, 7.040617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.961851, 6.339575, 6.947279>,  <6.810729, 6.161739, 6.891276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.961851, 6.339575, 6.947279>,  <7.213722, 6.635969, 7.040617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.961851, 6.339575, 6.947279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775204, 0.618904, 0.126554,
		0.050643, 0.260578, -0.964124,
		-0.629678, -0.740983, -0.233344,
		6.772948, 6.117280, 6.877276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.529264, 6.742689, 6.663207>,  <7.213722, 6.635969, 7.040617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.529264, 6.742689, 6.663207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.399750, 6.438819, 6.888793>,  <6.322041, 6.256497, 7.024144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.399750, 6.438819, 6.888793>,  <6.529264, 6.742689, 6.663207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.399750, 6.438819, 6.888793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816183, 0.525762, 0.239623,
		-0.478547, -0.382712, -0.790268,
		-0.323787, -0.759675, 0.563965,
		6.302614, 6.210917, 7.057982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.858974, 6.579252, 6.424892>,  <6.529264, 6.742689, 6.663207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.858974, 6.579252, 6.424892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.917003, 6.458241, 6.801706>,  <5.951820, 6.385634, 7.027794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.917003, 6.458241, 6.801706>,  <5.858974, 6.579252, 6.424892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.917003, 6.458241, 6.801706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824214, 0.489786, 0.284220,
		-0.547380, -0.817671, -0.178293,
		0.145073, -0.302528, 0.942035,
		5.960525, 6.367483, 7.084316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.191184, 6.506054, 6.711187>,  <5.858974, 6.579252, 6.424892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.191184, 6.506054, 6.711187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.426278, 6.545331, 7.032416>,  <5.567335, 6.568898, 7.225154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.426278, 6.545331, 7.032416>,  <5.191184, 6.506054, 6.711187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.426278, 6.545331, 7.032416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651413, 0.646114, 0.397740,
		-0.479821, -0.756898, 0.443709,
		0.587735, 0.098194, 0.803073,
		5.602599, 6.574790, 7.273338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.794705, 6.645156, 7.249000>,  <5.191184, 6.506054, 6.711187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.794705, 6.645156, 7.249000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.139765, 6.730159, 7.432596>,  <5.346801, 6.781161, 7.542754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.139765, 6.730159, 7.432596>,  <4.794705, 6.645156, 7.249000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.139765, 6.730159, 7.432596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501797, 0.473500, 0.723877,
		-0.063503, -0.854774, 0.515101,
		0.862651, 0.212508, 0.458992,
		5.398561, 6.793912, 7.570294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.702652, 6.661434, 7.945777>,  <4.794705, 6.645156, 7.249000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.702652, 6.661434, 7.945777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.006910, 6.920376, 7.926387>,  <5.189465, 7.075741, 7.914752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.006910, 6.920376, 7.926387>,  <4.702652, 6.661434, 7.945777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.006910, 6.920376, 7.926387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437088, 0.565929, 0.699056,
		0.479972, -0.510545, 0.713422,
		0.760646, 0.647355, -0.048477,
		5.235104, 7.114582, 7.911844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.899659, 6.921253, 8.665028>,  <4.702652, 6.661434, 7.945777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.899659, 6.921253, 8.665028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.013749, 7.198923, 8.400674>,  <5.082203, 7.365525, 8.242062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.013749, 7.198923, 8.400674>,  <4.899659, 6.921253, 8.665028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.013749, 7.198923, 8.400674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351948, 0.717212, 0.601448,
		0.891504, 0.061049, 0.448880,
		0.285225, 0.694175, -0.660883,
		5.099317, 7.407176, 8.202409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.335508, 7.519426, 8.864633>,  <4.899659, 6.921253, 8.665028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.335508, 7.519426, 8.864633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.122039, 7.682992, 8.568529>,  <4.993957, 7.781131, 8.390867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.122039, 7.682992, 8.568529>,  <5.335508, 7.519426, 8.864633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.122039, 7.682992, 8.568529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196065, 0.791656, 0.578654,
		0.822648, 0.453951, -0.342313,
		-0.533674, 0.408913, -0.740258,
		4.961936, 7.805665, 8.346452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.509723, 8.237208, 8.602270>,  <5.335508, 7.519426, 8.864633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.509723, 8.237208, 8.602270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.114082, 8.214841, 8.547792>,  <4.876698, 8.201420, 8.515105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.114082, 8.214841, 8.547792>,  <5.509723, 8.237208, 8.602270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.114082, 8.214841, 8.547792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122966, 0.822490, 0.555328,
		0.080965, 0.566024, -0.820403,
		-0.989102, -0.055919, -0.136195,
		4.817351, 8.198065, 8.506934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.377425, 8.837322, 8.196145>,  <5.509723, 8.237208, 8.602270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.377425, 8.837322, 8.196145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.053935, 8.722651, 8.401584>,  <4.859841, 8.653850, 8.524847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.053935, 8.722651, 8.401584>,  <5.377425, 8.837322, 8.196145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.053935, 8.722651, 8.401584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031960, 0.893313, 0.448298,
		-0.587319, 0.346135, -0.731606,
		-0.808724, -0.286676, 0.513597,
		4.811318, 8.636649, 8.555663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.971364, 9.431086, 8.189411>,  <5.377425, 8.837322, 8.196145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.971364, 9.431086, 8.189411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.821472, 9.200501, 8.479865>,  <4.731537, 9.062151, 8.654138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.821472, 9.200501, 8.479865>,  <4.971364, 9.431086, 8.189411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.821472, 9.200501, 8.479865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191127, 0.814411, 0.547910,
		-0.907220, 0.066534, -0.415361,
		-0.374729, -0.576461, 0.726134,
		4.709054, 9.027563, 8.697705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.312144, 9.721277, 8.314053>,  <4.971364, 9.431086, 8.189411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.312144, 9.721277, 8.314053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.404538, 9.507541, 8.639291>,  <4.459974, 9.379299, 8.834434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.404538, 9.507541, 8.639291>,  <4.312144, 9.721277, 8.314053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.404538, 9.507541, 8.639291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103111, 0.817546, 0.566557,
		-0.967478, -0.214705, 0.133743,
		0.230984, -0.534341, 0.813096,
		4.473834, 9.347239, 8.883220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.871966, 9.914082, 8.820864>,  <4.312144, 9.721277, 8.314053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.871966, 9.914082, 8.820864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.172431, 9.775936, 9.045891>,  <4.352709, 9.693048, 9.180906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.172431, 9.775936, 9.045891>,  <3.871966, 9.914082, 8.820864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.172431, 9.775936, 9.045891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099984, 0.782863, 0.614108,
		-0.652504, -0.517541, 0.553525,
		0.751161, -0.345364, 0.562567,
		4.397779, 9.672327, 9.214661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.618826, 10.017974, 9.544636>,  <3.871966, 9.914082, 8.820864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.618826, 10.017974, 9.544636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.007298, 9.933685, 9.589190>,  <4.240381, 9.883112, 9.615923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.007298, 9.933685, 9.589190>,  <3.618826, 10.017974, 9.544636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.007298, 9.933685, 9.589190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033936, 0.584814, 0.810457,
		-0.235921, -0.783320, 0.575110,
		0.971179, -0.210721, 0.111387,
		4.298651, 9.870469, 9.622606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.737697, 9.822137, 10.260837>,  <3.618826, 10.017974, 9.544636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.737697, 9.822137, 10.260837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.083742, 9.960616, 10.115660>,  <4.291368, 10.043703, 10.028553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.083742, 9.960616, 10.115660>,  <3.737697, 9.822137, 10.260837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.083742, 9.960616, 10.115660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094720, 0.597822, 0.796013,
		0.492552, -0.723019, 0.484392,
		0.865113, 0.346197, -0.362943,
		4.343276, 10.064475, 10.006777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.132294, 9.871534, 10.844364>,  <3.737697, 9.822137, 10.260837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.132294, 9.871534, 10.844364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.299088, 10.119022, 10.578038>,  <4.399164, 10.267515, 10.418242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.299088, 10.119022, 10.578038>,  <4.132294, 9.871534, 10.844364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.299088, 10.119022, 10.578038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195261, 0.654457, 0.730451,
		0.887692, -0.434595, 0.152086,
		0.416984, 0.618719, -0.665816,
		4.424183, 10.304638, 10.378293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.439258, 10.230102, 11.307558>,  <4.132294, 9.871534, 10.844364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.439258, 10.230102, 11.307558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.513408, 10.424951, 10.966185>,  <4.557898, 10.541861, 10.761361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.513408, 10.424951, 10.966185>,  <4.439258, 10.230102, 11.307558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.513408, 10.424951, 10.966185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185406, 0.835549, 0.517187,
		0.965019, -0.254104, 0.064573,
		0.185373, 0.487123, -0.853433,
		4.569020, 10.571088, 10.710155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.119185, 10.429811, 11.268448>,  <4.439258, 10.230102, 11.307558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.119185, 10.429811, 11.268448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.945009, 10.696809, 11.026840>,  <4.840503, 10.857008, 10.881875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.945009, 10.696809, 11.026840>,  <5.119185, 10.429811, 11.268448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.945009, 10.696809, 11.026840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189693, 0.723942, 0.663268,
		0.880004, 0.174236, -0.441854,
		-0.435442, 0.667495, -0.604020,
		4.814376, 10.897058, 10.845634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.547891, 10.861135, 11.310042>,  <5.119185, 10.429811, 11.268448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.547891, 10.861135, 11.310042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.224253, 11.061622, 11.187310>,  <5.030070, 11.181914, 11.113671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.224253, 11.061622, 11.187310>,  <5.547891, 10.861135, 11.310042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.224253, 11.061622, 11.187310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183411, 0.711392, 0.678441,
		0.558323, 0.492647, -0.667513,
		-0.809095, 0.501218, -0.306830,
		4.981524, 11.211987, 11.095262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.729827, 11.593295, 10.992611>,  <5.547891, 10.861135, 11.310042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.729827, 11.593295, 10.992611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.355633, 11.573155, 11.132514>,  <5.131116, 11.561071, 11.216455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.355633, 11.573155, 11.132514>,  <5.729827, 11.593295, 10.992611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.355633, 11.573155, 11.132514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168726, 0.806028, 0.567318,
		-0.310479, 0.589732, -0.745533,
		-0.935486, -0.050349, 0.349758,
		5.074987, 11.558050, 11.237441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.574913, 12.226967, 11.016270>,  <5.729827, 11.593295, 10.992611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.574913, 12.226967, 11.016270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.269714, 12.071304, 11.222724>,  <5.086596, 11.977907, 11.346597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.269714, 12.071304, 11.222724>,  <5.574913, 12.226967, 11.016270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.269714, 12.071304, 11.222724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024880, 0.815561, 0.578136,
		-0.645924, 0.428274, -0.631952,
		-0.762996, -0.389155, 0.516135,
		5.040815, 11.954557, 11.377564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.138690, 12.772156, 11.133688>,  <5.574913, 12.226967, 11.016270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.138690, 12.772156, 11.133688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.014560, 12.510161, 11.409279>,  <4.940082, 12.352964, 11.574634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.014560, 12.510161, 11.409279>,  <5.138690, 12.772156, 11.133688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.014560, 12.510161, 11.409279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027741, 0.718211, 0.695273,
		-0.950225, 0.234874, -0.204709,
		-0.310326, -0.654987, 0.688977,
		4.921462, 12.313665, 11.615973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.462404, 13.017372, 11.433977>,  <5.138690, 12.772156, 11.133688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.462404, 13.017372, 11.433977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.645432, 12.777795, 11.696853>,  <4.755248, 12.634048, 11.854578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.645432, 12.777795, 11.696853>,  <4.462404, 13.017372, 11.433977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.645432, 12.777795, 11.696853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254755, 0.619810, 0.742250,
		-0.851899, -0.507053, 0.131022,
		0.457569, -0.598943, 0.657190,
		4.782702, 12.598112, 11.894010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.878665, 12.704909, 11.894575>,  <4.462404, 13.017372, 11.433977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.878665, 12.704909, 11.894575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.246590, 12.721331, 12.050658>,  <4.467345, 12.731183, 12.144308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.246590, 12.721331, 12.050658>,  <3.878665, 12.704909, 11.894575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.246590, 12.721331, 12.050658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290845, 0.738864, 0.607857,
		-0.263356, -0.672603, 0.691556,
		0.919812, 0.041053, 0.390207,
		4.522533, 12.733646, 12.167721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.724574, 12.841066, 12.574347>,  <3.878665, 12.704909, 11.894575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.724574, 12.841066, 12.574347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.119236, 12.904093, 12.557950>,  <4.356034, 12.941909, 12.548111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.119236, 12.904093, 12.557950>,  <3.724574, 12.841066, 12.574347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.119236, 12.904093, 12.557950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082488, 0.700868, 0.708505,
		0.140367, -0.695670, 0.704514,
		0.986658, 0.157565, -0.040995,
		4.415234, 12.951363, 12.545651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.945667, 12.672371, 13.223701>,  <3.724574, 12.841066, 12.574347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.945667, 12.672371, 13.223701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.208241, 12.925862, 13.060003>,  <4.365785, 13.077957, 12.961784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.208241, 12.925862, 13.060003>,  <3.945667, 12.672371, 13.223701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.208241, 12.925862, 13.060003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013728, 0.552436, 0.833442,
		0.754258, -0.541482, 0.371338,
		0.656434, 0.633728, -0.409246,
		4.405171, 13.115981, 12.937229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.490062, 12.794455, 13.755453>,  <3.945667, 12.672371, 13.223701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.490062, 12.794455, 13.755453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.518699, 13.097713, 13.496196>,  <4.535881, 13.279668, 13.340641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.518699, 13.097713, 13.496196>,  <4.490062, 12.794455, 13.755453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.518699, 13.097713, 13.496196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171567, 0.649486, 0.740765,
		0.982568, 0.058167, 0.176571,
		0.071592, 0.758146, -0.648144,
		4.540176, 13.325156, 13.301753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.728901, 13.242965, 14.232493>,  <4.490062, 12.794455, 13.755453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.728901, 13.242965, 14.232493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.660178, 13.443822, 13.893475>,  <4.618945, 13.564336, 13.690063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.660178, 13.443822, 13.893475>,  <4.728901, 13.242965, 14.232493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.660178, 13.443822, 13.893475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155437, 0.835745, 0.526658,
		0.972791, 0.222224, -0.065535,
		-0.171807, 0.502142, -0.847547,
		4.608636, 13.594464, 13.639211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.178705, 13.816874, 14.286490>,  <4.728901, 13.242965, 14.232493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.178705, 13.816874, 14.286490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.882771, 13.908374, 14.033409>,  <4.705210, 13.963274, 13.881560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.882771, 13.908374, 14.033409>,  <5.178705, 13.816874, 14.286490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.882771, 13.908374, 14.033409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172767, 0.844291, 0.507272,
		0.650225, 0.484609, -0.585117,
		-0.739837, 0.228751, -0.632703,
		4.660820, 13.976999, 13.843598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.898999, 14.047378, 14.384701>,  <5.178705, 13.816874, 14.286490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.898999, 14.047378, 14.384701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.265399, 14.141077, 14.514974>,  <6.485240, 14.197296, 14.593138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.265399, 14.141077, 14.514974>,  <5.898999, 14.047378, 14.384701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.265399, 14.141077, 14.514974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397587, -0.638390, -0.659077,
		0.053525, 0.733203, -0.677900,
		0.916002, 0.234247, 0.325682,
		6.540200, 14.211351, 14.612679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.322066, 14.206517, 13.812550>,  <5.898999, 14.047378, 14.384701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.322066, 14.206517, 13.812550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.584648, 14.093233, 14.092223>,  <6.742197, 14.025263, 14.260028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.584648, 14.093233, 14.092223>,  <6.322066, 14.206517, 13.812550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.584648, 14.093233, 14.092223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419945, -0.632760, -0.650585,
		0.626669, 0.720698, -0.296446,
		0.656455, -0.283210, 0.699185,
		6.781584, 14.008270, 14.301978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.006115, 14.136628, 13.491115>,  <6.322066, 14.206517, 13.812550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.006115, 14.136628, 13.491115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.041587, 13.942398, 13.838988>,  <7.062870, 13.825860, 14.047712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.041587, 13.942398, 13.838988>,  <7.006115, 14.136628, 13.491115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.041587, 13.942398, 13.838988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351192, -0.801812, -0.483490,
		0.932095, 0.348302, 0.099426,
		0.088680, -0.485576, 0.869685,
		7.068191, 13.796725, 14.099894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.686715, 13.870052, 13.547692>,  <7.006115, 14.136628, 13.491115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.686715, 13.870052, 13.547692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.454576, 13.654037, 13.791514>,  <7.315293, 13.524428, 13.937808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.454576, 13.654037, 13.791514>,  <7.686715, 13.870052, 13.547692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.454576, 13.654037, 13.791514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214058, -0.823338, -0.525637,
		0.785733, -0.174572, 0.593420,
		-0.580347, -0.540037, 0.609556,
		7.280472, 13.492026, 13.974381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.097450, 13.204464, 13.792473>,  <7.686715, 13.870052, 13.547692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.097450, 13.204464, 13.792473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.722675, 13.101342, 13.886862>,  <7.497810, 13.039469, 13.943495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.722675, 13.101342, 13.886862>,  <8.097450, 13.204464, 13.792473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.722675, 13.101342, 13.886862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155264, -0.911934, -0.379828,
		0.313113, -0.319237, 0.894454,
		-0.936938, -0.257805, 0.235973,
		7.441594, 13.024000, 13.957653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.138639, 12.515938, 14.078247>,  <8.097450, 13.204464, 13.792473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.138639, 12.515938, 14.078247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.753396, 12.566929, 13.983444>,  <7.522250, 12.597524, 13.926562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.753396, 12.566929, 13.983444>,  <8.138639, 12.515938, 14.078247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.753396, 12.566929, 13.983444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004586, -0.888337, -0.459169,
		-0.269077, -0.441142, 0.856149,
		-0.963108, 0.127478, -0.237007,
		7.464464, 12.605172, 13.912342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.733294, 11.915713, 14.370285>,  <8.138639, 12.515938, 14.078247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.733294, 11.915713, 14.370285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.551471, 12.071930, 14.050072>,  <7.442377, 12.165660, 13.857944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.551471, 12.071930, 14.050072>,  <7.733294, 11.915713, 14.370285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.551471, 12.071930, 14.050072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043602, -0.887918, -0.457930,
		-0.889651, -0.243059, 0.386579,
		-0.454555, 0.390542, -0.800535,
		7.415103, 12.189093, 13.809912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.194544, 11.459178, 14.168941>,  <7.733294, 11.915713, 14.370285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.194544, 11.459178, 14.168941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.250763, 11.662387, 13.829021>,  <7.284495, 11.784312, 13.625070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.250763, 11.662387, 13.829021>,  <7.194544, 11.459178, 14.168941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.250763, 11.662387, 13.829021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067626, -0.851389, -0.520157,
		-0.987761, 0.130576, -0.085306,
		0.140549, 0.508022, -0.849800,
		7.292928, 11.814794, 13.574081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.907698, 10.970757, 13.723619>,  <7.194544, 11.459178, 14.168941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.907698, 10.970757, 13.723619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.096705, 11.210069, 13.464763>,  <7.210109, 11.353656, 13.309449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.096705, 11.210069, 13.464763>,  <6.907698, 10.970757, 13.723619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.096705, 11.210069, 13.464763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081767, -0.701357, -0.708105,
		-0.877520, 0.387507, -0.282485,
		0.472518, 0.598278, -0.647140,
		7.238461, 11.389552, 13.270620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.515752, 10.960599, 13.144047>,  <6.907698, 10.970757, 13.723619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.515752, 10.960599, 13.144047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.863606, 11.102449, 13.006657>,  <7.072318, 11.187560, 12.924222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.863606, 11.102449, 13.006657>,  <6.515752, 10.960599, 13.144047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.863606, 11.102449, 13.006657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112170, -0.535602, -0.836988,
		-0.480784, 0.766401, -0.426000,
		0.869635, 0.354626, -0.343476,
		7.124496, 11.208838, 12.903614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.409469, 11.220781, 12.498085>,  <6.515752, 10.960599, 13.144047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.409469, 11.220781, 12.498085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.800815, 11.140784, 12.519280>,  <7.035622, 11.092786, 12.531998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.800815, 11.140784, 12.519280>,  <6.409469, 11.220781, 12.498085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.800815, 11.140784, 12.519280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037910, -0.425072, -0.904365,
		0.203391, 0.882789, -0.423456,
		0.978363, -0.199993, 0.052989,
		7.094324, 11.080787, 12.535177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.636117, 11.351782, 11.836719>,  <6.409469, 11.220781, 12.498085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.636117, 11.351782, 11.836719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.939350, 11.141622, 11.991258>,  <7.121290, 11.015525, 12.083982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.939350, 11.141622, 11.991258>,  <6.636117, 11.351782, 11.836719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.939350, 11.141622, 11.991258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110876, -0.479955, -0.870258,
		0.642664, 0.702564, -0.305592,
		0.758082, -0.525401, 0.386348,
		7.166775, 10.984001, 12.107162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.045424, 11.365097, 11.347775>,  <6.636117, 11.351782, 11.836719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.045424, 11.365097, 11.347775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.135127, 11.041581, 11.565241>,  <7.188949, 10.847472, 11.695720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.135127, 11.041581, 11.565241>,  <7.045424, 11.365097, 11.347775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.135127, 11.041581, 11.565241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201891, -0.507212, -0.837840,
		0.953388, 0.297652, 0.049541,
		0.224257, -0.808789, 0.543663,
		7.202404, 10.798944, 11.728340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.536943, 11.125303, 10.960646>,  <7.045424, 11.365097, 11.347775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.536943, 11.125303, 10.960646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.499277, 10.807864, 11.201091>,  <7.476676, 10.617401, 11.345358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.499277, 10.807864, 11.201091>,  <7.536943, 11.125303, 10.960646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.499277, 10.807864, 11.201091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299367, -0.598422, -0.743149,
		0.949480, 0.109973, 0.293928,
		-0.094166, -0.793597, 0.601112,
		7.471027, 10.569785, 11.381425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.156237, 10.696784, 10.996409>,  <7.536943, 11.125303, 10.960646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.156237, 10.696784, 10.996409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.852203, 10.447389, 11.069661>,  <7.669783, 10.297751, 11.113612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.852203, 10.447389, 11.069661>,  <8.156237, 10.696784, 10.996409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.852203, 10.447389, 11.069661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354038, -0.633641, -0.687864,
		0.544914, -0.457999, 0.702358,
		-0.760083, -0.623488, 0.183131,
		7.624178, 10.260343, 11.124600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.469685, 10.068099, 10.892158>,  <8.156237, 10.696784, 10.996409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.469685, 10.068099, 10.892158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.078051, 9.989776, 10.870054>,  <7.843071, 9.942781, 10.856792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.078051, 9.989776, 10.870054>,  <8.469685, 10.068099, 10.892158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.078051, 9.989776, 10.870054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187844, -0.765628, -0.615246,
		0.078164, -0.612758, 0.786396,
		-0.979084, -0.195810, -0.055258,
		7.784326, 9.931033, 10.853477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.476416, 9.381908, 10.773453>,  <8.469685, 10.068099, 10.892158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.476416, 9.381908, 10.773453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.084768, 9.434711, 10.711609>,  <7.849780, 9.466393, 10.674502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.084768, 9.434711, 10.711609>,  <8.476416, 9.381908, 10.773453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.084768, 9.434711, 10.711609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042060, -0.875588, -0.481224,
		-0.198898, -0.464672, 0.862856,
		-0.979117, 0.132006, -0.154609,
		7.791033, 9.474314, 10.665226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.039989, 8.783848, 10.938051>,  <8.476416, 9.381908, 10.773453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.039989, 8.783848, 10.938051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.814703, 8.972211, 10.666453>,  <7.679531, 9.085229, 10.503494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.814703, 8.972211, 10.666453>,  <8.039989, 8.783848, 10.938051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.814703, 8.972211, 10.666453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132441, -0.862541, -0.488346,
		-0.815626, -0.185119, 0.548166,
		-0.563218, 0.470907, -0.678994,
		7.645738, 9.113483, 10.462754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.448897, 8.432725, 10.831785>,  <8.039989, 8.783848, 10.938051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.448897, 8.432725, 10.831785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.459652, 8.640209, 10.489975>,  <7.466105, 8.764700, 10.284888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.459652, 8.640209, 10.489975>,  <7.448897, 8.432725, 10.831785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.459652, 8.640209, 10.489975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108999, -0.848217, -0.518311,
		-0.993678, 0.107079, 0.033733,
		0.026887, 0.518711, -0.854527,
		7.467718, 8.795822, 10.233617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.940711, 8.200344, 10.411363>,  <7.448897, 8.432725, 10.831785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.940711, 8.200344, 10.411363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.221199, 8.343266, 10.164584>,  <7.389492, 8.429019, 10.016517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.221199, 8.343266, 10.164584>,  <6.940711, 8.200344, 10.411363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.221199, 8.343266, 10.164584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009396, -0.869907, -0.493127,
		-0.712882, 0.339994, -0.613354,
		0.701221, 0.357304, -0.616946,
		7.431565, 8.450457, 9.979500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.627017, 8.014537, 9.770488>,  <6.940711, 8.200344, 10.411363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.627017, 8.014537, 9.770488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.015912, 8.071154, 9.695952>,  <7.249249, 8.105124, 9.651231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.015912, 8.071154, 9.695952>,  <6.627017, 8.014537, 9.770488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.015912, 8.071154, 9.695952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041114, -0.680602, -0.731499,
		-0.230361, 0.718851, -0.655886,
		0.972236, 0.141543, -0.186339,
		7.307583, 8.113616, 9.640051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.066923, 21.147814, 25.254141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.698460, 21.091190, 25.399153>,  <17.477381, 21.057217, 25.486160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.698460, 21.091190, 25.399153>,  <18.066923, 21.147814, 25.254141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.698460, 21.091190, 25.399153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239426, 0.528259, 0.814627,
		-0.306827, 0.837200, -0.452718,
		-0.921158, -0.141557, 0.362531,
		17.422112, 21.048723, 25.507912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.874483, 21.814575, 25.293581>,  <18.066923, 21.147814, 25.254141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.874483, 21.814575, 25.293581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.637459, 21.579216, 25.513639>,  <17.495243, 21.438002, 25.645674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.637459, 21.579216, 25.513639>,  <17.874483, 21.814575, 25.293581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.637459, 21.579216, 25.513639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054430, 0.652156, 0.756128,
		-0.803683, 0.477998, -0.354417,
		-0.592563, -0.588396, 0.550144,
		17.459690, 21.402697, 25.678682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.392153, 22.259315, 25.601921>,  <17.874483, 21.814575, 25.293581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.392153, 22.259315, 25.601921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.410856, 21.935707, 25.836288>,  <17.422079, 21.741543, 25.976910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.410856, 21.935707, 25.836288>,  <17.392153, 22.259315, 25.601921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.410856, 21.935707, 25.836288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320978, 0.567624, 0.758140,
		-0.945932, 0.152617, 0.286220,
		0.046760, -0.809019, 0.585920,
		17.424885, 21.693001, 26.012064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.915613, 22.403006, 26.219410>,  <17.392153, 22.259315, 25.601921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.915613, 22.403006, 26.219410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.174856, 22.118158, 26.327368>,  <17.330402, 21.947250, 26.392143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.174856, 22.118158, 26.327368>,  <16.915613, 22.403006, 26.219410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.174856, 22.118158, 26.327368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133842, 0.455397, 0.880170,
		-0.749696, -0.534322, 0.390458,
		0.648108, -0.712119, 0.269895,
		17.369287, 21.904522, 26.408337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.665480, 22.189375, 26.927944>,  <16.915613, 22.403006, 26.219410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.665480, 22.189375, 26.927944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.026676, 22.019609, 26.901169>,  <17.243395, 21.917749, 26.885103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.026676, 22.019609, 26.901169>,  <16.665480, 22.189375, 26.927944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.026676, 22.019609, 26.901169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163368, 0.195054, 0.967091,
		-0.397390, -0.884209, 0.245468,
		0.902990, -0.424414, -0.066939,
		17.297573, 21.892284, 26.881086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656202, 21.661119, 27.421122>,  <16.665480, 22.189375, 26.927944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.656202, 21.661119, 27.421122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.043077, 21.747675, 27.367872>,  <17.275204, 21.799608, 27.335922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.043077, 21.747675, 27.367872>,  <16.656202, 21.661119, 27.421122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.043077, 21.747675, 27.367872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094075, 0.181707, 0.978842,
		0.236005, -0.959248, 0.155388,
		0.967187, 0.216394, -0.133125,
		17.333235, 21.812592, 27.327934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.002655, 21.183935, 27.993032>,  <16.656202, 21.661119, 27.421122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.002655, 21.183935, 27.993032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.281990, 21.451782, 27.891893>,  <17.449591, 21.612492, 27.831209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.281990, 21.451782, 27.891893>,  <17.002655, 21.183935, 27.993032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.281990, 21.451782, 27.891893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116964, 0.241749, 0.963264,
		0.706146, -0.702259, 0.090501,
		0.698339, 0.669619, -0.252849,
		17.491491, 21.652668, 27.816038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.550789, 21.070236, 28.465979>,  <17.002655, 21.183935, 27.993032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.550789, 21.070236, 28.465979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.576935, 21.440197, 28.316162>,  <17.592623, 21.662174, 28.226273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.576935, 21.440197, 28.316162>,  <17.550789, 21.070236, 28.465979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.576935, 21.440197, 28.316162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013537, 0.376130, 0.926468,
		0.997770, -0.055486, 0.037106,
		0.065363, 0.924904, -0.374540,
		17.596544, 21.717669, 28.203800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.203318, 21.453217, 28.764578>,  <17.550789, 21.070236, 28.465979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.203318, 21.453217, 28.764578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.912266, 21.703667, 28.652489>,  <17.737635, 21.853937, 28.585236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.912266, 21.703667, 28.652489>,  <18.203318, 21.453217, 28.764578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.912266, 21.703667, 28.652489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041672, 0.448095, 0.893014,
		0.684705, 0.638104, -0.352138,
		-0.727628, 0.626126, -0.280222,
		17.693977, 21.891504, 28.568422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.432404, 22.203129, 29.102711>,  <18.203318, 21.453217, 28.764578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.432404, 22.203129, 29.102711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.040115, 22.207827, 29.024681>,  <17.804743, 22.210646, 28.977863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.040115, 22.207827, 29.024681>,  <18.432404, 22.203129, 29.102711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.040115, 22.207827, 29.024681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192263, 0.120873, 0.973871,
		0.035014, 0.992599, -0.116285,
		-0.980719, 0.011742, -0.195072,
		17.745899, 22.211349, 28.966160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.119799, 22.699369, 29.561914>,  <18.432404, 22.203129, 29.102711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.119799, 22.699369, 29.561914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.795454, 22.501297, 29.437141>,  <17.600847, 22.382454, 29.362278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.795454, 22.501297, 29.437141>,  <18.119799, 22.699369, 29.561914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.795454, 22.501297, 29.437141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394169, 0.068107, 0.916511,
		-0.432593, 0.866117, -0.250409,
		-0.810860, -0.495180, -0.311934,
		17.552197, 22.352743, 29.343561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620111, 22.976936, 29.856333>,  <18.119799, 22.699369, 29.561914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620111, 22.976936, 29.856333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.441406, 22.634907, 29.751066>,  <17.334183, 22.429689, 29.687906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.441406, 22.634907, 29.751066>,  <17.620111, 22.976936, 29.856333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.441406, 22.634907, 29.751066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560840, 0.038495, 0.827028,
		-0.697039, 0.517078, -0.496757,
		-0.446761, -0.855072, -0.263166,
		17.307379, 22.378386, 29.672117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.831507, 22.885359, 29.621782>,  <17.620111, 22.976936, 29.856333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.831507, 22.885359, 29.621782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.947960, 22.558765, 29.821222>,  <17.017832, 22.362810, 29.940886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.947960, 22.558765, 29.821222>,  <16.831507, 22.885359, 29.621782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.947960, 22.558765, 29.821222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621919, 0.234500, 0.747146,
		-0.726952, -0.527606, -0.439514,
		0.291132, -0.816481, 0.498598,
		17.035299, 22.313822, 29.970802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.152105, 23.448593, 29.504343>,  <16.831507, 22.885359, 29.621782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.152105, 23.448593, 29.504343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.338566, 23.200708, 29.251785>,  <17.450441, 23.051977, 29.100250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.338566, 23.200708, 29.251785>,  <17.152105, 23.448593, 29.504343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.338566, 23.200708, 29.251785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156623, -0.760212, 0.630513,
		-0.870732, -0.195022, -0.451433,
		0.466149, -0.619713, -0.631396,
		17.478411, 23.014795, 29.062366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.009281, 23.700493, 30.267773>,  <17.152105, 23.448593, 29.504343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.009281, 23.700493, 30.267773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.764269, 23.941317, 30.472647>,  <16.617262, 24.085812, 30.595572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.764269, 23.941317, 30.472647>,  <17.009281, 23.700493, 30.267773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.764269, 23.941317, 30.472647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713659, -0.142627, -0.685820,
		-0.339854, -0.785608, 0.517029,
		-0.612528, 0.602061, 0.512184,
		16.580511, 24.121935, 30.626303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.393375, 23.352982, 30.536619>,  <17.009281, 23.700493, 30.267773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.393375, 23.352982, 30.536619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.336834, 23.746040, 30.488575>,  <16.302910, 23.981874, 30.459747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.336834, 23.746040, 30.488575>,  <16.393375, 23.352982, 30.536619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.336834, 23.746040, 30.488575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728854, -0.185407, -0.659087,
		-0.669919, -0.005620, 0.742413,
		-0.141353, 0.982645, -0.120112,
		16.294428, 24.040834, 30.452541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666995, 23.367601, 30.419809>,  <16.393375, 23.352982, 30.536619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.666995, 23.367601, 30.419809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.779741, 23.723722, 30.276751>,  <15.847389, 23.937395, 30.190916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.779741, 23.723722, 30.276751>,  <15.666995, 23.367601, 30.419809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.779741, 23.723722, 30.276751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775859, -0.007790, -0.630858,
		-0.564442, 0.455299, 0.688555,
		0.281865, 0.890304, -0.357645,
		15.864301, 23.990814, 30.169456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.064955, 23.726700, 30.370798>,  <15.666995, 23.367601, 30.419809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.064955, 23.726700, 30.370798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.312804, 23.927916, 30.129793>,  <15.461514, 24.048645, 29.985191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.312804, 23.927916, 30.129793>,  <15.064955, 23.726700, 30.370798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.312804, 23.927916, 30.129793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723842, 0.069390, -0.686467,
		-0.303511, 0.861473, 0.407117,
		0.619623, 0.503039, -0.602510,
		15.498692, 24.078827, 29.949039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611318, 24.147377, 29.958694>,  <15.064955, 23.726700, 30.370798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.611318, 24.147377, 29.958694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.954131, 24.191320, 29.757330>,  <15.159820, 24.217686, 29.636511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.954131, 24.191320, 29.757330>,  <14.611318, 24.147377, 29.958694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.954131, 24.191320, 29.757330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510540, 0.049106, -0.858451,
		-0.069587, 0.992733, 0.098172,
		0.857034, 0.109858, -0.503413,
		15.211241, 24.224277, 29.606306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.461067, 24.516441, 29.409172>,  <14.611318, 24.147377, 29.958694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.461067, 24.516441, 29.409172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.800185, 24.349457, 29.278345>,  <15.003655, 24.249266, 29.199848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.800185, 24.349457, 29.278345>,  <14.461067, 24.516441, 29.409172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.800185, 24.349457, 29.278345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388298, -0.068579, -0.918979,
		0.361206, 0.906104, -0.220239,
		0.847794, -0.417459, -0.327067,
		15.054523, 24.224218, 29.180225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.633901, 24.862253, 28.774815>,  <14.461067, 24.516441, 29.409172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.633901, 24.862253, 28.774815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.839042, 24.519485, 28.754135>,  <14.962126, 24.313826, 28.741728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.839042, 24.519485, 28.754135>,  <14.633901, 24.862253, 28.774815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.839042, 24.519485, 28.754135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284689, -0.112951, -0.951943,
		0.809898, 0.502923, -0.301882,
		0.512852, -0.856919, -0.051698,
		14.992897, 24.262409, 28.738626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040059, 24.852839, 28.214296>,  <14.633901, 24.862253, 28.774815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.040059, 24.852839, 28.214296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.977173, 24.464310, 28.285641>,  <14.939441, 24.231192, 28.328447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.977173, 24.464310, 28.285641>,  <15.040059, 24.852839, 28.214296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.977173, 24.464310, 28.285641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251973, -0.135178, -0.958247,
		0.954879, -0.195594, -0.223495,
		-0.157216, -0.971324, 0.178363,
		14.930008, 24.172913, 28.339149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.969288, 24.590876, 27.571043>,  <15.040059, 24.852839, 28.214296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.969288, 24.590876, 27.571043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.873961, 24.255110, 27.766424>,  <14.816766, 24.053650, 27.883652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.873961, 24.255110, 27.766424>,  <14.969288, 24.590876, 27.571043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.873961, 24.255110, 27.766424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198353, -0.450272, -0.870581,
		0.950716, -0.304359, -0.059194,
		-0.238316, -0.839417, 0.488451,
		14.802466, 24.003284, 27.912960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.328269, 24.012177, 27.185667>,  <14.969288, 24.590876, 27.571043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.328269, 24.012177, 27.185667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.047512, 23.824301, 27.399858>,  <14.879058, 23.711575, 27.528374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.047512, 23.824301, 27.399858>,  <15.328269, 24.012177, 27.185667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.047512, 23.824301, 27.399858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256601, -0.534561, -0.805233,
		0.664457, -0.702591, 0.254682,
		-0.701893, -0.469691, 0.535478,
		14.836945, 23.683393, 27.560501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.390925, 23.280396, 27.191977>,  <15.328269, 24.012177, 27.185667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.390925, 23.280396, 27.191977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.003580, 23.354685, 27.258644>,  <14.771173, 23.399260, 27.298645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.003580, 23.354685, 27.258644>,  <15.390925, 23.280396, 27.191977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.003580, 23.354685, 27.258644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245648, -0.591916, -0.767654,
		-0.043919, -0.784310, 0.618812,
		-0.968364, 0.185725, 0.166668,
		14.713071, 23.410402, 27.308643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.066176, 22.639835, 27.154942>,  <15.390925, 23.280396, 27.191977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.066176, 22.639835, 27.154942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.768483, 22.906012, 27.131937>,  <14.589868, 23.065718, 27.118134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.768483, 22.906012, 27.131937>,  <15.066176, 22.639835, 27.154942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.768483, 22.906012, 27.131937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415139, -0.528309, -0.740641,
		-0.523226, -0.527343, 0.669436,
		-0.744241, 0.665431, -0.057504,
		14.545214, 23.105644, 27.114683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.453959, 22.173992, 27.133705>,  <15.066176, 22.639835, 27.154942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.453959, 22.173992, 27.133705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.379537, 22.541296, 26.993887>,  <14.334883, 22.761679, 26.909996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.379537, 22.541296, 26.993887>,  <14.453959, 22.173992, 27.133705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.379537, 22.541296, 26.993887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721861, -0.369098, -0.585392,
		-0.666558, 0.143408, 0.731529,
		-0.186056, 0.918259, -0.349546,
		14.323720, 22.816774, 26.889023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.742524, 22.140110, 26.882591>,  <14.453959, 22.173992, 27.133705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.742524, 22.140110, 26.882591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.923401, 22.438951, 26.687712>,  <14.031927, 22.618256, 26.570784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.923401, 22.438951, 26.687712>,  <13.742524, 22.140110, 26.882591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.923401, 22.438951, 26.687712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286909, -0.395361, -0.872567,
		-0.844515, 0.534349, 0.035572,
		0.452192, 0.747102, -0.487198,
		14.059058, 22.663082, 26.541552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.148373, 22.247326, 27.093248>,  <13.742524, 22.140110, 26.882591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.148373, 22.247326, 27.093248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.894491, 21.979332, 27.247272>,  <12.742162, 21.818537, 27.339687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.894491, 21.979332, 27.247272>,  <13.148373, 22.247326, 27.093248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.894491, 21.979332, 27.247272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273645, 0.271140, 0.922823,
		-0.722682, 0.691089, 0.011244,
		-0.634704, -0.669984, 0.385061,
		12.704080, 21.778337, 27.362791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.721087, 22.553404, 27.718801>,  <13.148373, 22.247326, 27.093248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.721087, 22.553404, 27.718801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.662357, 22.159872, 27.759836>,  <12.627119, 21.923754, 27.784458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.662357, 22.159872, 27.759836>,  <12.721087, 22.553404, 27.718801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.662357, 22.159872, 27.759836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050091, 0.096185, 0.994102,
		-0.987893, 0.151099, 0.035158,
		-0.146827, -0.983828, 0.102589,
		12.618309, 21.864723, 27.790613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.207016, 22.501602, 28.227634>,  <12.721087, 22.553404, 27.718801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.207016, 22.501602, 28.227634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.381946, 22.141945, 28.220837>,  <12.486903, 21.926151, 28.216759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.381946, 22.141945, 28.220837>,  <12.207016, 22.501602, 28.227634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.381946, 22.141945, 28.220837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178877, 0.068453, 0.981487,
		-0.881334, -0.432269, 0.190772,
		0.437325, -0.899143, -0.016993,
		12.513144, 21.872202, 28.215738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.045263, 22.165569, 28.795717>,  <12.207016, 22.501602, 28.227634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.045263, 22.165569, 28.795717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.373321, 21.961256, 28.692595>,  <12.570155, 21.838669, 28.630720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.373321, 21.961256, 28.692595>,  <12.045263, 22.165569, 28.795717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.373321, 21.961256, 28.692595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322495, 0.040493, 0.945705,
		-0.472611, -0.858755, 0.197936,
		0.820144, -0.510784, -0.257807,
		12.619364, 21.808022, 28.615252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.198328, 21.552061, 29.200861>,  <12.045263, 22.165569, 28.795717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.198328, 21.552061, 29.200861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.546752, 21.672264, 29.045452>,  <12.755806, 21.744387, 28.952206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.546752, 21.672264, 29.045452>,  <12.198328, 21.552061, 29.200861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.546752, 21.672264, 29.045452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442419, -0.136428, 0.886371,
		0.213356, -0.943972, -0.251787,
		0.871059, 0.300508, -0.388523,
		12.808070, 21.762417, 28.928896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.647089, 21.212681, 29.655651>,  <12.198328, 21.552061, 29.200861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.647089, 21.212681, 29.655651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.905290, 21.465393, 29.483986>,  <13.060210, 21.617020, 29.380987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.905290, 21.465393, 29.483986>,  <12.647089, 21.212681, 29.655651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.905290, 21.465393, 29.483986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556655, -0.004435, 0.830732,
		0.522937, -0.775135, -0.354546,
		0.645501, 0.631780, -0.429164,
		13.098940, 21.654926, 29.355236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.277303, 20.966881, 29.811174>,  <12.647089, 21.212681, 29.655651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.277303, 20.966881, 29.811174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.298237, 21.361582, 29.749748>,  <13.310797, 21.598402, 29.712893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.298237, 21.361582, 29.749748>,  <13.277303, 20.966881, 29.811174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.298237, 21.361582, 29.749748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527831, 0.103208, 0.843055,
		0.847735, -0.125177, -0.515437,
		0.052334, 0.986752, -0.153565,
		13.313937, 21.657608, 29.703678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.792147, 20.572697, 29.537100>,  <13.277303, 20.966881, 29.811174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.792147, 20.572697, 29.537100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.925243, 20.234652, 29.704462>,  <14.005101, 20.031824, 29.804880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.925243, 20.234652, 29.704462>,  <13.792147, 20.572697, 29.537100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.925243, 20.234652, 29.704462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300424, -0.515572, -0.802453,
		0.893884, 0.141311, -0.425445,
		0.332743, -0.845114, 0.418408,
		14.025066, 19.981117, 29.829985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.059812, 20.254971, 28.977829>,  <13.792147, 20.572697, 29.537100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.059812, 20.254971, 28.977829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.006893, 19.969400, 29.252874>,  <13.975142, 19.798058, 29.417902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.006893, 19.969400, 29.252874>,  <14.059812, 20.254971, 28.977829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.006893, 19.969400, 29.252874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216012, -0.656270, -0.722944,
		0.967387, -0.244175, -0.067395,
		-0.132296, -0.713924, 0.687611,
		13.967204, 19.755222, 29.459158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.482083, 19.754257, 28.783020>,  <14.059812, 20.254971, 28.977829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.482083, 19.754257, 28.783020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.195818, 19.570276, 28.993265>,  <14.024058, 19.459888, 29.119413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.195818, 19.570276, 28.993265>,  <14.482083, 19.754257, 28.783020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.195818, 19.570276, 28.993265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145626, -0.637746, -0.756355,
		0.683094, -0.617839, 0.389431,
		-0.715664, -0.459951, 0.525614,
		13.981118, 19.432291, 29.150949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.619232, 19.054993, 28.861290>,  <14.482083, 19.754257, 28.783020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.619232, 19.054993, 28.861290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.224560, 19.107788, 28.899321>,  <13.987757, 19.139465, 28.922140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.224560, 19.107788, 28.899321>,  <14.619232, 19.054993, 28.861290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.224560, 19.107788, 28.899321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159817, -0.677608, -0.717848,
		-0.030322, -0.723482, 0.689677,
		-0.986681, 0.131989, 0.095079,
		13.928555, 19.147385, 28.927845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.325443, 18.400164, 28.575136>,  <14.619232, 19.054993, 28.861290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.325443, 18.400164, 28.575136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.959448, 18.556093, 28.616766>,  <13.739850, 18.649651, 28.641743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.959448, 18.556093, 28.616766>,  <14.325443, 18.400164, 28.575136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.959448, 18.556093, 28.616766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334483, -0.588605, -0.735979,
		-0.225643, -0.708224, 0.668957,
		-0.914990, 0.389824, 0.104074,
		13.684951, 18.673040, 28.647987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.881101, 17.829861, 28.553591>,  <14.325443, 18.400164, 28.575136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.881101, 17.829861, 28.553591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.675293, 18.159878, 28.460142>,  <13.551808, 18.357887, 28.404074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.675293, 18.159878, 28.460142>,  <13.881101, 17.829861, 28.553591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.675293, 18.159878, 28.460142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500550, -0.510199, -0.699390,
		-0.696219, -0.242909, 0.675480,
		-0.514518, 0.825040, -0.233623,
		13.520937, 18.407391, 28.390055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.205807, 17.626114, 28.455196>,  <13.881101, 17.829861, 28.553591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.205807, 17.626114, 28.455196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.175788, 17.982862, 28.276787>,  <13.157777, 18.196911, 28.169741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.175788, 17.982862, 28.276787>,  <13.205807, 17.626114, 28.455196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.175788, 17.982862, 28.276787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485513, -0.423367, -0.764878,
		-0.871002, 0.159148, 0.464787,
		-0.075047, 0.891870, -0.446022,
		13.153274, 18.250423, 28.142981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<22.241806, 20.647642, 27.418608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.873299, 20.492977, 27.435373>,  <21.652195, 20.400179, 27.445433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.873299, 20.492977, 27.435373>,  <22.241806, 20.647642, 27.418608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.873299, 20.492977, 27.435373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320846, -0.694666, 0.643814,
		-0.219822, 0.606574, 0.764033,
		-0.921269, -0.386662, 0.041914,
		21.596918, 20.376978, 27.447947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.992004, 20.675289, 28.108124>,  <22.241806, 20.647642, 27.418608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.992004, 20.675289, 28.108124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.850910, 20.360893, 27.905029>,  <21.766254, 20.172255, 27.783173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.850910, 20.360893, 27.905029>,  <21.992004, 20.675289, 28.108124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.850910, 20.360893, 27.905029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331253, -0.612366, 0.717830,
		-0.875129, 0.085013, 0.476364,
		-0.352733, -0.785991, -0.507738,
		21.745090, 20.125095, 27.752708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.591497, 20.194883, 28.592669>,  <21.992004, 20.675289, 28.108124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.591497, 20.194883, 28.592669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.763531, 19.999857, 28.288746>,  <21.866751, 19.882841, 28.106392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.763531, 19.999857, 28.288746>,  <21.591497, 20.194883, 28.592669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.763531, 19.999857, 28.288746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243944, -0.747551, 0.617785,
		-0.869206, -0.451050, -0.202571,
		0.430084, -0.487567, -0.759807,
		21.892555, 19.853586, 28.060804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.960571, 19.877995, 28.593025>,  <21.591497, 20.194883, 28.592669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.960571, 19.877995, 28.593025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.890476, 19.601030, 28.872986>,  <20.848419, 19.434853, 29.040962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.890476, 19.601030, 28.872986>,  <20.960571, 19.877995, 28.593025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.890476, 19.601030, 28.872986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978193, 0.202956, -0.044130,
		-0.111493, -0.692372, -0.712875,
		-0.175237, -0.692409, 0.699902,
		20.837906, 19.393307, 29.082956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.580187, 19.331503, 28.314001>,  <20.960571, 19.877995, 28.593025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.580187, 19.331503, 28.314001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.504156, 19.350027, 28.706272>,  <20.458538, 19.361141, 28.941635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.504156, 19.350027, 28.706272>,  <20.580187, 19.331503, 28.314001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.504156, 19.350027, 28.706272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972595, -0.145119, -0.181657,
		0.133902, -0.988330, 0.072627,
		-0.190077, 0.046312, 0.980676,
		20.447134, 19.363920, 29.000475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.963457, 19.379356, 28.216818>,  <20.580187, 19.331503, 28.314001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.963457, 19.379356, 28.216818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.998392, 19.328217, 28.611994>,  <20.019352, 19.297533, 28.849100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.998392, 19.328217, 28.611994>,  <19.963457, 19.379356, 28.216818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.998392, 19.328217, 28.611994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995779, -0.039306, 0.082942,
		0.028228, -0.991015, -0.130739,
		0.087336, -0.127846, 0.987941,
		20.024593, 19.289862, 28.908377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.687677, 18.652094, 28.575668>,  <19.963457, 19.379356, 28.216818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.687677, 18.652094, 28.575668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.668932, 19.004789, 28.763432>,  <19.657684, 19.216406, 28.876089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.668932, 19.004789, 28.763432>,  <19.687677, 18.652094, 28.575668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.668932, 19.004789, 28.763432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998737, -0.032836, -0.038035,
		-0.018123, -0.470598, 0.882162,
		-0.046866, 0.881737, 0.469408,
		19.654873, 19.269310, 28.904253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.110634, 18.556295, 28.249508>,  <19.687677, 18.652094, 28.575668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.110634, 18.556295, 28.249508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.713501, 18.517588, 28.277565>,  <18.475222, 18.494364, 28.294399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.713501, 18.517588, 28.277565>,  <19.110634, 18.556295, 28.249508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.713501, 18.517588, 28.277565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015050, -0.683441, -0.729851,
		0.118565, -0.723564, 0.679999,
		-0.992832, -0.096769, 0.070143,
		18.415651, 18.488558, 28.298609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.986477, 17.846819, 28.501186>,  <19.110634, 18.556295, 28.249508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.986477, 17.846819, 28.501186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.647657, 17.960135, 28.321295>,  <18.444365, 18.028124, 28.213360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.647657, 17.960135, 28.321295>,  <18.986477, 17.846819, 28.501186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.647657, 17.960135, 28.321295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019213, -0.829252, -0.558544,
		-0.531166, -0.481755, 0.696975,
		-0.847050, 0.283289, -0.449726,
		18.393543, 18.045122, 28.186377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.622925, 17.263611, 28.466230>,  <18.986477, 17.846819, 28.501186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.622925, 17.263611, 28.466230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.474369, 17.512106, 28.190222>,  <18.385235, 17.661203, 28.024616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.474369, 17.512106, 28.190222>,  <18.622925, 17.263611, 28.466230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.474369, 17.512106, 28.190222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107658, -0.766978, -0.632578,
		-0.922215, -0.160646, 0.351729,
		-0.371389, 0.621239, -0.690023,
		18.362951, 17.698477, 27.983215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.234072, 16.764376, 28.043957>,  <18.622925, 17.263611, 28.466230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.234072, 16.764376, 28.043957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.230137, 17.088497, 27.809586>,  <18.227776, 17.282970, 27.668962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.230137, 17.088497, 27.809586>,  <18.234072, 16.764376, 28.043957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.230137, 17.088497, 27.809586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152415, -0.580324, -0.799996,
		-0.988268, 0.081433, 0.129213,
		-0.009839, 0.810304, -0.585927,
		18.227184, 17.331589, 27.633808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.686199, 16.682140, 27.500351>,  <18.234072, 16.764376, 28.043957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.686199, 16.682140, 27.500351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.918301, 16.964066, 27.337111>,  <18.057562, 17.133221, 27.239166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.918301, 16.964066, 27.337111>,  <17.686199, 16.682140, 27.500351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.918301, 16.964066, 27.337111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224147, -0.343535, -0.911999,
		-0.782984, 0.620665, -0.041356,
		0.580253, 0.704811, -0.408103,
		18.092377, 17.175508, 27.214680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.406443, 16.316725, 28.055513>,  <17.686199, 16.682140, 27.500351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.406443, 16.316725, 28.055513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.086910, 16.144842, 28.223906>,  <16.895191, 16.041712, 28.324940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.086910, 16.144842, 28.223906>,  <17.406443, 16.316725, 28.055513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.086910, 16.144842, 28.223906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212753, 0.452773, 0.865871,
		-0.562679, 0.781248, -0.270267,
		-0.798829, -0.429707, 0.420979,
		16.847261, 16.015930, 28.350199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.190325, 16.858061, 28.532028>,  <17.406443, 16.316725, 28.055513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.190325, 16.858061, 28.532028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.991390, 16.532505, 28.652189>,  <16.872030, 16.337172, 28.724285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.991390, 16.532505, 28.652189>,  <17.190325, 16.858061, 28.532028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.991390, 16.532505, 28.652189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243386, 0.463250, 0.852152,
		-0.832718, 0.350692, -0.428480,
		-0.497336, -0.813889, 0.300403,
		16.842190, 16.288338, 28.742310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.524706, 17.064976, 28.767326>,  <17.190325, 16.858061, 28.532028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.524706, 17.064976, 28.767326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.602432, 16.711433, 28.937521>,  <16.649069, 16.499308, 29.039639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.602432, 16.711433, 28.937521>,  <16.524706, 17.064976, 28.767326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.602432, 16.711433, 28.937521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257794, 0.372495, 0.891510,
		-0.946459, -0.282922, -0.155472,
		0.194315, -0.883857, 0.425487,
		16.660727, 16.446276, 29.065166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.865465, 16.883459, 29.078539>,  <16.524706, 17.064976, 28.767326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.865465, 16.883459, 29.078539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.137766, 16.648497, 29.253595>,  <16.301146, 16.507519, 29.358629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.137766, 16.648497, 29.253595>,  <15.865465, 16.883459, 29.078539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.137766, 16.648497, 29.253595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222944, 0.402962, 0.887647,
		-0.697764, -0.701836, 0.143358,
		0.680751, -0.587407, 0.437643,
		16.341991, 16.472275, 29.384888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.552695, 16.645363, 29.656601>,  <15.865465, 16.883459, 29.078539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.552695, 16.645363, 29.656601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.940203, 16.577999, 29.729404>,  <16.172707, 16.537580, 29.773087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.940203, 16.577999, 29.729404>,  <15.552695, 16.645363, 29.656601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.940203, 16.577999, 29.729404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096683, 0.419380, 0.902648,
		-0.228346, -0.892053, 0.389999,
		0.968768, -0.168410, 0.182010,
		16.230833, 16.527475, 29.784008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.728058, 16.221230, 30.292978>,  <15.552695, 16.645363, 29.656601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.728058, 16.221230, 30.292978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.047285, 16.447872, 30.210958>,  <16.238821, 16.583858, 30.161747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.047285, 16.447872, 30.210958>,  <15.728058, 16.221230, 30.292978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.047285, 16.447872, 30.210958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092561, 0.451530, 0.887442,
		0.595417, -0.689259, 0.412797,
		0.798067, 0.566607, -0.205050,
		16.286705, 16.617853, 30.149445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.047489, 16.316170, 30.975918>,  <15.728058, 16.221230, 30.292978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.047489, 16.316170, 30.975918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.202471, 16.616329, 30.761711>,  <16.295460, 16.796425, 30.633186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.202471, 16.616329, 30.761711>,  <16.047489, 16.316170, 30.975918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202471, 16.616329, 30.761711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113320, 0.537718, 0.835474,
		0.914898, -0.384393, 0.123306,
		0.387454, 0.750401, -0.535517,
		16.318707, 16.841450, 30.601055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.414200, 16.606598, 31.527645>,  <16.047489, 16.316170, 30.975918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.414200, 16.606598, 31.527645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.436666, 16.890757, 31.247023>,  <16.450146, 17.061251, 31.078650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.436666, 16.890757, 31.247023>,  <16.414200, 16.606598, 31.527645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.436666, 16.890757, 31.247023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296287, 0.659155, 0.691179,
		0.953446, -0.246684, -0.173458,
		0.056167, 0.710395, -0.701558,
		16.453516, 17.103874, 31.036554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.838329, 17.083467, 31.822399>,  <16.414200, 16.606598, 31.527645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.838329, 17.083467, 31.822399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.684381, 17.297585, 31.521645>,  <16.592012, 17.426056, 31.341192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.684381, 17.297585, 31.521645>,  <16.838329, 17.083467, 31.822399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.684381, 17.297585, 31.521645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325574, 0.841010, 0.432091,
		0.863641, -0.078496, -0.497959,
		-0.384871, 0.535294, -0.751887,
		16.568920, 17.458172, 31.296078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.311094, 17.498550, 31.371372>,  <16.838329, 17.083467, 31.822399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.311094, 17.498550, 31.371372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.953922, 17.677475, 31.351002>,  <16.739620, 17.784830, 31.338779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.953922, 17.677475, 31.351002>,  <17.311094, 17.498550, 31.371372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.953922, 17.677475, 31.351002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354968, 0.769104, 0.531486,
		0.276906, 0.456501, -0.845535,
		-0.892928, 0.447310, -0.050926,
		16.686045, 17.811668, 31.335724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.472836, 18.174952, 31.309158>,  <17.311094, 17.498550, 31.371372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.472836, 18.174952, 31.309158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.088251, 18.186720, 31.418507>,  <16.857500, 18.193781, 31.484116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.088251, 18.186720, 31.418507>,  <17.472836, 18.174952, 31.309158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.088251, 18.186720, 31.418507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182367, 0.812316, 0.553973,
		-0.205765, 0.582476, -0.786373,
		-0.961459, 0.029421, 0.273371,
		16.799814, 18.195545, 31.500517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322958, 18.899900, 31.378222>,  <17.472836, 18.174952, 31.309158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.322958, 18.899900, 31.378222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.037251, 18.728077, 31.599236>,  <16.865826, 18.624983, 31.731844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.037251, 18.728077, 31.599236>,  <17.322958, 18.899900, 31.378222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.037251, 18.728077, 31.599236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332093, 0.486922, 0.807850,
		-0.616063, 0.760516, -0.205139,
		-0.714269, -0.429561, 0.552537,
		16.822969, 18.599209, 31.764997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.099518, 19.439238, 31.732891>,  <17.322958, 18.899900, 31.378222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.099518, 19.439238, 31.732891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.975250, 19.126961, 31.949781>,  <16.900690, 18.939594, 32.079914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.975250, 19.126961, 31.949781>,  <17.099518, 19.439238, 31.732891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.975250, 19.126961, 31.949781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247556, 0.484310, 0.839142,
		-0.917716, 0.394925, 0.042806,
		-0.310667, -0.780691, 0.542224,
		16.882050, 18.892754, 32.112450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.551176, 19.745245, 32.147362>,  <17.099518, 19.439238, 31.732891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.551176, 19.745245, 32.147362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.692108, 19.418573, 32.330185>,  <16.776667, 19.222570, 32.439880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.692108, 19.418573, 32.330185>,  <16.551176, 19.745245, 32.147362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.692108, 19.418573, 32.330185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293155, 0.560105, 0.774818,
		-0.888777, -0.139001, 0.436754,
		0.352328, -0.816677, 0.457060,
		16.797806, 19.173571, 32.467304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.495266, 20.134777, 31.552198>,  <16.551176, 19.745245, 32.147362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.495266, 20.134777, 31.552198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.192488, 20.276487, 31.771843>,  <16.010820, 20.361513, 31.903629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.192488, 20.276487, 31.771843>,  <16.495266, 20.134777, 31.552198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.192488, 20.276487, 31.771843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650930, -0.482904, -0.585742,
		0.057655, -0.800807, 0.596141,
		-0.756945, 0.354275, 0.549111,
		15.965405, 20.382771, 31.936577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.030499, 19.572210, 31.546602>,  <16.495266, 20.134777, 31.552198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.030499, 19.572210, 31.546602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.832542, 19.910292, 31.627316>,  <15.713769, 20.113140, 31.675743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.832542, 19.910292, 31.627316>,  <16.030499, 19.572210, 31.546602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.832542, 19.910292, 31.627316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636385, -0.194410, -0.746471,
		-0.591692, -0.497830, 0.634087,
		-0.494888, 0.845204, 0.201781,
		15.684075, 20.163853, 31.687849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.334472, 19.413902, 31.591249>,  <16.030499, 19.572210, 31.546602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.334472, 19.413902, 31.591249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.317151, 19.809292, 31.533222>,  <15.306759, 20.046526, 31.498405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.317151, 19.809292, 31.533222>,  <15.334472, 19.413902, 31.591249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.317151, 19.809292, 31.533222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668919, -0.136538, -0.730688,
		-0.742073, 0.065397, 0.667121,
		-0.043302, 0.988474, -0.145067,
		15.304160, 20.105835, 31.489702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.615376, 19.546469, 31.635109>,  <15.334472, 19.413902, 31.591249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.615376, 19.546469, 31.635109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.772905, 19.856722, 31.437809>,  <14.867423, 20.042873, 31.319429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.772905, 19.856722, 31.437809>,  <14.615376, 19.546469, 31.635109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.772905, 19.856722, 31.437809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735551, -0.055882, -0.675160,
		-0.551242, 0.628703, 0.548512,
		0.393823, 0.775635, -0.493248,
		14.891052, 20.089413, 31.289835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.073995, 19.896093, 31.453148>,  <14.615376, 19.546469, 31.635109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.073995, 19.896093, 31.453148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.317115, 20.075159, 31.190796>,  <14.462987, 20.182598, 31.033384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.317115, 20.075159, 31.190796>,  <14.073995, 19.896093, 31.453148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.317115, 20.075159, 31.190796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690566, -0.109799, -0.714887,
		-0.392044, 0.887435, 0.242406,
		0.607800, 0.447665, -0.655878,
		14.499454, 20.209459, 30.994032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.646752, 20.298096, 30.965158>,  <14.073995, 19.896093, 31.453148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.646752, 20.298096, 30.965158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.996732, 20.239208, 30.780642>,  <14.206719, 20.203876, 30.669931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.996732, 20.239208, 30.780642>,  <13.646752, 20.298096, 30.965158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.996732, 20.239208, 30.780642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482398, -0.347492, -0.804078,
		-0.041921, 0.926054, -0.375055,
		0.874948, -0.147218, -0.461294,
		14.259216, 20.195044, 30.642254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.689332, 20.570160, 30.274920>,  <13.646752, 20.298096, 30.965158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.689332, 20.570160, 30.274920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.973482, 20.288769, 30.266123>,  <14.143972, 20.119934, 30.260845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.973482, 20.288769, 30.266123>,  <13.689332, 20.570160, 30.274920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.973482, 20.288769, 30.266123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438254, -0.417668, -0.795918,
		0.550726, 0.575040, -0.605004,
		0.710376, -0.703478, -0.021993,
		14.186595, 20.077724, 30.259525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.004135, 21.254604, 30.027437>,  <13.689332, 20.570160, 30.274920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.004135, 21.254604, 30.027437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.797463, 21.596098, 30.001560>,  <13.673461, 21.800993, 29.986034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.797463, 21.596098, 30.001560>,  <14.004135, 21.254604, 30.027437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.797463, 21.596098, 30.001560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403564, 0.309484, 0.861020,
		0.755102, 0.418762, -0.504439,
		-0.516678, 0.853732, -0.064694,
		13.642460, 21.852217, 29.982151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.452954, 21.757185, 30.257965>,  <14.004135, 21.254604, 30.027437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.452954, 21.757185, 30.257965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.113365, 21.968542, 30.255224>,  <13.909612, 22.095356, 30.253580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.113365, 21.968542, 30.255224>,  <14.452954, 21.757185, 30.257965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.113365, 21.968542, 30.255224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318994, 0.522777, 0.790536,
		0.421295, 0.668958, -0.612377,
		-0.848972, 0.528393, -0.006850,
		13.858673, 22.127060, 30.253170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.661318, 22.477171, 30.325380>,  <14.452954, 21.757185, 30.257965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.661318, 22.477171, 30.325380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.280993, 22.412220, 30.430904>,  <14.052799, 22.373249, 30.494219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.280993, 22.412220, 30.430904>,  <14.661318, 22.477171, 30.325380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.280993, 22.412220, 30.430904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163271, 0.461042, 0.872229,
		-0.263255, 0.872396, -0.411852,
		-0.950810, -0.162375, 0.263809,
		13.995750, 22.363508, 30.510048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.440712, 23.212261, 30.188646>,  <14.661318, 22.477171, 30.325380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.440712, 23.212261, 30.188646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.250784, 22.977648, 30.451103>,  <14.136827, 22.836880, 30.608578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.250784, 22.977648, 30.451103>,  <14.440712, 23.212261, 30.188646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.250784, 22.977648, 30.451103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412162, 0.510536, 0.754636,
		-0.777604, 0.628754, -0.000666,
		-0.474821, -0.586533, 0.656143,
		14.108337, 22.801687, 30.647945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.186840, 23.701025, 30.689455>,  <14.440712, 23.212261, 30.188646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.186840, 23.701025, 30.689455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.135549, 23.358181, 30.889023>,  <14.104774, 23.152475, 31.008764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.135549, 23.358181, 30.889023>,  <14.186840, 23.701025, 30.689455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.135549, 23.358181, 30.889023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283654, 0.450361, 0.846590,
		-0.950314, 0.250078, 0.185373,
		-0.128229, -0.857109, 0.498920,
		14.097080, 23.101048, 31.038698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.952230, 23.838320, 31.439764>,  <14.186840, 23.701025, 30.689455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.952230, 23.838320, 31.439764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.072163, 23.459723, 31.487513>,  <14.144122, 23.232563, 31.516161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.072163, 23.459723, 31.487513>,  <13.952230, 23.838320, 31.439764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.072163, 23.459723, 31.487513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569326, 0.277931, 0.773707,
		-0.765486, -0.164020, 0.622196,
		0.299831, -0.946495, 0.119371,
		14.162112, 23.175774, 31.523323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.864045, 23.672554, 32.148762>,  <13.952230, 23.838320, 31.439764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.864045, 23.672554, 32.148762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.160713, 23.433479, 32.026978>,  <14.338714, 23.290035, 31.953907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.160713, 23.433479, 32.026978>,  <13.864045, 23.672554, 32.148762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.160713, 23.433479, 32.026978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512300, 0.211743, 0.832294,
		-0.432983, -0.773264, 0.463238,
		0.741670, -0.597686, -0.304462,
		14.383214, 23.254173, 31.935638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.979161, 23.178734, 32.698154>,  <13.864045, 23.672554, 32.148762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.979161, 23.178734, 32.698154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.307495, 23.171957, 32.469788>,  <14.504496, 23.167891, 32.332767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.307495, 23.171957, 32.469788>,  <13.979161, 23.178734, 32.698154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.307495, 23.171957, 32.469788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570715, -0.015377, 0.821004,
		-0.022704, -0.999738, -0.002942,
		0.820834, -0.016961, -0.570915,
		14.553745, 23.166874, 32.298512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.407092, 22.677406, 32.963257>,  <13.979161, 23.178734, 32.698154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.407092, 22.677406, 32.963257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.648784, 22.904671, 32.739792>,  <14.793798, 23.041029, 32.605713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.648784, 22.904671, 32.739792>,  <14.407092, 22.677406, 32.963257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.648784, 22.904671, 32.739792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533109, 0.232829, 0.813379,
		0.592202, -0.789294, -0.162209,
		0.604229, 0.568160, -0.558661,
		14.830052, 23.075119, 32.572193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<12.335999, 16.539848, 17.865713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.656218, 16.769114, 17.935698>,  <12.848349, 16.906673, 17.977688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.656218, 16.769114, 17.935698>,  <12.335999, 16.539848, 17.865713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.656218, 16.769114, 17.935698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355727, 0.219544, 0.908438,
		0.482272, -0.789483, 0.379645,
		0.800545, 0.573164, 0.174960,
		12.896381, 16.941063, 17.988186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.651438, 16.337513, 18.575382>,  <12.335999, 16.539848, 17.865713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.651438, 16.337513, 18.575382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.752440, 16.711620, 18.476171>,  <12.813043, 16.936085, 18.416645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.752440, 16.711620, 18.476171>,  <12.651438, 16.337513, 18.575382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.752440, 16.711620, 18.476171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242876, 0.309391, 0.919396,
		0.936617, -0.171915, 0.305277,
		0.252508, 0.935266, -0.248027,
		12.828193, 16.992201, 18.401764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.251346, 16.523600, 19.098440>,  <12.651438, 16.337513, 18.575382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.251346, 16.523600, 19.098440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.106701, 16.864029, 18.946173>,  <13.019914, 17.068287, 18.854813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.106701, 16.864029, 18.946173>,  <13.251346, 16.523600, 19.098440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.106701, 16.864029, 18.946173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283700, 0.288492, 0.914487,
		0.888117, 0.438685, 0.137128,
		-0.361612, 0.851075, -0.380669,
		12.998218, 17.119350, 18.831972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.566639, 17.008993, 19.463886>,  <13.251346, 16.523600, 19.098440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.566639, 17.008993, 19.463886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.276126, 17.243984, 19.321121>,  <13.101818, 17.384979, 19.235462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.276126, 17.243984, 19.321121>,  <13.566639, 17.008993, 19.463886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.276126, 17.243984, 19.321121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213648, 0.300585, 0.929518,
		0.653352, 0.751345, -0.092797,
		-0.726282, 0.587476, -0.356911,
		13.058241, 17.420227, 19.214048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.599967, 17.585749, 19.706369>,  <13.566639, 17.008993, 19.463886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.599967, 17.585749, 19.706369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.209564, 17.603790, 19.621164>,  <12.975323, 17.614616, 19.570042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.209564, 17.603790, 19.621164>,  <13.599967, 17.585749, 19.706369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.209564, 17.603790, 19.621164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164508, 0.488142, 0.857120,
		0.142642, 0.871598, -0.469010,
		-0.976007, 0.045105, -0.213015,
		12.916762, 17.617321, 19.557261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.364388, 18.206232, 19.917713>,  <13.599967, 17.585749, 19.706369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.364388, 18.206232, 19.917713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.032999, 17.982889, 19.900414>,  <12.834166, 17.848883, 19.890034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.032999, 17.982889, 19.900414>,  <13.364388, 18.206232, 19.917713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.032999, 17.982889, 19.900414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340637, 0.441112, 0.830293,
		-0.444523, 0.702607, -0.555646,
		-0.828472, -0.558358, -0.043249,
		12.784457, 17.815382, 19.887438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.868604, 18.684847, 19.967758>,  <13.364388, 18.206232, 19.917713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.868604, 18.684847, 19.967758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.664864, 18.354856, 20.065720>,  <12.542620, 18.156862, 20.124496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.664864, 18.354856, 20.065720>,  <12.868604, 18.684847, 19.967758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.664864, 18.354856, 20.065720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473529, 0.506315, 0.720705,
		-0.718563, 0.251121, -0.648541,
		-0.509350, -0.824975, 0.244906,
		12.512058, 18.107365, 20.139191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.104777, 18.900824, 20.176708>,  <12.868604, 18.684847, 19.967758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.104777, 18.900824, 20.176708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.183710, 18.543716, 20.338709>,  <12.231070, 18.329453, 20.435909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.183710, 18.543716, 20.338709>,  <12.104777, 18.900824, 20.176708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.183710, 18.543716, 20.338709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384401, 0.309576, 0.869712,
		-0.901829, -0.327304, -0.282092,
		0.197331, -0.892768, 0.405001,
		12.242909, 18.275887, 20.460209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.418751, 18.756371, 20.592346>,  <12.104777, 18.900824, 20.176708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.418751, 18.756371, 20.592346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703526, 18.523666, 20.749674>,  <11.874392, 18.384045, 20.844070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.703526, 18.523666, 20.749674>,  <11.418751, 18.756371, 20.592346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.703526, 18.523666, 20.749674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250027, 0.313395, 0.916117,
		-0.656224, -0.750559, 0.077662,
		0.711939, -0.581761, 0.393317,
		11.917109, 18.349138, 20.867668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.120888, 18.563261, 21.230238>,  <11.418751, 18.756371, 20.592346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.120888, 18.563261, 21.230238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.496871, 18.441757, 21.292479>,  <11.722461, 18.368855, 21.329823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.496871, 18.441757, 21.292479>,  <11.120888, 18.563261, 21.230238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.496871, 18.441757, 21.292479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106753, 0.171360, 0.979408,
		-0.324166, -0.937212, 0.128644,
		0.939958, -0.303758, 0.155599,
		11.778858, 18.350630, 21.339159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.153193, 18.099333, 21.795422>,  <11.120888, 18.563261, 21.230238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.153193, 18.099333, 21.795422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.515242, 18.269337, 21.799797>,  <11.732471, 18.371340, 21.802422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.515242, 18.269337, 21.799797>,  <11.153193, 18.099333, 21.795422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.515242, 18.269337, 21.799797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138454, 0.270341, 0.952757,
		0.401977, -0.863876, 0.303536,
		0.905122, 0.425012, 0.010937,
		11.786778, 18.396839, 21.803078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.491582, 17.750063, 22.402115>,  <11.153193, 18.099333, 21.795422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.491582, 17.750063, 22.402115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.699511, 18.086832, 22.344213>,  <11.824267, 18.288893, 22.309473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.699511, 18.086832, 22.344213>,  <11.491582, 17.750063, 22.402115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.699511, 18.086832, 22.344213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373321, 0.376289, 0.847961,
		0.768386, -0.386749, 0.509910,
		0.519821, 0.841922, -0.144753,
		11.855457, 18.339409, 22.300787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.745018, 17.059065, 22.431107>,  <11.491582, 17.750063, 22.402115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.745018, 17.059065, 22.431107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735224, 16.704657, 22.616306>,  <11.729347, 16.492012, 22.727427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.735224, 16.704657, 22.616306>,  <11.745018, 17.059065, 22.431107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.735224, 16.704657, 22.616306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017711, -0.462680, -0.886349,
		0.999543, -0.029902, -0.004363,
		-0.024485, -0.886021, 0.462998,
		11.727879, 16.438850, 22.755205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.171109, 16.650522, 22.057772>,  <11.745018, 17.059065, 22.431107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.171109, 16.650522, 22.057772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.978864, 16.368813, 22.266771>,  <11.863517, 16.199787, 22.392172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.978864, 16.368813, 22.266771>,  <12.171109, 16.650522, 22.057772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.978864, 16.368813, 22.266771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193946, -0.495706, -0.846558,
		0.855217, -0.508203, 0.101651,
		-0.480612, -0.704276, 0.522501,
		11.834680, 16.157530, 22.423521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.347520, 16.057974, 21.691290>,  <12.171109, 16.650522, 22.057772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.347520, 16.057974, 21.691290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.012406, 15.987312, 21.897943>,  <11.811338, 15.944916, 22.021936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.012406, 15.987312, 21.897943>,  <12.347520, 16.057974, 21.691290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.012406, 15.987312, 21.897943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351167, -0.550213, -0.757593,
		0.418091, -0.816124, 0.398925,
		-0.837784, -0.176654, 0.516635,
		11.761071, 15.934316, 22.052935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.192561, 15.321040, 21.592827>,  <12.347520, 16.057974, 21.691290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.192561, 15.321040, 21.592827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.863607, 15.528587, 21.686172>,  <11.666235, 15.653115, 21.742180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.863607, 15.528587, 21.686172>,  <12.192561, 15.321040, 21.592827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.863607, 15.528587, 21.686172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443027, -0.326697, -0.834863,
		-0.356954, -0.789959, 0.498546,
		-0.822381, 0.518877, 0.233358,
		11.616892, 15.684248, 21.756182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.642188, 14.808617, 21.596519>,  <12.192561, 15.321040, 21.592827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.642188, 14.808617, 21.596519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.464362, 15.163410, 21.546528>,  <11.357666, 15.376287, 21.516533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.464362, 15.163410, 21.546528>,  <11.642188, 14.808617, 21.596519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.464362, 15.163410, 21.546528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346902, -0.299121, -0.888924,
		-0.825845, -0.351830, 0.440676,
		-0.444566, 0.886985, -0.124977,
		11.330993, 15.429505, 21.509035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.951308, 14.683457, 21.295973>,  <11.642188, 14.808617, 21.596519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.951308, 14.683457, 21.295973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.015090, 15.070493, 21.217642>,  <11.053359, 15.302714, 21.170643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.015090, 15.070493, 21.217642>,  <10.951308, 14.683457, 21.295973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.015090, 15.070493, 21.217642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442582, -0.107246, -0.890292,
		-0.882437, 0.228630, 0.411137,
		0.159455, 0.967588, -0.195825,
		11.062926, 15.360769, 21.158894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.298285, 14.981376, 21.097122>,  <10.951308, 14.683457, 21.295973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.298285, 14.981376, 21.097122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.565419, 15.248754, 20.966171>,  <10.725699, 15.409181, 20.887600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.565419, 15.248754, 20.966171>,  <10.298285, 14.981376, 21.097122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.565419, 15.248754, 20.966171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560695, 0.162542, -0.811912,
		-0.489507, 0.725783, 0.483345,
		0.667836, 0.668446, -0.327378,
		10.765770, 15.449287, 20.867958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.925735, 15.540943, 20.751675>,  <10.298285, 14.981376, 21.097122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.925735, 15.540943, 20.751675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.300505, 15.567288, 20.614368>,  <10.525367, 15.583096, 20.531984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.300505, 15.567288, 20.614368>,  <9.925735, 15.540943, 20.751675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.300505, 15.567288, 20.614368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335954, -0.101325, -0.936413,
		-0.096457, 0.992671, -0.072807,
		0.936927, 0.065863, -0.343265,
		10.581583, 15.587048, 20.511389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.883332, 15.902541, 20.068396>,  <9.925735, 15.540943, 20.751675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.883332, 15.902541, 20.068396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.238652, 15.721218, 20.038906>,  <10.451844, 15.612424, 20.021212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.238652, 15.721218, 20.038906>,  <9.883332, 15.902541, 20.068396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.238652, 15.721218, 20.038906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158254, -0.151424, -0.975718,
		0.431137, 0.878398, -0.206248,
		0.888300, -0.453308, -0.073725,
		10.505142, 15.585226, 20.016788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.077230, 16.160734, 19.465820>,  <9.883332, 15.902541, 20.068396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.077230, 16.160734, 19.465820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.291949, 15.827272, 19.517773>,  <10.420780, 15.627195, 19.548944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.291949, 15.827272, 19.517773>,  <10.077230, 16.160734, 19.465820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.291949, 15.827272, 19.517773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173023, -0.259438, -0.950134,
		0.825780, 0.487557, -0.283507,
		0.536797, -0.833655, 0.129880,
		10.452989, 15.577176, 19.556736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.387292, 16.081011, 18.847317>,  <10.077230, 16.160734, 19.465820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.387292, 16.081011, 18.847317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.451596, 15.723292, 19.014357>,  <10.490179, 15.508661, 19.114580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.451596, 15.723292, 19.014357>,  <10.387292, 16.081011, 18.847317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.451596, 15.723292, 19.014357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121274, -0.401997, -0.907574,
		0.979514, 0.196546, 0.043830,
		0.160761, -0.894297, 0.417598,
		10.499825, 15.455003, 19.139637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.070292, 15.675778, 18.572802>,  <10.387292, 16.081011, 18.847317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.070292, 15.675778, 18.572802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.833983, 15.392064, 18.726633>,  <10.692198, 15.221836, 18.818932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.833983, 15.392064, 18.726633>,  <11.070292, 15.675778, 18.572802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.833983, 15.392064, 18.726633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087445, -0.417556, -0.904433,
		0.802085, -0.567945, 0.184658,
		-0.590774, -0.709285, 0.384580,
		10.656752, 15.179278, 18.842007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.386453, 15.091389, 18.383343>,  <11.070292, 15.675778, 18.572802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.386453, 15.091389, 18.383343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.006343, 14.987367, 18.451868>,  <10.778276, 14.924953, 18.492983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.006343, 14.987367, 18.451868>,  <11.386453, 15.091389, 18.383343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.006343, 14.987367, 18.451868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079549, -0.329155, -0.940919,
		0.301080, -0.907760, 0.292100,
		-0.950275, -0.260056, 0.171313,
		10.721260, 14.909350, 18.503262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.262403, 14.416346, 18.120192>,  <11.386453, 15.091389, 18.383343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.262403, 14.416346, 18.120192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.915686, 14.615784, 18.116888>,  <10.707655, 14.735447, 18.114906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.915686, 14.615784, 18.116888>,  <11.262403, 14.416346, 18.120192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.915686, 14.615784, 18.116888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213178, -0.385478, -0.897754,
		-0.450802, -0.776407, 0.440420,
		-0.866794, 0.498597, -0.008261,
		10.655647, 14.765362, 18.114410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.811553, 14.103349, 18.412514>,  <11.262403, 14.416346, 18.120192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.811553, 14.103349, 18.412514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.921672, 13.731609, 18.510920>,  <11.987743, 13.508566, 18.569963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.921672, 13.731609, 18.510920>,  <11.811553, 14.103349, 18.412514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.921672, 13.731609, 18.510920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591728, 0.365492, 0.718521,
		-0.757674, -0.052231, 0.650540,
		0.275297, -0.929348, 0.246017,
		12.004261, 13.452805, 18.584724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.594339, 13.848764, 19.162409>,  <11.811553, 14.103349, 18.412514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.594339, 13.848764, 19.162409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.928653, 13.663321, 19.044743>,  <12.129241, 13.552055, 18.974144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.928653, 13.663321, 19.044743>,  <11.594339, 13.848764, 19.162409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.928653, 13.663321, 19.044743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465572, 0.314408, 0.827279,
		-0.291045, -0.828381, 0.478620,
		0.835784, -0.463607, -0.294164,
		12.179388, 13.524240, 18.956493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.812405, 13.548738, 19.760597>,  <11.594339, 13.848764, 19.162409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.812405, 13.548738, 19.760597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.140577, 13.530127, 19.532658>,  <12.337481, 13.518960, 19.395895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.140577, 13.530127, 19.532658>,  <11.812405, 13.548738, 19.760597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.140577, 13.530127, 19.532658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547076, 0.353487, 0.758785,
		0.166129, -0.934282, 0.315467,
		0.820432, -0.046528, -0.569847,
		12.386707, 13.516169, 19.361704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.242981, 13.032692, 19.983479>,  <11.812405, 13.548738, 19.760597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.242981, 13.032692, 19.983479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.489474, 13.303811, 19.823057>,  <12.637370, 13.466483, 19.726805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.489474, 13.303811, 19.823057>,  <12.242981, 13.032692, 19.983479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.489474, 13.303811, 19.823057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546972, -0.001948, 0.837148,
		0.566637, -0.735245, -0.371937,
		0.616234, 0.677798, -0.401055,
		12.674345, 13.507151, 19.702740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.844673, 12.887759, 20.306774>,  <12.242981, 13.032692, 19.983479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.844673, 12.887759, 20.306774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.922767, 13.239134, 20.132311>,  <12.969623, 13.449959, 20.027634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.922767, 13.239134, 20.132311>,  <12.844673, 12.887759, 20.306774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.922767, 13.239134, 20.132311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650550, 0.216807, 0.727859,
		0.733940, -0.425845, -0.529139,
		0.195234, 0.878437, -0.436157,
		12.981337, 13.502665, 20.001463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.541306, 12.889166, 20.215914>,  <12.844673, 12.887759, 20.306774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.541306, 12.889166, 20.215914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.438014, 13.274828, 20.240318>,  <13.376040, 13.506226, 20.254961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.438014, 13.274828, 20.240318>,  <13.541306, 12.889166, 20.215914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.438014, 13.274828, 20.240318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656366, 0.128753, 0.743375,
		0.708874, 0.232005, -0.666086,
		-0.258228, 0.964156, 0.061011,
		13.360546, 13.564075, 20.258621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.227277, 13.328197, 20.438185>,  <13.541306, 12.889166, 20.215914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.227277, 13.328197, 20.438185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.920302, 13.572069, 20.517515>,  <13.736118, 13.718392, 20.565113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.920302, 13.572069, 20.517515>,  <14.227277, 13.328197, 20.438185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.920302, 13.572069, 20.517515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493930, 0.365022, 0.789172,
		0.408750, 0.703597, -0.581270,
		-0.767435, 0.609681, 0.198325,
		13.690072, 13.754973, 20.577013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.471151, 14.014774, 20.519722>,  <14.227277, 13.328197, 20.438185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.471151, 14.014774, 20.519722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.120200, 14.019324, 20.711588>,  <13.909629, 14.022054, 20.826708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.120200, 14.019324, 20.711588>,  <14.471151, 14.014774, 20.519722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.120200, 14.019324, 20.711588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463185, 0.280873, 0.840578,
		-0.125164, 0.959678, -0.251700,
		-0.877379, 0.011374, 0.479663,
		13.856986, 14.022737, 20.855486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432409, 14.622265, 20.928453>,  <14.471151, 14.014774, 20.519722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.432409, 14.622265, 20.928453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.155627, 14.409420, 21.123617>,  <13.989558, 14.281713, 21.240715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.155627, 14.409420, 21.123617>,  <14.432409, 14.622265, 20.928453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.155627, 14.409420, 21.123617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375228, 0.312294, 0.872741,
		-0.616767, 0.786974, -0.016430,
		-0.691955, -0.532113, 0.487908,
		13.948041, 14.249786, 21.269989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.165353, 15.136303, 21.398651>,  <14.432409, 14.622265, 20.928453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.165353, 15.136303, 21.398651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.093884, 14.775934, 21.556849>,  <14.051002, 14.559712, 21.651766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.093884, 14.775934, 21.556849>,  <14.165353, 15.136303, 21.398651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.093884, 14.775934, 21.556849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400008, 0.300729, 0.865769,
		-0.898927, 0.312890, 0.306644,
		-0.178674, -0.900923, 0.395492,
		14.040281, 14.505657, 21.675495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893993, 15.228442, 22.083504>,  <14.165353, 15.136303, 21.398651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.893993, 15.228442, 22.083504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.026747, 14.851127, 22.086626>,  <14.106399, 14.624738, 22.088499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.026747, 14.851127, 22.086626>,  <13.893993, 15.228442, 22.083504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.026747, 14.851127, 22.086626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166273, 0.066645, 0.983825,
		-0.928551, -0.325217, 0.178962,
		0.331883, -0.943289, 0.007808,
		14.126311, 14.568140, 22.088968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.593678, 14.964647, 22.721035>,  <13.893993, 15.228442, 22.083504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.593678, 14.964647, 22.721035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.891376, 14.711848, 22.634611>,  <14.069994, 14.560169, 22.582756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.891376, 14.711848, 22.634611>,  <13.593678, 14.964647, 22.721035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.891376, 14.711848, 22.634611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215256, -0.079266, 0.973335,
		-0.632272, -0.770906, 0.077048,
		0.744242, -0.631998, -0.216060,
		14.114648, 14.522249, 22.569794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.469518, 14.479721, 23.254385>,  <13.593678, 14.964647, 22.721035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.469518, 14.479721, 23.254385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.838620, 14.438532, 23.105835>,  <14.060081, 14.413818, 23.016705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.838620, 14.438532, 23.105835>,  <13.469518, 14.479721, 23.254385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.838620, 14.438532, 23.105835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356744, -0.136317, 0.924203,
		-0.145816, -0.985297, -0.089043,
		0.922753, -0.102998, -0.371375,
		14.115447, 14.407640, 22.994423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.788775, 13.760574, 23.551670>,  <13.469518, 14.479721, 23.254385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.788775, 13.760574, 23.551670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.093353, 13.990622, 23.432043>,  <14.276100, 14.128650, 23.360266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.093353, 13.990622, 23.432043>,  <13.788775, 13.760574, 23.551670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.093353, 13.990622, 23.432043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373522, -0.012201, 0.927541,
		0.529797, -0.817979, -0.224109,
		0.761443, 0.575119, -0.299069,
		14.321787, 14.163157, 23.342321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.451328, 13.434651, 23.779696>,  <13.788775, 13.760574, 23.551670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.451328, 13.434651, 23.779696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.509697, 13.827681, 23.733641>,  <14.544718, 14.063498, 23.706007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.509697, 13.827681, 23.733641>,  <14.451328, 13.434651, 23.779696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.509697, 13.827681, 23.733641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162201, 0.091046, 0.982548,
		0.975909, -0.162050, -0.146089,
		0.145921, 0.982573, -0.115137,
		14.553473, 14.122453, 23.699100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.539995, 13.642863, 24.433479>,  <14.451328, 13.434651, 23.779696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.539995, 13.642863, 24.433479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.659363, 13.984421, 24.262922>,  <14.730984, 14.189355, 24.160587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.659363, 13.984421, 24.262922>,  <14.539995, 13.642863, 24.433479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.659363, 13.984421, 24.262922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242782, 0.364142, 0.899142,
		0.923039, -0.371843, -0.098643,
		0.298420, 0.853893, -0.426395,
		14.748889, 14.240589, 24.135004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.290634, 13.849645, 24.387897>,  <14.539995, 13.642863, 24.433479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.290634, 13.849645, 24.387897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.058008, 14.174497, 24.406773>,  <14.918432, 14.369408, 24.418098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.058008, 14.174497, 24.406773>,  <15.290634, 13.849645, 24.387897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.058008, 14.174497, 24.406773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497277, 0.308992, 0.810703,
		0.643815, 0.494942, -0.583553,
		-0.581565, 0.812130, 0.047190,
		14.883539, 14.418136, 24.420929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.796165, 14.450460, 24.530931>,  <15.290634, 13.849645, 24.387897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.796165, 14.450460, 24.530931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425332, 14.575552, 24.613609>,  <15.202832, 14.650607, 24.663216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.425332, 14.575552, 24.613609>,  <15.796165, 14.450460, 24.530931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.425332, 14.575552, 24.613609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325639, 0.398734, 0.857304,
		0.185687, 0.862098, -0.471495,
		-0.927081, 0.312728, 0.206693,
		15.147208, 14.669371, 24.675617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.781814, 15.217647, 24.642254>,  <15.796165, 14.450460, 24.530931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.781814, 15.217647, 24.642254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.462565, 15.051113, 24.816460>,  <15.271017, 14.951193, 24.920982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.462565, 15.051113, 24.816460>,  <15.781814, 15.217647, 24.642254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.462565, 15.051113, 24.816460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272237, 0.395650, 0.877125,
		-0.537487, 0.818613, -0.202435,
		-0.798120, -0.416333, 0.435513,
		15.223129, 14.926213, 24.947113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.511865, 15.783899, 25.005041>,  <15.781814, 15.217647, 24.642254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.511865, 15.783899, 25.005041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.371095, 15.445327, 25.164892>,  <15.286633, 15.242184, 25.260803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.371095, 15.445327, 25.164892>,  <15.511865, 15.783899, 25.005041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.371095, 15.445327, 25.164892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011073, 0.423147, 0.905993,
		-0.935962, 0.323267, -0.139544,
		-0.351926, -0.846431, 0.399630,
		15.265517, 15.191398, 25.284781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.076277, 16.010729, 25.499323>,  <15.511865, 15.783899, 25.005041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.076277, 16.010729, 25.499323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.179426, 15.640423, 25.609930>,  <15.241316, 15.418240, 25.676294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.179426, 15.640423, 25.609930>,  <15.076277, 16.010729, 25.499323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.179426, 15.640423, 25.609930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171434, 0.325497, 0.929872,
		-0.950848, -0.192386, 0.242645,
		0.257874, -0.925764, 0.276517,
		15.256788, 15.362694, 25.692884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.746728, 15.836153, 26.157104>,  <15.076277, 16.010729, 25.499323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.746728, 15.836153, 26.157104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.052879, 15.581578, 26.118856>,  <15.236570, 15.428833, 26.095907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.052879, 15.581578, 26.118856>,  <14.746728, 15.836153, 26.157104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.052879, 15.581578, 26.118856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284751, 0.201642, 0.937154,
		-0.577159, -0.744506, 0.335559,
		0.765379, -0.636437, -0.095619,
		15.282494, 15.390647, 26.090170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.774570, 15.655224, 26.788988>,  <14.746728, 15.836153, 26.157104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.774570, 15.655224, 26.788988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.112660, 15.529553, 26.616068>,  <15.315515, 15.454151, 26.512316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.112660, 15.529553, 26.616068>,  <14.774570, 15.655224, 26.788988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.112660, 15.529553, 26.616068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491388, 0.138924, 0.859790,
		-0.210069, -0.939145, 0.271806,
		0.845227, -0.314177, -0.432301,
		15.366229, 15.435301, 26.486378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.043922, 15.103576, 27.180265>,  <14.774570, 15.655224, 26.788988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.043922, 15.103576, 27.180265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.357211, 15.248248, 26.977978>,  <15.545184, 15.335052, 26.856606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.357211, 15.248248, 26.977978>,  <15.043922, 15.103576, 27.180265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.357211, 15.248248, 26.977978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467478, 0.193694, 0.862524,
		0.409914, -0.911959, -0.017374,
		0.783221, 0.361683, -0.505718,
		15.592177, 15.356752, 26.826262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.618681, 14.729815, 27.351988>,  <15.043922, 15.103576, 27.180265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.618681, 14.729815, 27.351988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.752376, 15.086750, 27.230648>,  <15.832592, 15.300911, 27.157845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.752376, 15.086750, 27.230648>,  <15.618681, 14.729815, 27.351988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.752376, 15.086750, 27.230648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469314, 0.121542, 0.874627,
		0.817331, -0.434699, -0.378163,
		0.334236, 0.892337, -0.303350,
		15.852647, 15.354451, 27.139643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.407326, 14.746480, 27.399729>,  <15.618681, 14.729815, 27.351988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.407326, 14.746480, 27.399729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.318920, 15.136261, 27.415699>,  <16.265877, 15.370130, 27.425282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.318920, 15.136261, 27.415699>,  <16.407326, 14.746480, 27.399729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.318920, 15.136261, 27.415699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509243, 0.080395, 0.856859,
		0.831760, 0.209710, -0.514002,
		-0.221015, 0.974453, 0.039924,
		16.252615, 15.428596, 27.427677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093636, 15.029318, 27.625511>,  <16.407326, 14.746480, 27.399729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.093636, 15.029318, 27.625511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.796734, 15.293833, 27.668880>,  <16.618593, 15.452541, 27.694902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.796734, 15.293833, 27.668880>,  <17.093636, 15.029318, 27.625511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.796734, 15.293833, 27.668880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392863, 0.298343, 0.869857,
		0.542877, 0.688253, -0.481241,
		-0.742256, 0.661287, 0.108425,
		16.574057, 15.492219, 27.701408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.427528, 15.547341, 27.879179>,  <17.093636, 15.029318, 27.625511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.427528, 15.547341, 27.879179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.044464, 15.619670, 27.968790>,  <16.814625, 15.663067, 28.022556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.044464, 15.619670, 27.968790>,  <17.427528, 15.547341, 27.879179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.044464, 15.619670, 27.968790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267451, 0.270762, 0.924748,
		0.106556, 0.945511, -0.307659,
		-0.957662, 0.180821, 0.224026,
		16.757166, 15.673916, 28.035997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
