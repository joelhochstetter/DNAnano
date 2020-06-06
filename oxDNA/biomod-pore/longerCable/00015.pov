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
	<24.590982, 35.255119, 35.257511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.366659, 34.951904, 35.124317>,  <24.232065, 34.769978, 35.044403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.366659, 34.951904, 35.124317>,  <24.590982, 35.255119, 35.257511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.366659, 34.951904, 35.124317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084928, 0.452725, -0.887596,
		0.823577, -0.469493, -0.318271,
		-0.560810, -0.758034, -0.332981,
		24.198416, 34.724495, 35.024422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.025425, 35.126526, 34.616657>,  <24.590982, 35.255119, 35.257511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.025425, 35.126526, 34.616657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.634481, 35.043713, 34.634144>,  <24.399916, 34.994026, 34.644634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.634481, 35.043713, 34.634144>,  <25.025425, 35.126526, 34.616657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.634481, 35.043713, 34.634144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177948, 0.692442, -0.699184,
		0.114482, -0.691132, -0.713604,
		-0.977358, -0.207029, 0.043714,
		24.341274, 34.981606, 34.647259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611963, 35.422985, 34.037952>,  <25.025425, 35.126526, 34.616657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.611963, 35.422985, 34.037952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332525, 35.405117, 33.752304>,  <25.164864, 35.394398, 33.580914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332525, 35.405117, 33.752304>,  <25.611963, 35.422985, 34.037952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.332525, 35.405117, 33.752304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507701, -0.672331, 0.538712,
		-0.504189, 0.738902, 0.447010,
		-0.698594, -0.044666, -0.714123,
		25.122948, 35.391716, 33.538067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931471, 36.033787, 34.345749>,  <25.611963, 35.422985, 34.037952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931471, 36.033787, 34.345749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860830, 36.372063, 34.547195>,  <25.818447, 36.575027, 34.668064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860830, 36.372063, 34.547195>,  <25.931471, 36.033787, 34.345749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.860830, 36.372063, 34.547195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170350, -0.477675, 0.861863,
		0.969429, 0.237996, -0.059705,
		-0.176600, 0.845686, 0.503615,
		25.807850, 36.625767, 34.698280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549328, 36.123001, 34.607502>,  <25.931471, 36.033787, 34.345749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549328, 36.123001, 34.607502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229666, 36.264591, 34.801842>,  <26.037868, 36.349545, 34.918446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229666, 36.264591, 34.801842>,  <26.549328, 36.123001, 34.607502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229666, 36.264591, 34.801842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274649, -0.503940, 0.818909,
		0.534712, 0.787876, 0.305509,
		-0.799157, 0.353973, 0.485852,
		25.989920, 36.370785, 34.947598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772915, 36.400997, 35.219902>,  <26.549328, 36.123001, 34.607502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772915, 36.400997, 35.219902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401840, 36.251785, 35.226158>,  <26.179195, 36.162258, 35.229912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401840, 36.251785, 35.226158>,  <26.772915, 36.400997, 35.219902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401840, 36.251785, 35.226158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154524, -0.345470, 0.925620,
		-0.339881, 0.861103, 0.378130,
		-0.927687, -0.373031, 0.015642,
		26.123533, 36.139877, 35.230850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681614, 36.495766, 35.990646>,  <26.772915, 36.400997, 35.219902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681614, 36.495766, 35.990646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293283, 36.409031, 35.949703>,  <26.060286, 36.356991, 35.925137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293283, 36.409031, 35.949703>,  <26.681614, 36.495766, 35.990646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293283, 36.409031, 35.949703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136994, -0.851942, 0.505398,
		-0.196794, 0.476631, 0.856793,
		-0.970827, -0.216835, -0.102362,
		26.002035, 36.343979, 35.918995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450708, 36.341759, 36.658421>,  <26.681614, 36.495766, 35.990646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450708, 36.341759, 36.658421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277588, 36.172852, 36.339832>,  <26.173716, 36.071507, 36.148678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277588, 36.172852, 36.339832>,  <26.450708, 36.341759, 36.658421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277588, 36.172852, 36.339832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268650, -0.903780, 0.333180,
		-0.860530, -0.069773, 0.504599,
		-0.432799, -0.422272, -0.796474,
		26.147749, 36.046169, 36.100891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.939024, 35.865242, 36.908123>,  <26.450708, 36.341759, 36.658421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.939024, 35.865242, 36.908123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067303, 35.772213, 36.540848>,  <26.144270, 35.716396, 36.320484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067303, 35.772213, 36.540848>,  <25.939024, 35.865242, 36.908123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067303, 35.772213, 36.540848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307930, -0.891129, 0.333269,
		-0.895730, -0.389615, -0.214166,
		0.320696, -0.232571, -0.918185,
		26.163511, 35.702442, 36.265392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587971, 35.252132, 36.853176>,  <25.939024, 35.865242, 36.908123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587971, 35.252132, 36.853176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867495, 35.256889, 36.567093>,  <26.035210, 35.259743, 36.395443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867495, 35.256889, 36.567093>,  <25.587971, 35.252132, 36.853176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867495, 35.256889, 36.567093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306953, -0.908109, 0.284811,
		-0.646099, -0.418564, -0.638248,
		0.698810, 0.011896, -0.715208,
		26.077137, 35.260460, 36.352531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.535406, 34.656956, 36.616104>,  <25.587971, 35.252132, 36.853176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.535406, 34.656956, 36.616104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906424, 34.754368, 36.502716>,  <26.129034, 34.812817, 36.434681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906424, 34.754368, 36.502716>,  <25.535406, 34.656956, 36.616104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906424, 34.754368, 36.502716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320998, -0.907598, 0.270604,
		-0.191380, -0.341991, -0.920009,
		0.927542, 0.243533, -0.283474,
		26.184687, 34.827427, 36.417675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706570, 34.143620, 36.215122>,  <25.535406, 34.656956, 36.616104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706570, 34.143620, 36.215122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072104, 34.263462, 36.324768>,  <26.291424, 34.335369, 36.390556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072104, 34.263462, 36.324768>,  <25.706570, 34.143620, 36.215122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072104, 34.263462, 36.324768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263324, -0.951066, 0.161658,
		0.309137, -0.075547, -0.948012,
		0.913835, 0.299609, 0.274116,
		26.346254, 34.353344, 36.407001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201176, 33.626438, 36.311199>,  <25.706570, 34.143620, 36.215122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201176, 33.626438, 36.311199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565117, 33.495064, 36.412632>,  <26.783482, 33.416241, 36.473492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565117, 33.495064, 36.412632>,  <26.201176, 33.626438, 36.311199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565117, 33.495064, 36.412632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394687, 0.873607, -0.284662,
		-0.128038, 0.359085, 0.924481,
		0.909851, -0.328434, 0.253581,
		26.838072, 33.396534, 36.488705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541626, 33.912880, 36.935772>,  <26.201176, 33.626438, 36.311199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541626, 33.912880, 36.935772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803492, 33.822006, 36.647381>,  <26.960611, 33.767483, 36.474346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803492, 33.822006, 36.647381>,  <26.541626, 33.912880, 36.935772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803492, 33.822006, 36.647381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284371, 0.957724, -0.043568,
		0.700393, -0.176503, 0.691590,
		0.654662, -0.227183, -0.720975,
		26.999889, 33.753853, 36.431087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992290, 34.341587, 37.252747>,  <26.541626, 33.912880, 36.935772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992290, 34.341587, 37.252747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936623, 34.267330, 36.863663>,  <26.903221, 34.222775, 36.630211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936623, 34.267330, 36.863663>,  <26.992290, 34.341587, 37.252747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936623, 34.267330, 36.863663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165831, 0.972769, -0.161928,
		0.976285, 0.138770, -0.166167,
		-0.139171, -0.185644, -0.972712,
		26.894871, 34.211636, 36.571850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412853, 34.860680, 36.768803>,  <26.992290, 34.341587, 37.252747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412853, 34.860680, 36.768803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110554, 34.695496, 36.565506>,  <26.929174, 34.596386, 36.443527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110554, 34.695496, 36.565506>,  <27.412853, 34.860680, 36.768803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110554, 34.695496, 36.565506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240692, 0.896946, -0.370886,
		0.609024, -0.157968, -0.777262,
		-0.755749, -0.412959, -0.508240,
		26.883829, 34.571609, 36.413033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422636, 34.998260, 36.030235>,  <27.412853, 34.860680, 36.768803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422636, 34.998260, 36.030235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040762, 34.939663, 36.133862>,  <26.811638, 34.904507, 36.196037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040762, 34.939663, 36.133862>,  <27.422636, 34.998260, 36.030235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040762, 34.939663, 36.133862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280026, 0.736947, -0.615219,
		-0.100794, -0.659886, -0.744574,
		-0.954686, -0.146490, 0.259065,
		26.754356, 34.895718, 36.211582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050257, 35.196381, 35.439503>,  <27.422636, 34.998260, 36.030235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050257, 35.196381, 35.439503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754345, 35.212387, 35.708164>,  <26.576797, 35.221992, 35.869362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754345, 35.212387, 35.708164>,  <27.050257, 35.196381, 35.439503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754345, 35.212387, 35.708164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430554, 0.738944, -0.518252,
		-0.517058, -0.672577, -0.529425,
		-0.739780, 0.040021, 0.671658,
		26.532412, 35.224392, 35.909660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487173, 35.359982, 35.049473>,  <27.050257, 35.196381, 35.439503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487173, 35.359982, 35.049473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366278, 35.453915, 35.419014>,  <26.293739, 35.510273, 35.640739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366278, 35.453915, 35.419014>,  <26.487173, 35.359982, 35.049473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366278, 35.453915, 35.419014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541278, 0.755493, -0.369118,
		-0.784645, -0.611624, -0.101231,
		-0.302241, 0.234833, 0.923853,
		26.275606, 35.524364, 35.696171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775515, 35.487492, 34.987438>,  <26.487173, 35.359982, 35.049473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.775515, 35.487492, 34.987438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913963, 35.660236, 35.320591>,  <25.997032, 35.763882, 35.520485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913963, 35.660236, 35.320591>,  <25.775515, 35.487492, 34.987438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913963, 35.660236, 35.320591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451991, 0.854698, -0.255336,
		-0.822135, -0.288080, 0.491024,
		0.346120, 0.431859, 0.832887,
		26.017799, 35.789795, 35.570457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233114, 35.813278, 35.333477>,  <25.775515, 35.487492, 34.987438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233114, 35.813278, 35.333477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563072, 36.015915, 35.433811>,  <25.761047, 36.137497, 35.494011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563072, 36.015915, 35.433811>,  <25.233114, 35.813278, 35.333477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563072, 36.015915, 35.433811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423258, 0.847632, -0.319956,
		-0.374704, 0.157761, 0.913624,
		0.824894, 0.506587, 0.250838,
		25.810541, 36.167892, 35.509064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055162, 36.407677, 35.703812>,  <25.233114, 35.813278, 35.333477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055162, 36.407677, 35.703812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415508, 36.472816, 35.542854>,  <25.631716, 36.511902, 35.446281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.415508, 36.472816, 35.542854>,  <25.055162, 36.407677, 35.703812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415508, 36.472816, 35.542854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317367, 0.879521, -0.354572,
		0.296171, 0.447128, 0.844014,
		0.900867, 0.162849, -0.402392,
		25.685768, 36.521671, 35.422138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391314, 37.019981, 35.975861>,  <25.055162, 36.407677, 35.703812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.391314, 37.019981, 35.975861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532333, 36.937794, 35.610676>,  <25.616945, 36.888481, 35.391567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532333, 36.937794, 35.610676>,  <25.391314, 37.019981, 35.975861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532333, 36.937794, 35.610676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463393, 0.809253, -0.361077,
		0.813005, 0.550354, 0.190086,
		0.352548, -0.205473, -0.912957,
		25.638098, 36.876152, 35.336788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724075, 37.593010, 35.663807>,  <25.391314, 37.019981, 35.975861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724075, 37.593010, 35.663807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575615, 37.369026, 35.367512>,  <25.486538, 37.234638, 35.189735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.575615, 37.369026, 35.367512>,  <25.724075, 37.593010, 35.663807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.575615, 37.369026, 35.367512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384128, 0.818849, -0.426535,
		0.845396, 0.126231, -0.519010,
		-0.371149, -0.559957, -0.740740,
		25.464270, 37.201038, 35.145290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030798, 37.313351, 35.104347>,  <25.724075, 37.593010, 35.663807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030798, 37.313351, 35.104347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143774, 37.625500, 34.881191>,  <26.211559, 37.812790, 34.747295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143774, 37.625500, 34.881191>,  <26.030798, 37.313351, 35.104347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143774, 37.625500, 34.881191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791837, -0.517944, -0.323617,
		-0.541500, -0.350358, -0.764217,
		0.282440, 0.780374, -0.557893,
		26.228506, 37.859612, 34.713821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143145, 37.099346, 34.469517>,  <26.030798, 37.313351, 35.104347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143145, 37.099346, 34.469517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379519, 37.421944, 34.477211>,  <26.521343, 37.615501, 34.481827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379519, 37.421944, 34.477211>,  <26.143145, 37.099346, 34.469517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379519, 37.421944, 34.477211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700913, -0.501476, -0.507191,
		-0.399397, 0.313201, -0.861619,
		0.590934, 0.806490, 0.019239,
		26.556799, 37.663891, 34.482983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524181, 37.287186, 33.799343>,  <26.143145, 37.099346, 34.469517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524181, 37.287186, 33.799343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763260, 37.436020, 34.083405>,  <26.906706, 37.525322, 34.253841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763260, 37.436020, 34.083405>,  <26.524181, 37.287186, 33.799343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763260, 37.436020, 34.083405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801678, -0.286873, -0.524420,
		0.008595, 0.882755, -0.469755,
		0.597694, 0.372085, 0.710151,
		26.942568, 37.547646, 34.296452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183950, 37.964748, 33.844048>,  <26.524181, 37.287186, 33.799343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183950, 37.964748, 33.844048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428965, 38.147392, 34.102135>,  <26.575974, 38.256977, 34.256989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428965, 38.147392, 34.102135>,  <26.183950, 37.964748, 33.844048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428965, 38.147392, 34.102135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629736, 0.211452, -0.747476,
		-0.477736, 0.864175, -0.158020,
		0.612536, 0.456607, 0.645220,
		26.612726, 38.284374, 34.295700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519142, 38.500397, 33.418022>,  <26.183950, 37.964748, 33.844048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519142, 38.500397, 33.418022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744057, 38.423946, 33.739841>,  <26.879005, 38.378075, 33.932934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744057, 38.423946, 33.739841>,  <26.519142, 38.500397, 33.418022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744057, 38.423946, 33.739841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824497, 0.054817, -0.563205,
		0.063540, 0.980034, 0.188406,
		0.562288, -0.191126, 0.804552,
		26.912743, 38.366608, 33.981209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039742, 38.997028, 33.412258>,  <26.519142, 38.500397, 33.418022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039742, 38.997028, 33.412258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168972, 38.668793, 33.600830>,  <27.246510, 38.471851, 33.713974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168972, 38.668793, 33.600830>,  <27.039742, 38.997028, 33.412258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168972, 38.668793, 33.600830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905717, 0.123664, -0.405444,
		0.274406, 0.557973, 0.783178,
		0.323077, -0.820594, 0.471431,
		27.265896, 38.422615, 33.742260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597437, 39.220459, 33.742729>,  <27.039742, 38.997028, 33.412258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597437, 39.220459, 33.742729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636667, 38.822849, 33.723587>,  <27.660206, 38.584282, 33.712101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636667, 38.822849, 33.723587>,  <27.597437, 39.220459, 33.742729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636667, 38.822849, 33.723587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813403, 0.107773, -0.571630,
		0.573374, 0.017137, 0.819115,
		0.098075, -0.994028, -0.047855,
		27.666090, 38.524639, 33.709232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332434, 38.955647, 33.916752>,  <27.597437, 39.220459, 33.742729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332434, 38.955647, 33.916752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162693, 38.697659, 33.662525>,  <28.060848, 38.542866, 33.509991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162693, 38.697659, 33.662525>,  <28.332434, 38.955647, 33.916752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162693, 38.697659, 33.662525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845896, -0.031922, -0.532392,
		0.323088, -0.763542, 0.559122,
		-0.424351, -0.644969, -0.635564,
		28.035387, 38.504169, 33.471855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792427, 38.623859, 33.416088>,  <28.332434, 38.955647, 33.916752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792427, 38.623859, 33.416088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467768, 38.521267, 33.206154>,  <28.272972, 38.459713, 33.080193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467768, 38.521267, 33.206154>,  <28.792427, 38.623859, 33.416088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467768, 38.521267, 33.206154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583260, -0.306278, -0.752331,
		0.032214, -0.916740, 0.398185,
		-0.811646, -0.256481, -0.524831,
		28.224274, 38.444324, 33.048706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600323, 37.818108, 33.272282>,  <28.792427, 38.623859, 33.416088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600323, 37.818108, 33.272282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493650, 38.080364, 32.989719>,  <28.429647, 38.237720, 32.820183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493650, 38.080364, 32.989719>,  <28.600323, 37.818108, 33.272282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493650, 38.080364, 32.989719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614175, -0.449243, -0.648822,
		-0.742745, -0.606887, -0.282874,
		-0.266683, 0.655643, -0.706408,
		28.413645, 38.277058, 32.777798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310934, 37.467571, 32.759827>,  <28.600323, 37.818108, 33.272282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310934, 37.467571, 32.759827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527279, 37.798683, 32.700165>,  <28.657085, 37.997349, 32.664368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527279, 37.798683, 32.700165>,  <28.310934, 37.467571, 32.759827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527279, 37.798683, 32.700165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703587, -0.542431, -0.459058,
		-0.460905, 0.143344, -0.875796,
		0.540862, 0.827781, -0.149155,
		28.689537, 38.047016, 32.655418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598375, 37.604366, 32.982094>,  <28.310934, 37.467571, 32.759827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598375, 37.604366, 32.982094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830862, 37.785255, 33.252701>,  <27.970354, 37.893787, 33.415066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830862, 37.785255, 33.252701>,  <27.598375, 37.604366, 32.982094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830862, 37.785255, 33.252701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738891, -0.055018, 0.671575,
		0.340923, -0.890206, 0.302167,
		0.581215, 0.452224, 0.676522,
		28.005226, 37.920921, 33.455658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691046, 37.234684, 33.623226>,  <27.598375, 37.604366, 32.982094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691046, 37.234684, 33.623226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710457, 37.630600, 33.676819>,  <27.722103, 37.868149, 33.708977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710457, 37.630600, 33.676819>,  <27.691046, 37.234684, 33.623226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710457, 37.630600, 33.676819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885910, -0.019301, 0.463455,
		0.461311, -0.141188, 0.875933,
		0.048527, 0.989795, 0.133983,
		27.725016, 37.927540, 33.717014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662939, 37.390854, 34.417038>,  <27.691046, 37.234684, 33.623226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662939, 37.390854, 34.417038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552168, 37.719017, 34.216946>,  <27.485706, 37.915916, 34.096889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.552168, 37.719017, 34.216946>,  <27.662939, 37.390854, 34.417038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552168, 37.719017, 34.216946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852166, 0.030857, 0.522361,
		0.443987, 0.570939, 0.690582,
		-0.276927, 0.820412, -0.500235,
		27.469090, 37.965141, 34.066875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595421, 38.006058, 34.881020>,  <27.662939, 37.390854, 34.417038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595421, 38.006058, 34.881020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345810, 38.011490, 34.568504>,  <27.196043, 38.014751, 34.380997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.345810, 38.011490, 34.568504>,  <27.595421, 38.006058, 34.881020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345810, 38.011490, 34.568504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774931, 0.117666, 0.620996,
		0.100367, 0.992960, -0.062899,
		-0.624025, 0.013585, -0.781286,
		27.158602, 38.015564, 34.334118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312780, 38.720139, 34.644562>,  <27.595421, 38.006058, 34.881020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312780, 38.720139, 34.644562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085855, 38.392838, 34.607410>,  <26.949701, 38.196457, 34.585117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085855, 38.392838, 34.607410>,  <27.312780, 38.720139, 34.644562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085855, 38.392838, 34.607410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705410, 0.424660, 0.567504,
		-0.424916, 0.387471, -0.818115,
		-0.567312, -0.818248, -0.092882,
		26.915661, 38.147362, 34.579544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700726, 39.053024, 34.680592>,  <27.312780, 38.720139, 34.644562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700726, 39.053024, 34.680592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653400, 38.667042, 34.774277>,  <26.625006, 38.435452, 34.830490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.653400, 38.667042, 34.774277>,  <26.700726, 39.053024, 34.680592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653400, 38.667042, 34.774277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837183, 0.223775, 0.499048,
		-0.533973, -0.137040, -0.834322,
		-0.118311, -0.964958, 0.234217,
		26.617907, 38.377556, 34.844543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958481, 38.839020, 34.492954>,  <26.700726, 39.053024, 34.680592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958481, 38.839020, 34.492954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123655, 38.657387, 34.808750>,  <26.222761, 38.548405, 34.998226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123655, 38.657387, 34.808750>,  <25.958481, 38.839020, 34.492954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123655, 38.657387, 34.808750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793309, 0.246470, 0.556699,
		-0.447375, -0.856187, -0.258454,
		0.412937, -0.454087, 0.789485,
		26.247536, 38.521160, 35.045597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.392191, 38.602371, 34.738934>,  <25.958481, 38.839020, 34.492954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.392191, 38.602371, 34.738934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657021, 38.593380, 35.038574>,  <25.815918, 38.587986, 35.218357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657021, 38.593380, 35.038574>,  <25.392191, 38.602371, 34.738934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657021, 38.593380, 35.038574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744887, 0.090270, 0.661056,
		-0.082481, -0.995664, 0.043022,
		0.662073, -0.022478, 0.749102,
		25.855642, 38.586636, 35.263306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210617, 38.132229, 35.376274>,  <25.392191, 38.602371, 34.738934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210617, 38.132229, 35.376274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470806, 38.409847, 35.499683>,  <25.626919, 38.576420, 35.573727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470806, 38.409847, 35.499683>,  <25.210617, 38.132229, 35.376274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.470806, 38.409847, 35.499683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590911, 0.207233, 0.779666,
		0.477188, -0.689460, 0.544919,
		0.650473, 0.694045, 0.308520,
		25.665949, 38.618061, 35.592239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.341024, 38.127083, 36.168350>,  <25.210617, 38.132229, 35.376274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.341024, 38.127083, 36.168350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455242, 38.500523, 36.081757>,  <25.523773, 38.724586, 36.029800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455242, 38.500523, 36.081757>,  <25.341024, 38.127083, 36.168350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455242, 38.500523, 36.081757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266191, 0.294257, 0.917908,
		0.920656, -0.204476, 0.332537,
		0.285542, 0.933596, -0.216480,
		25.540905, 38.780602, 36.016811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910929, 38.766991, 36.152527>,  <25.341024, 38.127083, 36.168350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.910929, 38.766991, 36.152527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184414, 38.730438, 36.442127>,  <25.348505, 38.708508, 36.615887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184414, 38.730438, 36.442127>,  <24.910929, 38.766991, 36.152527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184414, 38.730438, 36.442127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696929, 0.375956, -0.610694,
		-0.216387, 0.922121, 0.320734,
		0.683715, -0.091383, 0.724005,
		25.389528, 38.703022, 36.659328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210728, 39.391224, 36.246223>,  <24.910929, 38.766991, 36.152527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210728, 39.391224, 36.246223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.458435, 39.097343, 36.357010>,  <25.607059, 38.921013, 36.423481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.458435, 39.097343, 36.357010>,  <25.210728, 39.391224, 36.246223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.458435, 39.097343, 36.357010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606831, 0.223997, -0.762615,
		0.498257, 0.640339, 0.584557,
		0.619271, -0.734705, 0.276970,
		25.644217, 38.876930, 36.440102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856026, 39.643089, 36.431496>,  <25.210728, 39.391224, 36.246223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856026, 39.643089, 36.431496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868023, 39.272717, 36.280899>,  <25.875221, 39.050491, 36.190540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868023, 39.272717, 36.280899>,  <25.856026, 39.643089, 36.431496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868023, 39.272717, 36.280899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504528, 0.339182, -0.793982,
		0.862874, -0.166135, 0.477334,
		0.029995, -0.925934, -0.376491,
		25.877022, 38.994938, 36.167953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503916, 39.493137, 36.062859>,  <25.856026, 39.643089, 36.431496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503916, 39.493137, 36.062859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270191, 39.208279, 35.907207>,  <26.129955, 39.037361, 35.813816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270191, 39.208279, 35.907207>,  <26.503916, 39.493137, 36.062859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270191, 39.208279, 35.907207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563917, -0.011489, -0.825752,
		0.583588, -0.701934, 0.408306,
		-0.584314, -0.712150, -0.389127,
		26.094896, 38.994633, 35.790470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913332, 39.594044, 35.441498>,  <26.503916, 39.493137, 36.062859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913332, 39.594044, 35.441498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107031, 39.513981, 35.782188>,  <27.223249, 39.465942, 35.986603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107031, 39.513981, 35.782188>,  <26.913332, 39.594044, 35.441498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107031, 39.513981, 35.782188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689963, 0.685972, -0.231070,
		-0.538011, 0.699556, 0.470282,
		0.484247, -0.200159, 0.851728,
		27.252304, 39.453934, 36.037708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342545, 40.131111, 35.465343>,  <26.913332, 39.594044, 35.441498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342545, 40.131111, 35.465343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465364, 39.894218, 35.763332>,  <27.539057, 39.752083, 35.942127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465364, 39.894218, 35.763332>,  <27.342545, 40.131111, 35.465343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465364, 39.894218, 35.763332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813735, 0.569301, 0.117187,
		-0.493515, 0.570228, 0.656722,
		0.307049, -0.592231, 0.744972,
		27.557480, 39.716549, 35.986824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856102, 40.667225, 35.653358>,  <27.342545, 40.131111, 35.465343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.856102, 40.667225, 35.653358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905090, 40.323643, 35.852234>,  <27.934484, 40.117493, 35.971558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905090, 40.323643, 35.852234>,  <27.856102, 40.667225, 35.653358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905090, 40.323643, 35.852234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861556, 0.340693, 0.376363,
		-0.492668, 0.382262, 0.781764,
		0.122472, -0.858955, 0.497188,
		27.941832, 40.065956, 36.001389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946651, 40.707264, 36.491913>,  <27.856102, 40.667225, 35.653358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946651, 40.707264, 36.491913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131716, 40.435204, 36.264465>,  <28.242754, 40.271965, 36.127995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131716, 40.435204, 36.264465>,  <27.946651, 40.707264, 36.491913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131716, 40.435204, 36.264465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872681, 0.236468, 0.427212,
		-0.156110, -0.693881, 0.702964,
		0.462663, -0.680156, -0.568622,
		28.270515, 40.231155, 36.093880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283554, 40.141094, 36.898422>,  <27.946651, 40.707264, 36.491913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283554, 40.141094, 36.898422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470007, 40.217346, 36.552849>,  <28.581879, 40.263096, 36.345505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470007, 40.217346, 36.552849>,  <28.283554, 40.141094, 36.898422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470007, 40.217346, 36.552849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798876, 0.328905, 0.503605,
		0.380154, -0.924923, 0.001023,
		0.466132, 0.190630, -0.863933,
		28.609846, 40.274536, 36.293671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017967, 39.891506, 36.958454>,  <28.283554, 40.141094, 36.898422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017967, 39.891506, 36.958454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034533, 40.185066, 36.687256>,  <29.044472, 40.361202, 36.524536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034533, 40.185066, 36.687256>,  <29.017967, 39.891506, 36.958454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034533, 40.185066, 36.687256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813500, 0.369207, 0.449337,
		0.580089, -0.570158, -0.581736,
		0.041412, 0.733898, -0.677997,
		29.046957, 40.405235, 36.483856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690472, 39.999710, 36.625877>,  <29.017967, 39.891506, 36.958454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690472, 39.999710, 36.625877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453032, 40.313061, 36.699596>,  <29.310568, 40.501072, 36.743828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453032, 40.313061, 36.699596>,  <29.690472, 39.999710, 36.625877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453032, 40.313061, 36.699596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712156, 0.404677, 0.573646,
		0.374799, 0.471763, -0.798101,
		-0.593599, 0.783374, 0.184296,
		29.274952, 40.548073, 36.754887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019619, 40.703720, 36.541012>,  <29.690472, 39.999710, 36.625877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019619, 40.703720, 36.541012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753944, 40.666561, 36.837723>,  <29.594540, 40.644268, 37.015747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753944, 40.666561, 36.837723>,  <30.019619, 40.703720, 36.541012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753944, 40.666561, 36.837723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701601, 0.265113, 0.661416,
		-0.258094, 0.959732, -0.110911,
		-0.664186, -0.092893, 0.741773,
		29.554688, 40.638695, 37.060253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568552, 40.582783, 37.124817>,  <30.019619, 40.703720, 36.541012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568552, 40.582783, 37.124817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761604, 40.326305, 36.886177>,  <30.877436, 40.172417, 36.742992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761604, 40.326305, 36.886177>,  <30.568552, 40.582783, 37.124817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761604, 40.326305, 36.886177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315200, -0.508385, 0.801370,
		-0.817139, -0.574816, -0.043258,
		0.482631, -0.641195, -0.596603,
		30.906393, 40.133945, 36.707195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336367, 39.835648, 37.205345>,  <30.568552, 40.582783, 37.124817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336367, 39.835648, 37.205345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717508, 39.851200, 37.084976>,  <30.946194, 39.860531, 37.012753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717508, 39.851200, 37.084976>,  <30.336367, 39.835648, 37.205345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717508, 39.851200, 37.084976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277992, -0.509360, 0.814416,
		-0.121612, -0.859675, -0.496156,
		0.952854, 0.038884, -0.300927,
		31.003365, 39.862865, 36.994698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605104, 39.127037, 37.192730>,  <30.336367, 39.835648, 37.205345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605104, 39.127037, 37.192730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882921, 39.407627, 37.256664>,  <31.049612, 39.575981, 37.295025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882921, 39.407627, 37.256664>,  <30.605104, 39.127037, 37.192730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882921, 39.407627, 37.256664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163733, -0.370444, 0.914310,
		0.700572, -0.608858, -0.372143,
		0.694543, 0.701473, 0.159832,
		31.091284, 39.618069, 37.304615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171673, 38.721951, 37.477169>,  <30.605104, 39.127037, 37.192730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171673, 38.721951, 37.477169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178768, 39.108665, 37.579155>,  <31.183025, 39.340694, 37.640347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178768, 39.108665, 37.579155>,  <31.171673, 38.721951, 37.477169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178768, 39.108665, 37.579155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119706, -0.255219, 0.959445,
		0.992651, 0.013503, -0.120257,
		0.017736, 0.966789, 0.254960,
		31.184090, 39.398701, 37.655643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626471, 38.818920, 38.036629>,  <31.171673, 38.721951, 37.477169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626471, 38.818920, 38.036629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363533, 39.118011, 38.074165>,  <31.205770, 39.297466, 38.096687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363533, 39.118011, 38.074165>,  <31.626471, 38.818920, 38.036629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363533, 39.118011, 38.074165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072211, -0.061459, 0.995494,
		0.750125, 0.661156, -0.013594,
		-0.657342, 0.747726, 0.093845,
		31.166330, 39.342331, 38.102318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815723, 39.513905, 38.518097>,  <31.626471, 38.818920, 38.036629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815723, 39.513905, 38.518097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429823, 39.408680, 38.515121>,  <31.198282, 39.345547, 38.513336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429823, 39.408680, 38.515121>,  <31.815723, 39.513905, 38.518097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429823, 39.408680, 38.515121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032069, -0.145560, 0.988829,
		-0.261205, 0.953735, 0.148866,
		-0.964751, -0.263061, -0.007435,
		31.140398, 39.329762, 38.512890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372929, 39.945831, 38.489437>,  <31.815723, 39.513905, 38.518097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372929, 39.945831, 38.489437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520947, 39.622471, 38.672543>,  <32.609756, 39.428455, 38.782406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520947, 39.622471, 38.672543>,  <32.372929, 39.945831, 38.489437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520947, 39.622471, 38.672543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120525, -0.530355, -0.839165,
		0.921164, 0.255353, -0.293687,
		0.370041, -0.808405, 0.457768,
		32.631958, 39.379948, 38.809872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845528, 39.562401, 38.058292>,  <32.372929, 39.945831, 38.489437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845528, 39.562401, 38.058292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649113, 39.337414, 38.324383>,  <32.531265, 39.202423, 38.484035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649113, 39.337414, 38.324383>,  <32.845528, 39.562401, 38.058292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649113, 39.337414, 38.324383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089089, -0.727195, -0.680625,
		0.866574, -0.393473, 0.306968,
		-0.491033, -0.562464, 0.665222,
		32.501804, 39.168674, 38.523949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133984, 38.805820, 37.963551>,  <32.845528, 39.562401, 38.058292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133984, 38.805820, 37.963551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751945, 38.899986, 38.035526>,  <32.522724, 38.956486, 38.078712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751945, 38.899986, 38.035526>,  <33.133984, 38.805820, 37.963551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751945, 38.899986, 38.035526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296218, -0.743663, -0.599349,
		-0.007277, -0.625736, 0.780001,
		-0.955093, 0.235412, 0.179943,
		32.465416, 38.970612, 38.089508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837795, 38.266640, 38.244705>,  <33.133984, 38.805820, 37.963551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837795, 38.266640, 38.244705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547878, 38.474812, 38.064114>,  <32.373928, 38.599716, 37.955757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547878, 38.474812, 38.064114>,  <32.837795, 38.266640, 38.244705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547878, 38.474812, 38.064114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042296, -0.687669, -0.724791,
		-0.687669, -0.506227, 0.520428,
		0.724791, -0.520428, 0.451478,
		32.330441, 38.630939, 37.928669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291550, 37.771049, 38.146397>,  <32.837795, 38.266640, 38.244705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291550, 37.771049, 38.146397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283573, 38.067299, 37.877750>,  <32.278786, 38.245049, 37.716560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283573, 38.067299, 37.877750>,  <32.291550, 37.771049, 38.146397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283573, 38.067299, 37.877750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042525, -0.670517, -0.740674,
		-0.998896, -0.043331, -0.018123,
		-0.019943, 0.740628, -0.671619,
		32.277592, 38.289486, 37.676266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770187, 37.574402, 37.584782>,  <32.291550, 37.771049, 38.146397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770187, 37.574402, 37.584782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044933, 37.838455, 37.463169>,  <32.209782, 37.996887, 37.390202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044933, 37.838455, 37.463169>,  <31.770187, 37.574402, 37.584782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044933, 37.838455, 37.463169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273711, -0.622482, -0.733212,
		-0.673273, 0.420402, -0.608248,
		0.686867, 0.660136, -0.304032,
		32.250992, 38.036495, 37.371960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821026, 37.303707, 37.025589>,  <31.770187, 37.574402, 37.584782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821026, 37.303707, 37.025589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128471, 37.559566, 37.029343>,  <32.312939, 37.713081, 37.031593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128471, 37.559566, 37.029343>,  <31.821026, 37.303707, 37.025589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128471, 37.559566, 37.029343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327997, -0.381451, -0.864241,
		-0.549227, 0.667346, -0.502990,
		0.768614, 0.639644, 0.009384,
		32.359055, 37.751461, 37.032158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853109, 37.490856, 36.382053>,  <31.821026, 37.303707, 37.025589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853109, 37.490856, 36.382053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210953, 37.569775, 36.542427>,  <32.425659, 37.617126, 36.638653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210953, 37.569775, 36.542427>,  <31.853109, 37.490856, 36.382053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210953, 37.569775, 36.542427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435817, -0.583394, -0.685358,
		0.098683, 0.787861, -0.607895,
		0.894609, 0.197298, 0.400935,
		32.479336, 37.628963, 36.662708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251034, 37.689659, 35.845165>,  <31.853109, 37.490856, 36.382053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251034, 37.689659, 35.845165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518425, 37.544559, 36.104874>,  <32.678860, 37.457500, 36.260696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518425, 37.544559, 36.104874>,  <32.251034, 37.689659, 35.845165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518425, 37.544559, 36.104874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433214, -0.519680, -0.736382,
		0.604532, 0.773529, -0.190248,
		0.668481, -0.362748, 0.649267,
		32.718967, 37.435734, 36.299652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848362, 37.678608, 35.398579>,  <32.251034, 37.689659, 35.845165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848362, 37.678608, 35.398579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924320, 37.440830, 35.711136>,  <32.969894, 37.298164, 35.898670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924320, 37.440830, 35.711136>,  <32.848362, 37.678608, 35.398579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924320, 37.440830, 35.711136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482964, -0.636362, -0.601488,
		0.854801, 0.491604, 0.166255,
		0.189896, -0.594448, 0.781390,
		32.981289, 37.262497, 35.945553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457741, 37.476151, 35.223831>,  <32.848362, 37.678608, 35.398579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457741, 37.476151, 35.223831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339821, 37.201508, 35.489662>,  <33.269070, 37.036720, 35.649158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339821, 37.201508, 35.489662>,  <33.457741, 37.476151, 35.223831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339821, 37.201508, 35.489662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439056, -0.715051, -0.543997,
		0.848718, 0.131415, 0.512257,
		-0.294801, -0.686609, 0.664575,
		33.251381, 36.995525, 35.689034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039612, 37.186802, 35.482277>,  <33.457741, 37.476151, 35.223831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039612, 37.186802, 35.482277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745632, 36.917698, 35.516319>,  <33.569244, 36.756237, 35.536747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745632, 36.917698, 35.516319>,  <34.039612, 37.186802, 35.482277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745632, 36.917698, 35.516319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559776, -0.672728, -0.483826,
		0.382755, -0.307945, 0.871016,
		-0.734949, -0.672760, 0.085110,
		33.525146, 36.715870, 35.541851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400608, 36.677753, 35.687778>,  <34.039612, 37.186802, 35.482277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400608, 36.677753, 35.687778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049801, 36.536835, 35.557102>,  <33.839317, 36.452286, 35.478695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049801, 36.536835, 35.557102>,  <34.400608, 36.677753, 35.687778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049801, 36.536835, 35.557102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480063, -0.615115, -0.625438,
		0.019386, -0.705353, 0.708591,
		-0.877019, -0.352293, -0.326690,
		33.786694, 36.431149, 35.459095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583656, 35.940266, 35.504776>,  <34.400608, 36.677753, 35.687778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583656, 35.940266, 35.504776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221657, 35.989105, 35.341770>,  <34.004456, 36.018410, 35.243965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221657, 35.989105, 35.341770>,  <34.583656, 35.940266, 35.504776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221657, 35.989105, 35.341770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269224, -0.577320, -0.770856,
		-0.329389, -0.807337, 0.489602,
		-0.904998, 0.122099, -0.407518,
		33.950157, 36.025734, 35.219513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287453, 35.289013, 35.476761>,  <34.583656, 35.940266, 35.504776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287453, 35.289013, 35.476761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131306, 35.534664, 35.202400>,  <34.037617, 35.682053, 35.037785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131306, 35.534664, 35.202400>,  <34.287453, 35.289013, 35.476761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131306, 35.534664, 35.202400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235147, -0.653794, -0.719207,
		-0.890121, -0.442046, 0.110813,
		-0.390372, 0.614124, -0.685902,
		34.014194, 35.718903, 34.996628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886585, 34.814175, 35.109650>,  <34.287453, 35.289013, 35.476761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886585, 34.814175, 35.109650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873631, 35.138950, 34.876511>,  <33.865856, 35.333817, 34.736629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873631, 35.138950, 34.876511>,  <33.886585, 34.814175, 35.109650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873631, 35.138950, 34.876511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192978, -0.567097, -0.800725,
		-0.980668, -0.138413, -0.138317,
		-0.032391, 0.811937, -0.582845,
		33.863914, 35.382530, 34.701656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419250, 34.649364, 34.500252>,  <33.886585, 34.814175, 35.109650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419250, 34.649364, 34.500252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679081, 34.929649, 34.382233>,  <33.834980, 35.097820, 34.311420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679081, 34.929649, 34.382233>,  <33.419250, 34.649364, 34.500252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679081, 34.929649, 34.382233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163784, -0.507920, -0.845690,
		-0.742445, 0.501017, -0.444699,
		0.649577, 0.700713, -0.295044,
		33.873955, 35.139862, 34.293720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310368, 34.776001, 33.795410>,  <33.419250, 34.649364, 34.500252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310368, 34.776001, 33.795410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679245, 34.924362, 33.839199>,  <33.900574, 35.013378, 33.865475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679245, 34.924362, 33.839199>,  <33.310368, 34.776001, 33.795410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679245, 34.924362, 33.839199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237980, -0.321152, -0.916639,
		-0.304824, 0.871375, -0.384432,
		0.922197, 0.370901, 0.109475,
		33.955906, 35.035633, 33.872040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473858, 35.103832, 33.089642>,  <33.310368, 34.776001, 33.795410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473858, 35.103832, 33.089642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801590, 35.053566, 33.313393>,  <33.998230, 35.023407, 33.447643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801590, 35.053566, 33.313393>,  <33.473858, 35.103832, 33.089642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801590, 35.053566, 33.313393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420624, -0.531233, -0.735436,
		0.389576, 0.837855, -0.382400,
		0.819332, -0.125662, 0.559378,
		34.047390, 35.015869, 33.481205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011707, 35.308426, 32.637928>,  <33.473858, 35.103832, 33.089642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011707, 35.308426, 32.637928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143612, 35.052868, 32.915943>,  <34.222755, 34.899532, 33.082752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143612, 35.052868, 32.915943>,  <34.011707, 35.308426, 32.637928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143612, 35.052868, 32.915943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312725, -0.620728, -0.718958,
		0.890765, 0.454438, -0.004893,
		0.329759, -0.638892, 0.695036,
		34.242538, 34.861198, 33.124454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699490, 35.253971, 32.478447>,  <34.011707, 35.308426, 32.637928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699490, 35.253971, 32.478447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535572, 34.938885, 32.662437>,  <34.437222, 34.749832, 32.772831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535572, 34.938885, 32.662437>,  <34.699490, 35.253971, 32.478447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535572, 34.938885, 32.662437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144629, -0.553994, -0.819862,
		0.900641, -0.269446, 0.340948,
		-0.409791, -0.787712, 0.459980,
		34.412636, 34.702572, 32.800430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189262, 34.738087, 32.428520>,  <34.699490, 35.253971, 32.478447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189262, 34.738087, 32.428520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864929, 34.517471, 32.506855>,  <34.670330, 34.385101, 32.553856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864929, 34.517471, 32.506855>,  <35.189262, 34.738087, 32.428520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864929, 34.517471, 32.506855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199013, -0.574488, -0.793950,
		0.550399, -0.604789, 0.575579,
		-0.810836, -0.551537, 0.195837,
		34.621677, 34.352009, 32.565605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312622, 34.051174, 32.284565>,  <35.189262, 34.738087, 32.428520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312622, 34.051174, 32.284565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912697, 34.057961, 32.281048>,  <34.672741, 34.062031, 32.278938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912697, 34.057961, 32.281048>,  <35.312622, 34.051174, 32.284565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912697, 34.057961, 32.281048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001971, -0.549369, -0.835577,
		-0.019005, -0.835407, 0.549303,
		-0.999817, 0.016963, -0.008795,
		34.612751, 34.063049, 32.278408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070358, 33.302521, 32.339237>,  <35.312622, 34.051174, 32.284565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070358, 33.302521, 32.339237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808781, 33.548882, 32.163498>,  <34.651833, 33.696697, 32.058056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808781, 33.548882, 32.163498>,  <35.070358, 33.302521, 32.339237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808781, 33.548882, 32.163498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058302, -0.537977, -0.840941,
		-0.754292, -0.575544, 0.315899,
		-0.653945, 0.615898, -0.439347,
		34.612598, 33.733650, 32.031693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754242, 32.825756, 32.067398>,  <35.070358, 33.302521, 32.339237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754242, 32.825756, 32.067398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607868, 33.144218, 31.874634>,  <34.520042, 33.335297, 31.758976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607868, 33.144218, 31.874634>,  <34.754242, 32.825756, 32.067398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607868, 33.144218, 31.874634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164300, -0.454420, -0.875504,
		-0.916023, -0.399553, 0.035479,
		-0.365933, 0.796153, -0.481906,
		34.498089, 33.383064, 31.730062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187210, 32.627384, 31.668213>,  <34.754242, 32.825756, 32.067398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187210, 32.627384, 31.668213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307259, 32.966637, 31.493582>,  <34.379288, 33.170189, 31.388803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307259, 32.966637, 31.493582>,  <34.187210, 32.627384, 31.668213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307259, 32.966637, 31.493582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172839, -0.498451, -0.849513,
		-0.938111, 0.179502, -0.296187,
		0.300125, 0.848130, -0.436578,
		34.397297, 33.221077, 31.362608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800934, 32.625568, 31.017773>,  <34.187210, 32.627384, 31.668213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800934, 32.625568, 31.017773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098785, 32.884949, 30.954483>,  <34.277496, 33.040577, 30.916510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098785, 32.884949, 30.954483>,  <33.800934, 32.625568, 31.017773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098785, 32.884949, 30.954483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111364, -0.354420, -0.928431,
		-0.658120, 0.673719, -0.336126,
		0.744632, 0.648452, -0.158222,
		34.322174, 33.079483, 30.907017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698727, 32.811459, 30.376648>,  <33.800934, 32.625568, 31.017773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698727, 32.811459, 30.376648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083763, 32.910309, 30.421101>,  <34.314785, 32.969620, 30.447773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083763, 32.910309, 30.421101>,  <33.698727, 32.811459, 30.376648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083763, 32.910309, 30.421101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177826, -0.266683, -0.947237,
		-0.204451, 0.931562, -0.300652,
		0.962589, 0.247128, 0.111132,
		34.372540, 32.984447, 30.454441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884666, 33.190815, 29.854679>,  <33.698727, 32.811459, 30.376648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884666, 33.190815, 29.854679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225883, 33.028622, 29.986073>,  <34.430614, 32.931305, 30.064909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225883, 33.028622, 29.986073>,  <33.884666, 33.190815, 29.854679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225883, 33.028622, 29.986073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242322, -0.249698, -0.937513,
		0.462164, 0.879339, -0.114747,
		0.853044, -0.405479, 0.328485,
		34.481796, 32.906979, 30.084618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417778, 33.442417, 29.379057>,  <33.884666, 33.190815, 29.854679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417778, 33.442417, 29.379057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589188, 33.127975, 29.557232>,  <34.692032, 32.939312, 29.664137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589188, 33.127975, 29.557232>,  <34.417778, 33.442417, 29.379057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589188, 33.127975, 29.557232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456761, -0.236888, -0.857469,
		0.779577, 0.570901, 0.257549,
		0.428520, -0.786102, 0.445438,
		34.717743, 32.892143, 29.690863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965946, 33.441257, 29.019598>,  <34.417778, 33.442417, 29.379057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965946, 33.441257, 29.019598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968380, 33.086788, 29.204927>,  <34.969841, 32.874107, 29.316124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968380, 33.086788, 29.204927>,  <34.965946, 33.441257, 29.019598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968380, 33.086788, 29.204927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366757, -0.429067, -0.825464,
		0.930297, 0.174946, 0.322400,
		0.006080, -0.886169, 0.463323,
		34.970203, 32.820938, 29.343924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561520, 33.215931, 28.996416>,  <34.965946, 33.441257, 29.019598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561520, 33.215931, 28.996416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343777, 32.885342, 29.053860>,  <35.213131, 32.686989, 29.088326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343777, 32.885342, 29.053860>,  <35.561520, 33.215931, 28.996416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343777, 32.885342, 29.053860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527483, -0.470364, -0.707474,
		0.652255, -0.309366, 0.691994,
		-0.544358, -0.826469, 0.143612,
		35.180470, 32.637402, 29.096943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093292, 32.629601, 28.939451>,  <35.561520, 33.215931, 28.996416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093292, 32.629601, 28.939451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731300, 32.468552, 28.884455>,  <35.514107, 32.371922, 28.851456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731300, 32.468552, 28.884455>,  <36.093292, 32.629601, 28.939451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731300, 32.468552, 28.884455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382719, -0.629236, -0.676453,
		0.185840, -0.664798, 0.723538,
		-0.904981, -0.402624, -0.137493,
		35.459805, 32.347763, 28.843206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214485, 31.919920, 28.823599>,  <36.093292, 32.629601, 28.939451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214485, 31.919920, 28.823599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853687, 31.983561, 28.663054>,  <35.637207, 32.021744, 28.566727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853687, 31.983561, 28.663054>,  <36.214485, 31.919920, 28.823599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853687, 31.983561, 28.663054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265572, -0.528495, -0.806328,
		-0.340406, -0.833895, 0.434447,
		-0.901995, 0.159102, -0.401362,
		35.583088, 32.031292, 28.542645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156639, 31.332689, 28.473249>,  <36.214485, 31.919920, 28.823599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156639, 31.332689, 28.473249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903721, 31.604193, 28.323856>,  <35.751972, 31.767096, 28.234221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903721, 31.604193, 28.323856>,  <36.156639, 31.332689, 28.473249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903721, 31.604193, 28.323856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208456, -0.315249, -0.925832,
		-0.746159, -0.663251, 0.057838,
		-0.632292, 0.678761, -0.373484,
		35.714035, 31.807821, 28.211811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755573, 30.940062, 28.000036>,  <36.156639, 31.332689, 28.473249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755573, 30.940062, 28.000036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728611, 31.322994, 27.887630>,  <35.712433, 31.552753, 27.820187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728611, 31.322994, 27.887630>,  <35.755573, 30.940062, 28.000036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728611, 31.322994, 27.887630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382368, -0.235364, -0.893531,
		-0.921548, -0.167678, -0.350190,
		-0.067403, 0.957334, -0.281014,
		35.708389, 31.610195, 27.803326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544003, 30.854691, 27.305393>,  <35.755573, 30.940062, 28.000036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544003, 30.854691, 27.305393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652870, 31.238722, 27.331234>,  <35.718193, 31.469141, 27.346739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652870, 31.238722, 27.331234>,  <35.544003, 30.854691, 27.305393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652870, 31.238722, 27.331234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484551, -0.078745, -0.871211,
		-0.831344, 0.268421, -0.486639,
		0.272172, 0.960078, 0.064600,
		35.734520, 31.526745, 27.350615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426430, 31.084114, 26.630873>,  <35.544003, 30.854691, 27.305393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426430, 31.084114, 26.630873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691223, 31.336405, 26.792843>,  <35.850098, 31.487780, 26.890024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691223, 31.336405, 26.792843>,  <35.426430, 31.084114, 26.630873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691223, 31.336405, 26.792843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570723, -0.073975, -0.817803,
		-0.485856, 0.772471, -0.408941,
		0.661981, 0.630727, 0.404926,
		35.889816, 31.525623, 26.914320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634670, 31.588610, 26.050362>,  <35.426430, 31.084114, 26.630873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634670, 31.588610, 26.050362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912357, 31.584797, 26.338242>,  <36.078972, 31.582510, 26.510969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912357, 31.584797, 26.338242>,  <35.634670, 31.588610, 26.050362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912357, 31.584797, 26.338242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718275, 0.073418, -0.691875,
		-0.046245, 0.997256, 0.057815,
		0.694220, -0.009531, 0.719699,
		36.120625, 31.581938, 26.554152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065956, 32.180321, 25.948004>,  <35.634670, 31.588610, 26.050362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065956, 32.180321, 25.948004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284378, 31.930693, 26.171562>,  <36.415432, 31.780916, 26.305698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284378, 31.930693, 26.171562>,  <36.065956, 32.180321, 25.948004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284378, 31.930693, 26.171562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741661, 0.049884, -0.668917,
		0.389569, 0.779777, 0.490086,
		0.546054, -0.624067, 0.558897,
		36.448193, 31.743473, 26.339231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747231, 32.488403, 26.009848>,  <36.065956, 32.180321, 25.948004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747231, 32.488403, 26.009848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791985, 32.097179, 26.080149>,  <36.818836, 31.862446, 26.122330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791985, 32.097179, 26.080149>,  <36.747231, 32.488403, 26.009848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791985, 32.097179, 26.080149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753799, -0.031713, -0.656339,
		0.647510, 0.205914, 0.733710,
		0.111881, -0.978056, 0.175752,
		36.825550, 31.803762, 26.132874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385582, 32.409817, 25.833326>,  <36.747231, 32.488403, 26.009848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385582, 32.409817, 25.833326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281815, 32.024220, 25.856684>,  <37.219555, 31.792860, 25.870697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281815, 32.024220, 25.856684>,  <37.385582, 32.409817, 25.833326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281815, 32.024220, 25.856684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695209, -0.228371, -0.681565,
		0.670362, -0.136217, 0.729424,
		-0.259420, -0.963998, 0.058391,
		37.203987, 31.735020, 25.874201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039536, 31.987534, 25.893393>,  <37.385582, 32.409817, 25.833326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039536, 31.987534, 25.893393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741440, 31.790268, 25.713881>,  <37.562580, 31.671909, 25.606173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741440, 31.790268, 25.713881>,  <38.039536, 31.987534, 25.893393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741440, 31.790268, 25.713881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594662, -0.187082, -0.781906,
		0.301648, -0.849582, 0.432687,
		-0.745241, -0.493163, -0.448782,
		37.517868, 31.642319, 25.579247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341789, 31.361530, 25.713503>,  <38.039536, 31.987534, 25.893393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341789, 31.361530, 25.713503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009705, 31.409531, 25.495750>,  <37.810455, 31.438332, 25.365099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009705, 31.409531, 25.495750>,  <38.341789, 31.361530, 25.713503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009705, 31.409531, 25.495750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493716, -0.295145, -0.818006,
		-0.258836, -0.947886, 0.185784,
		-0.830210, 0.120005, -0.544381,
		37.760643, 31.445532, 25.332436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371857, 30.818985, 25.205303>,  <38.341789, 31.361530, 25.713503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371857, 30.818985, 25.205303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079540, 31.045717, 25.053171>,  <37.904152, 31.181757, 24.961893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079540, 31.045717, 25.053171>,  <38.371857, 30.818985, 25.205303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079540, 31.045717, 25.053171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356897, -0.157663, -0.920742,
		-0.581869, -0.808607, -0.087082,
		-0.730788, 0.566831, -0.380329,
		37.860302, 31.215767, 24.939072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947979, 30.355566, 24.667849>,  <38.371857, 30.818985, 25.205303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947979, 30.355566, 24.667849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923199, 30.745472, 24.582060>,  <37.908329, 30.979416, 24.530586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923199, 30.745472, 24.582060>,  <37.947979, 30.355566, 24.667849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923199, 30.745472, 24.582060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311843, -0.185221, -0.931905,
		-0.948111, -0.124617, -0.292498,
		-0.061954, 0.974763, -0.214471,
		37.904613, 31.037901, 24.517719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695572, 30.386568, 23.957901>,  <37.947979, 30.355566, 24.667849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695572, 30.386568, 23.957901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846588, 30.750830, 24.025040>,  <37.937199, 30.969387, 24.065323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846588, 30.750830, 24.025040>,  <37.695572, 30.386568, 23.957901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846588, 30.750830, 24.025040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348898, 0.028008, -0.936742,
		-0.857748, 0.412222, -0.307151,
		0.377543, 0.910653, 0.167847,
		37.959850, 31.024025, 24.075394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464504, 30.908346, 23.424028>,  <37.695572, 30.386568, 23.957901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464504, 30.908346, 23.424028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826916, 30.995337, 23.569250>,  <38.044365, 31.047531, 23.656384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826916, 30.995337, 23.569250>,  <37.464504, 30.908346, 23.424028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826916, 30.995337, 23.569250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385828, -0.071960, -0.919760,
		-0.173900, 0.973409, -0.149107,
		0.906033, 0.217476, 0.363055,
		38.098724, 31.060579, 23.678167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809834, 31.450441, 23.047295>,  <37.464504, 30.908346, 23.424028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809834, 31.450441, 23.047295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077755, 31.182781, 23.176043>,  <38.238506, 31.022184, 23.253290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077755, 31.182781, 23.176043>,  <37.809834, 31.450441, 23.047295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077755, 31.182781, 23.176043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319982, -0.131046, -0.938317,
		0.670056, 0.731480, 0.126342,
		0.669803, -0.669152, 0.321869,
		38.278694, 30.982035, 23.272604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379318, 31.514351, 22.542969>,  <37.809834, 31.450441, 23.047295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379318, 31.514351, 22.542969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372669, 31.151115, 22.710348>,  <38.368679, 30.933174, 22.810776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372669, 31.151115, 22.710348>,  <38.379318, 31.514351, 22.542969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372669, 31.151115, 22.710348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120087, -0.417290, -0.900804,
		0.992624, 0.035281, 0.115984,
		-0.016618, -0.908088, 0.418449,
		38.367683, 30.878689, 22.835882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031929, 31.178305, 22.304369>,  <38.379318, 31.514351, 22.542969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031929, 31.178305, 22.304369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732471, 30.919004, 22.359936>,  <38.552795, 30.763424, 22.393276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732471, 30.919004, 22.359936>,  <39.031929, 31.178305, 22.304369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732471, 30.919004, 22.359936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214543, -0.435156, -0.874420,
		0.627294, -0.624829, 0.464856,
		-0.748648, -0.648250, 0.138918,
		38.507877, 30.724529, 22.401611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541389, 31.721975, 22.315084>,  <39.031929, 31.178305, 22.304369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541389, 31.721975, 22.315084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649315, 32.094685, 22.412247>,  <39.714069, 32.318310, 22.470543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649315, 32.094685, 22.412247>,  <39.541389, 31.721975, 22.315084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649315, 32.094685, 22.412247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949740, 0.215927, 0.226648,
		0.158734, -0.291848, 0.943201,
		0.269809, 0.931772, 0.242905,
		39.730259, 32.374218, 22.485119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433418, 31.889271, 23.048140>,  <39.541389, 31.721975, 22.315084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433418, 31.889271, 23.048140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381390, 32.224052, 22.835503>,  <39.350174, 32.424923, 22.707920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381390, 32.224052, 22.835503>,  <39.433418, 31.889271, 23.048140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381390, 32.224052, 22.835503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941491, 0.063878, 0.330930,
		0.310930, 0.543535, 0.779674,
		-0.130068, 0.836952, -0.531595,
		39.342369, 32.475140, 22.676023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229061, 32.555904, 23.490147>,  <39.433418, 31.889271, 23.048140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229061, 32.555904, 23.490147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098190, 32.548573, 23.112232>,  <39.019669, 32.544174, 22.885483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098190, 32.548573, 23.112232>,  <39.229061, 32.555904, 23.490147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098190, 32.548573, 23.112232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927402, 0.198088, 0.317311,
		0.181334, 0.980013, -0.081810,
		-0.327174, -0.018332, -0.944786,
		39.000038, 32.543072, 22.828796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847054, 33.220829, 23.321093>,  <39.229061, 32.555904, 23.490147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847054, 33.220829, 23.321093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722775, 32.893097, 23.128361>,  <38.648205, 32.696457, 23.012722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722775, 32.893097, 23.128361>,  <38.847054, 33.220829, 23.321093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722775, 32.893097, 23.128361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943780, 0.205721, 0.258764,
		-0.112890, 0.535140, -0.837186,
		-0.310702, -0.819331, -0.481830,
		38.629562, 32.647297, 22.983812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240162, 33.621040, 23.423468>,  <38.847054, 33.220829, 23.321093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240162, 33.621040, 23.423468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855701, 33.548698, 23.506872>,  <37.625027, 33.505295, 23.556915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855701, 33.548698, 23.506872>,  <38.240162, 33.621040, 23.423468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855701, 33.548698, 23.506872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149167, 0.295269, 0.943698,
		-0.232241, 0.938140, -0.256821,
		-0.961152, -0.180856, 0.208513,
		37.567356, 33.494442, 23.569426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726242, 34.185215, 23.713654>,  <38.240162, 33.621040, 23.423468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726242, 34.185215, 23.713654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661411, 33.820015, 23.863409>,  <37.622513, 33.600895, 23.953262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661411, 33.820015, 23.863409>,  <37.726242, 34.185215, 23.713654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661411, 33.820015, 23.863409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110969, 0.360135, 0.926277,
		-0.980519, 0.191671, 0.042946,
		-0.162074, -0.912998, 0.374389,
		37.612789, 33.546116, 23.975725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118053, 34.096130, 24.203012>,  <37.726242, 34.185215, 23.713654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118053, 34.096130, 24.203012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408234, 33.839588, 24.302916>,  <37.582340, 33.685661, 24.362858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408234, 33.839588, 24.302916>,  <37.118053, 34.096130, 24.203012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408234, 33.839588, 24.302916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069605, 0.429379, 0.900438,
		-0.684745, -0.635839, 0.356135,
		0.725451, -0.641360, 0.249757,
		37.625870, 33.647179, 24.377842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943214, 33.855377, 24.810904>,  <37.118053, 34.096130, 24.203012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943214, 33.855377, 24.810904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333572, 33.769463, 24.795460>,  <37.567787, 33.717915, 24.786194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333572, 33.769463, 24.795460>,  <36.943214, 33.855377, 24.810904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333572, 33.769463, 24.795460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120102, 0.380891, 0.916786,
		-0.182205, -0.899327, 0.397507,
		0.975898, -0.214785, -0.038611,
		37.626343, 33.705029, 24.783876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067875, 33.458809, 25.395739>,  <36.943214, 33.855377, 24.810904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067875, 33.458809, 25.395739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430698, 33.587082, 25.286627>,  <37.648392, 33.664047, 25.221161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430698, 33.587082, 25.286627>,  <37.067875, 33.458809, 25.395739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430698, 33.587082, 25.286627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168613, 0.316977, 0.933325,
		0.385768, -0.892573, 0.233445,
		0.907057, 0.320684, -0.272778,
		37.702816, 33.683289, 25.204794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618450, 33.152477, 25.862539>,  <37.067875, 33.458809, 25.395739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618450, 33.152477, 25.862539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815857, 33.472870, 25.726965>,  <37.934299, 33.665104, 25.645620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815857, 33.472870, 25.726965>,  <37.618450, 33.152477, 25.862539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815857, 33.472870, 25.726965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142152, 0.310175, 0.939992,
		0.858043, -0.512078, 0.039215,
		0.493513, 0.800979, -0.338936,
		37.963909, 33.713165, 25.625284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386665, 33.162457, 26.244459>,  <37.618450, 33.152477, 25.862539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386665, 33.162457, 26.244459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293270, 33.512741, 26.075405>,  <38.237232, 33.722912, 25.973972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293270, 33.512741, 26.075405>,  <38.386665, 33.162457, 26.244459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293270, 33.512741, 26.075405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389791, 0.482490, 0.784389,
		0.890812, 0.018405, -0.453998,
		-0.233487, 0.875708, -0.422634,
		38.223225, 33.775452, 25.948614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967251, 33.491512, 26.213055>,  <38.386665, 33.162457, 26.244459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967251, 33.491512, 26.213055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672253, 33.761635, 26.216215>,  <38.495255, 33.923706, 26.218111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672253, 33.761635, 26.216215>,  <38.967251, 33.491512, 26.213055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672253, 33.761635, 26.216215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484762, 0.521189, 0.702401,
		0.470214, 0.521852, -0.711737,
		-0.737499, 0.675302, 0.007904,
		38.451004, 33.964226, 26.218586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307735, 34.166924, 26.396160>,  <38.967251, 33.491512, 26.213055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307735, 34.166924, 26.396160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923489, 34.234940, 26.484068>,  <38.692940, 34.275749, 26.536814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923489, 34.234940, 26.484068>,  <39.307735, 34.166924, 26.396160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923489, 34.234940, 26.484068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277813, 0.571452, 0.772180,
		0.005711, 0.802826, -0.596186,
		-0.960618, 0.170038, 0.219772,
		38.635303, 34.285950, 26.549999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234871, 34.884251, 26.564220>,  <39.307735, 34.166924, 26.396160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234871, 34.884251, 26.564220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889557, 34.757183, 26.721102>,  <38.682369, 34.680943, 26.815229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889557, 34.757183, 26.721102>,  <39.234871, 34.884251, 26.564220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889557, 34.757183, 26.721102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048346, 0.721454, 0.690772,
		-0.502395, 0.615295, -0.607463,
		-0.863286, -0.317672, 0.392202,
		38.630569, 34.661880, 26.838762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781673, 35.402111, 26.632639>,  <39.234871, 34.884251, 26.564220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781673, 35.402111, 26.632639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657894, 35.150120, 26.917559>,  <38.583626, 34.998924, 27.088511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657894, 35.150120, 26.917559>,  <38.781673, 35.402111, 26.632639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657894, 35.150120, 26.917559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086789, 0.764653, 0.638572,
		-0.946948, 0.135784, -0.291295,
		-0.309447, -0.629975, 0.712301,
		38.565060, 34.961128, 27.131248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280640, 35.828243, 27.014057>,  <38.781673, 35.402111, 26.632639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280640, 35.828243, 27.014057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346844, 35.514561, 27.253267>,  <38.386566, 35.326351, 27.396793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346844, 35.514561, 27.253267>,  <38.280640, 35.828243, 27.014057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346844, 35.514561, 27.253267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162988, 0.576299, 0.800821,
		-0.972647, -0.230013, -0.032434,
		0.165508, -0.784203, 0.598025,
		38.396496, 35.279301, 27.432674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720318, 35.827740, 27.370001>,  <38.280640, 35.828243, 27.014057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720318, 35.827740, 27.370001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965370, 35.606857, 27.596188>,  <38.112400, 35.474327, 27.731899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965370, 35.606857, 27.596188>,  <37.720318, 35.827740, 27.370001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965370, 35.606857, 27.596188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426711, 0.371129, 0.824731,
		-0.665282, -0.746546, -0.008268,
		0.612632, -0.552207, 0.565465,
		38.149158, 35.441196, 27.765827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301529, 35.560204, 27.943628>,  <37.720318, 35.827740, 27.370001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301529, 35.560204, 27.943628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679512, 35.526852, 28.070183>,  <37.906303, 35.506840, 28.146116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679512, 35.526852, 28.070183>,  <37.301529, 35.560204, 27.943628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679512, 35.526852, 28.070183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289603, 0.236851, 0.927379,
		-0.152261, -0.967961, 0.199668,
		0.944959, -0.083379, 0.316388,
		37.963001, 35.501839, 28.165098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344177, 35.159397, 28.574667>,  <37.301529, 35.560204, 27.943628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344177, 35.159397, 28.574667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690189, 35.358494, 28.599884>,  <37.897797, 35.477951, 28.615013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690189, 35.358494, 28.599884>,  <37.344177, 35.159397, 28.574667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690189, 35.358494, 28.599884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259777, 0.336848, 0.905013,
		0.429228, -0.799242, 0.420686,
		0.865032, 0.497741, 0.063040,
		37.949699, 35.507816, 28.618795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670807, 34.948357, 29.221537>,  <37.344177, 35.159397, 28.574667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670807, 34.948357, 29.221537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863632, 35.287392, 29.132793>,  <37.979328, 35.490810, 29.079548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863632, 35.287392, 29.132793>,  <37.670807, 34.948357, 29.221537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863632, 35.287392, 29.132793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387990, 0.433557, 0.813321,
		0.785545, -0.305991, 0.537855,
		0.482060, 0.847583, -0.221857,
		38.008251, 35.541668, 29.066236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884613, 35.149712, 29.864948>,  <37.670807, 34.948357, 29.221537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884613, 35.149712, 29.864948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943867, 35.467453, 29.629301>,  <37.979420, 35.658096, 29.487913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943867, 35.467453, 29.629301>,  <37.884613, 35.149712, 29.864948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943867, 35.467453, 29.629301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382110, 0.595402, 0.706744,
		0.912166, 0.120413, 0.391732,
		0.148137, 0.794353, -0.589117,
		37.988308, 35.705757, 29.452566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411789, 35.604321, 30.202751>,  <37.884613, 35.149712, 29.864948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411789, 35.604321, 30.202751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178387, 35.828564, 29.967722>,  <38.038345, 35.963108, 29.826704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178387, 35.828564, 29.967722>,  <38.411789, 35.604321, 30.202751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178387, 35.828564, 29.967722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082978, 0.678572, 0.729832,
		0.807859, 0.474617, -0.349433,
		-0.583506, 0.560606, -0.587574,
		38.003334, 35.996746, 29.791451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639629, 36.234432, 30.323507>,  <38.411789, 35.604321, 30.202751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639629, 36.234432, 30.323507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267555, 36.256908, 30.178400>,  <38.044312, 36.270393, 30.091335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267555, 36.256908, 30.178400>,  <38.639629, 36.234432, 30.323507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267555, 36.256908, 30.178400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258141, 0.602487, 0.755230,
		0.260999, 0.796148, -0.545919,
		-0.930184, 0.056190, -0.362767,
		37.988499, 36.273766, 30.069571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468906, 37.097839, 30.261992>,  <38.639629, 36.234432, 30.323507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468906, 37.097839, 30.261992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125530, 36.892845, 30.253691>,  <37.919502, 36.769848, 30.248711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125530, 36.892845, 30.253691>,  <38.468906, 37.097839, 30.261992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125530, 36.892845, 30.253691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289299, 0.450391, 0.844662,
		-0.423534, 0.731098, -0.534897,
		-0.858444, -0.512488, -0.020750,
		37.867996, 36.739098, 30.247465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949879, 37.637547, 30.186573>,  <38.468906, 37.097839, 30.261992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949879, 37.637547, 30.186573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757931, 37.325417, 30.346985>,  <37.642761, 37.138138, 30.443232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757931, 37.325417, 30.346985>,  <37.949879, 37.637547, 30.186573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757931, 37.325417, 30.346985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465136, 0.613846, 0.637841,
		-0.743890, 0.119549, -0.657522,
		-0.479870, -0.780321, 0.401027,
		37.613968, 37.091320, 30.467293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287148, 37.911316, 30.444086>,  <37.949879, 37.637547, 30.186573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287148, 37.911316, 30.444086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266068, 37.561069, 30.636135>,  <37.253418, 37.350922, 30.751366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266068, 37.561069, 30.636135>,  <37.287148, 37.911316, 30.444086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266068, 37.561069, 30.636135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665567, 0.389235, 0.636802,
		-0.744475, -0.285993, -0.603295,
		-0.052703, -0.875616, 0.480123,
		37.250256, 37.298386, 30.780172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562183, 37.865700, 30.696257>,  <37.287148, 37.911316, 30.444086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562183, 37.865700, 30.696257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774410, 37.611996, 30.921186>,  <36.901749, 37.459774, 31.056145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774410, 37.611996, 30.921186>,  <36.562183, 37.865700, 30.696257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774410, 37.611996, 30.921186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493717, 0.308013, 0.813248,
		-0.689014, -0.709114, -0.149723,
		0.530569, -0.634260, 0.562326,
		36.933582, 37.421719, 31.089884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100208, 37.436451, 31.133831>,  <36.562183, 37.865700, 30.696257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100208, 37.436451, 31.133831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457012, 37.436913, 31.314640>,  <36.671093, 37.437191, 31.423124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457012, 37.436913, 31.314640>,  <36.100208, 37.436451, 31.133831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457012, 37.436913, 31.314640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437730, 0.251682, 0.863162,
		-0.112771, -0.967809, 0.225006,
		0.892007, 0.001152, 0.452022,
		36.724613, 37.437260, 31.450247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059711, 36.987789, 31.799999>,  <36.100208, 37.436451, 31.133831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059711, 36.987789, 31.799999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374474, 37.232182, 31.834595>,  <36.563332, 37.378819, 31.855352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374474, 37.232182, 31.834595>,  <36.059711, 36.987789, 31.799999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374474, 37.232182, 31.834595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378820, 0.367673, 0.849301,
		0.487108, -0.701084, 0.520776,
		0.786906, 0.610981, 0.086489,
		36.610546, 37.415474, 31.860542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350731, 36.865032, 32.475468>,  <36.059711, 36.987789, 31.799999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350731, 36.865032, 32.475468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494541, 37.228130, 32.388992>,  <36.580826, 37.445988, 32.337105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494541, 37.228130, 32.388992>,  <36.350731, 36.865032, 32.475468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494541, 37.228130, 32.388992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208770, 0.304058, 0.929497,
		0.909481, -0.289044, 0.298827,
		0.359526, 0.907746, -0.216191,
		36.602398, 37.500454, 32.324135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650738, 37.208691, 33.179245>,  <36.350731, 36.865032, 32.475468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650738, 37.208691, 33.179245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592529, 37.513775, 32.927185>,  <36.557606, 37.696827, 32.775948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592529, 37.513775, 32.927185>,  <36.650738, 37.208691, 33.179245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592529, 37.513775, 32.927185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275380, 0.580534, 0.766254,
		0.950258, 0.285036, 0.125558,
		-0.145520, 0.762715, -0.630150,
		36.548874, 37.742588, 32.738140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956306, 37.742260, 33.505905>,  <36.650738, 37.208691, 33.179245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956306, 37.742260, 33.505905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707043, 37.923939, 33.251228>,  <36.557484, 38.032948, 33.098423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707043, 37.923939, 33.251228>,  <36.956306, 37.742260, 33.505905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707043, 37.923939, 33.251228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332545, 0.582955, 0.741335,
		0.707875, 0.673699, -0.212232,
		-0.623158, 0.454196, -0.636694,
		36.520096, 38.060196, 33.060219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903481, 38.405312, 33.824104>,  <36.956306, 37.742260, 33.505905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903481, 38.405312, 33.824104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603378, 38.383171, 33.560574>,  <36.423317, 38.369888, 33.402454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603378, 38.383171, 33.560574>,  <36.903481, 38.405312, 33.824104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603378, 38.383171, 33.560574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453772, 0.767838, 0.452233,
		0.480842, 0.638248, -0.601191,
		-0.750255, -0.055351, -0.658828,
		36.378304, 38.366566, 33.362926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864616, 39.072590, 33.619976>,  <36.903481, 38.405312, 33.824104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864616, 39.072590, 33.619976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510609, 38.904301, 33.540253>,  <36.298203, 38.803326, 33.492420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510609, 38.904301, 33.540253>,  <36.864616, 39.072590, 33.619976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510609, 38.904301, 33.540253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463242, 0.753310, 0.466831,
		-0.046266, 0.505485, -0.861594,
		-0.885023, -0.420725, -0.199309,
		36.245102, 38.778084, 33.480461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300213, 39.605724, 33.413021>,  <36.864616, 39.072590, 33.619976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300213, 39.605724, 33.413021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084736, 39.294441, 33.542141>,  <35.955448, 39.107670, 33.619614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084736, 39.294441, 33.542141>,  <36.300213, 39.605724, 33.413021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084736, 39.294441, 33.542141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641967, 0.627276, 0.440912,
		-0.545607, 0.030290, -0.837494,
		-0.538695, -0.778208, 0.322801,
		35.923126, 39.060978, 33.638981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582760, 39.833324, 33.465809>,  <36.300213, 39.605724, 33.413021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582760, 39.833324, 33.465809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625774, 39.516415, 33.706051>,  <35.651581, 39.326267, 33.850197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625774, 39.516415, 33.706051>,  <35.582760, 39.833324, 33.465809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625774, 39.516415, 33.706051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454954, 0.497935, 0.738294,
		-0.883999, -0.352639, -0.306907,
		0.107531, -0.792279, 0.600609,
		35.658035, 39.278732, 33.886234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854179, 39.687958, 33.789806>,  <35.582760, 39.833324, 33.465809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854179, 39.687958, 33.789806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110653, 39.519268, 34.046257>,  <35.264538, 39.418056, 34.200127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110653, 39.519268, 34.046257>,  <34.854179, 39.687958, 33.789806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110653, 39.519268, 34.046257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584927, 0.272218, 0.764041,
		-0.496737, -0.864898, -0.072135,
		0.641181, -0.421721, 0.641123,
		35.303009, 39.392754, 34.238594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446663, 39.370918, 34.313908>,  <34.854179, 39.687958, 33.789806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446663, 39.370918, 34.313908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795662, 39.396603, 34.507660>,  <35.005062, 39.412014, 34.623913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795662, 39.396603, 34.507660>,  <34.446663, 39.370918, 34.313908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795662, 39.396603, 34.507660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480523, 0.292459, 0.826780,
		-0.088572, -0.954120, 0.286026,
		0.872498, 0.064213, 0.484380,
		35.057411, 39.415867, 34.652973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399929, 39.033401, 34.875046>,  <34.446663, 39.370918, 34.313908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399929, 39.033401, 34.875046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707542, 39.276226, 34.955105>,  <34.892109, 39.421921, 35.003139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707542, 39.276226, 34.955105>,  <34.399929, 39.033401, 34.875046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707542, 39.276226, 34.955105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472842, 0.329577, 0.817190,
		0.430128, -0.723082, 0.540503,
		0.769032, 0.607068, 0.200143,
		34.938251, 39.458347, 35.015148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541904, 38.848141, 35.542950>,  <34.399929, 39.033401, 34.875046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541904, 38.848141, 35.542950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646137, 39.230560, 35.489178>,  <34.708679, 39.460011, 35.456913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646137, 39.230560, 35.489178>,  <34.541904, 38.848141, 35.542950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646137, 39.230560, 35.489178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492136, 0.251331, 0.833448,
		0.830601, -0.151025, 0.535997,
		0.260584, 0.956046, -0.134431,
		34.724312, 39.517376, 35.448849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558605, 39.102043, 36.328857>,  <34.541904, 38.848141, 35.542950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558605, 39.102043, 36.328857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567917, 39.417564, 36.083176>,  <34.573505, 39.606876, 35.935764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567917, 39.417564, 36.083176>,  <34.558605, 39.102043, 36.328857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567917, 39.417564, 36.083176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408135, 0.568345, 0.714430,
		0.912625, 0.234048, 0.335167,
		0.023280, 0.788800, -0.614209,
		34.574902, 39.654205, 35.898914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710732, 39.542492, 36.764111>,  <34.558605, 39.102043, 36.328857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710732, 39.542492, 36.764111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560509, 39.751823, 36.458145>,  <34.470375, 39.877422, 36.274567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560509, 39.751823, 36.458145>,  <34.710732, 39.542492, 36.764111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560509, 39.751823, 36.458145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410947, 0.645728, 0.643551,
		0.830712, 0.556026, -0.027446,
		-0.375553, 0.523327, -0.764911,
		34.447842, 39.908821, 36.228672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940479, 40.262497, 36.736492>,  <34.710732, 39.542492, 36.764111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940479, 40.262497, 36.736492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582298, 40.225056, 36.562408>,  <34.367390, 40.202591, 36.457958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582298, 40.225056, 36.562408>,  <34.940479, 40.262497, 36.736492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582298, 40.225056, 36.562408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368858, 0.703357, 0.607645,
		0.249231, 0.704647, -0.664347,
		-0.895448, -0.093606, -0.435213,
		34.313663, 40.196976, 36.431843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644859, 40.942963, 36.643803>,  <34.940479, 40.262497, 36.736492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644859, 40.942963, 36.643803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339466, 40.685181, 36.626953>,  <34.156231, 40.530510, 36.616844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339466, 40.685181, 36.626953>,  <34.644859, 40.942963, 36.643803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339466, 40.685181, 36.626953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563868, 0.633370, 0.529996,
		-0.314882, 0.428391, -0.846954,
		-0.763480, -0.644456, -0.042119,
		34.110420, 40.491844, 36.614319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246433, 41.344311, 36.589966>,  <34.644859, 40.942963, 36.643803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246433, 41.344311, 36.589966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549870, 41.519905, 36.782562>,  <35.731930, 41.625263, 36.898121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549870, 41.519905, 36.782562>,  <35.246433, 41.344311, 36.589966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549870, 41.519905, 36.782562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597075, -0.172512, -0.783416,
		-0.260847, 0.881777, -0.392975,
		0.758591, 0.438987, 0.481488,
		35.777447, 41.651600, 36.927010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472202, 41.791794, 36.099022>,  <35.246433, 41.344311, 36.589966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472202, 41.791794, 36.099022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783062, 41.700806, 36.333729>,  <35.969578, 41.646214, 36.474552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783062, 41.700806, 36.333729>,  <35.472202, 41.791794, 36.099022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783062, 41.700806, 36.333729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592161, -0.051329, -0.804184,
		0.213048, 0.972431, 0.094810,
		0.777146, -0.227472, 0.586771,
		36.016205, 41.632565, 36.509762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001446, 42.171227, 35.702877>,  <35.472202, 41.791794, 36.099022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001446, 42.171227, 35.702877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194218, 41.910103, 35.936661>,  <36.309879, 41.753429, 36.076931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194218, 41.910103, 35.936661>,  <36.001446, 42.171227, 35.702877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194218, 41.910103, 35.936661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659347, -0.169113, -0.732572,
		0.577066, 0.738408, 0.348925,
		0.481930, -0.652805, 0.584456,
		36.338799, 41.714260, 36.112000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677151, 42.411888, 35.808617>,  <36.001446, 42.171227, 35.702877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677151, 42.411888, 35.808617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706810, 42.019863, 35.882339>,  <36.724606, 41.784649, 35.926575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706810, 42.019863, 35.882339>,  <36.677151, 42.411888, 35.808617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706810, 42.019863, 35.882339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820668, -0.045035, -0.569627,
		0.566573, 0.193496, 0.800971,
		0.074149, -0.980067, 0.184311,
		36.729053, 41.725842, 35.937634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340073, 42.401634, 35.738098>,  <36.677151, 42.411888, 35.808617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340073, 42.401634, 35.738098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220966, 42.020050, 35.752514>,  <37.149502, 41.791100, 35.761166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220966, 42.020050, 35.752514>,  <37.340073, 42.401634, 35.738098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220966, 42.020050, 35.752514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753844, -0.258131, -0.604225,
		0.585709, -0.152747, 0.795998,
		-0.297765, -0.953959, 0.036043,
		37.131638, 41.733864, 35.763329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960106, 41.951283, 35.907906>,  <37.340073, 42.401634, 35.738098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960106, 41.951283, 35.907906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701897, 41.721790, 35.706261>,  <37.546970, 41.584095, 35.585274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701897, 41.721790, 35.706261>,  <37.960106, 41.951283, 35.907906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701897, 41.721790, 35.706261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731385, -0.274296, -0.624370,
		0.219945, -0.771747, 0.596684,
		-0.645524, -0.573732, -0.504114,
		37.508240, 41.549671, 35.555027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364483, 41.337955, 35.729301>,  <37.960106, 41.951283, 35.907906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364483, 41.337955, 35.729301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055668, 41.296051, 35.478550>,  <37.870377, 41.270908, 35.328098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055668, 41.296051, 35.478550>,  <38.364483, 41.337955, 35.729301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055668, 41.296051, 35.478550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624708, -0.306675, -0.718115,
		-0.117018, -0.946031, 0.302211,
		-0.772040, -0.104761, -0.626880,
		37.824055, 41.264622, 35.290485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399967, 40.655285, 35.410500>,  <38.364483, 41.337955, 35.729301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399967, 40.655285, 35.410500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172611, 40.867428, 35.158897>,  <38.036198, 40.994713, 35.007935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172611, 40.867428, 35.158897>,  <38.399967, 40.655285, 35.410500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172611, 40.867428, 35.158897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460224, -0.428773, -0.777398,
		-0.681999, -0.731353, -0.000371,
		-0.568393, 0.530355, -0.629009,
		38.002094, 41.026535, 34.970196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374443, 40.210594, 34.748878>,  <38.399967, 40.655285, 35.410500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374443, 40.210594, 34.748878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217346, 40.551296, 34.610165>,  <38.123089, 40.755718, 34.526936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217346, 40.551296, 34.610165>,  <38.374443, 40.210594, 34.748878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217346, 40.551296, 34.610165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290414, -0.242919, -0.925554,
		-0.872590, -0.464215, -0.151959,
		-0.392742, 0.851760, -0.346784,
		38.099525, 40.806824, 34.506130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969311, 40.104092, 34.204792>,  <38.374443, 40.210594, 34.748878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969311, 40.104092, 34.204792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120758, 40.468555, 34.139751>,  <38.211628, 40.687233, 34.100727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120758, 40.468555, 34.139751>,  <37.969311, 40.104092, 34.204792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120758, 40.468555, 34.139751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368038, -0.309404, -0.876822,
		-0.849231, 0.272142, -0.452488,
		0.378622, 0.911157, -0.162597,
		38.234344, 40.741901, 34.090973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692322, 40.290070, 33.544243>,  <37.969311, 40.104092, 34.204792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692322, 40.290070, 33.544243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012295, 40.518848, 33.616882>,  <38.204281, 40.656116, 33.660465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012295, 40.518848, 33.616882>,  <37.692322, 40.290070, 33.544243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012295, 40.518848, 33.616882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305514, -0.127695, -0.943586,
		-0.516492, 0.810290, -0.276886,
		0.799936, 0.571947, 0.181602,
		38.252274, 40.690434, 33.671364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625797, 40.801949, 33.029186>,  <37.692322, 40.290070, 33.544243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625797, 40.801949, 33.029186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001678, 40.796600, 33.165874>,  <38.227207, 40.793392, 33.247887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001678, 40.796600, 33.165874>,  <37.625797, 40.801949, 33.029186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001678, 40.796600, 33.165874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331413, -0.210866, -0.919620,
		0.084354, 0.977424, -0.193721,
		0.939707, -0.013372, 0.341718,
		38.283592, 40.792587, 33.268391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001450, 41.143280, 32.474670>,  <37.625797, 40.801949, 33.029186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001450, 41.143280, 32.474670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287754, 40.965736, 32.690331>,  <38.459538, 40.859211, 32.819725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287754, 40.965736, 32.690331>,  <38.001450, 41.143280, 32.474670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287754, 40.965736, 32.690331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407077, -0.362121, -0.838545,
		0.567430, 0.819671, -0.078507,
		0.715759, -0.443857, 0.539147,
		38.502483, 40.832581, 32.852074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597836, 41.378189, 32.190613>,  <38.001450, 41.143280, 32.474670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597836, 41.378189, 32.190613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705894, 41.036316, 32.367943>,  <38.770729, 40.831192, 32.474339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705894, 41.036316, 32.367943>,  <38.597836, 41.378189, 32.190613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705894, 41.036316, 32.367943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321733, -0.353843, -0.878227,
		0.907475, 0.379880, 0.179391,
		0.270145, -0.854685, 0.443323,
		38.786938, 40.779911, 32.500938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398994, 41.151527, 31.986576>,  <38.597836, 41.378189, 32.190613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398994, 41.151527, 31.986576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197330, 40.834343, 32.123417>,  <39.076332, 40.644032, 32.205521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197330, 40.834343, 32.123417>,  <39.398994, 41.151527, 31.986576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197330, 40.834343, 32.123417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345941, -0.548395, -0.761306,
		0.791293, -0.265475, 0.550798,
		-0.504163, -0.792960, 0.342103,
		39.046082, 40.596455, 32.226048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871716, 40.720219, 31.848522>,  <39.398994, 41.151527, 31.986576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871716, 40.720219, 31.848522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536476, 40.509651, 31.905762>,  <39.335335, 40.383308, 31.940105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536476, 40.509651, 31.905762>,  <39.871716, 40.720219, 31.848522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536476, 40.509651, 31.905762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248932, -0.602456, -0.758340,
		0.485419, -0.599938, 0.635959,
		-0.838094, -0.526423, 0.143100,
		39.285049, 40.351723, 31.948692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044746, 40.221909, 31.497711>,  <39.871716, 40.720219, 31.848522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044746, 40.221909, 31.497711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651184, 40.150864, 31.505489>,  <39.415047, 40.108238, 31.510157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651184, 40.150864, 31.505489>,  <40.044746, 40.221909, 31.497711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651184, 40.150864, 31.505489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136895, -0.819312, -0.556765,
		0.114817, -0.545144, 0.830442,
		-0.983909, -0.177609, 0.019443,
		39.356010, 40.097580, 31.511322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966782, 39.622597, 31.709171>,  <40.044746, 40.221909, 31.497711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966782, 39.622597, 31.709171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630280, 39.702244, 31.508120>,  <39.428379, 39.750031, 31.387487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630280, 39.702244, 31.508120>,  <39.966782, 39.622597, 31.709171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630280, 39.702244, 31.508120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115563, -0.841990, -0.526971,
		-0.528137, -0.501405, 0.685321,
		-0.841259, 0.199116, -0.502630,
		39.377903, 39.761978, 31.357330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477768, 39.006611, 31.684425>,  <39.966782, 39.622597, 31.709171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477768, 39.006611, 31.684425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387222, 39.246429, 31.377359>,  <39.332893, 39.390320, 31.193121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387222, 39.246429, 31.377359>,  <39.477768, 39.006611, 31.684425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387222, 39.246429, 31.377359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029232, -0.783584, -0.620597,
		-0.973603, -0.162924, 0.159853,
		-0.226369, 0.599542, -0.767663,
		39.319313, 39.426292, 31.147060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161064, 38.564747, 31.236813>,  <39.477768, 39.006611, 31.684425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161064, 38.564747, 31.236813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205219, 38.866356, 30.977810>,  <39.231712, 39.047321, 30.822409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205219, 38.866356, 30.977810>,  <39.161064, 38.564747, 31.236813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205219, 38.866356, 30.977810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063012, -0.644868, -0.761692,
		-0.991889, 0.124881, -0.023672,
		0.110386, 0.754022, -0.647507,
		39.238335, 39.092564, 30.783558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799805, 38.360023, 30.636425>,  <39.161064, 38.564747, 31.236813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799805, 38.360023, 30.636425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047874, 38.650036, 30.516619>,  <39.196716, 38.824043, 30.444735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047874, 38.650036, 30.516619>,  <38.799805, 38.360023, 30.636425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047874, 38.650036, 30.516619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290599, -0.566986, -0.770765,
		-0.728650, 0.390972, -0.562325,
		0.620178, 0.725030, -0.299518,
		39.233929, 38.867546, 30.426764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653667, 38.573761, 29.926229>,  <38.799805, 38.360023, 30.636425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653667, 38.573761, 29.926229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034836, 38.658760, 30.012747>,  <39.263538, 38.709759, 30.064657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034836, 38.658760, 30.012747>,  <38.653667, 38.573761, 29.926229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034836, 38.658760, 30.012747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300066, -0.558317, -0.773461,
		-0.043601, 0.801950, -0.595797,
		0.952921, 0.212502, 0.216295,
		39.320713, 38.722511, 30.077635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909298, 38.630119, 29.303854>,  <38.653667, 38.573761, 29.926229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909298, 38.630119, 29.303854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229000, 38.569794, 29.536560>,  <39.420822, 38.533596, 29.676184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229000, 38.569794, 29.536560>,  <38.909298, 38.630119, 29.303854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229000, 38.569794, 29.536560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321201, -0.710964, -0.625588,
		0.507963, 0.686866, -0.519797,
		0.799252, -0.150816, 0.581766,
		39.468777, 38.524548, 29.711090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459858, 38.668327, 28.864656>,  <38.909298, 38.630119, 29.303854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459858, 38.668327, 28.864656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592464, 38.451694, 29.173664>,  <39.672028, 38.321712, 29.359068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592464, 38.451694, 29.173664>,  <39.459858, 38.668327, 28.864656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592464, 38.451694, 29.173664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393126, -0.665050, -0.634949,
		0.857642, 0.514192, -0.007564,
		0.331516, -0.541585, 0.772517,
		39.691917, 38.289219, 29.405418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118717, 38.473503, 28.659986>,  <39.459858, 38.668327, 28.864656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118717, 38.473503, 28.659986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070217, 38.228371, 28.972330>,  <40.041115, 38.081291, 29.159737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070217, 38.228371, 28.972330>,  <40.118717, 38.473503, 28.659986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070217, 38.228371, 28.972330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406704, -0.748271, -0.524101,
		0.905477, 0.254028, 0.339971,
		-0.121254, -0.612829, 0.780857,
		40.033840, 38.044521, 29.206587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755836, 38.087471, 28.765692>,  <40.118717, 38.473503, 28.659986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755836, 38.087471, 28.765692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461674, 37.875271, 28.934330>,  <40.285175, 37.747952, 29.035513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461674, 37.875271, 28.934330>,  <40.755836, 38.087471, 28.765692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461674, 37.875271, 28.934330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236188, -0.783825, -0.574311,
		0.635131, -0.322777, 0.701729,
		-0.735407, -0.530503, 0.421596,
		40.241051, 37.716122, 29.060808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089394, 37.510353, 28.983711>,  <40.755836, 38.087471, 28.765692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089394, 37.510353, 28.983711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707722, 37.392872, 28.960829>,  <40.478718, 37.322384, 28.947100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707722, 37.392872, 28.960829>,  <41.089394, 37.510353, 28.983711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707722, 37.392872, 28.960829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288294, -0.851179, -0.438612,
		0.080129, -0.435008, 0.896854,
		-0.954183, -0.293703, -0.057206,
		40.421467, 37.304760, 28.943666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178974, 36.740261, 29.259577>,  <41.089394, 37.510353, 28.983711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178974, 36.740261, 29.259577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841148, 36.800911, 29.054161>,  <40.638454, 36.837299, 28.930912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841148, 36.800911, 29.054161>,  <41.178974, 36.740261, 29.259577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841148, 36.800911, 29.054161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182397, -0.820246, -0.542151,
		-0.503429, -0.551549, 0.665096,
		-0.844565, 0.151623, -0.513537,
		40.587780, 36.846397, 28.900101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141689, 36.099396, 28.967754>,  <41.178974, 36.740261, 29.259577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141689, 36.099396, 28.967754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852760, 36.301186, 28.778542>,  <40.679405, 36.422260, 28.665014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852760, 36.301186, 28.778542>,  <41.141689, 36.099396, 28.967754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852760, 36.301186, 28.778542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027049, -0.704093, -0.709593,
		-0.691013, -0.499770, 0.522237,
		-0.722337, 0.504464, -0.473018,
		40.636066, 36.452530, 28.636633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669632, 35.562984, 28.743271>,  <41.141689, 36.099396, 28.967754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669632, 35.562984, 28.743271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621361, 35.862160, 28.482189>,  <40.592400, 36.041664, 28.325541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621361, 35.862160, 28.482189>,  <40.669632, 35.562984, 28.743271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621361, 35.862160, 28.482189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202386, -0.625162, -0.753798,
		-0.971842, -0.223065, -0.075930,
		-0.120678, 0.747939, -0.652704,
		40.585155, 36.086540, 28.286377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239536, 35.302853, 28.196920>,  <40.669632, 35.562984, 28.743271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239536, 35.302853, 28.196920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402290, 35.621651, 28.018375>,  <40.499943, 35.812931, 27.911247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402290, 35.621651, 28.018375>,  <40.239536, 35.302853, 28.196920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402290, 35.621651, 28.018375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102623, -0.525430, -0.844625,
		-0.907697, 0.297856, -0.295579,
		0.406883, 0.796997, -0.446365,
		40.524357, 35.860748, 27.884466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986805, 35.420845, 27.457674>,  <40.239536, 35.302853, 28.196920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986805, 35.420845, 27.457674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342796, 35.603241, 27.457438>,  <40.556393, 35.712681, 27.457294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342796, 35.603241, 27.457438>,  <39.986805, 35.420845, 27.457674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342796, 35.603241, 27.457438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202516, -0.396425, -0.895452,
		-0.408556, 0.796817, -0.445157,
		0.889983, 0.455994, -0.000593,
		40.609791, 35.740040, 27.457260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050980, 35.727173, 26.817507>,  <39.986805, 35.420845, 27.457674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050980, 35.727173, 26.817507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410908, 35.654209, 26.976023>,  <40.626865, 35.610432, 27.071133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410908, 35.654209, 26.976023>,  <40.050980, 35.727173, 26.817507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410908, 35.654209, 26.976023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269756, -0.481271, -0.834032,
		0.342855, 0.857383, -0.383855,
		0.899824, -0.182405, 0.396290,
		40.680855, 35.599487, 27.094910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423550, 35.672550, 26.253008>,  <40.050980, 35.727173, 26.817507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423550, 35.672550, 26.253008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662121, 35.501003, 26.524401>,  <40.805264, 35.398075, 26.687237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.662121, 35.501003, 26.524401>,  <40.423550, 35.672550, 26.253008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662121, 35.501003, 26.524401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427508, -0.545686, -0.720738,
		0.679342, 0.719929, -0.142119,
		0.596432, -0.428870, 0.678483,
		40.841049, 35.372341, 26.727945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038960, 35.546219, 25.852467>,  <40.423550, 35.672550, 26.253008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038960, 35.546219, 25.852467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093773, 35.327984, 26.183176>,  <41.126659, 35.197044, 26.381601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093773, 35.327984, 26.183176>,  <41.038960, 35.546219, 25.852467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093773, 35.327984, 26.183176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548322, -0.653334, -0.522014,
		0.824964, 0.524872, 0.209629,
		0.137032, -0.545587, 0.826775,
		41.134884, 35.164307, 26.431210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848438, 35.481518, 25.883656>,  <41.038960, 35.546219, 25.852467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848438, 35.481518, 25.883656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688332, 35.182838, 26.096155>,  <41.592270, 35.003632, 26.223656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688332, 35.182838, 26.096155>,  <41.848438, 35.481518, 25.883656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688332, 35.182838, 26.096155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293037, -0.653565, -0.697841,
		0.868285, -0.123644, 0.480410,
		-0.400263, -0.746702, 0.531248,
		41.568253, 34.958828, 26.255529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335629, 34.953552, 25.838917>,  <41.848438, 35.481518, 25.883656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335629, 34.953552, 25.838917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020458, 34.741489, 25.964203>,  <41.831356, 34.614250, 26.039375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020458, 34.741489, 25.964203>,  <42.335629, 34.953552, 25.838917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020458, 34.741489, 25.964203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317048, -0.785339, -0.531718,
		0.527875, -0.319650, 0.786875,
		-0.787927, -0.530158, 0.313216,
		41.784081, 34.582443, 26.058168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605007, 34.452831, 26.291613>,  <42.335629, 34.953552, 25.838917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605007, 34.452831, 26.291613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251556, 34.331390, 26.149048>,  <42.039486, 34.258526, 26.063509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251556, 34.331390, 26.149048>,  <42.605007, 34.452831, 26.291613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251556, 34.331390, 26.149048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405752, -0.876400, -0.259401,
		-0.233605, -0.373828, 0.897597,
		-0.883625, -0.303604, -0.356413,
		41.986469, 34.240311, 26.042124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571327, 33.735054, 26.459963>,  <42.605007, 34.452831, 26.291613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571327, 33.735054, 26.459963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324402, 33.792183, 26.150507>,  <42.176247, 33.826458, 25.964832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324402, 33.792183, 26.150507>,  <42.571327, 33.735054, 26.459963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324402, 33.792183, 26.150507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201272, -0.921985, -0.330808,
		-0.760531, -0.359927, 0.540412,
		-0.617318, 0.142820, -0.773641,
		42.139206, 33.835030, 25.918415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025970, 33.154461, 26.535177>,  <42.571327, 33.735054, 26.459963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025970, 33.154461, 26.535177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131687, 32.800190, 26.687874>,  <42.195118, 32.587627, 26.779491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131687, 32.800190, 26.687874>,  <42.025970, 33.154461, 26.535177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131687, 32.800190, 26.687874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453432, 0.235233, 0.859689,
		-0.851204, -0.400305, -0.339423,
		0.264295, -0.885676, 0.381742,
		42.210976, 32.534489, 26.802397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408504, 32.861530, 26.930811>,  <42.025970, 33.154461, 26.535177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408504, 32.861530, 26.930811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736244, 32.695091, 27.088558>,  <41.932888, 32.595230, 27.183207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736244, 32.695091, 27.088558>,  <41.408504, 32.861530, 26.930811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736244, 32.695091, 27.088558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290107, 0.292385, 0.911235,
		-0.494468, -0.861031, 0.118854,
		0.819353, -0.416096, 0.394366,
		41.982052, 32.570263, 27.206867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160263, 32.328377, 27.348221>,  <41.408504, 32.861530, 26.930811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160263, 32.328377, 27.348221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531536, 32.424664, 27.461733>,  <41.754299, 32.482433, 27.529840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531536, 32.424664, 27.461733>,  <41.160263, 32.328377, 27.348221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531536, 32.424664, 27.461733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325528, 0.155764, 0.932614,
		0.180304, -0.958013, 0.222941,
		0.928182, 0.240728, 0.283775,
		41.809990, 32.496876, 27.546865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058964, 32.077076, 27.996487>,  <41.160263, 32.328377, 27.348221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058964, 32.077076, 27.996487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393570, 32.296139, 27.989372>,  <41.594334, 32.427574, 27.985104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393570, 32.296139, 27.989372>,  <41.058964, 32.077076, 27.996487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393570, 32.296139, 27.989372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227056, 0.375993, 0.898374,
		0.498686, -0.747465, 0.438872,
		0.836515, 0.547655, -0.017786,
		41.644524, 32.460434, 27.984035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317448, 32.076103, 28.682152>,  <41.058964, 32.077076, 27.996487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317448, 32.076103, 28.682152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498943, 32.393311, 28.519548>,  <41.607841, 32.583633, 28.421986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498943, 32.393311, 28.519548>,  <41.317448, 32.076103, 28.682152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498943, 32.393311, 28.519548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160410, 0.521402, 0.838098,
		0.876579, -0.315069, 0.363787,
		0.453738, 0.793015, -0.406510,
		41.635063, 32.631214, 28.397596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785557, 32.186264, 29.215059>,  <41.317448, 32.076103, 28.682152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785557, 32.186264, 29.215059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750408, 32.521717, 29.000031>,  <41.729317, 32.722988, 28.871014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750408, 32.521717, 29.000031>,  <41.785557, 32.186264, 29.215059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750408, 32.521717, 29.000031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072407, 0.532852, 0.843105,
		0.993496, 0.113012, 0.013898,
		-0.087875, 0.838628, -0.537570,
		41.724045, 32.773304, 28.838760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251259, 32.664936, 29.486343>,  <41.785557, 32.186264, 29.215059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251259, 32.664936, 29.486343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958553, 32.859882, 29.295767>,  <41.782928, 32.976849, 29.181421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958553, 32.859882, 29.295767>,  <42.251259, 32.664936, 29.486343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958553, 32.859882, 29.295767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123303, 0.592850, 0.795817,
		0.670311, 0.641098, -0.373734,
		-0.731765, 0.487362, -0.476443,
		41.739025, 33.006092, 29.152834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452629, 33.379013, 29.628815>,  <42.251259, 32.664936, 29.486343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452629, 33.379013, 29.628815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066566, 33.350029, 29.528242>,  <41.834927, 33.332638, 29.467899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066566, 33.350029, 29.528242>,  <42.452629, 33.379013, 29.628815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066566, 33.350029, 29.528242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249903, 0.540123, 0.803627,
		0.077572, 0.838461, -0.539413,
		-0.965159, -0.072461, -0.251432,
		41.777020, 33.328289, 29.452812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246811, 34.090397, 29.742031>,  <42.452629, 33.379013, 29.628815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246811, 34.090397, 29.742031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913013, 33.870449, 29.727793>,  <41.712734, 33.738480, 29.719250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913013, 33.870449, 29.727793>,  <42.246811, 34.090397, 29.742031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913013, 33.870449, 29.727793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416102, 0.586506, 0.694889,
		-0.361220, 0.594691, -0.718236,
		-0.834494, -0.549867, -0.035594,
		41.662666, 33.705490, 29.717113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647655, 34.581974, 29.521425>,  <42.246811, 34.090397, 29.742031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647655, 34.581974, 29.521425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492432, 34.260635, 29.702112>,  <41.399296, 34.067833, 29.810524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.492432, 34.260635, 29.702112>,  <41.647655, 34.581974, 29.521425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492432, 34.260635, 29.702112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536323, 0.595429, 0.598182,
		-0.749510, -0.010135, -0.661915,
		-0.388061, -0.803344, 0.451716,
		41.376015, 34.019630, 29.837627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928596, 34.605412, 29.415783>,  <41.647655, 34.581974, 29.521425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928596, 34.605412, 29.415783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981415, 34.357037, 29.724848>,  <41.013107, 34.208012, 29.910286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981415, 34.357037, 29.724848>,  <40.928596, 34.605412, 29.415783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981415, 34.357037, 29.724848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608473, 0.564570, 0.557693,
		-0.782512, -0.543783, -0.303274,
		0.132044, -0.620935, 0.772660,
		41.021027, 34.170757, 29.956646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266510, 34.537083, 29.661198>,  <40.928596, 34.605412, 29.415783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266510, 34.537083, 29.661198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521141, 34.410069, 29.942322>,  <40.673920, 34.333862, 30.110996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521141, 34.410069, 29.942322>,  <40.266510, 34.537083, 29.661198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521141, 34.410069, 29.942322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540633, 0.466157, 0.700296,
		-0.549985, -0.825755, 0.125078,
		0.636579, -0.317531, 0.702810,
		40.712116, 34.314808, 30.153164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883583, 34.296303, 30.243731>,  <40.266510, 34.537083, 29.661198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883583, 34.296303, 30.243731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241074, 34.409832, 30.382692>,  <40.455570, 34.477951, 30.466068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241074, 34.409832, 30.382692>,  <39.883583, 34.296303, 30.243731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241074, 34.409832, 30.382692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448057, 0.603014, 0.660015,
		-0.022160, -0.745531, 0.666102,
		0.893731, 0.283825, 0.347403,
		40.509193, 34.494980, 30.486914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899536, 34.277180, 30.971973>,  <39.883583, 34.296303, 30.243731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899536, 34.277180, 30.971973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211231, 34.520729, 30.912560>,  <40.398247, 34.666859, 30.876911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211231, 34.520729, 30.912560>,  <39.899536, 34.277180, 30.971973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211231, 34.520729, 30.912560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448110, 0.706967, 0.547169,
		0.438168, -0.359813, 0.823737,
		0.779234, 0.608877, -0.148534,
		40.445000, 34.703392, 30.867998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004440, 34.691288, 31.574730>,  <39.899536, 34.277180, 30.971973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004440, 34.691288, 31.574730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216633, 34.903664, 31.310402>,  <40.343948, 35.031090, 31.151804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216633, 34.903664, 31.310402>,  <40.004440, 34.691288, 31.574730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216633, 34.903664, 31.310402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239418, 0.841656, 0.484039,
		0.813181, -0.098564, 0.573604,
		0.530486, 0.530942, -0.660821,
		40.375778, 35.062946, 31.112156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399948, 35.100010, 31.976858>,  <40.004440, 34.691288, 31.574730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399948, 35.100010, 31.976858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397438, 35.280918, 31.620115>,  <40.395931, 35.389462, 31.406069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397438, 35.280918, 31.620115>,  <40.399948, 35.100010, 31.976858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397438, 35.280918, 31.620115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188370, 0.875374, 0.445238,
		0.982078, 0.170795, 0.079699,
		-0.006278, 0.452271, -0.891858,
		40.395554, 35.416599, 31.352558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731277, 35.745682, 32.119572>,  <40.399948, 35.100010, 31.976858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731277, 35.745682, 32.119572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521587, 35.788273, 31.781614>,  <40.395771, 35.813828, 31.578840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521587, 35.788273, 31.781614>,  <40.731277, 35.745682, 32.119572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521587, 35.788273, 31.781614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383104, 0.856594, 0.345655,
		0.760537, 0.504884, -0.408259,
		-0.524228, 0.106478, -0.844895,
		40.364319, 35.820217, 31.528145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889442, 36.380932, 31.922163>,  <40.731277, 35.745682, 32.119572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889442, 36.380932, 31.922163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533516, 36.298267, 31.759426>,  <40.319962, 36.248669, 31.661783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533516, 36.298267, 31.759426>,  <40.889442, 36.380932, 31.922163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533516, 36.298267, 31.759426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382153, 0.824722, 0.416884,
		0.249377, 0.526425, -0.812827,
		-0.889814, -0.206663, -0.406842,
		40.266571, 36.236267, 31.637373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610989, 37.019691, 31.769650>,  <40.889442, 36.380932, 31.922163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610989, 37.019691, 31.769650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284100, 36.789227, 31.775066>,  <40.087967, 36.650948, 31.778316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284100, 36.789227, 31.775066>,  <40.610989, 37.019691, 31.769650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284100, 36.789227, 31.775066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501441, 0.722427, 0.476085,
		-0.284086, 0.382276, -0.879295,
		-0.817222, -0.576164, 0.013543,
		40.038933, 36.616379, 31.779129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111500, 37.434883, 31.408825>,  <40.610989, 37.019691, 31.769650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111500, 37.434883, 31.408825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942657, 37.159233, 31.644426>,  <39.841351, 36.993843, 31.785788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942657, 37.159233, 31.644426>,  <40.111500, 37.434883, 31.408825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942657, 37.159233, 31.644426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496047, 0.719406, 0.486203,
		-0.758790, -0.086944, -0.645507,
		-0.422109, -0.689127, 0.589006,
		39.816025, 36.952496, 31.821129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568764, 37.846619, 31.550264>,  <40.111500, 37.434883, 31.408825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568764, 37.846619, 31.550264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556637, 37.547935, 31.816048>,  <39.549362, 37.368725, 31.975517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556637, 37.547935, 31.816048>,  <39.568764, 37.846619, 31.550264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556637, 37.547935, 31.816048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447923, 0.604425, 0.658813,
		-0.893558, -0.277653, -0.352793,
		-0.030315, -0.746712, 0.664457,
		39.547543, 37.323921, 32.015385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044167, 37.967426, 31.959505>,  <39.568764, 37.846619, 31.550264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044167, 37.967426, 31.959505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205715, 37.699989, 32.209263>,  <39.302647, 37.539528, 32.359119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205715, 37.699989, 32.209263>,  <39.044167, 37.967426, 31.959505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205715, 37.699989, 32.209263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391771, 0.490374, 0.778491,
		-0.826681, -0.559032, -0.063886,
		0.403873, -0.668593, 0.624396,
		39.326878, 37.499413, 32.396580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497513, 37.932114, 32.500370>,  <39.044167, 37.967426, 31.959505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497513, 37.932114, 32.500370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850658, 37.824299, 32.654202>,  <39.062546, 37.759609, 32.746498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850658, 37.824299, 32.654202>,  <38.497513, 37.932114, 32.500370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850658, 37.824299, 32.654202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226657, 0.472658, 0.851599,
		-0.411307, -0.839015, 0.356202,
		0.882866, -0.269533, 0.384576,
		39.115517, 37.743439, 32.769573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431721, 37.775311, 33.170536>,  <38.497513, 37.932114, 32.500370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431721, 37.775311, 33.170536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825481, 37.841545, 33.146744>,  <39.061737, 37.881287, 33.132469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825481, 37.841545, 33.146744>,  <38.431721, 37.775311, 33.170536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825481, 37.841545, 33.146744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032902, 0.505334, 0.862296,
		0.172844, -0.846887, 0.502899,
		0.984399, 0.165589, -0.059480,
		39.120800, 37.891220, 33.128899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669468, 37.735847, 33.850300>,  <38.431721, 37.775311, 33.170536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669468, 37.735847, 33.850300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965691, 37.929379, 33.663757>,  <39.143425, 38.045498, 33.551830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965691, 37.929379, 33.663757>,  <38.669468, 37.735847, 33.850300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965691, 37.929379, 33.663757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118698, 0.588902, 0.799441,
		0.661429, -0.647386, 0.378685,
		0.740555, 0.483824, -0.466361,
		39.187859, 38.074524, 33.523849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229328, 37.733723, 34.320381>,  <38.669468, 37.735847, 33.850300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229328, 37.733723, 34.320381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308022, 38.032410, 34.066231>,  <39.355240, 38.211620, 33.913738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308022, 38.032410, 34.066231>,  <39.229328, 37.733723, 34.320381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308022, 38.032410, 34.066231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371344, 0.543017, 0.753150,
		0.907413, -0.384116, -0.170457,
		0.196736, 0.746717, -0.635380,
		39.367043, 38.256424, 33.875618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983368, 37.926765, 34.362408>,  <39.229328, 37.733723, 34.320381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983368, 37.926765, 34.362408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782883, 38.256111, 34.255928>,  <39.662590, 38.453716, 34.192039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782883, 38.256111, 34.255928>,  <39.983368, 37.926765, 34.362408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782883, 38.256111, 34.255928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421509, 0.500973, 0.755881,
		0.755720, 0.266654, -0.598149,
		-0.501215, 0.823360, -0.266198,
		39.632519, 38.503120, 34.176067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475334, 38.439270, 34.301582>,  <39.983368, 37.926765, 34.362408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475334, 38.439270, 34.301582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146492, 38.660698, 34.354809>,  <39.949188, 38.793552, 34.386745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146492, 38.660698, 34.354809>,  <40.475334, 38.439270, 34.301582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146492, 38.660698, 34.354809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486030, 0.560656, 0.670403,
		0.296511, 0.615814, -0.729969,
		-0.822105, 0.553568, 0.133063,
		39.899860, 38.826767, 34.394730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612011, 39.154835, 34.085495>,  <40.475334, 38.439270, 34.301582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612011, 39.154835, 34.085495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333282, 39.163765, 34.372253>,  <40.166046, 39.169125, 34.544308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333282, 39.163765, 34.372253>,  <40.612011, 39.154835, 34.085495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333282, 39.163765, 34.372253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598574, 0.568769, 0.564102,
		-0.395150, 0.822194, -0.409698,
		-0.696825, 0.022329, 0.716893,
		40.124233, 39.170464, 34.587322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802082, 39.750465, 34.406834>,  <40.612011, 39.154835, 34.085495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802082, 39.750465, 34.406834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533501, 39.564659, 34.637787>,  <40.372353, 39.453175, 34.776360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533501, 39.564659, 34.637787>,  <40.802082, 39.750465, 34.406834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533501, 39.564659, 34.637787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398815, 0.430175, 0.809874,
		-0.624574, 0.774065, -0.103589,
		-0.671457, -0.464514, 0.577385,
		40.332066, 39.425304, 34.811001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629017, 40.225281, 34.913696>,  <40.802082, 39.750465, 34.406834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629017, 40.225281, 34.913696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492207, 39.883575, 35.070282>,  <40.410118, 39.678551, 35.164234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492207, 39.883575, 35.070282>,  <40.629017, 40.225281, 34.913696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492207, 39.883575, 35.070282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376092, 0.257322, 0.890135,
		-0.861145, 0.451680, 0.233271,
		-0.342030, -0.854267, 0.391464,
		40.389599, 39.627296, 35.187721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490364, 40.395771, 35.535976>,  <40.629017, 40.225281, 34.913696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490364, 40.395771, 35.535976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501148, 39.997509, 35.571632>,  <40.507618, 39.758553, 35.593025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501148, 39.997509, 35.571632>,  <40.490364, 40.395771, 35.535976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501148, 39.997509, 35.571632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342002, 0.092979, 0.935088,
		-0.939312, 0.005273, 0.343023,
		0.026963, -0.995654, 0.089140,
		40.509235, 39.698814, 35.598373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083664, 40.196350, 36.209469>,  <40.490364, 40.395771, 35.535976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083664, 40.196350, 36.209469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333885, 39.897697, 36.118931>,  <40.484016, 39.718506, 36.064606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333885, 39.897697, 36.118931>,  <40.083664, 40.196350, 36.209469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333885, 39.897697, 36.118931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265598, -0.068997, 0.961612,
		-0.733583, -0.661655, 0.155142,
		0.625551, -0.746628, -0.226349,
		40.521549, 39.673710, 36.051025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910851, 39.638832, 36.670029>,  <40.083664, 40.196350, 36.209469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910851, 39.638832, 36.670029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275055, 39.547501, 36.532139>,  <40.493576, 39.492702, 36.449406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275055, 39.547501, 36.532139>,  <39.910851, 39.638832, 36.670029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275055, 39.547501, 36.532139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284931, -0.257704, 0.923257,
		-0.299648, -0.938857, -0.169583,
		0.910509, -0.228332, -0.344730,
		40.548206, 39.479004, 36.428719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072002, 38.974697, 36.924664>,  <39.910851, 39.638832, 36.670029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072002, 38.974697, 36.924664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421879, 39.139679, 36.822842>,  <40.631805, 39.238670, 36.761749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.421879, 39.139679, 36.822842>,  <40.072002, 38.974697, 36.924664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421879, 39.139679, 36.822842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423069, -0.393456, 0.816214,
		0.236497, -0.821628, -0.518649,
		0.874689, 0.412457, -0.254554,
		40.684284, 39.263416, 36.746475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539669, 38.569447, 37.259418>,  <40.072002, 38.974697, 36.924664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539669, 38.569447, 37.259418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757912, 38.894985, 37.179451>,  <40.888859, 39.090309, 37.131470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757912, 38.894985, 37.179451>,  <40.539669, 38.569447, 37.259418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757912, 38.894985, 37.179451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251532, 0.068525, 0.965420,
		0.799403, -0.577026, -0.167321,
		0.545607, 0.813846, -0.199920,
		40.921593, 39.139137, 37.119476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132599, 38.451527, 37.515823>,  <40.539669, 38.569447, 37.259418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132599, 38.451527, 37.515823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135292, 38.849689, 37.477619>,  <41.136909, 39.088585, 37.454697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135292, 38.849689, 37.477619>,  <41.132599, 38.451527, 37.515823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135292, 38.849689, 37.477619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288263, 0.089530, 0.953357,
		0.957528, -0.033951, -0.286336,
		0.006732, 0.995405, -0.095514,
		41.137310, 39.148312, 37.448963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751156, 38.626961, 37.911537>,  <41.132599, 38.451527, 37.515823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751156, 38.626961, 37.911537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496494, 38.933693, 37.878929>,  <41.343697, 39.117733, 37.859364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496494, 38.933693, 37.878929>,  <41.751156, 38.626961, 37.911537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496494, 38.933693, 37.878929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012178, 0.095697, 0.995336,
		0.771056, 0.634674, -0.051587,
		-0.636651, 0.766832, -0.081516,
		41.305500, 39.163742, 37.854473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958275, 39.179260, 38.452728>,  <41.751156, 38.626961, 37.911537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958275, 39.179260, 38.452728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572178, 39.235218, 38.364414>,  <41.340519, 39.268791, 38.311428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572178, 39.235218, 38.364414>,  <41.958275, 39.179260, 38.452728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572178, 39.235218, 38.364414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209699, 0.089735, 0.973640,
		0.156014, 0.986092, -0.057281,
		-0.965239, 0.139890, -0.220783,
		41.282608, 39.277184, 38.298180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595577, 39.775288, 38.872875>,  <41.958275, 39.179260, 38.452728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595577, 39.775288, 38.872875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270397, 39.571449, 38.760151>,  <41.075291, 39.449146, 38.692516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270397, 39.571449, 38.760151>,  <41.595577, 39.775288, 38.872875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270397, 39.571449, 38.760151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363826, 0.066611, 0.929082,
		-0.454688, 0.857829, -0.239558,
		-0.812951, -0.509600, -0.281813,
		41.026512, 39.418568, 38.675606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931469, 40.066128, 39.011684>,  <41.595577, 39.775288, 38.872875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931469, 40.066128, 39.011684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868675, 39.674931, 39.066647>,  <40.830997, 39.440212, 39.099625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868675, 39.674931, 39.066647>,  <40.931469, 40.066128, 39.011684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868675, 39.674931, 39.066647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537764, 0.201347, 0.818699,
		-0.828350, 0.054634, -0.557540,
		-0.156988, -0.977995, 0.137406,
		40.821579, 39.381531, 39.107868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266117, 40.040253, 39.214504>,  <40.931469, 40.066128, 39.011684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266117, 40.040253, 39.214504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451958, 39.715240, 39.355324>,  <40.563461, 39.520233, 39.439816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451958, 39.715240, 39.355324>,  <40.266117, 40.040253, 39.214504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451958, 39.715240, 39.355324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498249, 0.088788, 0.862476,
		-0.732047, -0.576115, -0.363592,
		0.464602, -0.812532, 0.352045,
		40.591339, 39.471481, 39.460938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820526, 39.964497, 39.668831>,  <40.266117, 40.040253, 39.214504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820526, 39.964497, 39.668831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099049, 39.707432, 39.796665>,  <40.266163, 39.553192, 39.873367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099049, 39.707432, 39.796665>,  <39.820526, 39.964497, 39.668831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099049, 39.707432, 39.796665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333243, 0.104891, 0.936988,
		-0.635693, -0.758932, -0.141128,
		0.696307, -0.642667, 0.319588,
		40.307941, 39.514633, 39.892540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548790, 39.438740, 40.054485>,  <39.820526, 39.964497, 39.668831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548790, 39.438740, 40.054485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916485, 39.497715, 40.200508>,  <40.137100, 39.533100, 40.288120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916485, 39.497715, 40.200508>,  <39.548790, 39.438740, 40.054485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916485, 39.497715, 40.200508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383773, 0.128637, 0.914424,
		0.087853, -0.980672, 0.174828,
		0.919239, 0.147429, 0.365054,
		40.192257, 39.541946, 40.310024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457355, 39.342136, 40.732658>,  <39.548790, 39.438740, 40.054485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457355, 39.342136, 40.732658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839855, 39.455692, 40.760906>,  <40.069355, 39.523827, 40.777855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839855, 39.455692, 40.760906>,  <39.457355, 39.342136, 40.732658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839855, 39.455692, 40.760906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118321, 0.154564, 0.980872,
		0.267549, -0.946316, 0.181393,
		0.956252, 0.283894, 0.070616,
		40.126732, 39.540859, 40.782089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723412, 38.995800, 41.229305>,  <39.457355, 39.342136, 40.732658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723412, 38.995800, 41.229305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971214, 39.308548, 41.201336>,  <40.119896, 39.496197, 41.184555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971214, 39.308548, 41.201336>,  <39.723412, 38.995800, 41.229305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971214, 39.308548, 41.201336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236193, 0.270608, 0.933265,
		0.748617, -0.561646, 0.352316,
		0.619505, 0.781873, -0.069925,
		40.157066, 39.543110, 41.180359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030464, 39.127239, 41.879284>,  <39.723412, 38.995800, 41.229305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030464, 39.127239, 41.879284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071037, 39.471405, 41.679523>,  <40.095383, 39.677902, 41.559666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071037, 39.471405, 41.679523>,  <40.030464, 39.127239, 41.879284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071037, 39.471405, 41.679523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348306, 0.500934, 0.792305,
		0.931876, 0.093576, 0.350500,
		0.101436, 0.860412, -0.499402,
		40.101467, 39.729530, 41.529701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521088, 39.706253, 42.237293>,  <40.030464, 39.127239, 41.879284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521088, 39.706253, 42.237293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258442, 39.913383, 42.017944>,  <40.100857, 40.037663, 41.886333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258442, 39.913383, 42.017944>,  <40.521088, 39.706253, 42.237293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258442, 39.913383, 42.017944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288699, 0.499140, 0.817014,
		0.696788, 0.694777, -0.178246,
		-0.656612, 0.517827, -0.548376,
		40.061459, 40.068733, 41.853432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560242, 40.366314, 42.275822>,  <40.521088, 39.706253, 42.237293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560242, 40.366314, 42.275822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173771, 40.313988, 42.186928>,  <39.941887, 40.282593, 42.133591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173771, 40.313988, 42.186928>,  <40.560242, 40.366314, 42.275822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173771, 40.313988, 42.186928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257729, 0.519185, 0.814876,
		0.008785, 0.844591, -0.535340,
		-0.966177, -0.130814, -0.222237,
		39.883919, 40.274742, 42.120258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126999, 41.078129, 42.274052>,  <40.560242, 40.366314, 42.275822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126999, 41.078129, 42.274052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885815, 40.766975, 42.344864>,  <39.741104, 40.580284, 42.387352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885815, 40.766975, 42.344864>,  <40.126999, 41.078129, 42.274052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885815, 40.766975, 42.344864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253545, 0.397251, 0.881990,
		-0.756412, 0.486916, -0.436754,
		-0.602956, -0.777884, 0.177030,
		39.704929, 40.533611, 42.397972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515491, 41.427849, 42.409370>,  <40.126999, 41.078129, 42.274052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515491, 41.427849, 42.409370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529984, 41.066742, 42.580807>,  <39.538677, 40.850079, 42.683670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529984, 41.066742, 42.580807>,  <39.515491, 41.427849, 42.409370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529984, 41.066742, 42.580807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101294, 0.423347, 0.900287,
		-0.994197, -0.076030, -0.076108,
		0.036229, -0.902772, 0.428591,
		39.540852, 40.795910, 42.709385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841404, 41.560898, 42.805344>,  <39.515491, 41.427849, 42.409370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841404, 41.560898, 42.805344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008617, 41.229008, 42.953293>,  <39.108944, 41.029873, 43.042065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008617, 41.229008, 42.953293>,  <38.841404, 41.560898, 42.805344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008617, 41.229008, 42.953293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329164, 0.241143, 0.912963,
		-0.846699, -0.503398, -0.172310,
		0.418033, -0.829723, 0.369876,
		39.134026, 40.980091, 43.064255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360638, 41.233418, 43.258419>,  <38.841404, 41.560898, 42.805344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360638, 41.233418, 43.258419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720436, 41.110744, 43.382900>,  <38.936314, 41.037140, 43.457588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720436, 41.110744, 43.382900>,  <38.360638, 41.233418, 43.258419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720436, 41.110744, 43.382900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288407, 0.118285, 0.950174,
		-0.328217, -0.944432, 0.017946,
		0.899497, -0.306688, 0.311204,
		38.990284, 41.018738, 43.476261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251896, 40.761383, 43.816010>,  <38.360638, 41.233418, 43.258419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251896, 40.761383, 43.816010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620003, 40.915928, 43.840790>,  <38.840866, 41.008656, 43.855659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620003, 40.915928, 43.840790>,  <38.251896, 40.761383, 43.816010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620003, 40.915928, 43.840790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081341, 0.034015, 0.996106,
		0.382754, -0.921718, 0.062730,
		0.920263, 0.386366, 0.061954,
		38.896080, 41.031837, 43.859375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529945, 40.433811, 44.352985>,  <38.251896, 40.761383, 43.816010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529945, 40.433811, 44.352985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728664, 40.780209, 44.330193>,  <38.847897, 40.988049, 44.316517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728664, 40.780209, 44.330193>,  <38.529945, 40.433811, 44.352985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728664, 40.780209, 44.330193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016703, 0.056105, 0.998285,
		0.867707, -0.496895, 0.013408,
		0.496795, 0.865995, -0.056983,
		38.877705, 41.040009, 44.313099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137184, 40.496326, 44.846046>,  <38.529945, 40.433811, 44.352985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137184, 40.496326, 44.846046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999001, 40.866489, 44.783726>,  <38.916092, 41.088589, 44.746334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999001, 40.866489, 44.783726>,  <39.137184, 40.496326, 44.846046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999001, 40.866489, 44.783726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128131, 0.117956, 0.984717,
		0.929646, 0.360140, 0.077825,
		-0.345456, 0.925411, -0.155803,
		38.895363, 41.144112, 44.736984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283596, 40.531334, 45.518517>,  <39.137184, 40.496326, 44.846046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283596, 40.531334, 45.518517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175186, 40.880360, 45.355946>,  <39.110138, 41.089775, 45.258404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175186, 40.880360, 45.355946>,  <39.283596, 40.531334, 45.518517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175186, 40.880360, 45.355946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026220, 0.428765, 0.903035,
		0.962214, 0.234092, -0.139086,
		-0.271029, 0.872560, -0.406426,
		39.093876, 41.142128, 45.234016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757961, 41.014351, 45.811008>,  <39.283596, 40.531334, 45.518517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757961, 41.014351, 45.811008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456635, 41.245602, 45.685616>,  <39.275837, 41.384354, 45.610378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456635, 41.245602, 45.685616>,  <39.757961, 41.014351, 45.811008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456635, 41.245602, 45.685616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076912, 0.395953, 0.915044,
		0.653141, 0.713432, -0.253814,
		-0.753320, 0.578132, -0.313485,
		39.230637, 41.419041, 45.591572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994579, 41.780388, 45.885166>,  <39.757961, 41.014351, 45.811008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994579, 41.780388, 45.885166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595673, 41.755478, 45.869308>,  <39.356327, 41.740532, 45.859795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595673, 41.755478, 45.869308>,  <39.994579, 41.780388, 45.885166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595673, 41.755478, 45.869308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061275, 0.398744, 0.915013,
		-0.041176, 0.914945, -0.401472,
		-0.997271, -0.062276, -0.039645,
		39.296490, 41.736794, 45.857414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704296, 42.398575, 46.046310>,  <39.994579, 41.780388, 45.885166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704296, 42.398575, 46.046310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477531, 42.085361, 46.148663>,  <39.341473, 41.897434, 46.210075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477531, 42.085361, 46.148663>,  <39.704296, 42.398575, 46.046310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477531, 42.085361, 46.148663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032411, 0.331578, 0.942871,
		-0.823143, 0.526228, -0.213353,
		-0.566908, -0.783033, 0.255880,
		39.307461, 41.850452, 46.225426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146629, 42.639103, 46.408981>,  <39.704296, 42.398575, 46.046310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146629, 42.639103, 46.408981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142281, 42.248253, 46.493938>,  <39.139671, 42.013744, 46.544914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142281, 42.248253, 46.493938>,  <39.146629, 42.639103, 46.408981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142281, 42.248253, 46.493938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193748, 0.210437, 0.958216,
		-0.980991, -0.030737, -0.191603,
		-0.010868, -0.977124, 0.212392,
		39.139019, 41.955116, 46.557655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519978, 42.507931, 46.790047>,  <39.146629, 42.639103, 46.408981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519978, 42.507931, 46.790047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797657, 42.248592, 46.915100>,  <38.964264, 42.092991, 46.990131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797657, 42.248592, 46.915100>,  <38.519978, 42.507931, 46.790047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797657, 42.248592, 46.915100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368146, 0.053409, 0.928233,
		-0.618510, -0.759473, -0.201608,
		0.694200, -0.648343, 0.312631,
		39.005917, 42.054089, 47.008888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191620, 41.965282, 46.947918>,  <38.519978, 42.507931, 46.790047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191620, 41.965282, 46.947918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520512, 42.011959, 47.170746>,  <38.717846, 42.039967, 47.304443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520512, 42.011959, 47.170746>,  <38.191620, 41.965282, 46.947918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520512, 42.011959, 47.170746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563272, 0.026436, 0.825848,
		0.081649, -0.992815, 0.087469,
		0.822227, 0.116699, 0.557067,
		38.767181, 42.046967, 47.337868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413280, 41.403763, 47.385124>,  <38.191620, 41.965282, 46.947918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413280, 41.403763, 47.385124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518169, 41.745007, 47.565544>,  <38.581100, 41.949753, 47.673798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518169, 41.745007, 47.565544>,  <38.413280, 41.403763, 47.385124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518169, 41.745007, 47.565544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677646, -0.169994, 0.715470,
		0.687050, -0.493262, 0.533531,
		0.262218, 0.853109, 0.451052,
		38.596836, 42.000938, 47.700859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640556, 41.296764, 46.725494>,  <38.413280, 41.403763, 47.385124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640556, 41.296764, 46.725494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699215, 41.686886, 46.659439>,  <38.734409, 41.920959, 46.619804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699215, 41.686886, 46.659439>,  <38.640556, 41.296764, 46.725494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699215, 41.686886, 46.659439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050748, -0.174141, -0.983412,
		-0.987886, 0.135838, -0.075032,
		0.146651, 0.975307, -0.165138,
		38.743210, 41.979477, 46.609898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135159, 41.455383, 46.225521>,  <38.640556, 41.296764, 46.725494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135159, 41.455383, 46.225521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467449, 41.677578, 46.210918>,  <38.666824, 41.810894, 46.202156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467449, 41.677578, 46.210918>,  <38.135159, 41.455383, 46.225521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467449, 41.677578, 46.210918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170498, -0.316308, -0.933209,
		-0.529929, 0.769017, -0.357474,
		0.830726, 0.555483, -0.036505,
		38.716667, 41.844223, 46.199966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039543, 41.776848, 45.663651>,  <38.135159, 41.455383, 46.225521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039543, 41.776848, 45.663651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427338, 41.770760, 45.761517>,  <38.660015, 41.767105, 45.820236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427338, 41.770760, 45.761517>,  <38.039543, 41.776848, 45.663651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427338, 41.770760, 45.761517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231586, -0.270337, -0.934498,
		0.080369, 0.962645, -0.258563,
		0.969489, -0.015225, 0.244662,
		38.718185, 41.766193, 45.834915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248142, 42.171410, 45.197243>,  <38.039543, 41.776848, 45.663651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248142, 42.171410, 45.197243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554932, 41.939480, 45.307190>,  <38.739006, 41.800320, 45.373158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554932, 41.939480, 45.307190>,  <38.248142, 42.171410, 45.197243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554932, 41.939480, 45.307190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158036, -0.244480, -0.956689,
		0.621915, 0.777193, -0.095875,
		0.766972, -0.579828, 0.274870,
		38.785023, 41.765530, 45.389652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828320, 42.339561, 44.753933>,  <38.248142, 42.171410, 45.197243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828320, 42.339561, 44.753933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867298, 41.958717, 44.869858>,  <38.890686, 41.730209, 44.939415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867298, 41.958717, 44.869858>,  <38.828320, 42.339561, 44.753933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867298, 41.958717, 44.869858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280233, -0.253171, -0.925945,
		0.954973, 0.171444, 0.242142,
		0.097445, -0.952109, 0.289816,
		38.896530, 41.673084, 44.956802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589092, 42.205849, 44.748867>,  <38.828320, 42.339561, 44.753933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589092, 42.205849, 44.748867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340477, 41.897926, 44.690773>,  <39.191307, 41.713173, 44.655918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340477, 41.897926, 44.690773>,  <39.589092, 42.205849, 44.748867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340477, 41.897926, 44.690773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443592, -0.193036, -0.875193,
		0.645695, -0.608386, 0.461459,
		-0.621533, -0.769807, -0.145233,
		39.154018, 41.666985, 44.647202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665447, 42.059860, 44.072865>,  <39.589092, 42.205849, 44.748867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665447, 42.059860, 44.072865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437759, 41.745049, 44.168011>,  <39.301147, 41.556160, 44.225098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437759, 41.745049, 44.168011>,  <39.665447, 42.059860, 44.072865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437759, 41.745049, 44.168011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109252, -0.359145, -0.926865,
		0.814898, -0.501598, 0.290415,
		-0.569215, -0.787029, 0.237866,
		39.266994, 41.508942, 44.239372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091301, 41.464573, 43.906677>,  <39.665447, 42.059860, 44.072865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091301, 41.464573, 43.906677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713013, 41.335197, 43.894024>,  <39.486042, 41.257572, 43.886433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713013, 41.335197, 43.894024>,  <40.091301, 41.464573, 43.906677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713013, 41.335197, 43.894024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140807, -0.320082, -0.936867,
		0.292898, -0.890467, 0.348251,
		-0.945719, -0.323443, -0.031633,
		39.429298, 41.238163, 43.884533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224426, 40.845116, 43.556530>,  <40.091301, 41.464573, 43.906677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224426, 40.845116, 43.556530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824673, 40.858116, 43.551228>,  <39.584820, 40.865917, 43.548046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824673, 40.858116, 43.551228>,  <40.224426, 40.845116, 43.556530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824673, 40.858116, 43.551228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005314, -0.513391, -0.858139,
		-0.034691, -0.857539, 0.513247,
		-0.999384, 0.032497, -0.013253,
		39.524857, 40.867867, 43.547253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929718, 40.129707, 43.484711>,  <40.224426, 40.845116, 43.556530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929718, 40.129707, 43.484711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643105, 40.382698, 43.367035>,  <39.471134, 40.534492, 43.296429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643105, 40.382698, 43.367035>,  <39.929718, 40.129707, 43.484711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643105, 40.382698, 43.367035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114726, -0.522854, -0.844667,
		-0.688052, -0.571483, 0.447205,
		-0.716535, 0.632480, -0.294187,
		39.428143, 40.572441, 43.278778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296867, 39.733604, 43.216362>,  <39.929718, 40.129707, 43.484711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296867, 39.733604, 43.216362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292721, 40.097607, 43.050575>,  <39.290234, 40.316010, 42.951103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292721, 40.097607, 43.050575>,  <39.296867, 39.733604, 43.216362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292721, 40.097607, 43.050575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051807, -0.413442, -0.909055,
		-0.998603, -0.030896, -0.042859,
		-0.010366, 0.910006, -0.414466,
		39.289612, 40.370609, 42.926235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717060, 39.806107, 42.755535>,  <39.296867, 39.733604, 43.216362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717060, 39.806107, 42.755535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001072, 40.050743, 42.615932>,  <39.171478, 40.197525, 42.532169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001072, 40.050743, 42.615932>,  <38.717060, 39.806107, 42.755535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001072, 40.050743, 42.615932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065930, -0.551194, -0.831768,
		-0.701077, 0.567571, -0.431687,
		0.710031, 0.611595, -0.349010,
		39.214081, 40.234222, 42.511230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631840, 39.916073, 41.973972>,  <38.717060, 39.806107, 42.755535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631840, 39.916073, 41.973972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010040, 40.043873, 41.999111>,  <39.236961, 40.120552, 42.014194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.010040, 40.043873, 41.999111>,  <38.631840, 39.916073, 41.973972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010040, 40.043873, 41.999111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161009, -0.290952, -0.943092,
		-0.283030, 0.901814, -0.326537,
		0.945500, 0.319499, 0.062852,
		39.293690, 40.139721, 42.017967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742043, 40.533859, 41.467266>,  <38.631840, 39.916073, 41.973972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742043, 40.533859, 41.467266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057854, 40.297211, 41.532532>,  <39.247341, 40.155220, 41.571690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057854, 40.297211, 41.532532>,  <38.742043, 40.533859, 41.467266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057854, 40.297211, 41.532532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115329, -0.118097, -0.986282,
		0.602777, 0.797517, -0.025010,
		0.789531, -0.591624, 0.163163,
		39.294712, 40.119724, 41.581482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348377, 40.745071, 41.067993>,  <38.742043, 40.533859, 41.467266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348377, 40.745071, 41.067993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595463, 40.548347, 41.313450>,  <39.743713, 40.430313, 41.460724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595463, 40.548347, 41.313450>,  <39.348377, 40.745071, 41.067993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595463, 40.548347, 41.313450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438449, -0.432393, -0.787908,
		0.652834, 0.755751, -0.051462,
		0.617714, -0.491810, 0.613639,
		39.780777, 40.400806, 41.497543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064754, 40.831818, 40.854813>,  <39.348377, 40.745071, 41.067993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064754, 40.831818, 40.854813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084843, 40.486610, 41.055882>,  <40.096897, 40.279488, 41.176521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084843, 40.486610, 41.055882>,  <40.064754, 40.831818, 40.854813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084843, 40.486610, 41.055882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475981, -0.421792, -0.771708,
		0.878021, 0.278018, 0.389597,
		0.050220, -0.863016, 0.502674,
		40.099907, 40.227707, 41.206684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766613, 40.672474, 40.827885>,  <40.064754, 40.831818, 40.854813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766613, 40.672474, 40.827885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544830, 40.345619, 40.890965>,  <40.411762, 40.149506, 40.928814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544830, 40.345619, 40.890965>,  <40.766613, 40.672474, 40.827885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544830, 40.345619, 40.890965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445517, -0.451498, -0.773088,
		0.702919, -0.358383, 0.614383,
		-0.554454, -0.817136, 0.157701,
		40.378494, 40.100479, 40.938274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214336, 40.136036, 40.698845>,  <40.766613, 40.672474, 40.827885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214336, 40.136036, 40.698845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867477, 39.941212, 40.657223>,  <40.659363, 39.824318, 40.632248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867477, 39.941212, 40.657223>,  <41.214336, 40.136036, 40.698845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867477, 39.941212, 40.657223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451890, -0.681562, -0.575559,
		0.209412, -0.546116, 0.811113,
		-0.867146, -0.487063, -0.104057,
		40.607334, 39.795094, 40.626007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258518, 39.424778, 40.760353>,  <41.214336, 40.136036, 40.698845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258518, 39.424778, 40.760353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946037, 39.476002, 40.515953>,  <40.758549, 39.506737, 40.369312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946037, 39.476002, 40.515953>,  <41.258518, 39.424778, 40.760353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946037, 39.476002, 40.515953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416666, -0.621874, -0.663070,
		-0.464876, -0.772576, 0.432454,
		-0.781204, 0.128057, -0.611001,
		40.711678, 39.514420, 40.332653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352291, 38.872211, 40.321632>,  <41.258518, 39.424778, 40.760353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352291, 38.872211, 40.321632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022354, 39.043060, 40.173473>,  <40.824390, 39.145569, 40.084576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022354, 39.043060, 40.173473>,  <41.352291, 38.872211, 40.321632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022354, 39.043060, 40.173473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171607, -0.435100, -0.883878,
		-0.538685, -0.792626, 0.285593,
		-0.824845, 0.427122, -0.370402,
		40.774899, 39.171196, 40.062351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110928, 38.396515, 39.995316>,  <41.352291, 38.872211, 40.321632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110928, 38.396515, 39.995316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964573, 38.731972, 39.833916>,  <40.876759, 38.933247, 39.737076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964573, 38.731972, 39.833916>,  <41.110928, 38.396515, 39.995316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964573, 38.731972, 39.833916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147410, -0.375863, -0.914876,
		-0.918911, -0.394221, 0.013900,
		-0.365888, 0.838640, -0.403497,
		40.854805, 38.983562, 39.712868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686798, 38.193596, 39.467548>,  <41.110928, 38.396515, 39.995316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686798, 38.193596, 39.467548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748577, 38.567760, 39.340332>,  <40.785645, 38.792259, 39.264004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748577, 38.567760, 39.340332>,  <40.686798, 38.193596, 39.467548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748577, 38.567760, 39.340332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121486, -0.337440, -0.933475,
		-0.980503, 0.105537, -0.165757,
		0.154450, 0.935412, -0.318040,
		40.794910, 38.848385, 39.244919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287769, 38.582924, 39.155136>,  <40.686798, 38.193596, 39.467548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287769, 38.582924, 39.155136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586525, 38.324203, 39.093430>,  <41.765778, 38.168972, 39.056404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586525, 38.324203, 39.093430>,  <41.287769, 38.582924, 39.155136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586525, 38.324203, 39.093430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442521, 0.656659, -0.610716,
		0.496317, 0.387870, 0.776676,
		0.746890, -0.646804, -0.154271,
		41.810593, 38.130161, 39.047150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901024, 38.841957, 39.574734>,  <41.287769, 38.582924, 39.155136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901024, 38.841957, 39.574734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865971, 38.635838, 39.233727>,  <41.844940, 38.512165, 39.029121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865971, 38.635838, 39.233727>,  <41.901024, 38.841957, 39.574734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865971, 38.635838, 39.233727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225622, 0.823305, -0.520829,
		0.970265, -0.237989, 0.044114,
		-0.087633, -0.515296, -0.852520,
		41.839680, 38.481247, 38.977970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550789, 38.917091, 39.091515>,  <41.901024, 38.841957, 39.574734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550789, 38.917091, 39.091515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230083, 38.807224, 38.879200>,  <42.037659, 38.741306, 38.751812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230083, 38.807224, 38.879200>,  <42.550789, 38.917091, 39.091515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230083, 38.807224, 38.879200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212978, 0.698519, -0.683163,
		0.558405, -0.660782, -0.501549,
		-0.801763, -0.274663, -0.530788,
		41.989555, 38.724827, 38.719963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699833, 38.142403, 38.770359>,  <42.550789, 38.917091, 39.091515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699833, 38.142403, 38.770359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475780, 38.287189, 38.472305>,  <42.341347, 38.374062, 38.293472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475780, 38.287189, 38.472305>,  <42.699833, 38.142403, 38.770359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475780, 38.287189, 38.472305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173136, -0.930776, -0.321994,
		-0.810106, -0.051350, 0.584030,
		-0.560136, 0.361966, -0.745137,
		42.307739, 38.395779, 38.248764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121712, 37.415047, 38.864223>,  <42.699833, 38.142403, 38.770359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121712, 37.415047, 38.864223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071735, 37.021690, 38.811565>,  <43.041748, 36.785675, 38.779972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071735, 37.021690, 38.811565>,  <43.121712, 37.415047, 38.864223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071735, 37.021690, 38.811565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407606, -0.070093, 0.910464,
		-0.904570, 0.167414, -0.392078,
		-0.124943, -0.983392, -0.131643,
		43.034252, 36.726673, 38.772072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807568, 37.002495, 38.870579>,  <43.121712, 37.415047, 38.864223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807568, 37.002495, 38.870579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814167, 36.805218, 38.522675>,  <43.818127, 36.686852, 38.313931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814167, 36.805218, 38.522675>,  <43.807568, 37.002495, 38.870579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814167, 36.805218, 38.522675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560354, 0.724999, -0.400474,
		0.828089, -0.480770, 0.288322,
		0.016497, -0.493191, -0.869765,
		43.819115, 36.657261, 38.261745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461151, 36.914734, 38.782272>,  <43.807568, 37.002495, 38.870579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461151, 36.914734, 38.782272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271839, 36.930447, 38.430260>,  <44.158253, 36.939873, 38.219051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271839, 36.930447, 38.430260>,  <44.461151, 36.914734, 38.782272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271839, 36.930447, 38.430260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728745, 0.578714, -0.366089,
		0.494909, -0.814584, -0.302518,
		-0.473281, 0.039278, -0.880035,
		44.129856, 36.942230, 38.166248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827023, 36.657696, 38.155365>,  <44.461151, 36.914734, 38.782272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827023, 36.657696, 38.155365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565742, 36.937225, 38.038765>,  <44.408974, 37.104942, 37.968803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565742, 36.937225, 38.038765>,  <44.827023, 36.657696, 38.155365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565742, 36.937225, 38.038765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718439, 0.450424, -0.530061,
		-0.239123, -0.555659, -0.796281,
		-0.653197, 0.698828, -0.291501,
		44.369785, 37.146873, 37.951313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614986, 36.797512, 37.378201>,  <44.827023, 36.657696, 38.155365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614986, 36.797512, 37.378201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587852, 37.130737, 37.597801>,  <44.571571, 37.330673, 37.729561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587852, 37.130737, 37.597801>,  <44.614986, 36.797512, 37.378201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587852, 37.130737, 37.597801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697706, 0.432951, -0.570754,
		-0.713165, 0.344321, -0.610605,
		-0.067839, 0.833065, 0.549000,
		44.567501, 37.380657, 37.762501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733021, 37.383385, 36.884308>,  <44.614986, 36.797512, 37.378201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733021, 37.383385, 36.884308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824947, 37.504379, 37.254322>,  <44.880104, 37.576977, 37.476330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824947, 37.504379, 37.254322>,  <44.733021, 37.383385, 36.884308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824947, 37.504379, 37.254322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769216, 0.525831, -0.363055,
		-0.596230, 0.794986, -0.111832,
		0.229819, 0.302488, 0.925032,
		44.893894, 37.595127, 37.531830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.224979, 37.737564, 36.712482>,  <44.733021, 37.383385, 36.884308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.224979, 37.737564, 36.712482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223541, 37.762840, 37.111679>,  <45.222679, 37.778008, 37.351196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223541, 37.762840, 37.111679>,  <45.224979, 37.737564, 36.712482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223541, 37.762840, 37.111679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775571, 0.630168, -0.037113,
		-0.631250, 0.773883, -0.051274,
		-0.003590, 0.063194, 0.997995,
		45.222466, 37.781799, 37.411079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593441, 37.267860, 36.531876>,  <45.224979, 37.737564, 36.712482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593441, 37.267860, 36.531876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368488, 36.941536, 36.477940>,  <45.233517, 36.745743, 36.445576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368488, 36.941536, 36.477940>,  <45.593441, 37.267860, 36.531876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.368488, 36.941536, 36.477940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107885, 0.234076, -0.966214,
		0.819809, -0.528833, -0.219654,
		-0.562382, -0.815809, -0.134845,
		45.199772, 36.696793, 36.437485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.846767, 36.925865, 35.966118>,  <45.593441, 37.267860, 36.531876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.846767, 36.925865, 35.966118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.461227, 36.837795, 36.026142>,  <45.229904, 36.784954, 36.062157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.461227, 36.837795, 36.026142>,  <45.846767, 36.925865, 35.966118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461227, 36.837795, 36.026142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214247, 0.305580, -0.927749,
		0.158414, -0.926360, -0.341705,
		-0.963848, -0.220178, 0.150061,
		45.172073, 36.771740, 36.071159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748371, 36.312183, 35.538845>,  <45.846767, 36.925865, 35.966118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748371, 36.312183, 35.538845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435688, 36.559074, 35.574562>,  <45.248077, 36.707207, 35.595993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.435688, 36.559074, 35.574562>,  <45.748371, 36.312183, 35.538845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.435688, 36.559074, 35.574562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041621, 0.091222, -0.994961,
		-0.622259, -0.781481, -0.045619,
		-0.781704, 0.617224, 0.089290,
		45.201176, 36.744240, 35.601349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.977299, 36.005878, 36.165970>,  <45.748371, 36.312183, 35.538845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.977299, 36.005878, 36.165970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919300, 35.624100, 36.270290>,  <45.884502, 35.395035, 36.332882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919300, 35.624100, 36.270290>,  <45.977299, 36.005878, 36.165970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919300, 35.624100, 36.270290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980482, -0.173977, -0.091587,
		0.132788, 0.242430, 0.961039,
		-0.144995, -0.954442, 0.260800,
		45.875801, 35.337769, 36.348530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.389858, 35.750584, 36.790752>,  <45.977299, 36.005878, 36.165970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.389858, 35.750584, 36.790752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314236, 35.485035, 36.501328>,  <46.268864, 35.325706, 36.327675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314236, 35.485035, 36.501328>,  <46.389858, 35.750584, 36.790752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314236, 35.485035, 36.501328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981516, -0.105446, -0.159711,
		0.029731, -0.740378, 0.671533,
		-0.189057, -0.663869, -0.723557,
		46.257519, 35.285873, 36.284260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.737614, 35.147923, 36.987221>,  <46.389858, 35.750584, 36.790752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.737614, 35.147923, 36.987221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.671398, 35.147839, 36.592739>,  <46.631668, 35.147789, 36.356049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.671398, 35.147839, 36.592739>,  <46.737614, 35.147923, 36.987221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.671398, 35.147839, 36.592739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963844, -0.211766, -0.161742,
		-0.208810, -0.977320, 0.035259,
		-0.165540, -0.000211, -0.986203,
		46.621735, 35.147774, 36.296879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.801769, 34.440369, 36.641449>,  <46.737614, 35.147923, 36.987221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.801769, 34.440369, 36.641449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.904053, 34.781139, 36.458656>,  <46.965424, 34.985603, 36.348980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.904053, 34.781139, 36.458656>,  <46.801769, 34.440369, 36.641449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.904053, 34.781139, 36.458656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955478, -0.294694, -0.014731,
		-0.147218, -0.432866, -0.889356,
		0.255711, 0.851929, -0.456978,
		46.980766, 35.036716, 36.321564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.344429, 34.254311, 36.160328>,  <46.801769, 34.440369, 36.641449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.344429, 34.254311, 36.160328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451538, 34.638988, 36.183784>,  <47.515804, 34.869797, 36.197857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451538, 34.638988, 36.183784>,  <47.344429, 34.254311, 36.160328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.451538, 34.638988, 36.183784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955600, -0.257322, -0.143574,
		-0.122984, 0.094483, -0.987900,
		0.267774, 0.961695, 0.058641,
		47.531872, 34.927498, 36.201378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.643005, 34.612175, 35.531021>,  <47.344429, 34.254311, 36.160328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.643005, 34.612175, 35.531021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785152, 34.740078, 35.882355>,  <47.870441, 34.816822, 36.093155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785152, 34.740078, 35.882355>,  <47.643005, 34.612175, 35.531021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.785152, 34.740078, 35.882355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826771, -0.545910, -0.135764,
		0.436078, 0.774425, -0.458369,
		0.355367, 0.319762, 0.878331,
		47.891762, 34.836006, 36.145855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.468624, 34.740891, 34.800037>,  <47.643005, 34.612175, 35.531021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.468624, 34.740891, 34.800037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720776, 34.901604, 35.065727>,  <47.872066, 34.998032, 35.225140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720776, 34.901604, 35.065727>,  <47.468624, 34.740891, 34.800037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.720776, 34.901604, 35.065727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383147, -0.583126, 0.716354,
		0.675144, -0.706070, -0.213648,
		0.630380, 0.401783, 0.664223,
		47.909889, 35.022141, 35.264996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.601398, 31.178520, 32.703510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256775, 31.286837, 32.531750>,  <37.049999, 31.351828, 32.428696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256775, 31.286837, 32.531750>,  <37.601398, 31.178520, 32.703510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256775, 31.286837, 32.531750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254249, 0.501948, 0.826684,
		0.439395, 0.821413, -0.363610,
		-0.861562, 0.270793, -0.429397,
		36.998306, 31.368074, 32.402931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496178, 31.809786, 32.903790>,  <37.601398, 31.178520, 32.703510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496178, 31.809786, 32.903790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.125931, 31.690941, 32.810013>,  <36.903782, 31.619635, 32.753746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.125931, 31.690941, 32.810013>,  <37.496178, 31.809786, 32.903790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125931, 31.690941, 32.810013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373695, 0.619399, 0.690432,
		-0.059920, 0.726684, -0.684353,
		-0.925614, -0.297110, -0.234443,
		36.848248, 31.601809, 32.739681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174984, 32.420509, 32.857128>,  <37.496178, 31.809786, 32.903790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174984, 32.420509, 32.857128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863609, 32.181282, 32.933403>,  <36.676785, 32.037746, 32.979168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863609, 32.181282, 32.933403>,  <37.174984, 32.420509, 32.857128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863609, 32.181282, 32.933403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423495, 0.724579, 0.543725,
		-0.463352, 0.342498, -0.817313,
		-0.778433, -0.598064, 0.190689,
		36.630081, 32.001862, 32.990608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587154, 32.851746, 32.810242>,  <37.174984, 32.420509, 32.857128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587154, 32.851746, 32.810242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448536, 32.531303, 33.005436>,  <36.365364, 32.339039, 33.122555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448536, 32.531303, 33.005436>,  <36.587154, 32.851746, 32.810242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448536, 32.531303, 33.005436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368774, 0.594690, 0.714387,
		-0.862503, 0.067610, -0.501515,
		-0.346546, -0.801107, 0.487990,
		36.344574, 32.290970, 33.151833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780544, 32.973782, 32.969246>,  <36.587154, 32.851746, 32.810242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780544, 32.973782, 32.969246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933815, 32.714088, 33.232052>,  <36.025780, 32.558273, 33.389736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933815, 32.714088, 33.232052>,  <35.780544, 32.973782, 32.969246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933815, 32.714088, 33.232052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083298, 0.684125, 0.724592,
		-0.919909, -0.332379, 0.208065,
		0.383182, -0.649228, 0.657020,
		36.048771, 32.519321, 33.429157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202400, 32.882111, 33.494057>,  <35.780544, 32.973782, 32.969246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202400, 32.882111, 33.494057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547668, 32.782356, 33.669662>,  <35.754829, 32.722504, 33.775028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547668, 32.782356, 33.669662>,  <35.202400, 32.882111, 33.494057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547668, 32.782356, 33.669662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258226, 0.529138, 0.808290,
		-0.433875, -0.811061, 0.392341,
		0.863175, -0.249384, 0.439017,
		35.806622, 32.707542, 33.801369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031075, 32.743313, 34.163761>,  <35.202400, 32.882111, 33.494057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031075, 32.743313, 34.163761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421913, 32.828266, 34.169151>,  <35.656414, 32.879238, 34.172386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421913, 32.828266, 34.169151>,  <35.031075, 32.743313, 34.163761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421913, 32.828266, 34.169151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144838, 0.617290, 0.773289,
		0.155912, -0.757528, 0.633911,
		0.977094, 0.212379, 0.013476,
		35.715042, 32.891979, 34.173195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074352, 33.155003, 34.779839>,  <35.031075, 32.743313, 34.163761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074352, 33.155003, 34.779839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.447800, 33.209518, 34.647305>,  <35.671867, 33.242229, 34.567783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.447800, 33.209518, 34.647305>,  <35.074352, 33.155003, 34.779839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447800, 33.209518, 34.647305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138288, 0.716064, 0.684199,
		0.330511, -0.684599, 0.649681,
		0.933616, 0.136293, -0.331339,
		35.727886, 33.250404, 34.547901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444138, 33.093128, 35.364769>,  <35.074352, 33.155003, 34.779839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444138, 33.093128, 35.364769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.670673, 33.296413, 35.105236>,  <35.806595, 33.418385, 34.949516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.670673, 33.296413, 35.105236>,  <35.444138, 33.093128, 35.364769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670673, 33.296413, 35.105236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239181, 0.652025, 0.719483,
		0.788706, -0.562657, 0.247710,
		0.566335, 0.508213, -0.648833,
		35.840572, 33.448875, 34.910587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064480, 33.330509, 35.675533>,  <35.444138, 33.093128, 35.364769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064480, 33.330509, 35.675533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.034451, 33.581936, 35.365887>,  <36.016434, 33.732792, 35.180099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.034451, 33.581936, 35.365887>,  <36.064480, 33.330509, 35.675533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034451, 33.581936, 35.365887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353690, 0.742623, 0.568695,
		0.932345, -0.231106, -0.278069,
		-0.075072, 0.628571, -0.774121,
		36.011929, 33.770508, 35.133652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634315, 33.737774, 35.635399>,  <36.064480, 33.330509, 35.675533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634315, 33.737774, 35.635399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.377792, 33.979019, 35.445667>,  <36.223881, 34.123768, 35.331829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.377792, 33.979019, 35.445667>,  <36.634315, 33.737774, 35.635399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377792, 33.979019, 35.445667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400871, 0.790467, 0.463102,
		0.654242, 0.106845, -0.748700,
		-0.641303, 0.603113, -0.474325,
		36.185402, 34.159954, 35.303371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046886, 34.259430, 35.487419>,  <36.634315, 33.737774, 35.635399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046886, 34.259430, 35.487419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676987, 34.405029, 35.442993>,  <36.455048, 34.492390, 35.416336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676987, 34.405029, 35.442993>,  <37.046886, 34.259430, 35.487419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676987, 34.405029, 35.442993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265111, 0.825537, 0.498201,
		0.273032, 0.431269, -0.859919,
		-0.924754, 0.363999, -0.111064,
		36.399559, 34.514229, 35.409676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143871, 34.932045, 35.341503>,  <37.046886, 34.259430, 35.487419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143871, 34.932045, 35.341503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758492, 34.936188, 35.448578>,  <36.527264, 34.938675, 35.512821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.758492, 34.936188, 35.448578>,  <37.143871, 34.932045, 35.341503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758492, 34.936188, 35.448578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142221, 0.866575, 0.478353,
		-0.227014, 0.498939, -0.836375,
		-0.963451, 0.010357, 0.267685,
		36.469456, 34.939297, 35.528885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989643, 35.661118, 35.266758>,  <37.143871, 34.932045, 35.341503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989643, 35.661118, 35.266758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703388, 35.491802, 35.488995>,  <36.531635, 35.390213, 35.622337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703388, 35.491802, 35.488995>,  <36.989643, 35.661118, 35.266758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703388, 35.491802, 35.488995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005306, 0.792125, 0.610336,
		-0.698450, 0.439728, -0.564630,
		-0.715639, -0.423293, 0.555593,
		36.488697, 35.364815, 35.655674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375385, 36.087612, 35.268440>,  <36.989643, 35.661118, 35.266758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375385, 36.087612, 35.268440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.393894, 35.865360, 35.600494>,  <36.404999, 35.732010, 35.799728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.393894, 35.865360, 35.600494>,  <36.375385, 36.087612, 35.268440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393894, 35.865360, 35.600494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165001, 0.815363, 0.554939,
		-0.985207, -0.162653, -0.053949,
		0.046274, -0.555632, 0.830140,
		36.407776, 35.698669, 35.849537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843235, 36.396629, 35.680462>,  <36.375385, 36.087612, 35.268440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843235, 36.396629, 35.680462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.067623, 36.196960, 35.944626>,  <36.202255, 36.077160, 36.103123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.067623, 36.196960, 35.944626>,  <35.843235, 36.396629, 35.680462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067623, 36.196960, 35.944626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163169, 0.715432, 0.679362,
		-0.811595, -0.488861, 0.319888,
		0.560972, -0.499171, 0.660408,
		36.235916, 36.047211, 36.142750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578377, 36.449825, 36.407940>,  <35.843235, 36.396629, 35.680462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578377, 36.449825, 36.407940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952839, 36.337975, 36.493198>,  <36.177517, 36.270866, 36.544353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952839, 36.337975, 36.493198>,  <35.578377, 36.449825, 36.407940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952839, 36.337975, 36.493198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030995, 0.669495, 0.742169,
		-0.350227, -0.688176, 0.635416,
		0.936152, -0.279623, 0.213146,
		36.233685, 36.254089, 36.557140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630657, 36.444366, 37.154308>,  <35.578377, 36.449825, 36.407940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630657, 36.444366, 37.154308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024136, 36.395679, 37.101345>,  <36.260223, 36.366467, 37.069565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024136, 36.395679, 37.101345>,  <35.630657, 36.444366, 37.154308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024136, 36.395679, 37.101345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163079, 0.293151, 0.942055,
		-0.075850, -0.948286, 0.308221,
		0.983693, -0.121719, -0.132410,
		36.319244, 36.359165, 37.061623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926262, 36.113144, 37.770424>,  <35.630657, 36.444366, 37.154308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926262, 36.113144, 37.770424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.222374, 36.314915, 37.592640>,  <36.400040, 36.435978, 37.485970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.222374, 36.314915, 37.592640>,  <35.926262, 36.113144, 37.770424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222374, 36.314915, 37.592640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187246, 0.480249, 0.856913,
		0.645699, -0.717577, 0.261066,
		0.740278, 0.504424, -0.444460,
		36.444458, 36.466244, 37.459301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476799, 36.031223, 38.219543>,  <35.926262, 36.113144, 37.770424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476799, 36.031223, 38.219543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583218, 36.347115, 37.998436>,  <36.647068, 36.536648, 37.865772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583218, 36.347115, 37.998436>,  <36.476799, 36.031223, 38.219543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583218, 36.347115, 37.998436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128088, 0.539384, 0.832261,
		0.955412, -0.292223, 0.042346,
		0.266046, 0.789729, -0.552764,
		36.663033, 36.584034, 37.832607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120125, 36.300968, 38.449699>,  <36.476799, 36.031223, 38.219543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120125, 36.300968, 38.449699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.935291, 36.609558, 38.274746>,  <36.824390, 36.794712, 38.169773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.935291, 36.609558, 38.274746>,  <37.120125, 36.300968, 38.449699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935291, 36.609558, 38.274746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258966, 0.589076, 0.765458,
		0.848183, 0.240439, -0.471989,
		-0.462084, 0.771478, -0.437379,
		36.796665, 36.841000, 38.143532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579845, 36.781036, 38.625145>,  <37.120125, 36.300968, 38.449699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579845, 36.781036, 38.625145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247494, 36.974300, 38.514732>,  <37.048084, 37.090260, 38.448486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.247494, 36.974300, 38.514732>,  <37.579845, 36.781036, 38.625145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247494, 36.974300, 38.514732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264800, 0.779601, 0.567542,
		0.489408, 0.398467, -0.775696,
		-0.830880, 0.483164, -0.276029,
		36.998230, 37.119251, 38.431923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824303, 37.403423, 38.834103>,  <37.579845, 36.781036, 38.625145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824303, 37.403423, 38.834103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210594, 37.502789, 38.864197>,  <38.442368, 37.562408, 38.882256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210594, 37.502789, 38.864197>,  <37.824303, 37.403423, 38.834103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210594, 37.502789, 38.864197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209086, -0.572782, -0.792593,
		-0.153797, 0.781160, -0.605091,
		0.965728, 0.248414, 0.075238,
		38.500313, 37.577312, 38.886768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054508, 37.744350, 38.231449>,  <37.824303, 37.403423, 38.834103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054508, 37.744350, 38.231449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396442, 37.600819, 38.381382>,  <38.601604, 37.514702, 38.471344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396442, 37.600819, 38.381382>,  <38.054508, 37.744350, 38.231449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396442, 37.600819, 38.381382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135685, -0.542661, -0.828920,
		0.500846, 0.759450, -0.415199,
		0.854835, -0.358825, 0.374835,
		38.652893, 37.493172, 38.493832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587723, 37.891891, 37.720284>,  <38.054508, 37.744350, 38.231449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587723, 37.891891, 37.720284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711815, 37.602303, 37.966740>,  <38.786270, 37.428551, 38.114613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711815, 37.602303, 37.966740>,  <38.587723, 37.891891, 37.720284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711815, 37.602303, 37.966740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142035, -0.605541, -0.783036,
		0.939992, 0.330433, -0.085027,
		0.310228, -0.723971, 0.616137,
		38.804882, 37.385113, 38.151581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244888, 37.787376, 37.499203>,  <38.587723, 37.891891, 37.720284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244888, 37.787376, 37.499203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095867, 37.471626, 37.694382>,  <39.006454, 37.282177, 37.811489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095867, 37.471626, 37.694382>,  <39.244888, 37.787376, 37.499203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095867, 37.471626, 37.694382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157112, -0.571859, -0.805167,
		0.914616, -0.223302, 0.337066,
		-0.372550, -0.789375, 0.487948,
		38.984100, 37.234814, 37.840767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839199, 37.328617, 37.375271>,  <39.244888, 37.787376, 37.499203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839199, 37.328617, 37.375271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.557980, 37.066025, 37.484642>,  <39.389248, 36.908470, 37.550266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.557980, 37.066025, 37.484642>,  <39.839199, 37.328617, 37.375271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557980, 37.066025, 37.484642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292314, -0.617279, -0.730424,
		0.648291, -0.433593, 0.625872,
		-0.703045, -0.656478, 0.273431,
		39.347065, 36.869080, 37.566669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194309, 36.621548, 37.434990>,  <39.839199, 37.328617, 37.375271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194309, 36.621548, 37.434990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.801331, 36.572460, 37.378792>,  <39.565544, 36.543007, 37.345074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.801331, 36.572460, 37.378792>,  <40.194309, 36.621548, 37.434990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801331, 36.572460, 37.378792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186294, -0.684326, -0.704976,
		-0.009634, -0.718776, 0.695176,
		-0.982447, -0.122716, -0.140496,
		39.506596, 36.535645, 37.336643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156708, 35.901966, 37.254032>,  <40.194309, 36.621548, 37.434990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156708, 35.901966, 37.254032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.795040, 36.022602, 37.133018>,  <39.578041, 36.094982, 37.060410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.795040, 36.022602, 37.133018>,  <40.156708, 35.901966, 37.254032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795040, 36.022602, 37.133018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028001, -0.664849, -0.746453,
		-0.426257, -0.683390, 0.592691,
		-0.904168, 0.301585, -0.302532,
		39.523788, 36.113079, 37.042259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785210, 35.297112, 37.159958>,  <40.156708, 35.901966, 37.254032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785210, 35.297112, 37.159958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.563122, 35.565166, 36.962921>,  <39.429871, 35.725998, 36.844700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.563122, 35.565166, 36.962921>,  <39.785210, 35.297112, 37.159958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563122, 35.565166, 36.962921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168202, -0.670509, -0.722583,
		-0.814517, -0.318337, 0.484998,
		-0.555220, 0.670134, -0.492596,
		39.396557, 35.766205, 36.815144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197289, 34.982574, 36.903362>,  <39.785210, 35.297112, 37.159958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197289, 34.982574, 36.903362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.196480, 35.312450, 36.677132>,  <39.195995, 35.510376, 36.541393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.196480, 35.312450, 36.677132>,  <39.197289, 34.982574, 36.903362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196480, 35.312450, 36.677132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226955, -0.551201, -0.802913,
		-0.973903, 0.126737, 0.188282,
		-0.002022, 0.824691, -0.565580,
		39.195873, 35.559856, 36.507458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572151, 35.086288, 36.488155>,  <39.197289, 34.982574, 36.903362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572151, 35.086288, 36.488155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.846630, 35.309113, 36.301044>,  <39.011318, 35.442806, 36.188778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.846630, 35.309113, 36.301044>,  <38.572151, 35.086288, 36.488155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846630, 35.309113, 36.301044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254526, -0.418549, -0.871799,
		-0.681431, 0.717289, -0.145422,
		0.686198, 0.557058, -0.467781,
		39.052490, 35.476231, 36.160709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247746, 35.380913, 36.017815>,  <38.572151, 35.086288, 36.488155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247746, 35.380913, 36.017815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630322, 35.335976, 35.910042>,  <38.859867, 35.309013, 35.845379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630322, 35.335976, 35.910042>,  <38.247746, 35.380913, 36.017815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630322, 35.335976, 35.910042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291911, -0.375140, -0.879806,
		-0.002235, 0.920135, -0.391595,
		0.956443, -0.112345, -0.269436,
		38.917255, 35.302273, 35.829212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112091, 35.237091, 35.353714>,  <38.247746, 35.380913, 36.017815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112091, 35.237091, 35.353714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498718, 35.139870, 35.386368>,  <38.730694, 35.081535, 35.405960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498718, 35.139870, 35.386368>,  <38.112091, 35.237091, 35.353714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498718, 35.139870, 35.386368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049381, -0.488889, -0.870947,
		0.251595, 0.837802, -0.484549,
		0.966572, -0.243053, 0.081630,
		38.788689, 35.066956, 35.410858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391678, 35.349964, 34.645836>,  <38.112091, 35.237091, 35.353714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391678, 35.349964, 34.645836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594902, 35.079319, 34.859028>,  <38.716839, 34.916931, 34.986942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594902, 35.079319, 34.859028>,  <38.391678, 35.349964, 34.645836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594902, 35.079319, 34.859028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027261, -0.605856, -0.795107,
		0.860888, 0.418495, -0.289369,
		0.508064, -0.676610, 0.532982,
		38.747322, 34.876335, 35.018921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966503, 35.018517, 34.143833>,  <38.391678, 35.349964, 34.645836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966503, 35.018517, 34.143833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920128, 34.756557, 34.442539>,  <38.892303, 34.599380, 34.621765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.920128, 34.756557, 34.442539>,  <38.966503, 35.018517, 34.143833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920128, 34.756557, 34.442539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082255, -0.755585, -0.649865,
		0.989845, -0.013918, 0.141469,
		-0.115937, -0.654902, 0.746768,
		38.885345, 34.560085, 34.666569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403797, 34.525440, 33.994404>,  <38.966503, 35.018517, 34.143833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403797, 34.525440, 33.994404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.165352, 34.335583, 34.253441>,  <39.022285, 34.221668, 34.408863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.165352, 34.335583, 34.253441>,  <39.403797, 34.525440, 33.994404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165352, 34.335583, 34.253441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027264, -0.794128, -0.607138,
		0.802441, -0.379576, 0.460446,
		-0.596109, -0.474639, 0.647589,
		38.986519, 34.193192, 34.447716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740364, 33.921162, 34.068718>,  <39.403797, 34.525440, 33.994404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740364, 33.921162, 34.068718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.379635, 33.828171, 34.214413>,  <39.163197, 33.772377, 34.301830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.379635, 33.828171, 34.214413>,  <39.740364, 33.921162, 34.068718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379635, 33.828171, 34.214413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079159, -0.739784, -0.668172,
		0.424795, -0.631405, 0.648750,
		-0.901822, -0.232482, 0.364238,
		39.109089, 33.758427, 34.323685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787392, 33.220398, 34.323238>,  <39.740364, 33.921162, 34.068718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787392, 33.220398, 34.323238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.410015, 33.310825, 34.226238>,  <39.183590, 33.365082, 34.168037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.410015, 33.310825, 34.226238>,  <39.787392, 33.220398, 34.323238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410015, 33.310825, 34.226238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019530, -0.768076, -0.640061,
		-0.330958, -0.599126, 0.729051,
		-0.943443, 0.226072, -0.242500,
		39.126984, 33.378647, 34.153488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457458, 32.599926, 34.438251>,  <39.787392, 33.220398, 34.323238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457458, 32.599926, 34.438251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.240391, 32.830189, 34.193588>,  <39.110149, 32.968346, 34.046791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.240391, 32.830189, 34.193588>,  <39.457458, 32.599926, 34.438251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240391, 32.830189, 34.193588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055924, -0.701836, -0.710140,
		-0.838081, -0.419580, 0.348674,
		-0.542672, 0.575655, -0.611660,
		39.077587, 33.002884, 34.010090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.886208, 32.078377, 34.079491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.938217, 32.398552, 33.845432>,  <38.969421, 32.590656, 33.704998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.938217, 32.398552, 33.845432>,  <38.886208, 32.078377, 34.079491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938217, 32.398552, 33.845432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052043, -0.594851, -0.802150,
		-0.990144, 0.073844, -0.119001,
		0.130021, 0.800437, -0.585145,
		38.977222, 32.638683, 33.669888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671421, 31.772497, 33.453434>,  <38.886208, 32.078377, 34.079491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671421, 31.772497, 33.453434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792080, 32.129173, 33.318436>,  <38.864475, 32.343178, 33.237438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792080, 32.129173, 33.318436>,  <38.671421, 31.772497, 33.453434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792080, 32.129173, 33.318436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094698, -0.380252, -0.920022,
		-0.948706, 0.245559, -0.199142,
		0.301643, 0.891689, -0.337494,
		38.882572, 32.396679, 33.217186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289528, 31.944254, 32.867428>,  <38.671421, 31.772497, 33.453434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289528, 31.944254, 32.867428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.634457, 32.146374, 32.854340>,  <38.841415, 32.267647, 32.846485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.634457, 32.146374, 32.854340>,  <38.289528, 31.944254, 32.867428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634457, 32.146374, 32.854340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137197, -0.295357, -0.945485,
		-0.487419, 0.810823, -0.324019,
		0.862322, 0.505301, -0.032720,
		38.893154, 32.297966, 32.844524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208847, 32.481487, 32.370071>,  <38.289528, 31.944254, 32.867428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208847, 32.481487, 32.370071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.586315, 32.356289, 32.412998>,  <38.812798, 32.281170, 32.438755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.586315, 32.356289, 32.412998>,  <38.208847, 32.481487, 32.370071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586315, 32.356289, 32.412998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026929, -0.250622, -0.967710,
		0.329784, 0.916092, -0.228076,
		0.943672, -0.312993, 0.107320,
		38.869415, 32.262390, 32.445194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524349, 32.696140, 31.816694>,  <38.208847, 32.481487, 32.370071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524349, 32.696140, 31.816694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763111, 32.388756, 31.908930>,  <38.906368, 32.204323, 31.964272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763111, 32.388756, 31.908930>,  <38.524349, 32.696140, 31.816694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763111, 32.388756, 31.908930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169964, -0.159766, -0.972413,
		0.784105, 0.619626, 0.035246,
		0.596901, -0.768465, 0.230588,
		38.942181, 32.158215, 31.978106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835838, 32.587799, 31.209311>,  <38.524349, 32.696140, 31.816694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835838, 32.587799, 31.209311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.006744, 32.278301, 31.396399>,  <39.109287, 32.092602, 31.508652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.006744, 32.278301, 31.396399>,  <38.835838, 32.587799, 31.209311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006744, 32.278301, 31.396399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298382, -0.367659, -0.880792,
		0.853472, 0.515889, 0.073785,
		0.427263, -0.773748, 0.467719,
		39.134922, 32.046177, 31.536715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383087, 32.435520, 30.828339>,  <38.835838, 32.587799, 31.209311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383087, 32.435520, 30.828339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.371876, 32.095959, 31.039459>,  <39.365150, 31.892221, 31.166132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.371876, 32.095959, 31.039459>,  <39.383087, 32.435520, 30.828339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371876, 32.095959, 31.039459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263168, -0.515647, -0.815384,
		0.964343, 0.116046, 0.237858,
		-0.028028, -0.848906, 0.527800,
		39.363468, 31.841288, 31.197800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986946, 32.059902, 30.712160>,  <39.383087, 32.435520, 30.828339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986946, 32.059902, 30.712160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.703251, 31.797560, 30.815563>,  <39.533031, 31.640154, 30.877605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.703251, 31.797560, 30.815563>,  <39.986946, 32.059902, 30.712160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703251, 31.797560, 30.815563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313893, -0.622141, -0.717225,
		0.631226, -0.427542, 0.647117,
		-0.709242, -0.655857, 0.258509,
		39.490479, 31.600803, 30.893116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289158, 31.400015, 30.934723>,  <39.986946, 32.059902, 30.712160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289158, 31.400015, 30.934723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.912601, 31.356062, 30.807150>,  <39.686668, 31.329691, 30.730606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.912601, 31.356062, 30.807150>,  <40.289158, 31.400015, 30.934723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912601, 31.356062, 30.807150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278733, -0.785903, -0.551964,
		-0.189996, -0.608508, 0.770467,
		-0.941387, -0.109883, -0.318930,
		39.630184, 31.323097, 30.711472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238930, 30.730572, 31.126123>,  <40.289158, 31.400015, 30.934723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238930, 30.730572, 31.126123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.991550, 30.821808, 30.825325>,  <39.843124, 30.876549, 30.644846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.991550, 30.821808, 30.825325>,  <40.238930, 30.730572, 31.126123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991550, 30.821808, 30.825325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394972, -0.737067, -0.548388,
		-0.679353, -0.636167, 0.365748,
		-0.618447, 0.228089, -0.751996,
		39.806015, 30.890234, 30.599726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157215, 30.139616, 30.764771>,  <40.238930, 30.730572, 31.126123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157215, 30.139616, 30.764771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.013561, 30.402534, 30.499748>,  <39.927368, 30.560286, 30.340734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.013561, 30.402534, 30.499748>,  <40.157215, 30.139616, 30.764771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013561, 30.402534, 30.499748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370087, -0.551417, -0.747646,
		-0.856770, -0.513712, -0.045222,
		-0.359139, 0.657297, -0.662556,
		39.905819, 30.599724, 30.300982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021694, 29.773592, 30.063255>,  <40.157215, 30.139616, 30.764771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021694, 29.773592, 30.063255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.025848, 30.163656, 29.974751>,  <40.028339, 30.397694, 29.921648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.025848, 30.163656, 29.974751>,  <40.021694, 29.773592, 30.063255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025848, 30.163656, 29.974751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484731, -0.198447, -0.851854,
		-0.874602, -0.098408, -0.474750,
		0.010384, 0.975159, -0.221263,
		40.028965, 30.456203, 29.908371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874035, 29.805588, 29.324577>,  <40.021694, 29.773592, 30.063255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874035, 29.805588, 29.324577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.053761, 30.144274, 29.438551>,  <40.161594, 30.347486, 29.506935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.053761, 30.144274, 29.438551>,  <39.874035, 29.805588, 29.324577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053761, 30.144274, 29.438551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615237, -0.062010, -0.785900,
		-0.647766, 0.528418, -0.548793,
		0.449314, 0.846717, 0.284934,
		40.188553, 30.398289, 29.524031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956005, 30.233770, 28.705351>,  <39.874035, 29.805588, 29.324577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956005, 30.233770, 28.705351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220119, 30.398687, 28.956440>,  <40.378590, 30.497637, 29.107094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.220119, 30.398687, 28.956440>,  <39.956005, 30.233770, 28.705351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220119, 30.398687, 28.956440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578935, 0.252992, -0.775132,
		-0.478389, 0.875221, -0.071643,
		0.660286, 0.412291, 0.627725,
		40.418205, 30.522375, 29.144758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116138, 30.870020, 28.393068>,  <39.956005, 30.233770, 28.705351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116138, 30.870020, 28.393068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.413734, 30.763824, 28.638340>,  <40.592293, 30.700108, 28.785503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.413734, 30.763824, 28.638340>,  <40.116138, 30.870020, 28.393068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413734, 30.763824, 28.638340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656872, 0.122442, -0.743994,
		0.122442, 0.956308, 0.265488,
		0.743994, -0.265488, 0.613180,
		40.636932, 30.684177, 28.822294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692486, 31.337631, 28.121458>,  <40.116138, 30.870020, 28.393068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692486, 31.337631, 28.121458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.829330, 31.032999, 28.341625>,  <40.911438, 30.850220, 28.473724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.829330, 31.032999, 28.341625>,  <40.692486, 31.337631, 28.121458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829330, 31.032999, 28.341625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699710, -0.184502, -0.690192,
		0.627188, 0.621255, 0.469764,
		0.342113, -0.761578, 0.550416,
		40.931965, 30.804525, 28.506750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343021, 31.353539, 27.962193>,  <40.692486, 31.337631, 28.121458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343021, 31.353539, 27.962193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.305359, 30.989691, 28.124046>,  <41.282761, 30.771381, 28.221159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.305359, 30.989691, 28.124046>,  <41.343021, 31.353539, 27.962193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305359, 30.989691, 28.124046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524808, -0.390731, -0.756245,
		0.845997, 0.141150, 0.514164,
		-0.094156, -0.909619, 0.404634,
		41.277111, 30.716805, 28.245436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043613, 30.947720, 27.998058>,  <41.343021, 31.353539, 27.962193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043613, 30.947720, 27.998058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.770691, 30.655331, 27.993383>,  <41.606937, 30.479898, 27.990578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.770691, 30.655331, 27.993383>,  <42.043613, 30.947720, 27.998058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770691, 30.655331, 27.993383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451097, -0.408377, -0.793562,
		0.575297, -0.546727, 0.608378,
		-0.682308, -0.730971, -0.011689,
		41.565998, 30.436039, 27.989876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363701, 30.258230, 27.811647>,  <42.043613, 30.947720, 27.998058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363701, 30.258230, 27.811647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.972820, 30.195215, 27.754719>,  <41.738293, 30.157406, 27.720562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.972820, 30.195215, 27.754719>,  <42.363701, 30.258230, 27.811647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972820, 30.195215, 27.754719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199700, -0.454503, -0.868071,
		0.072067, -0.876704, 0.475602,
		-0.977203, -0.157537, -0.142323,
		41.679661, 30.147955, 27.712023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330162, 29.557777, 27.555799>,  <42.363701, 30.258230, 27.811647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330162, 29.557777, 27.555799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.967510, 29.679853, 27.439259>,  <41.749920, 29.753099, 27.369335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.967510, 29.679853, 27.439259>,  <42.330162, 29.557777, 27.555799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967510, 29.679853, 27.439259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107260, -0.501125, -0.858702,
		-0.408068, -0.809774, 0.421600,
		-0.906629, 0.305188, -0.291350,
		41.695522, 29.771410, 27.351854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999672, 29.018255, 27.329418>,  <42.330162, 29.557777, 27.555799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999672, 29.018255, 27.329418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.810696, 29.327652, 27.160418>,  <41.697308, 29.513290, 27.059017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.810696, 29.327652, 27.160418>,  <41.999672, 29.018255, 27.329418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810696, 29.327652, 27.160418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119376, -0.418800, -0.900198,
		-0.873239, -0.475730, 0.105523,
		-0.472444, 0.773491, -0.422503,
		41.668961, 29.559700, 27.033667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559879, 28.732168, 26.936031>,  <41.999672, 29.018255, 27.329418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559879, 28.732168, 26.936031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.602215, 29.095268, 26.773657>,  <41.627617, 29.313129, 26.676231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.602215, 29.095268, 26.773657>,  <41.559879, 28.732168, 26.936031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602215, 29.095268, 26.773657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012133, -0.409379, -0.912284,
		-0.994309, 0.091629, -0.054341,
		0.105838, 0.907751, -0.405938,
		41.633965, 29.367594, 26.651875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006950, 28.929180, 26.404982>,  <41.559879, 28.732168, 26.936031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006950, 28.929180, 26.404982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.362282, 29.101719, 26.341978>,  <41.575481, 29.205242, 26.304176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.362282, 29.101719, 26.341978>,  <41.006950, 28.929180, 26.404982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362282, 29.101719, 26.341978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018955, -0.308266, -0.951112,
		-0.458814, 0.847887, -0.265666,
		0.888330, 0.431347, -0.157508,
		41.628780, 29.231123, 26.294725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154602, 29.551794, 25.841619>,  <41.006950, 28.929180, 26.404982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154602, 29.551794, 25.841619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.426331, 29.269667, 25.922663>,  <41.589367, 29.100389, 25.971289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.426331, 29.269667, 25.922663>,  <41.154602, 29.551794, 25.841619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426331, 29.269667, 25.922663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047947, -0.318162, -0.946823,
		0.732275, 0.633481, -0.249951,
		0.679319, -0.705320, 0.202608,
		41.630127, 29.058071, 25.983446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521351, 29.971958, 25.447361>,  <41.154602, 29.551794, 25.841619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521351, 29.971958, 25.447361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.140724, 29.917532, 25.337088>,  <39.912346, 29.884876, 25.270924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.140724, 29.917532, 25.337088>,  <40.521351, 29.971958, 25.447361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140724, 29.917532, 25.337088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303856, 0.279823, 0.910698,
		-0.046774, 0.950361, -0.307615,
		-0.951569, -0.136067, -0.275684,
		39.855255, 29.876711, 25.254383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174397, 30.528635, 25.766829>,  <40.521351, 29.971958, 25.447361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174397, 30.528635, 25.766829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.896328, 30.257338, 25.671566>,  <39.729485, 30.094559, 25.614408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.896328, 30.257338, 25.671566>,  <40.174397, 30.528635, 25.766829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896328, 30.257338, 25.671566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514182, 0.237645, 0.824100,
		-0.502344, 0.695349, -0.513945,
		-0.695174, -0.678243, -0.238156,
		39.687775, 30.053865, 25.600119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613579, 30.879148, 25.947245>,  <40.174397, 30.528635, 25.766829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613579, 30.879148, 25.947245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.502518, 30.494877, 25.946566>,  <39.435883, 30.264313, 25.946159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.502518, 30.494877, 25.946566>,  <39.613579, 30.879148, 25.947245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502518, 30.494877, 25.946566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587832, 0.168495, 0.791241,
		-0.759845, 0.220685, -0.611502,
		-0.277650, -0.960681, -0.001696,
		39.419224, 30.206673, 25.946056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894661, 30.847393, 25.775860>,  <39.613579, 30.879148, 25.947245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894661, 30.847393, 25.775860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985767, 30.515596, 25.979847>,  <39.040432, 30.316519, 26.102240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985767, 30.515596, 25.979847>,  <38.894661, 30.847393, 25.775860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985767, 30.515596, 25.979847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643683, 0.264714, 0.718053,
		-0.730614, -0.491804, -0.473637,
		0.227763, -0.829492, 0.509969,
		39.054096, 30.266748, 26.132837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247387, 30.532402, 25.908890>,  <38.894661, 30.847393, 25.775860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247387, 30.532402, 25.908890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.522865, 30.410450, 26.172026>,  <38.688152, 30.337278, 26.329906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.522865, 30.410450, 26.172026>,  <38.247387, 30.532402, 25.908890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522865, 30.410450, 26.172026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650166, 0.141902, 0.746424,
		-0.320918, -0.941760, -0.100496,
		0.688692, -0.304879, 0.657839,
		38.729473, 30.318987, 26.369377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820522, 30.214487, 26.253418>,  <38.247387, 30.532402, 25.908890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820522, 30.214487, 26.253418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152950, 30.218294, 26.475851>,  <38.352409, 30.220577, 26.609310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152950, 30.218294, 26.475851>,  <37.820522, 30.214487, 26.253418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152950, 30.218294, 26.475851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555974, -0.011944, 0.831114,
		0.014555, -0.999883, -0.004633,
		0.831072, 0.009521, 0.556083,
		38.402271, 30.221149, 26.642675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851509, 29.664415, 26.842152>,  <37.820522, 30.214487, 26.253418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851509, 29.664415, 26.842152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.082451, 29.978813, 26.930582>,  <38.221016, 30.167452, 26.983641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.082451, 29.978813, 26.930582>,  <37.851509, 29.664415, 26.842152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082451, 29.978813, 26.930582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485488, 0.112776, 0.866939,
		0.656476, -0.607862, 0.446703,
		0.577356, 0.785994, 0.221075,
		38.255657, 30.214611, 26.996904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929169, 29.566158, 27.507435>,  <37.851509, 29.664415, 26.842152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929169, 29.566158, 27.507435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.068439, 29.938593, 27.463894>,  <38.152000, 30.162054, 27.437769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.068439, 29.938593, 27.463894>,  <37.929169, 29.566158, 27.507435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068439, 29.938593, 27.463894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295856, 0.219327, 0.929712,
		0.889519, -0.291496, 0.351832,
		0.348174, 0.931088, -0.108854,
		38.172894, 30.217920, 27.431238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376602, 29.663622, 28.103533>,  <37.929169, 29.566158, 27.507435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376602, 29.663622, 28.103533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220394, 30.000065, 27.953848>,  <38.126671, 30.201931, 27.864037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.220394, 30.000065, 27.953848>,  <38.376602, 29.663622, 28.103533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220394, 30.000065, 27.953848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307738, 0.263832, 0.914161,
		0.867637, 0.472155, 0.155810,
		-0.390518, 0.841108, -0.374210,
		38.103237, 30.252398, 27.841585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595264, 30.105843, 28.529402>,  <38.376602, 29.663622, 28.103533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595264, 30.105843, 28.529402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.286682, 30.308889, 28.375948>,  <38.101532, 30.430717, 28.283875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.286682, 30.308889, 28.375948>,  <38.595264, 30.105843, 28.529402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286682, 30.308889, 28.375948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235919, 0.331760, 0.913388,
		0.590925, 0.795149, -0.136183,
		-0.771460, 0.507615, -0.383636,
		38.055244, 30.461174, 28.260857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522015, 30.674034, 28.924559>,  <38.595264, 30.105843, 28.529402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522015, 30.674034, 28.924559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157742, 30.678083, 28.759361>,  <37.939178, 30.680513, 28.660244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157742, 30.678083, 28.759361>,  <38.522015, 30.674034, 28.924559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157742, 30.678083, 28.759361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396179, 0.261911, 0.880026,
		0.117077, 0.965039, -0.234506,
		-0.910679, 0.010125, -0.412992,
		37.884537, 30.681122, 28.635464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291477, 31.322536, 28.999420>,  <38.522015, 30.674034, 28.924559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291477, 31.322536, 28.999420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964725, 31.095888, 28.956245>,  <37.768677, 30.959898, 28.930340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964725, 31.095888, 28.956245>,  <38.291477, 31.322536, 28.999420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964725, 31.095888, 28.956245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308695, 0.271376, 0.911626,
		-0.487257, 0.778006, -0.396595,
		-0.816877, -0.566623, -0.107937,
		37.719662, 30.925901, 28.923864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743507, 31.681669, 29.258770>,  <38.291477, 31.322536, 28.999420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743507, 31.681669, 29.258770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618073, 31.303806, 29.297327>,  <37.542812, 31.077089, 29.320461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618073, 31.303806, 29.297327>,  <37.743507, 31.681669, 29.258770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618073, 31.303806, 29.297327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311703, 0.198293, 0.929258,
		-0.896943, 0.261354, -0.356633,
		-0.313583, -0.944656, 0.096393,
		37.523998, 31.020411, 29.326244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205482, 31.681452, 29.748129>,  <37.743507, 31.681669, 29.258770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205482, 31.681452, 29.748129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.235298, 31.282871, 29.732504>,  <37.253189, 31.043722, 29.723129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.235298, 31.282871, 29.732504>,  <37.205482, 31.681452, 29.748129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235298, 31.282871, 29.732504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360042, -0.063423, 0.930778,
		-0.929953, -0.055319, -0.363492,
		0.074543, -0.996452, -0.039063,
		37.257660, 30.983936, 29.720785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587803, 31.398628, 30.029829>,  <37.205482, 31.681452, 29.748129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587803, 31.398628, 30.029829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853252, 31.101299, 30.063469>,  <37.012524, 30.922901, 30.083652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853252, 31.101299, 30.063469>,  <36.587803, 31.398628, 30.029829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853252, 31.101299, 30.063469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254282, -0.118421, 0.959853,
		-0.703522, -0.658367, -0.267600,
		0.663625, -0.743324, 0.084099,
		37.052341, 30.878302, 30.088699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183006, 30.994019, 30.441418>,  <36.587803, 31.398628, 30.029829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183006, 30.994019, 30.441418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553623, 30.848680, 30.480404>,  <36.775993, 30.761477, 30.503796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553623, 30.848680, 30.480404>,  <36.183006, 30.994019, 30.441418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553623, 30.848680, 30.480404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093891, 0.027527, 0.995202,
		-0.364288, -0.931247, -0.008610,
		0.926541, -0.363348, 0.097464,
		36.831585, 30.739676, 30.509644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135818, 30.474268, 30.919695>,  <36.183006, 30.994019, 30.441418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135818, 30.474268, 30.919695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521347, 30.580404, 30.929882>,  <36.752663, 30.644087, 30.935995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521347, 30.580404, 30.929882>,  <36.135818, 30.474268, 30.919695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521347, 30.580404, 30.929882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036751, 0.037647, 0.998615,
		0.264016, -0.963419, 0.046037,
		0.963818, 0.265343, 0.025467,
		36.810493, 30.660007, 30.937523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516712, 30.101271, 31.452938>,  <36.135818, 30.474268, 30.919695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516712, 30.101271, 31.452938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711254, 30.446993, 31.401657>,  <36.827980, 30.654427, 31.370888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.711254, 30.446993, 31.401657>,  <36.516712, 30.101271, 31.452938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711254, 30.446993, 31.401657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001926, 0.145663, 0.989332,
		0.873760, -0.481413, 0.069179,
		0.486355, 0.864305, -0.128202,
		36.857159, 30.706284, 31.363197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043259, 30.155886, 32.022594>,  <36.516712, 30.101271, 31.452938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043259, 30.155886, 32.022594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971703, 30.519888, 31.872988>,  <36.928768, 30.738289, 31.783224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971703, 30.519888, 31.872988>,  <37.043259, 30.155886, 32.022594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971703, 30.519888, 31.872988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094314, 0.362539, 0.927184,
		0.979339, 0.201137, 0.020972,
		-0.178888, 0.910006, -0.374018,
		36.918037, 30.792889, 31.760782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347584, 30.546227, 32.452732>,  <37.043259, 30.155886, 32.022594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347584, 30.546227, 32.452732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.123306, 30.814981, 32.259163>,  <36.988739, 30.976234, 32.143021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.123306, 30.814981, 32.259163>,  <37.347584, 30.546227, 32.452732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123306, 30.814981, 32.259163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190834, 0.463847, 0.865118,
		0.805731, 0.577418, -0.131858,
		-0.560697, 0.671889, -0.483927,
		36.955097, 31.016548, 32.113983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.017246, 34.591625, 35.478512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.649311, 34.748516, 35.475384>,  <39.428551, 34.842651, 35.473507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.649311, 34.748516, 35.475384>,  <40.017246, 34.591625, 35.478512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649311, 34.748516, 35.475384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335458, 0.796712, 0.502710,
		0.203405, 0.459788, -0.864420,
		-0.919834, 0.392231, -0.007815,
		39.373360, 34.866184, 35.473038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125839, 35.311539, 35.455990>,  <40.017246, 34.591625, 35.478512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125839, 35.311539, 35.455990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.741482, 35.322781, 35.566185>,  <39.510868, 35.329525, 35.632301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.741482, 35.322781, 35.566185>,  <40.125839, 35.311539, 35.455990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741482, 35.322781, 35.566185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168366, 0.849133, 0.500625,
		-0.219858, 0.527430, -0.820658,
		-0.960893, 0.028105, 0.275490,
		39.453213, 35.331211, 35.648830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943970, 36.027218, 35.412601>,  <40.125839, 35.311539, 35.455990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943970, 36.027218, 35.412601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.674774, 35.869518, 35.662930>,  <39.513256, 35.774899, 35.813126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.674774, 35.869518, 35.662930>,  <39.943970, 36.027218, 35.412601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674774, 35.869518, 35.662930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170717, 0.740466, 0.650051,
		-0.719681, 0.544316, -0.431021,
		-0.672989, -0.394247, 0.625823,
		39.472878, 35.751244, 35.850677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534534, 36.572685, 35.691425>,  <39.943970, 36.027218, 35.412601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534534, 36.572685, 35.691425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.438324, 36.274910, 35.940575>,  <39.380596, 36.096245, 36.090065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.438324, 36.274910, 35.940575>,  <39.534534, 36.572685, 35.691425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438324, 36.274910, 35.940575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155126, 0.662941, 0.732424,
		-0.958167, 0.079544, -0.274935,
		-0.240525, -0.744434, 0.622869,
		39.366165, 36.051579, 36.127434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887951, 36.784321, 36.108543>,  <39.534534, 36.572685, 35.691425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887951, 36.784321, 36.108543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.057056, 36.483837, 36.311302>,  <39.158520, 36.303547, 36.432957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.057056, 36.483837, 36.311302>,  <38.887951, 36.784321, 36.108543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057056, 36.483837, 36.311302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171154, 0.483094, 0.858677,
		-0.889930, -0.449778, 0.075663,
		0.422767, -0.751213, 0.506901,
		39.183887, 36.258472, 36.463371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422226, 36.663261, 36.635433>,  <38.887951, 36.784321, 36.108543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422226, 36.663261, 36.635433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.769413, 36.498779, 36.746811>,  <38.977726, 36.400089, 36.813637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.769413, 36.498779, 36.746811>,  <38.422226, 36.663261, 36.635433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769413, 36.498779, 36.746811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037308, 0.505110, 0.862248,
		-0.495210, -0.758795, 0.423080,
		0.867972, -0.411210, 0.278445,
		39.029804, 36.375416, 36.830345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233852, 36.309113, 37.300823>,  <38.422226, 36.663261, 36.635433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233852, 36.309113, 37.300823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628674, 36.373249, 37.302658>,  <38.865566, 36.411732, 37.303761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.628674, 36.373249, 37.302658>,  <38.233852, 36.309113, 37.300823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628674, 36.373249, 37.302658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066973, 0.385964, 0.920080,
		0.145757, -0.908473, 0.391704,
		0.987051, 0.160341, 0.004586,
		38.924789, 36.421352, 37.304035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331009, 36.187351, 38.005482>,  <38.233852, 36.309113, 37.300823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331009, 36.187351, 38.005482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.653458, 36.385311, 37.875713>,  <38.846928, 36.504086, 37.797852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.653458, 36.385311, 37.875713>,  <38.331009, 36.187351, 38.005482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653458, 36.385311, 37.875713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007144, 0.556338, 0.830925,
		0.591711, -0.667506, 0.452010,
		0.806118, 0.494897, -0.324423,
		38.895294, 36.533779, 37.778385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837036, 36.165352, 38.567402>,  <38.331009, 36.187351, 38.005482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837036, 36.165352, 38.567402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.913616, 36.478939, 38.331188>,  <38.959564, 36.667091, 38.189461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.913616, 36.478939, 38.331188>,  <38.837036, 36.165352, 38.567402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913616, 36.478939, 38.331188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096463, 0.613784, 0.783559,
		0.976750, -0.093050, 0.193135,
		0.191453, 0.783971, -0.590537,
		38.971054, 36.714130, 38.154026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444969, 36.531013, 38.953438>,  <38.837036, 36.165352, 38.567402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444969, 36.531013, 38.953438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.242226, 36.771561, 38.706390>,  <39.120579, 36.915890, 38.558163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.242226, 36.771561, 38.706390>,  <39.444969, 36.531013, 38.953438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242226, 36.771561, 38.706390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032420, 0.702664, 0.710783,
		0.861422, 0.380287, -0.336652,
		-0.506855, 0.601370, -0.617619,
		39.090168, 36.951973, 38.521103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774330, 37.092052, 39.005386>,  <39.444969, 36.531013, 38.953438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774330, 37.092052, 39.005386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.403984, 37.178970, 38.881733>,  <39.181778, 37.231121, 38.807541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.403984, 37.178970, 38.881733>,  <39.774330, 37.092052, 39.005386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403984, 37.178970, 38.881733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013559, 0.836684, 0.547519,
		0.377620, 0.502735, -0.777600,
		-0.925862, 0.217297, -0.309132,
		39.126225, 37.244160, 38.788994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784988, 37.815571, 38.923550>,  <39.774330, 37.092052, 39.005386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784988, 37.815571, 38.923550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.394669, 37.728523, 38.932125>,  <39.160477, 37.676296, 38.937271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.394669, 37.728523, 38.932125>,  <39.784988, 37.815571, 38.923550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394669, 37.728523, 38.932125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172683, 0.827023, 0.534989,
		-0.134154, 0.518339, -0.844587,
		-0.975799, -0.217616, 0.021440,
		39.101929, 37.663239, 38.938557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512878, 38.423252, 38.933979>,  <39.784988, 37.815571, 38.923550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512878, 38.423252, 38.933979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.223866, 38.169353, 39.043564>,  <39.050457, 38.017014, 39.109314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.223866, 38.169353, 39.043564>,  <39.512878, 38.423252, 38.933979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223866, 38.169353, 39.043564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451023, 0.733107, 0.509051,
		-0.523958, 0.244242, -0.815974,
		-0.722528, -0.634744, 0.273959,
		39.007107, 37.978931, 39.125751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167740, 38.589069, 38.866619>,  <39.512878, 38.423252, 38.933979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167740, 38.589069, 38.866619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315342, 38.959614, 38.896786>,  <40.403904, 39.181942, 38.914886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315342, 38.959614, 38.896786>,  <40.167740, 38.589069, 38.866619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315342, 38.959614, 38.896786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556221, -0.155094, -0.816434,
		-0.744616, 0.343221, -0.572492,
		0.369007, 0.926361, 0.075421,
		40.426044, 39.237522, 38.919411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016670, 38.903755, 38.193424>,  <40.167740, 38.589069, 38.866619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016670, 38.903755, 38.193424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315845, 39.109333, 38.361446>,  <40.495350, 39.232681, 38.462257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315845, 39.109333, 38.361446>,  <40.016670, 38.903755, 38.193424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315845, 39.109333, 38.361446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547734, -0.120426, -0.827940,
		-0.374932, 0.849327, -0.371578,
		0.747940, 0.513947, 0.420054,
		40.540226, 39.263515, 38.487461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095917, 39.618694, 37.993408>,  <40.016670, 38.903755, 38.193424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095917, 39.618694, 37.993408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.466187, 39.497108, 38.083496>,  <40.688351, 39.424156, 38.137550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.466187, 39.497108, 38.083496>,  <40.095917, 39.618694, 37.993408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466187, 39.497108, 38.083496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306142, 0.252125, -0.917992,
		0.222251, 0.918716, 0.326443,
		0.925679, -0.303962, 0.225223,
		40.743889, 39.405918, 38.151062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507236, 40.207314, 37.814186>,  <40.095917, 39.618694, 37.993408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507236, 40.207314, 37.814186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.730446, 39.875389, 37.812439>,  <40.864372, 39.676235, 37.811390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.730446, 39.875389, 37.812439>,  <40.507236, 40.207314, 37.814186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730446, 39.875389, 37.812439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337348, 0.231658, -0.912431,
		0.758161, 0.507682, 0.409207,
		0.558021, -0.829815, -0.004368,
		40.897854, 39.626446, 37.811127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114048, 40.378834, 37.483631>,  <40.507236, 40.207314, 37.814186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114048, 40.378834, 37.483631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.096397, 39.979778, 37.462547>,  <41.085808, 39.740345, 37.449898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.096397, 39.979778, 37.462547>,  <41.114048, 40.378834, 37.483631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096397, 39.979778, 37.462547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143507, 0.045883, -0.988585,
		0.988665, -0.051187, 0.141143,
		-0.044127, -0.997634, -0.052708,
		41.083160, 39.680489, 37.446735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515430, 40.253273, 36.892002>,  <41.114048, 40.378834, 37.483631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515430, 40.253273, 36.892002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.321304, 39.907558, 36.944893>,  <41.204830, 39.700130, 36.976627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.321304, 39.907558, 36.944893>,  <41.515430, 40.253273, 36.892002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321304, 39.907558, 36.944893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069579, -0.112579, -0.991204,
		0.871566, -0.490247, -0.005499,
		-0.485316, -0.864282, 0.132230,
		41.175709, 39.648273, 36.984562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884171, 39.731434, 36.453907>,  <41.515430, 40.253273, 36.892002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884171, 39.731434, 36.453907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.508801, 39.623890, 36.540691>,  <41.283577, 39.559364, 36.592762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.508801, 39.623890, 36.540691>,  <41.884171, 39.731434, 36.453907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508801, 39.623890, 36.540691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193463, -0.111340, -0.974769,
		0.286236, -0.956721, 0.052469,
		-0.938425, -0.268864, 0.216959,
		41.227272, 39.543232, 36.605778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806641, 39.168209, 36.027523>,  <41.884171, 39.731434, 36.453907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806641, 39.168209, 36.027523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.443790, 39.297501, 36.135330>,  <41.226078, 39.375076, 36.200012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.443790, 39.297501, 36.135330>,  <41.806641, 39.168209, 36.027523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443790, 39.297501, 36.135330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335047, -0.167120, -0.927262,
		-0.254684, -0.931445, 0.259898,
		-0.907127, 0.323236, 0.269515,
		41.171654, 39.394470, 36.216187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302189, 38.664680, 35.728111>,  <41.806641, 39.168209, 36.027523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302189, 38.664680, 35.728111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070244, 38.978230, 35.816929>,  <40.931076, 39.166359, 35.870220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070244, 38.978230, 35.816929>,  <41.302189, 38.664680, 35.728111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070244, 38.978230, 35.816929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619567, -0.247299, -0.744970,
		-0.529051, -0.569550, 0.629062,
		-0.579863, 0.783872, 0.222040,
		40.896286, 39.213390, 35.883541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624096, 38.379585, 35.708908>,  <41.302189, 38.664680, 35.728111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624096, 38.379585, 35.708908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.579918, 38.776360, 35.684021>,  <40.553410, 39.014423, 35.669090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.579918, 38.776360, 35.684021>,  <40.624096, 38.379585, 35.708908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579918, 38.776360, 35.684021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671707, -0.120637, -0.730929,
		-0.732538, -0.038937, 0.679612,
		-0.110446, 0.991933, -0.062217,
		40.546783, 39.073940, 35.665356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996105, 38.459671, 35.685131>,  <40.624096, 38.379585, 35.708908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996105, 38.459671, 35.685131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.100945, 38.810326, 35.523731>,  <40.163849, 39.020718, 35.426891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.100945, 38.810326, 35.523731>,  <39.996105, 38.459671, 35.685131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100945, 38.810326, 35.523731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714395, -0.104853, -0.691841,
		-0.648802, 0.469589, 0.598784,
		0.262097, 0.876637, -0.403501,
		40.179573, 39.073318, 35.402679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418747, 38.542088, 35.328220>,  <39.996105, 38.459671, 35.685131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418747, 38.542088, 35.328220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677177, 38.829750, 35.225929>,  <39.832233, 39.002350, 35.164555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677177, 38.829750, 35.225929>,  <39.418747, 38.542088, 35.328220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677177, 38.829750, 35.225929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467679, 0.108203, -0.877250,
		-0.603213, 0.686367, 0.406244,
		0.646073, 0.719161, -0.255730,
		39.870998, 39.045498, 35.149212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041100, 39.089504, 35.221703>,  <39.418747, 38.542088, 35.328220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041100, 39.089504, 35.221703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.385750, 39.161156, 35.031750>,  <39.592541, 39.204147, 34.917778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.385750, 39.161156, 35.031750>,  <39.041100, 39.089504, 35.221703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385750, 39.161156, 35.031750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463140, -0.105229, -0.880016,
		-0.207608, 0.978182, -0.007707,
		0.861626, 0.179129, -0.474882,
		39.644238, 39.214893, 34.889286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820564, 39.420010, 34.635571>,  <39.041100, 39.089504, 35.221703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820564, 39.420010, 34.635571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.175198, 39.256554, 34.548870>,  <39.387978, 39.158482, 34.496849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.175198, 39.256554, 34.548870>,  <38.820564, 39.420010, 34.635571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175198, 39.256554, 34.548870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313575, -0.186474, -0.931074,
		0.340056, 0.893444, -0.293464,
		0.886585, -0.408640, -0.216750,
		39.441174, 39.133961, 34.483845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036743, 39.579479, 33.898636>,  <38.820564, 39.420010, 34.635571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036743, 39.579479, 33.898636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.197529, 39.226120, 33.994999>,  <39.293999, 39.014107, 34.052818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.197529, 39.226120, 33.994999>,  <39.036743, 39.579479, 33.898636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197529, 39.226120, 33.994999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209637, -0.344898, -0.914930,
		0.891334, 0.317267, -0.323829,
		0.401965, -0.883395, 0.240909,
		39.318119, 38.961102, 34.067272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327705, 40.111492, 33.536819>,  <39.036743, 39.579479, 33.898636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327705, 40.111492, 33.536819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.080864, 40.335979, 33.316196>,  <38.932758, 40.470673, 33.183823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.080864, 40.335979, 33.316196>,  <39.327705, 40.111492, 33.536819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080864, 40.335979, 33.316196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262261, 0.514172, 0.816607,
		0.741891, 0.648583, -0.170111,
		-0.617104, 0.561220, -0.551558,
		38.895733, 40.504345, 33.150730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494030, 40.908672, 33.674870>,  <39.327705, 40.111492, 33.536819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494030, 40.908672, 33.674870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.125233, 40.851185, 33.531052>,  <38.903954, 40.816692, 33.444763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.125233, 40.851185, 33.531052>,  <39.494030, 40.908672, 33.674870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125233, 40.851185, 33.531052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380334, 0.510301, 0.771323,
		0.072618, 0.847901, -0.525157,
		-0.921994, -0.143723, -0.359542,
		38.848633, 40.808067, 33.423187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206764, 41.510017, 33.903221>,  <39.494030, 40.908672, 33.674870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206764, 41.510017, 33.903221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.903576, 41.270329, 33.800137>,  <38.721664, 41.126514, 33.738285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.903576, 41.270329, 33.800137>,  <39.206764, 41.510017, 33.903221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903576, 41.270329, 33.800137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559045, 0.393195, 0.729977,
		-0.336090, 0.697371, -0.633023,
		-0.757966, -0.599226, -0.257712,
		38.676186, 41.090561, 33.722824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624649, 41.937428, 34.053810>,  <39.206764, 41.510017, 33.903221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624649, 41.937428, 34.053810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.511780, 41.553879, 34.066128>,  <38.444057, 41.323750, 34.073517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.511780, 41.553879, 34.066128>,  <38.624649, 41.937428, 34.053810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511780, 41.553879, 34.066128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631434, 0.209786, 0.746512,
		-0.722268, 0.191199, -0.664659,
		-0.282169, -0.958871, 0.030792,
		38.427128, 41.266216, 34.075367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886490, 41.991791, 34.127758>,  <38.624649, 41.937428, 34.053810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886490, 41.991791, 34.127758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949730, 41.614807, 34.245590>,  <37.987675, 41.388618, 34.316292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949730, 41.614807, 34.245590>,  <37.886490, 41.991791, 34.127758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949730, 41.614807, 34.245590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702555, 0.102269, 0.704242,
		-0.693844, -0.318302, -0.645960,
		0.158100, -0.942457, 0.294583,
		37.997158, 41.332069, 34.333965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253532, 41.585213, 34.104000>,  <37.886490, 41.991791, 34.127758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253532, 41.585213, 34.104000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.483635, 41.432800, 34.393524>,  <37.621696, 41.341354, 34.567238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.483635, 41.432800, 34.393524>,  <37.253532, 41.585213, 34.104000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483635, 41.432800, 34.393524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764264, 0.064997, 0.641620,
		-0.291521, -0.922276, -0.253817,
		0.575253, -0.381029, 0.723810,
		37.656212, 41.318493, 34.610668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813190, 41.270199, 34.496685>,  <37.253532, 41.585213, 34.104000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813190, 41.270199, 34.496685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.128281, 41.256268, 34.742699>,  <37.317337, 41.247910, 34.890308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.128281, 41.256268, 34.742699>,  <36.813190, 41.270199, 34.496685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128281, 41.256268, 34.742699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607471, 0.121851, 0.784940,
		-0.102279, -0.991937, 0.074830,
		0.787730, -0.034826, 0.615036,
		37.364601, 41.245819, 34.927208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741104, 40.714149, 34.926579>,  <36.813190, 41.270199, 34.496685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741104, 40.714149, 34.926579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966496, 40.975380, 35.128960>,  <37.101730, 41.132118, 35.250389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.966496, 40.975380, 35.128960>,  <36.741104, 40.714149, 34.926579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966496, 40.975380, 35.128960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626570, -0.061312, 0.776950,
		0.538427, -0.754807, 0.374650,
		0.563476, 0.653075, 0.505951,
		37.135540, 41.171303, 35.280746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739212, 40.460453, 35.577129>,  <36.741104, 40.714149, 34.926579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739212, 40.460453, 35.577129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.855522, 40.838818, 35.634686>,  <36.925308, 41.065834, 35.669220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.855522, 40.838818, 35.634686>,  <36.739212, 40.460453, 35.577129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855522, 40.838818, 35.634686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725666, 0.120013, 0.677500,
		0.623584, -0.301421, 0.721310,
		0.290780, 0.945908, 0.143893,
		36.942757, 41.122589, 35.677853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750896, 40.451324, 36.226215>,  <36.739212, 40.460453, 35.577129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750896, 40.451324, 36.226215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.762985, 40.837284, 36.121872>,  <36.770241, 41.068859, 36.059265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.762985, 40.837284, 36.121872>,  <36.750896, 40.451324, 36.226215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762985, 40.837284, 36.121872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428244, 0.248313, 0.868878,
		0.903158, 0.085450, 0.420719,
		0.030224, 0.964904, -0.260859,
		36.772053, 41.126755, 36.043613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925262, 40.831638, 36.866932>,  <36.750896, 40.451324, 36.226215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925262, 40.831638, 36.866932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.771767, 41.120743, 36.637024>,  <36.679668, 41.294205, 36.499081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.771767, 41.120743, 36.637024>,  <36.925262, 40.831638, 36.866932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771767, 41.120743, 36.637024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502374, 0.358854, 0.786667,
		0.774830, 0.590625, 0.225389,
		-0.383743, 0.722763, -0.574765,
		36.656643, 41.337570, 36.464596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119514, 41.480515, 37.088123>,  <36.925262, 40.831638, 36.866932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119514, 41.480515, 37.088123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.760136, 41.479767, 36.912495>,  <36.544506, 41.479321, 36.807117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.760136, 41.479767, 36.912495>,  <37.119514, 41.480515, 37.088123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760136, 41.479767, 36.912495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387457, 0.473798, 0.790818,
		0.206557, 0.880632, -0.426406,
		-0.898449, -0.001865, -0.439074,
		36.490601, 41.479206, 36.780773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.544636, 39.147217, 30.293604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173080, 39.021645, 30.215004>,  <39.950146, 38.946301, 30.167843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173080, 39.021645, 30.215004>,  <40.544636, 39.147217, 30.293604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173080, 39.021645, 30.215004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370346, 0.782643, 0.500314,
		-0.003275, 0.537509, -0.843252,
		-0.928888, -0.313933, -0.196501,
		39.894413, 38.927464, 30.156054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121510, 39.757923, 30.038130>,  <40.544636, 39.147217, 30.293604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121510, 39.757923, 30.038130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856369, 39.489311, 30.170597>,  <39.697285, 39.328144, 30.250076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856369, 39.489311, 30.170597>,  <40.121510, 39.757923, 30.038130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856369, 39.489311, 30.170597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347791, 0.667821, 0.658071,
		-0.663076, 0.321026, -0.676219,
		-0.662851, -0.671534, 0.331166,
		39.657513, 39.287849, 30.269947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540962, 40.160213, 30.107801>,  <40.121510, 39.757923, 30.038130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540962, 40.160213, 30.107801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451210, 39.825344, 30.307318>,  <39.397358, 39.624424, 30.427027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451210, 39.825344, 30.307318>,  <39.540962, 40.160213, 30.107801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451210, 39.825344, 30.307318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316785, 0.546706, 0.775087,
		-0.921574, 0.015907, -0.387875,
		-0.224383, -0.837174, 0.498791,
		39.383896, 39.574192, 30.456955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794434, 40.162373, 30.231070>,  <39.540962, 40.160213, 30.107801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794434, 40.162373, 30.231070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986122, 39.948845, 30.509750>,  <39.101135, 39.820728, 30.676958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986122, 39.948845, 30.509750>,  <38.794434, 40.162373, 30.231070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986122, 39.948845, 30.509750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444609, 0.536758, 0.717086,
		-0.756751, -0.653401, 0.019885,
		0.479219, -0.533815, 0.696700,
		39.129887, 39.788700, 30.718761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345753, 40.267052, 30.809441>,  <38.794434, 40.162373, 30.231070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345753, 40.267052, 30.809441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667130, 40.081566, 30.958813>,  <38.859955, 39.970272, 31.048435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667130, 40.081566, 30.958813>,  <38.345753, 40.267052, 30.809441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667130, 40.081566, 30.958813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128556, 0.477295, 0.869289,
		-0.581339, -0.746429, 0.323865,
		0.803441, -0.463717, 0.373428,
		38.908161, 39.942451, 31.070841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072193, 40.077213, 31.438154>,  <38.345753, 40.267052, 30.809441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072193, 40.077213, 31.438154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472027, 40.082005, 31.448627>,  <38.711926, 40.084881, 31.454910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472027, 40.082005, 31.448627>,  <38.072193, 40.077213, 31.438154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472027, 40.082005, 31.448627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028347, 0.250126, 0.967798,
		0.005043, -0.968139, 0.250361,
		0.999585, 0.011978, 0.026182,
		38.771904, 40.085598, 31.456482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198071, 39.590321, 32.043056>,  <38.072193, 40.077213, 31.438154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198071, 39.590321, 32.043056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526737, 39.813663, 31.997272>,  <38.723938, 39.947670, 31.969801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526737, 39.813663, 31.997272>,  <38.198071, 39.590321, 32.043056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526737, 39.813663, 31.997272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032141, 0.245895, 0.968763,
		0.569061, -0.792322, 0.219990,
		0.821667, 0.558356, -0.114464,
		38.773239, 39.981171, 31.962933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634987, 39.445789, 32.556786>,  <38.198071, 39.590321, 32.043056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634987, 39.445789, 32.556786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747726, 39.814632, 32.450745>,  <38.815372, 40.035938, 32.387119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747726, 39.814632, 32.450745>,  <38.634987, 39.445789, 32.556786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747726, 39.814632, 32.450745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043198, 0.288223, 0.956588,
		0.958485, -0.258165, 0.121070,
		0.281852, 0.922105, -0.265105,
		38.832283, 40.091263, 32.371212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947498, 39.596638, 33.150681>,  <38.634987, 39.445789, 32.556786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947498, 39.596638, 33.150681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888489, 39.943031, 32.959553>,  <38.853085, 40.150867, 32.844875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888489, 39.943031, 32.959553>,  <38.947498, 39.596638, 33.150681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888489, 39.943031, 32.959553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237938, 0.437846, 0.866993,
		0.960011, 0.241595, 0.141456,
		-0.147525, 0.865981, -0.477822,
		38.844231, 40.202824, 32.816208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492844, 39.108891, 32.886047>,  <38.947498, 39.596638, 33.150681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492844, 39.108891, 32.886047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554901, 38.866421, 33.198071>,  <39.592136, 38.720940, 33.385284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554901, 38.866421, 33.198071>,  <39.492844, 39.108891, 32.886047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554901, 38.866421, 33.198071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081442, -0.779079, -0.621614,
		0.984528, 0.159972, -0.071504,
		0.155148, -0.606173, 0.780053,
		39.601444, 38.684570, 33.432087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158428, 38.694595, 32.811241>,  <39.492844, 39.108891, 32.886047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158428, 38.694595, 32.811241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881313, 38.505001, 33.028637>,  <39.715046, 38.391243, 33.159077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881313, 38.505001, 33.028637>,  <40.158428, 38.694595, 32.811241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881313, 38.505001, 33.028637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032603, -0.773470, -0.632994,
		0.720405, -0.420810, 0.551303,
		-0.692787, -0.473986, 0.543492,
		39.673477, 38.362804, 33.191685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387554, 38.063965, 32.897663>,  <40.158428, 38.694595, 32.811241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387554, 38.063965, 32.897663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000858, 38.014900, 32.987434>,  <39.768841, 37.985462, 33.041298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000858, 38.014900, 32.987434>,  <40.387554, 38.063965, 32.897663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000858, 38.014900, 32.987434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021139, -0.912809, -0.407839,
		0.254889, -0.389530, 0.885041,
		-0.966739, -0.122663, 0.224431,
		39.710838, 37.978100, 33.054764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329113, 37.343727, 33.077633>,  <40.387554, 38.063965, 32.897663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329113, 37.343727, 33.077633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954613, 37.457489, 32.995125>,  <39.729912, 37.525745, 32.945621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954613, 37.457489, 32.995125>,  <40.329113, 37.343727, 33.077633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954613, 37.457489, 32.995125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139714, -0.840091, -0.524144,
		-0.322350, -0.461913, 0.826273,
		-0.936253, 0.284400, -0.206267,
		39.673737, 37.542809, 32.933243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903900, 36.802967, 33.243549>,  <40.329113, 37.343727, 33.077633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903900, 36.802967, 33.243549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716000, 37.009117, 32.956852>,  <39.603260, 37.132809, 32.784832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716000, 37.009117, 32.956852>,  <39.903900, 36.802967, 33.243549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716000, 37.009117, 32.956852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017506, -0.806303, -0.591244,
		-0.882624, -0.290286, 0.369741,
		-0.469753, 0.515374, -0.716744,
		39.575073, 37.163731, 32.741829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519222, 36.347134, 32.861382>,  <39.903900, 36.802967, 33.243549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519222, 36.347134, 32.861382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511845, 36.649261, 32.599342>,  <39.507416, 36.830536, 32.442120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511845, 36.649261, 32.599342>,  <39.519222, 36.347134, 32.861382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511845, 36.649261, 32.599342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037966, -0.654210, -0.755360,
		-0.999109, -0.038805, -0.016609,
		-0.018446, 0.755317, -0.655100,
		39.506310, 36.875858, 32.402813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105953, 36.057552, 32.365513>,  <39.519222, 36.347134, 32.861382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105953, 36.057552, 32.365513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331955, 36.342133, 32.198368>,  <39.467556, 36.512882, 32.098080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331955, 36.342133, 32.198368>,  <39.105953, 36.057552, 32.365513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331955, 36.342133, 32.198368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302872, -0.649929, -0.697037,
		-0.767490, 0.267267, -0.582689,
		0.565002, 0.711449, -0.417866,
		39.501457, 36.555569, 32.073009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000404, 35.901306, 31.687197>,  <39.105953, 36.057552, 32.365513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000404, 35.901306, 31.687197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326069, 36.133526, 31.683054>,  <39.521465, 36.272858, 31.680569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326069, 36.133526, 31.683054>,  <39.000404, 35.901306, 31.687197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326069, 36.133526, 31.683054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414304, -0.593326, -0.690157,
		-0.406816, 0.557607, -0.723585,
		0.814158, 0.580551, -0.010356,
		39.570316, 36.307690, 31.679947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238266, 36.170273, 30.932203>,  <39.000404, 35.901306, 31.687197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238266, 36.170273, 30.932203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536209, 36.133835, 31.196596>,  <39.714973, 36.111973, 31.355232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536209, 36.133835, 31.196596>,  <39.238266, 36.170273, 30.932203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536209, 36.133835, 31.196596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475553, -0.622393, -0.621672,
		0.468019, 0.777386, -0.420273,
		0.744854, -0.091093, 0.660980,
		39.759666, 36.106506, 31.394890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720798, 35.985432, 30.416090>,  <39.238266, 36.170273, 30.932203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720798, 35.985432, 30.416090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932758, 35.950668, 30.753529>,  <40.059933, 35.929810, 30.955992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932758, 35.950668, 30.753529>,  <39.720798, 35.985432, 30.416090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932758, 35.950668, 30.753529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539453, -0.733000, -0.414370,
		0.654369, 0.674654, -0.341530,
		0.529898, -0.086912, 0.843596,
		40.091728, 35.924595, 31.006607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440819, 36.056538, 30.226072>,  <39.720798, 35.985432, 30.416090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440819, 36.056538, 30.226072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430653, 35.853939, 30.570820>,  <40.424553, 35.732380, 30.777668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430653, 35.853939, 30.570820>,  <40.440819, 36.056538, 30.226072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430653, 35.853939, 30.570820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623415, -0.681996, -0.382406,
		0.781478, 0.527585, 0.333086,
		-0.025411, -0.506493, 0.861870,
		40.423031, 35.701992, 30.829380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035946, 35.860031, 30.362856>,  <40.440819, 36.056538, 30.226072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035946, 35.860031, 30.362856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825939, 35.610317, 30.594242>,  <40.699936, 35.460487, 30.733074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825939, 35.610317, 30.594242>,  <41.035946, 35.860031, 30.362856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825939, 35.610317, 30.594242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635181, -0.739799, -0.221905,
		0.566481, 0.250926, 0.784943,
		-0.525018, -0.624286, 0.578466,
		40.668434, 35.423031, 30.767782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460728, 35.464890, 30.763887>,  <41.035946, 35.860031, 30.362856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460728, 35.464890, 30.763887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132637, 35.236080, 30.765537>,  <40.935783, 35.098793, 30.766527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132637, 35.236080, 30.765537>,  <41.460728, 35.464890, 30.763887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132637, 35.236080, 30.765537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541415, -0.778629, -0.317186,
		0.184650, -0.257931, 0.948354,
		-0.820228, -0.572022, 0.004126,
		40.886570, 35.064472, 30.766775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622002, 34.771965, 31.029844>,  <41.460728, 35.464890, 30.763887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622002, 34.771965, 31.029844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279510, 34.710075, 30.832691>,  <41.074017, 34.672939, 30.714399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279510, 34.710075, 30.832691>,  <41.622002, 34.771965, 31.029844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279510, 34.710075, 30.832691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394592, -0.811675, -0.430674,
		-0.333424, -0.563243, 0.756033,
		-0.856228, -0.154727, -0.492884,
		41.022644, 34.663658, 30.684826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.510357, 31.566883, 29.383051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.729691, 31.895201, 29.319017>,  <34.861290, 32.092190, 29.280598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.729691, 31.895201, 29.319017>,  <34.510357, 31.566883, 29.383051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729691, 31.895201, 29.319017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223208, 0.328135, 0.917881,
		0.805920, -0.467574, 0.363136,
		0.548335, 0.820793, -0.160085,
		34.894192, 32.141438, 29.270992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918312, 31.621582, 29.975050>,  <34.510357, 31.566883, 29.383051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918312, 31.621582, 29.975050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.918503, 31.971771, 29.781744>,  <34.918617, 32.181885, 29.665760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.918503, 31.971771, 29.781744>,  <34.918312, 31.621582, 29.975050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918503, 31.971771, 29.781744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287709, 0.462951, 0.838391,
		0.957718, 0.138640, 0.252102,
		0.000476, 0.875474, -0.483265,
		34.918644, 32.234413, 29.636765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268608, 31.942602, 30.373980>,  <34.918312, 31.621582, 29.975050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268608, 31.942602, 30.373980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.082016, 32.215652, 30.148975>,  <34.970062, 32.379482, 30.013973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.082016, 32.215652, 30.148975>,  <35.268608, 31.942602, 30.373980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082016, 32.215652, 30.148975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120920, 0.580759, 0.805045,
		0.876228, 0.443555, -0.188368,
		-0.466479, 0.682626, -0.562512,
		34.942074, 32.420441, 29.980223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645275, 32.581528, 30.516497>,  <35.268608, 31.942602, 30.373980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645275, 32.581528, 30.516497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.277950, 32.676834, 30.390053>,  <35.057556, 32.734020, 30.314186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.277950, 32.676834, 30.390053>,  <35.645275, 32.581528, 30.516497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277950, 32.676834, 30.390053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055219, 0.713648, 0.698325,
		0.391981, 0.658738, -0.642196,
		-0.918315, 0.238268, -0.316111,
		35.002457, 32.748314, 30.295219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620258, 33.275829, 30.710852>,  <35.645275, 32.581528, 30.516497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620258, 33.275829, 30.710852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.238682, 33.175636, 30.644823>,  <35.009735, 33.115520, 30.605206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.238682, 33.175636, 30.644823>,  <35.620258, 33.275829, 30.710852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238682, 33.175636, 30.644823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298637, 0.740873, 0.601601,
		-0.028396, 0.623190, -0.781555,
		-0.953944, -0.250484, -0.165070,
		34.952499, 33.100491, 30.595303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294128, 33.903275, 30.754059>,  <35.620258, 33.275829, 30.710852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294128, 33.903275, 30.754059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.996281, 33.641335, 30.805775>,  <34.817574, 33.484169, 30.836803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.996281, 33.641335, 30.805775>,  <35.294128, 33.903275, 30.754059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996281, 33.641335, 30.805775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420478, 0.610608, 0.671086,
		-0.518406, 0.445340, -0.730019,
		-0.744617, -0.654852, 0.129287,
		34.772896, 33.444878, 30.844561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695976, 34.329746, 30.780392>,  <35.294128, 33.903275, 30.754059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695976, 34.329746, 30.780392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.584957, 33.986752, 30.953684>,  <34.518345, 33.780956, 31.057659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.584957, 33.986752, 30.953684>,  <34.695976, 34.329746, 30.780392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584957, 33.986752, 30.953684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418110, 0.513810, 0.749122,
		-0.864959, 0.026777, -0.501128,
		-0.277544, -0.857486, 0.433229,
		34.501694, 33.729507, 31.083652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090698, 34.483120, 31.143169>,  <34.695976, 34.329746, 30.780392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090698, 34.483120, 31.143169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.197933, 34.136261, 31.311069>,  <34.262276, 33.928146, 31.411810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.197933, 34.136261, 31.311069>,  <34.090698, 34.483120, 31.143169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197933, 34.136261, 31.311069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316047, 0.332424, 0.888599,
		-0.910078, -0.370885, -0.184939,
		0.268090, -0.867144, 0.419749,
		34.278358, 33.876118, 31.436995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515129, 34.317268, 31.568682>,  <34.090698, 34.483120, 31.143169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515129, 34.317268, 31.568682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.848625, 34.133572, 31.691303>,  <34.048721, 34.023354, 31.764877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.848625, 34.133572, 31.691303>,  <33.515129, 34.317268, 31.568682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848625, 34.133572, 31.691303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125046, 0.383727, 0.914941,
		-0.537815, -0.801154, 0.262501,
		0.833737, -0.459244, 0.306556,
		34.098747, 33.995800, 31.783270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313656, 33.980232, 32.169353>,  <33.515129, 34.317268, 31.568682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313656, 33.980232, 32.169353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.711941, 34.003902, 32.197819>,  <33.950912, 34.018105, 32.214897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.711941, 34.003902, 32.197819>,  <33.313656, 33.980232, 32.169353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711941, 34.003902, 32.197819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084794, 0.275116, 0.957664,
		0.037093, -0.959588, 0.278953,
		0.995708, 0.059176, 0.071162,
		34.010654, 34.021656, 32.219166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510311, 33.794006, 32.849289>,  <33.313656, 33.980232, 32.169353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510311, 33.794006, 32.849289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.868233, 33.948830, 32.760292>,  <34.082985, 34.041725, 32.706894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.868233, 33.948830, 32.760292>,  <33.510311, 33.794006, 32.849289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868233, 33.948830, 32.760292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088676, 0.334351, 0.938267,
		0.437559, -0.859298, 0.264857,
		0.894807, 0.387061, -0.222498,
		34.136677, 34.064949, 32.693542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073902, 33.675724, 33.508011>,  <33.510311, 33.794006, 32.849289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073902, 33.675724, 33.508011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.189648, 33.979946, 33.275520>,  <34.259094, 34.162479, 33.136024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.189648, 33.979946, 33.275520>,  <34.073902, 33.675724, 33.508011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189648, 33.979946, 33.275520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062795, 0.590814, 0.804361,
		0.955158, -0.269250, 0.123200,
		0.289362, 0.760555, -0.581228,
		34.276455, 34.208111, 33.101151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648998, 33.980064, 33.940994>,  <34.073902, 33.675724, 33.508011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648998, 33.980064, 33.940994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.491756, 34.247681, 33.688694>,  <34.397411, 34.408249, 33.537312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.491756, 34.247681, 33.688694>,  <34.648998, 33.980064, 33.940994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491756, 34.247681, 33.688694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022175, 0.692679, 0.720905,
		0.919225, 0.269406, -0.287134,
		-0.393107, 0.669042, -0.630754,
		34.373825, 34.448395, 33.499470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080875, 34.646568, 34.078442>,  <34.648998, 33.980064, 33.940994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080875, 34.646568, 34.078442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.744659, 34.765247, 33.897125>,  <34.542931, 34.836456, 33.788338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.744659, 34.765247, 33.897125>,  <35.080875, 34.646568, 34.078442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744659, 34.765247, 33.897125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159799, 0.663692, 0.730737,
		0.517651, 0.686646, -0.510446,
		-0.840537, 0.296698, -0.453286,
		34.492500, 34.854256, 33.761139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811741, 34.586658, 34.165817>,  <35.080875, 34.646568, 34.078442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811741, 34.586658, 34.165817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.865822, 34.339500, 34.475639>,  <35.898270, 34.191208, 34.661533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.865822, 34.339500, 34.475639>,  <35.811741, 34.586658, 34.165817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865822, 34.339500, 34.475639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179067, -0.753619, -0.632451,
		0.974503, 0.224204, 0.008755,
		0.135201, -0.617893, 0.774551,
		35.906384, 34.154133, 34.708004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343746, 34.162037, 33.931946>,  <35.811741, 34.586658, 34.165817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343746, 34.162037, 33.931946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.187134, 33.961739, 34.240738>,  <36.093166, 33.841560, 34.426014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.187134, 33.961739, 34.240738>,  <36.343746, 34.162037, 33.931946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187134, 33.961739, 34.240738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009524, -0.836710, -0.547563,
		0.920115, -0.221741, 0.322830,
		-0.391532, -0.500746, 0.771982,
		36.069675, 33.811516, 34.472332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823597, 33.626492, 33.957901>,  <36.343746, 34.162037, 33.931946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823597, 33.626492, 33.957901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.486568, 33.509758, 34.138966>,  <36.284351, 33.439716, 34.247604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.486568, 33.509758, 34.138966>,  <36.823597, 33.626492, 33.957901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486568, 33.509758, 34.138966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168999, -0.941281, -0.292282,
		0.511385, -0.169767, 0.842416,
		-0.842571, -0.291836, 0.452666,
		36.233799, 33.422207, 34.274765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075886, 32.967422, 34.301861>,  <36.823597, 33.626492, 33.957901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075886, 32.967422, 34.301861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.679966, 32.967522, 34.244869>,  <36.442413, 32.967579, 34.210674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.679966, 32.967522, 34.244869>,  <37.075886, 32.967422, 34.301861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679966, 32.967522, 34.244869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067904, -0.878318, -0.473231,
		-0.125258, -0.478078, 0.869340,
		-0.989798, 0.000245, -0.142480,
		36.383026, 32.967594, 34.202126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856091, 32.242676, 34.545948>,  <37.075886, 32.967422, 34.301861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856091, 32.242676, 34.545948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561455, 32.385319, 34.316074>,  <36.384674, 32.470905, 34.178150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561455, 32.385319, 34.316074>,  <36.856091, 32.242676, 34.545948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561455, 32.385319, 34.316074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000004, -0.849704, -0.527260,
		-0.676340, -0.388372, 0.625884,
		-0.736590, 0.356610, -0.574687,
		36.340477, 32.492302, 34.143669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531212, 31.619907, 34.198940>,  <36.856091, 32.242676, 34.545948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531212, 31.619907, 34.198940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.377911, 31.914776, 33.976337>,  <36.285931, 32.091698, 33.842777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.377911, 31.914776, 33.976337>,  <36.531212, 31.619907, 34.198940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377911, 31.914776, 33.976337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095636, -0.630943, -0.769913,
		-0.918681, -0.241846, 0.312308,
		-0.383249, 0.737172, -0.556506,
		36.262936, 32.135929, 33.809387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895565, 31.354555, 33.929214>,  <36.531212, 31.619907, 34.198940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895565, 31.354555, 33.929214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070942, 31.627108, 33.694782>,  <36.176170, 31.790638, 33.554123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070942, 31.627108, 33.694782>,  <35.895565, 31.354555, 33.929214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070942, 31.627108, 33.694782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017431, -0.645528, -0.763537,
		-0.898589, 0.344985, -0.271152,
		0.438445, 0.681380, -0.586078,
		36.202477, 31.831522, 33.518959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629230, 31.238026, 33.242157>,  <35.895565, 31.354555, 33.929214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629230, 31.238026, 33.242157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.970604, 31.436125, 33.177197>,  <36.175430, 31.554983, 33.138222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.970604, 31.436125, 33.177197>,  <35.629230, 31.238026, 33.242157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970604, 31.436125, 33.177197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157906, -0.542643, -0.824987,
		-0.496699, 0.678431, -0.541315,
		0.853438, 0.495247, -0.162402,
		36.226635, 31.584700, 33.128475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724499, 31.103508, 32.525211>,  <35.629230, 31.238026, 33.242157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724499, 31.103508, 32.525211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.062340, 31.310083, 32.581688>,  <36.265045, 31.434029, 32.615574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.062340, 31.310083, 32.581688>,  <35.724499, 31.103508, 32.525211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062340, 31.310083, 32.581688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354121, -0.341080, -0.870783,
		-0.401546, 0.785467, -0.470959,
		0.844606, 0.516436, 0.141191,
		36.315720, 31.465014, 32.624046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805470, 31.528666, 31.936806>,  <35.724499, 31.103508, 32.525211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805470, 31.528666, 31.936806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176846, 31.477526, 32.076324>,  <36.399670, 31.446842, 32.160038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176846, 31.477526, 32.076324>,  <35.805470, 31.528666, 31.936806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176846, 31.477526, 32.076324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324279, -0.179163, -0.928840,
		0.181243, 0.975477, -0.124882,
		0.928436, -0.127850, 0.348799,
		36.455376, 31.439171, 32.180965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212044, 31.913376, 31.582170>,  <35.805470, 31.528666, 31.936806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212044, 31.913376, 31.582170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.456787, 31.636518, 31.735304>,  <36.603634, 31.470404, 31.827183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.456787, 31.636518, 31.735304>,  <36.212044, 31.913376, 31.582170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456787, 31.636518, 31.735304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356710, -0.190528, -0.914580,
		0.705963, 0.696156, 0.130318,
		0.611861, -0.692146, 0.382832,
		36.640347, 31.428875, 31.850153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845337, 31.966166, 31.257900>,  <36.212044, 31.913376, 31.582170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845337, 31.966166, 31.257900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865807, 31.603186, 31.424715>,  <36.878090, 31.385399, 31.524803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865807, 31.603186, 31.424715>,  <36.845337, 31.966166, 31.257900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865807, 31.603186, 31.424715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393443, -0.365492, -0.843575,
		0.917924, 0.207252, 0.338324,
		0.051178, -0.907448, 0.417036,
		36.881161, 31.330952, 31.549826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585690, 31.726875, 31.288555>,  <36.845337, 31.966166, 31.257900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585690, 31.726875, 31.288555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.342365, 31.409416, 31.284832>,  <37.196373, 31.218941, 31.282598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.342365, 31.409416, 31.284832>,  <37.585690, 31.726875, 31.288555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342365, 31.409416, 31.284832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415799, -0.308667, -0.855474,
		0.676071, -0.524261, 0.517762,
		-0.608308, -0.793646, -0.009306,
		37.159874, 31.171322, 31.282040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994144, 31.148354, 30.999720>,  <37.585690, 31.726875, 31.288555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994144, 31.148354, 30.999720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.622768, 31.002165, 30.973118>,  <37.399940, 30.914452, 30.957157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.622768, 31.002165, 30.973118>,  <37.994144, 31.148354, 30.999720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622768, 31.002165, 30.973118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225334, -0.411757, -0.882996,
		0.295328, -0.834796, 0.464646,
		-0.928443, -0.365474, -0.066504,
		37.344234, 30.892523, 30.953167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499870, 30.891680, 31.294794>,  <37.994144, 31.148354, 30.999720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499870, 30.891680, 31.294794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.825390, 31.090199, 31.173849>,  <39.020702, 31.209309, 31.101282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.825390, 31.090199, 31.173849>,  <38.499870, 30.891680, 31.294794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825390, 31.090199, 31.173849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009162, 0.509267, 0.860560,
		0.581078, -0.703091, 0.409892,
		0.813796, 0.496297, -0.302366,
		39.069530, 31.239086, 31.083139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997154, 30.811707, 31.873331>,  <38.499870, 30.891680, 31.294794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997154, 30.811707, 31.873331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.116985, 31.130762, 31.663940>,  <39.188885, 31.322195, 31.538307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.116985, 31.130762, 31.663940>,  <38.997154, 30.811707, 31.873331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116985, 31.130762, 31.663940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007177, 0.550544, 0.834776,
		0.954045, -0.246324, 0.170655,
		0.299579, 0.797638, -0.523475,
		39.206860, 31.370054, 31.506897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597122, 30.990995, 32.148041>,  <38.997154, 30.811707, 31.873331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597122, 30.990995, 32.148041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.439251, 31.312220, 31.969458>,  <39.344528, 31.504953, 31.862309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.439251, 31.312220, 31.969458>,  <39.597122, 30.990995, 32.148041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439251, 31.312220, 31.969458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147978, 0.535117, 0.831717,
		0.906824, 0.262197, -0.330035,
		-0.394680, 0.803058, -0.446458,
		39.320847, 31.553137, 31.835520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906670, 31.478226, 32.479992>,  <39.597122, 30.990995, 32.148041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906670, 31.478226, 32.479992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.606251, 31.684755, 32.315392>,  <39.425999, 31.808674, 32.216633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.606251, 31.684755, 32.315392>,  <39.906670, 31.478226, 32.479992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606251, 31.684755, 32.315392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069295, 0.558170, 0.826828,
		0.656600, 0.649503, -0.383435,
		-0.751049, 0.516325, -0.411502,
		39.380936, 31.839653, 32.191940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153198, 32.161854, 32.628456>,  <39.906670, 31.478226, 32.479992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153198, 32.161854, 32.628456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.759335, 32.161213, 32.558662>,  <39.523018, 32.160828, 32.516785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.759335, 32.161213, 32.558662>,  <40.153198, 32.161854, 32.628456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759335, 32.161213, 32.558662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144210, 0.570453, 0.808571,
		0.098238, 0.821328, -0.561933,
		-0.984659, -0.001604, -0.174484,
		39.463936, 32.160732, 32.506317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020397, 32.910160, 32.790348>,  <40.153198, 32.161854, 32.628456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020397, 32.910160, 32.790348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.652157, 32.754166, 32.782360>,  <39.431213, 32.660568, 32.777569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.652157, 32.754166, 32.782360>,  <40.020397, 32.910160, 32.790348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652157, 32.754166, 32.782360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285101, 0.636307, 0.716820,
		-0.266842, 0.665601, -0.696972,
		-0.920605, -0.389985, -0.019970,
		39.375977, 32.637169, 32.776371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526157, 33.465672, 32.799057>,  <40.020397, 32.910160, 32.790348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526157, 33.465672, 32.799057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.319363, 33.147297, 32.925045>,  <39.195286, 32.956272, 33.000637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.319363, 33.147297, 32.925045>,  <39.526157, 33.465672, 32.799057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319363, 33.147297, 32.925045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366307, 0.538282, 0.758994,
		-0.773653, 0.277018, -0.569844,
		-0.516992, -0.795936, 0.314970,
		39.164265, 32.908516, 33.019535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888657, 33.713577, 32.950901>,  <39.526157, 33.465672, 32.799057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888657, 33.713577, 32.950901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.922089, 33.365345, 33.144852>,  <38.942150, 33.156406, 33.261223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.922089, 33.365345, 33.144852>,  <38.888657, 33.713577, 32.950901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922089, 33.365345, 33.144852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366214, 0.425698, 0.827447,
		-0.926769, -0.246730, -0.283237,
		0.083583, -0.870578, 0.484880,
		38.947163, 33.104172, 33.290318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233421, 33.634647, 33.253597>,  <38.888657, 33.713577, 32.950901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233421, 33.634647, 33.253597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527042, 33.478127, 33.475605>,  <38.703217, 33.384212, 33.608810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527042, 33.478127, 33.475605>,  <38.233421, 33.634647, 33.253597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527042, 33.478127, 33.475605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318546, 0.523397, 0.790306,
		-0.599745, -0.756927, 0.259554,
		0.734053, -0.391302, 0.555021,
		38.747257, 33.360737, 33.642113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880001, 33.523636, 33.877022>,  <38.233421, 33.634647, 33.253597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880001, 33.523636, 33.877022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.273289, 33.486816, 33.940014>,  <38.509262, 33.464725, 33.977810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.273289, 33.486816, 33.940014>,  <37.880001, 33.523636, 33.877022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273289, 33.486816, 33.940014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098522, 0.458613, 0.883158,
		-0.153516, -0.883856, 0.441850,
		0.983222, -0.092047, 0.157483,
		38.568256, 33.459202, 33.987259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879642, 33.636936, 34.567863>,  <37.880001, 33.523636, 33.877022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879642, 33.636936, 34.567863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.272465, 33.651234, 34.493801>,  <38.508160, 33.659813, 34.449364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.272465, 33.651234, 34.493801>,  <37.879642, 33.636936, 34.567863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272465, 33.651234, 34.493801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135735, 0.547621, 0.825644,
		0.130902, -0.835963, 0.532945,
		0.982060, 0.035740, -0.185154,
		38.567081, 33.661957, 34.438255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243004, 33.605881, 35.290291>,  <37.879642, 33.636936, 34.567863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243004, 33.605881, 35.290291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.483967, 33.776150, 35.020210>,  <38.628544, 33.878311, 34.858162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.483967, 33.776150, 35.020210>,  <38.243004, 33.605881, 35.290291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483967, 33.776150, 35.020210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189531, 0.745443, 0.639056,
		0.775356, -0.512947, 0.368387,
		0.602413, 0.425675, -0.675203,
		38.664692, 33.903854, 34.817650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775127, 33.779049, 35.650539>,  <38.243004, 33.605881, 35.290291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775127, 33.779049, 35.650539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789654, 34.010033, 35.324295>,  <38.798370, 34.148621, 35.128548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.789654, 34.010033, 35.324295>,  <38.775127, 33.779049, 35.650539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789654, 34.010033, 35.324295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247834, 0.785451, 0.567138,
		0.968122, -0.222734, -0.114587,
		0.036319, 0.577457, -0.815613,
		38.800549, 34.183270, 35.079613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502003, 34.009514, 35.640827>,  <38.775127, 33.779049, 35.650539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502003, 34.009514, 35.640827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274261, 34.277275, 35.449940>,  <39.137615, 34.437931, 35.335407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.274261, 34.277275, 35.449940>,  <39.502003, 34.009514, 35.640827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274261, 34.277275, 35.449940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316433, 0.714211, 0.624318,
		0.758753, 0.204452, -0.618460,
		-0.569354, 0.669405, -0.477215,
		39.103455, 34.478096, 35.306774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.576061, 34.034615, 31.108788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.314342, 34.131973, 30.822388>,  <41.157310, 34.190388, 30.650547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.314342, 34.131973, 30.822388>,  <41.576061, 34.034615, 31.108788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314342, 34.131973, 30.822388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390250, -0.702313, -0.595366,
		-0.647766, -0.668964, 0.364535,
		-0.654296, 0.243398, -0.715998,
		41.118053, 34.204994, 30.607588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198730, 33.425476, 30.968513>,  <41.576061, 34.034615, 31.108788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198730, 33.425476, 30.968513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.162720, 33.671169, 30.654924>,  <41.141113, 33.818584, 30.466770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.162720, 33.671169, 30.654924>,  <41.198730, 33.425476, 30.968513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162720, 33.671169, 30.654924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245724, -0.749138, -0.615153,
		-0.965151, -0.248019, -0.083491,
		-0.090023, 0.614231, -0.783975,
		41.135712, 33.855438, 30.419731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936920, 32.942574, 30.544346>,  <41.198730, 33.425476, 30.968513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936920, 32.942574, 30.544346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.024334, 33.266182, 30.326086>,  <41.076782, 33.460346, 30.195129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.024334, 33.266182, 30.326086>,  <40.936920, 32.942574, 30.544346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024334, 33.266182, 30.326086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069618, -0.570666, -0.818226,
		-0.973343, 0.140821, -0.181031,
		0.218531, 0.809017, -0.545651,
		41.089893, 33.508888, 30.162392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606155, 32.977032, 29.820833>,  <40.936920, 32.942574, 30.544346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606155, 32.977032, 29.820833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.924049, 33.213940, 29.767763>,  <41.114788, 33.356087, 29.735922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.924049, 33.213940, 29.767763>,  <40.606155, 32.977032, 29.820833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924049, 33.213940, 29.767763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173557, -0.431222, -0.885396,
		-0.581608, 0.680632, -0.445503,
		0.794739, 0.592273, -0.132674,
		41.162472, 33.391621, 29.727961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489990, 33.380035, 29.255144>,  <40.606155, 32.977032, 29.820833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489990, 33.380035, 29.255144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.884396, 33.357807, 29.317995>,  <41.121040, 33.344471, 29.355705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.884396, 33.357807, 29.317995>,  <40.489990, 33.380035, 29.255144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884396, 33.357807, 29.317995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143723, -0.193833, -0.970450,
		0.084382, 0.979460, -0.183135,
		0.986014, -0.055567, 0.157127,
		41.180199, 33.341137, 29.365133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786007, 33.753860, 28.616528>,  <40.489990, 33.380035, 29.255144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786007, 33.753860, 28.616528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.075699, 33.529129, 28.776445>,  <41.249516, 33.394291, 28.872396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.075699, 33.529129, 28.776445>,  <40.786007, 33.753860, 28.616528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075699, 33.529129, 28.776445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263055, -0.310830, -0.913338,
		0.637409, 0.766637, -0.077321,
		0.724232, -0.561830, 0.399794,
		41.292969, 33.360580, 28.896383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423454, 33.774498, 28.129950>,  <40.786007, 33.753860, 28.616528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423454, 33.774498, 28.129950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.475651, 33.458023, 28.368946>,  <41.506969, 33.268139, 28.512344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.475651, 33.458023, 28.368946>,  <41.423454, 33.774498, 28.129950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475651, 33.458023, 28.368946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365171, -0.521923, -0.770874,
		0.921750, 0.318777, 0.220814,
		0.130489, -0.791187, 0.597491,
		41.514797, 33.220665, 28.548193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089382, 33.687317, 27.921013>,  <41.423454, 33.774498, 28.129950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089382, 33.687317, 27.921013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.936337, 33.349247, 28.070293>,  <41.844509, 33.146404, 28.159861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.936337, 33.349247, 28.070293>,  <42.089382, 33.687317, 27.921013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936337, 33.349247, 28.070293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578473, -0.534111, -0.616518,
		0.720397, -0.020006, 0.693273,
		-0.382619, -0.845178, 0.373199,
		41.821552, 33.095695, 28.182253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669731, 33.272305, 28.117195>,  <42.089382, 33.687317, 27.921013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669731, 33.272305, 28.117195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.357273, 33.029446, 28.058973>,  <42.169800, 32.883728, 28.024040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.357273, 33.029446, 28.058973>,  <42.669731, 33.272305, 28.117195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357273, 33.029446, 28.058973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549695, -0.558238, -0.621455,
		0.296063, -0.565455, 0.769810,
		-0.781142, -0.607151, -0.145554,
		42.122932, 32.847301, 28.015306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025993, 32.667927, 27.886084>,  <42.669731, 33.272305, 28.117195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025993, 32.667927, 27.886084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.645729, 32.590515, 27.789103>,  <42.417568, 32.544067, 27.730913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.645729, 32.590515, 27.789103>,  <43.025993, 32.667927, 27.886084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645729, 32.590515, 27.789103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309437, -0.535895, -0.785535,
		0.022097, -0.821804, 0.569342,
		-0.950663, -0.193533, -0.242454,
		42.360531, 32.532455, 27.716366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049133, 32.025066, 27.675676>,  <43.025993, 32.667927, 27.886084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049133, 32.025066, 27.675676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.719601, 32.191528, 27.521738>,  <42.521881, 32.291405, 27.429375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.719601, 32.191528, 27.521738>,  <43.049133, 32.025066, 27.675676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719601, 32.191528, 27.521738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177362, -0.455596, -0.872339,
		-0.538369, -0.786919, 0.301524,
		-0.823833, 0.416161, -0.384848,
		42.472450, 32.316376, 27.406284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732708, 31.513222, 27.356680>,  <43.049133, 32.025066, 27.675676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732708, 31.513222, 27.356680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.581097, 31.840349, 27.183470>,  <42.490131, 32.036625, 27.079544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.581097, 31.840349, 27.183470>,  <42.732708, 31.513222, 27.356680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581097, 31.840349, 27.183470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233200, -0.368426, -0.899934,
		-0.895521, -0.442078, -0.051073,
		-0.379024, 0.817820, -0.433026,
		42.467388, 32.085693, 27.053562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129868, 31.317049, 26.788321>,  <42.732708, 31.513222, 27.356680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129868, 31.317049, 26.788321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.332413, 31.653261, 26.711267>,  <42.453941, 31.854988, 26.665035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.332413, 31.653261, 26.711267>,  <42.129868, 31.317049, 26.788321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332413, 31.653261, 26.711267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308992, -0.385412, -0.869472,
		-0.805058, 0.380750, -0.454875,
		0.506366, 0.840528, -0.192630,
		42.484322, 31.905420, 26.653479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064087, 31.343845, 26.016291>,  <42.129868, 31.317049, 26.788321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064087, 31.343845, 26.016291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.352772, 31.589926, 26.143198>,  <42.525982, 31.737574, 26.219341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.352772, 31.589926, 26.143198>,  <42.064087, 31.343845, 26.016291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352772, 31.589926, 26.143198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488335, -0.127685, -0.863264,
		-0.490572, 0.777961, -0.392576,
		0.721712, 0.615202, 0.317267,
		42.569286, 31.774487, 26.238379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731949, 30.641403, 26.255487>,  <42.064087, 31.343845, 26.016291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731949, 30.641403, 26.255487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.683468, 30.263195, 26.376350>,  <41.654381, 30.036270, 26.448868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.683468, 30.263195, 26.376350>,  <41.731949, 30.641403, 26.255487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683468, 30.263195, 26.376350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117359, 0.315916, 0.941501,
		-0.985666, 0.078652, -0.149255,
		-0.121202, -0.945522, 0.302157,
		41.647106, 29.979538, 26.466997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976006, 30.436031, 26.422062>,  <41.731949, 30.641403, 26.255487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976006, 30.436031, 26.422062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.214336, 30.186811, 26.624765>,  <41.357334, 30.037279, 26.746387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.214336, 30.186811, 26.624765>,  <40.976006, 30.436031, 26.422062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214336, 30.186811, 26.624765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470728, 0.240310, 0.848921,
		-0.650699, -0.744352, -0.150105,
		0.595824, -0.623051, 0.506757,
		41.393082, 29.999897, 26.776793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554092, 30.165148, 26.903400>,  <40.976006, 30.436031, 26.422062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554092, 30.165148, 26.903400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.923714, 30.091284, 27.037283>,  <41.145485, 30.046965, 27.117613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.923714, 30.091284, 27.037283>,  <40.554092, 30.165148, 26.903400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923714, 30.091284, 27.037283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322224, 0.094821, 0.941903,
		-0.205671, -0.978217, 0.028117,
		0.924051, -0.184662, 0.334707,
		41.200928, 30.035885, 27.137695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394993, 29.895903, 27.507048>,  <40.554092, 30.165148, 26.903400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394993, 29.895903, 27.507048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.787846, 29.953154, 27.555918>,  <41.023560, 29.987505, 27.585239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.787846, 29.953154, 27.555918>,  <40.394993, 29.895903, 27.507048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787846, 29.953154, 27.555918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164862, 0.341361, 0.925361,
		0.090738, -0.928971, 0.358858,
		0.982134, 0.143128, 0.122178,
		41.082485, 29.996092, 27.592571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619480, 29.572624, 28.069899>,  <40.394993, 29.895903, 27.507048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619480, 29.572624, 28.069899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.918507, 29.837606, 28.050747>,  <41.097923, 29.996595, 28.039257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.918507, 29.837606, 28.050747>,  <40.619480, 29.572624, 28.069899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918507, 29.837606, 28.050747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115729, 0.200903, 0.972751,
		0.654023, -0.721659, 0.226854,
		0.747570, 0.662456, -0.047878,
		41.142776, 30.036343, 28.036383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054836, 29.467672, 28.615490>,  <40.619480, 29.572624, 28.069899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054836, 29.467672, 28.615490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.131752, 29.845676, 28.509676>,  <41.177902, 30.072479, 28.446188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.131752, 29.845676, 28.509676>,  <41.054836, 29.467672, 28.615490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131752, 29.845676, 28.509676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266161, 0.309685, 0.912827,
		0.944554, -0.105120, 0.311075,
		0.192292, 0.945011, -0.264535,
		41.189438, 30.129179, 28.430315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412865, 29.795887, 29.180244>,  <41.054836, 29.467672, 28.615490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412865, 29.795887, 29.180244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.286301, 30.117882, 28.979492>,  <41.210361, 30.311079, 28.859041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.286301, 30.117882, 28.979492>,  <41.412865, 29.795887, 29.180244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286301, 30.117882, 28.979492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441278, 0.343437, 0.829051,
		0.839739, 0.483785, 0.246557,
		-0.316406, 0.804986, -0.501881,
		41.191380, 30.359377, 28.828928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605350, 30.393044, 29.583319>,  <41.412865, 29.795887, 29.180244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605350, 30.393044, 29.583319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.295914, 30.491371, 29.349695>,  <41.110252, 30.550367, 29.209522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.295914, 30.491371, 29.349695>,  <41.605350, 30.393044, 29.583319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295914, 30.491371, 29.349695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514605, 0.294132, 0.805399,
		0.369771, 0.923613, -0.101041,
		-0.773596, 0.245817, -0.584058,
		41.063835, 30.565117, 29.174479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406303, 30.931644, 29.885893>,  <41.605350, 30.393044, 29.583319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406303, 30.931644, 29.885893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.104187, 30.810347, 29.653490>,  <40.922916, 30.737568, 29.514048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.104187, 30.810347, 29.653490>,  <41.406303, 30.931644, 29.885893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104187, 30.810347, 29.653490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654850, 0.313379, 0.687724,
		-0.026474, 0.899909, -0.435274,
		-0.755295, -0.303246, -0.581009,
		40.877598, 30.719374, 29.479187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866432, 31.370041, 30.075565>,  <41.406303, 30.931644, 29.885893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866432, 31.370041, 30.075565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.661526, 31.092350, 29.873325>,  <40.538582, 30.925735, 29.751982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.661526, 31.092350, 29.873325>,  <40.866432, 31.370041, 30.075565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661526, 31.092350, 29.873325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833362, 0.259524, 0.488011,
		-0.207576, 0.671340, -0.711488,
		-0.512269, -0.694227, -0.505598,
		40.507843, 30.884083, 29.721645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234737, 31.704138, 29.704369>,  <40.866432, 31.370041, 30.075565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234737, 31.704138, 29.704369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.178028, 31.314253, 29.773462>,  <40.144005, 31.080322, 29.814919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.178028, 31.314253, 29.773462>,  <40.234737, 31.704138, 29.704369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178028, 31.314253, 29.773462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835371, 0.211421, 0.507402,
		-0.531091, -0.072364, -0.844219,
		-0.141769, -0.974712, 0.172734,
		40.135498, 31.021839, 29.825283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491222, 31.447052, 29.395391>,  <40.234737, 31.704138, 29.704369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491222, 31.447052, 29.395391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.619091, 31.190975, 29.674809>,  <39.695812, 31.037329, 29.842459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.619091, 31.190975, 29.674809>,  <39.491222, 31.447052, 29.395391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619091, 31.190975, 29.674809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762383, 0.263994, 0.590829,
		-0.562656, -0.721430, -0.403680,
		0.319673, -0.640192, 0.698544,
		39.714993, 30.998919, 29.884371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903160, 31.094578, 29.687464>,  <39.491222, 31.447052, 29.395391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903160, 31.094578, 29.687464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.177769, 31.036736, 29.972496>,  <39.342533, 31.002031, 30.143515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.177769, 31.036736, 29.972496>,  <38.903160, 31.094578, 29.687464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177769, 31.036736, 29.972496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658770, 0.291084, 0.693752,
		-0.307740, -0.945706, 0.104576,
		0.686526, -0.144604, 0.712581,
		39.383728, 30.993355, 30.186270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556210, 30.799906, 30.242683>,  <38.903160, 31.094578, 29.687464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556210, 30.799906, 30.242683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.874737, 30.975563, 30.409069>,  <39.065853, 31.080957, 30.508900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.874737, 30.975563, 30.409069>,  <38.556210, 30.799906, 30.242683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874737, 30.975563, 30.409069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573444, 0.329304, 0.750147,
		0.192442, -0.835891, 0.514055,
		0.796322, 0.439141, 0.415964,
		39.113632, 31.107306, 30.533857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082764, 30.483921, 30.760748>,  <38.556210, 30.799906, 30.242683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082764, 30.483921, 30.760748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.699970, 30.550797, 30.665892>,  <37.470295, 30.590921, 30.608978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.699970, 30.550797, 30.665892>,  <38.082764, 30.483921, 30.760748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699970, 30.550797, 30.665892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204349, -0.191848, -0.959915,
		-0.206000, -0.967076, 0.149426,
		-0.956977, 0.167208, -0.237142,
		37.412876, 30.600952, 30.594749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937595, 29.983425, 30.257196>,  <38.082764, 30.483921, 30.760748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937595, 29.983425, 30.257196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.651203, 30.255072, 30.192476>,  <37.479370, 30.418060, 30.153645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.651203, 30.255072, 30.192476>,  <37.937595, 29.983425, 30.257196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651203, 30.255072, 30.192476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060703, -0.170325, -0.983516,
		-0.695481, -0.713996, 0.080725,
		-0.715976, 0.679116, -0.161799,
		37.436409, 30.458807, 30.143936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455173, 29.697678, 29.778515>,  <37.937595, 29.983425, 30.257196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455173, 29.697678, 29.778515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.391300, 30.091732, 29.753208>,  <37.352974, 30.328165, 29.738024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.391300, 30.091732, 29.753208>,  <37.455173, 29.697678, 29.778515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391300, 30.091732, 29.753208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010553, -0.065791, -0.997778,
		-0.987112, -0.158663, 0.020903,
		-0.159685, 0.985138, -0.063269,
		37.343395, 30.387274, 29.734228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991817, 29.827450, 29.141148>,  <37.455173, 29.697678, 29.778515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991817, 29.827450, 29.141148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.132160, 30.198681, 29.191059>,  <37.216366, 30.421419, 29.221006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.132160, 30.198681, 29.191059>,  <36.991817, 29.827450, 29.141148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132160, 30.198681, 29.191059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043352, 0.117007, -0.992184,
		-0.935426, 0.353522, 0.000819,
		0.350855, 0.928080, 0.124777,
		37.237415, 30.477104, 29.228493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611725, 30.209938, 28.725708>,  <36.991817, 29.827450, 29.141148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611725, 30.209938, 28.725708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.951164, 30.412479, 28.787003>,  <37.154827, 30.534004, 28.823780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.951164, 30.412479, 28.787003>,  <36.611725, 30.209938, 28.725708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951164, 30.412479, 28.787003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139937, 0.064493, -0.988058,
		-0.510191, 0.859910, -0.016129,
		0.848600, 0.506355, 0.153237,
		37.205746, 30.564386, 28.832973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791790, 30.392117, 28.054724>,  <36.611725, 30.209938, 28.725708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791790, 30.392117, 28.054724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.131226, 30.502092, 28.235521>,  <37.334888, 30.568077, 28.344000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.131226, 30.502092, 28.235521>,  <36.791790, 30.392117, 28.054724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131226, 30.502092, 28.235521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421029, 0.166379, -0.891657,
		-0.320353, 0.946957, 0.025432,
		0.848592, 0.274937, 0.451996,
		37.385803, 30.584574, 28.371120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981972, 31.006863, 27.763647>,  <36.791790, 30.392117, 28.054724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981972, 31.006863, 27.763647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.315624, 30.855864, 27.924501>,  <37.515816, 30.765265, 28.021015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.315624, 30.855864, 27.924501>,  <36.981972, 31.006863, 27.763647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315624, 30.855864, 27.924501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434135, -0.000363, -0.900848,
		0.340215, 0.926010, 0.163583,
		0.834134, -0.377499, 0.402137,
		37.565865, 30.742613, 28.045143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980507, 31.631166, 27.493101>,  <36.981972, 31.006863, 27.763647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980507, 31.631166, 27.493101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.713367, 31.632004, 27.195383>,  <36.553085, 31.632507, 27.016752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.713367, 31.632004, 27.195383>,  <36.980507, 31.631166, 27.493101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713367, 31.632004, 27.195383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684586, 0.390720, 0.615370,
		0.292100, 0.920507, -0.259508,
		-0.667847, 0.002094, -0.744296,
		36.513012, 31.632631, 26.972094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642063, 32.392967, 27.449312>,  <36.980507, 31.631166, 27.493101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642063, 32.392967, 27.449312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415997, 32.111965, 27.276302>,  <36.280357, 31.943365, 27.172497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415997, 32.111965, 27.276302>,  <36.642063, 32.392967, 27.449312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415997, 32.111965, 27.276302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802083, 0.345245, 0.487307,
		-0.193007, 0.622331, -0.758586,
		-0.565164, -0.702503, -0.432526,
		36.246449, 31.901215, 27.146544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135742, 32.795444, 27.317400>,  <36.642063, 32.392967, 27.449312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135742, 32.795444, 27.317400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.008179, 32.417889, 27.351742>,  <35.931641, 32.191357, 27.372347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.008179, 32.417889, 27.351742>,  <36.135742, 32.795444, 27.317400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008179, 32.417889, 27.351742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750274, 0.306760, 0.585651,
		-0.579127, 0.122354, -0.806003,
		-0.318907, -0.943889, 0.085854,
		35.912506, 32.134720, 27.377499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427769, 32.901104, 27.513357>,  <36.135742, 32.795444, 27.317400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427769, 32.901104, 27.513357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503994, 32.520119, 27.608435>,  <35.549728, 32.291527, 27.665482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503994, 32.520119, 27.608435>,  <35.427769, 32.901104, 27.513357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503994, 32.520119, 27.608435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493033, 0.116517, 0.862173,
		-0.848884, -0.281489, -0.447392,
		0.190564, -0.952464, 0.237693,
		35.561165, 32.234379, 27.679743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879627, 32.712090, 27.798750>,  <35.427769, 32.901104, 27.513357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879627, 32.712090, 27.798750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.125561, 32.417366, 27.911240>,  <35.273121, 32.240532, 27.978733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.125561, 32.417366, 27.911240>,  <34.879627, 32.712090, 27.798750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125561, 32.417366, 27.911240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406860, 0.009135, 0.913445,
		-0.675604, -0.676039, -0.294162,
		0.614837, -0.736809, 0.281225,
		35.310013, 32.196323, 27.995607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413181, 32.201668, 28.070814>,  <34.879627, 32.712090, 27.798750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413181, 32.201668, 28.070814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.774719, 32.154621, 28.235367>,  <34.991642, 32.126392, 28.334099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.774719, 32.154621, 28.235367>,  <34.413181, 32.201668, 28.070814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774719, 32.154621, 28.235367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385496, 0.193298, 0.902235,
		-0.185639, -0.974065, 0.129370,
		0.903842, -0.117618, 0.411381,
		35.045872, 32.119335, 28.358782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300556, 31.828814, 28.697966>,  <34.413181, 32.201668, 28.070814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300556, 31.828814, 28.697966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.653717, 32.012184, 28.738619>,  <34.865612, 32.122208, 28.763010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.653717, 32.012184, 28.738619>,  <34.300556, 31.828814, 28.697966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653717, 32.012184, 28.738619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207852, 0.187475, 0.960027,
		0.421048, -0.868734, 0.260807,
		0.882902, 0.458426, 0.101632,
		34.918587, 32.149712, 28.769108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.248432, 34.174976, 25.074106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.520699, 34.023281, 25.324823>,  <41.684059, 33.932262, 25.475254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.520699, 34.023281, 25.324823>,  <41.248432, 34.174976, 25.074106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520699, 34.023281, 25.324823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459869, 0.444824, 0.768539,
		-0.570271, -0.811363, 0.128378,
		0.680670, -0.379239, 0.626791,
		41.724899, 33.909508, 25.512861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837170, 33.854301, 25.642868>,  <41.248432, 34.174976, 25.074106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837170, 33.854301, 25.642868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.200111, 33.956879, 25.776104>,  <41.417877, 34.018425, 25.856047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.200111, 33.956879, 25.776104>,  <40.837170, 33.854301, 25.642868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200111, 33.956879, 25.776104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412484, 0.695907, 0.587853,
		-0.081051, -0.670785, 0.737210,
		0.907352, 0.256441, 0.333092,
		41.472317, 34.033810, 25.876032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677959, 33.947067, 26.395262>,  <40.837170, 33.854301, 25.642868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677959, 33.947067, 26.395262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.019085, 34.139095, 26.313053>,  <41.223759, 34.254311, 26.263727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.019085, 34.139095, 26.313053>,  <40.677959, 33.947067, 26.395262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019085, 34.139095, 26.313053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248432, 0.719137, 0.648941,
		0.459335, -0.502368, 0.732555,
		0.852815, 0.480071, -0.205520,
		41.274929, 34.283115, 26.251396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943226, 34.030109, 26.944956>,  <40.677959, 33.947067, 26.395262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943226, 34.030109, 26.944956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.143532, 34.300343, 26.728506>,  <41.263718, 34.462482, 26.598637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.143532, 34.300343, 26.728506>,  <40.943226, 34.030109, 26.944956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143532, 34.300343, 26.728506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172882, 0.690623, 0.702248,
		0.848142, -0.258112, 0.462638,
		0.500767, 0.675588, -0.541123,
		41.293762, 34.503017, 26.566170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324390, 34.372814, 27.443335>,  <40.943226, 34.030109, 26.944956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324390, 34.372814, 27.443335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.263264, 34.619858, 27.134737>,  <41.226589, 34.768085, 26.949579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.263264, 34.619858, 27.134737>,  <41.324390, 34.372814, 27.443335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263264, 34.619858, 27.134737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100507, 0.766901, 0.633846,
		0.983130, 0.174404, -0.055122,
		-0.152818, 0.617613, -0.771493,
		41.217419, 34.805141, 26.903290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680717, 34.953648, 27.663454>,  <41.324390, 34.372814, 27.443335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680717, 34.953648, 27.663454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.439983, 35.079613, 27.369890>,  <41.295544, 35.155193, 27.193752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.439983, 35.079613, 27.369890>,  <41.680717, 34.953648, 27.663454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439983, 35.079613, 27.369890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141350, 0.862460, 0.485987,
		0.786011, 0.396222, -0.474546,
		-0.601836, 0.314914, -0.733909,
		41.259434, 35.174088, 27.149717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876320, 35.563633, 27.669310>,  <41.680717, 34.953648, 27.663454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876320, 35.563633, 27.669310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.537769, 35.591602, 27.458120>,  <41.334641, 35.608383, 27.331406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.537769, 35.591602, 27.458120>,  <41.876320, 35.563633, 27.669310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537769, 35.591602, 27.458120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254096, 0.818228, 0.515692,
		0.468060, 0.570626, -0.674763,
		-0.846377, 0.069920, -0.527974,
		41.283855, 35.612579, 27.299728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808228, 36.270458, 27.357264>,  <41.876320, 35.563633, 27.669310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808228, 36.270458, 27.357264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.445015, 36.109196, 27.402767>,  <41.227085, 36.012440, 27.430069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.445015, 36.109196, 27.402767>,  <41.808228, 36.270458, 27.357264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445015, 36.109196, 27.402767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305957, 0.823784, 0.477252,
		-0.286116, 0.398556, -0.871372,
		-0.908035, -0.403152, 0.113757,
		41.172604, 35.988251, 27.436893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247208, 36.800697, 27.356878>,  <41.808228, 36.270458, 27.357264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247208, 36.800697, 27.356878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.035275, 36.502449, 27.518534>,  <40.908115, 36.323502, 27.615526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.035275, 36.502449, 27.518534>,  <41.247208, 36.800697, 27.356878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035275, 36.502449, 27.518534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482002, 0.656813, 0.579888,
		-0.697821, 0.112446, -0.707391,
		-0.529830, -0.745622, 0.404139,
		40.876324, 36.278763, 27.639776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601063, 37.144634, 27.494787>,  <41.247208, 36.800697, 27.356878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601063, 37.144634, 27.494787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.592777, 36.828983, 27.740341>,  <40.587807, 36.639595, 27.887674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.592777, 36.828983, 27.740341>,  <40.601063, 37.144634, 27.494787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592777, 36.828983, 27.740341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435770, 0.559750, 0.704829,
		-0.899819, -0.252910, -0.355474,
		-0.020718, -0.789124, 0.613884,
		40.586563, 36.592247, 27.924507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936554, 37.168724, 27.809750>,  <40.601063, 37.144634, 27.494787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936554, 37.168724, 27.809750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.147816, 36.945621, 28.065863>,  <40.274574, 36.811760, 28.219530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.147816, 36.945621, 28.065863>,  <39.936554, 37.168724, 27.809750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147816, 36.945621, 28.065863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501352, 0.403752, 0.765265,
		-0.685346, -0.725185, -0.066389,
		0.528154, -0.557756, 0.640282,
		40.306263, 36.778294, 28.257948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460407, 36.929199, 28.243179>,  <39.936554, 37.168724, 27.809750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460407, 36.929199, 28.243179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.807671, 36.910381, 28.440802>,  <40.016029, 36.899090, 28.559374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.807671, 36.910381, 28.440802>,  <39.460407, 36.929199, 28.243179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807671, 36.910381, 28.440802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345422, 0.657524, 0.669586,
		-0.356351, -0.751964, 0.554585,
		0.868158, -0.047042, 0.494054,
		40.068119, 36.896267, 28.589018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010342, 36.232712, 28.375891>,  <39.460407, 36.929199, 28.243179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010342, 36.232712, 28.375891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.694279, 36.001240, 28.456665>,  <38.504639, 35.862358, 28.505129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.694279, 36.001240, 28.456665>,  <39.010342, 36.232712, 28.375891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694279, 36.001240, 28.456665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237776, -0.593101, -0.769216,
		0.564896, -0.559790, 0.606241,
		-0.790162, -0.578677, 0.201936,
		38.457230, 35.827637, 28.517246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233875, 35.449276, 28.484959>,  <39.010342, 36.232712, 28.375891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233875, 35.449276, 28.484959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.855373, 35.474792, 28.358135>,  <38.628273, 35.490101, 28.282042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.855373, 35.474792, 28.358135>,  <39.233875, 35.449276, 28.484959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855373, 35.474792, 28.358135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205100, -0.639649, -0.740799,
		-0.250061, -0.766016, 0.592190,
		-0.946258, 0.063787, -0.317061,
		38.571495, 35.493927, 28.263018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981236, 34.779705, 28.525166>,  <39.233875, 35.449276, 28.484959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981236, 34.779705, 28.525166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.725784, 34.975506, 28.287663>,  <38.572514, 35.092987, 28.145161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.725784, 34.975506, 28.287663>,  <38.981236, 34.779705, 28.525166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725784, 34.975506, 28.287663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191282, -0.646394, -0.738638,
		-0.745367, -0.585286, 0.319168,
		-0.638623, 0.489505, -0.593756,
		38.534199, 35.122356, 28.109535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598103, 34.240826, 28.176781>,  <38.981236, 34.779705, 28.525166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598103, 34.240826, 28.176781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.542377, 34.564713, 27.948763>,  <38.508942, 34.759045, 27.811953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.542377, 34.564713, 27.948763>,  <38.598103, 34.240826, 28.176781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542377, 34.564713, 27.948763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009532, -0.576729, -0.816880,
		-0.990202, -0.108370, 0.088065,
		-0.139315, 0.809716, -0.570046,
		38.500584, 34.807629, 27.777750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944191, 34.142277, 27.909172>,  <38.598103, 34.240826, 28.176781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944191, 34.142277, 27.909172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.149574, 34.386631, 27.668114>,  <38.272804, 34.533245, 27.523479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.149574, 34.386631, 27.668114>,  <37.944191, 34.142277, 27.909172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149574, 34.386631, 27.668114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362294, -0.482305, -0.797574,
		-0.777885, 0.627856, -0.026323,
		0.513457, 0.610884, -0.602646,
		38.303612, 34.569897, 27.487320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525040, 34.253365, 27.338791>,  <37.944191, 34.142277, 27.909172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525040, 34.253365, 27.338791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.877304, 34.366268, 27.186600>,  <38.088665, 34.434010, 27.095285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.877304, 34.366268, 27.186600>,  <37.525040, 34.253365, 27.338791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877304, 34.366268, 27.186600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251882, -0.401233, -0.880663,
		-0.401233, 0.871404, -0.282256,
		0.880663, 0.282256, -0.380478,
		38.141502, 34.450943, 27.072456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345375, 34.422390, 26.747927>,  <37.525040, 34.253365, 27.338791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345375, 34.422390, 26.747927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.740013, 34.384121, 26.695053>,  <37.976795, 34.361160, 26.663328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.740013, 34.384121, 26.695053>,  <37.345375, 34.422390, 26.747927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740013, 34.384121, 26.695053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152757, -0.256706, -0.954341,
		0.057374, 0.961742, -0.267881,
		0.986597, -0.095675, -0.132185,
		38.035992, 34.355419, 26.655397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504166, 34.913330, 26.145390>,  <37.345375, 34.422390, 26.747927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504166, 34.913330, 26.145390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.785057, 34.629753, 26.171577>,  <37.953590, 34.459606, 26.187290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.785057, 34.629753, 26.171577>,  <37.504166, 34.913330, 26.145390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785057, 34.629753, 26.171577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196176, -0.281071, -0.939422,
		0.684394, 0.646843, -0.336452,
		0.702225, -0.708938, 0.065468,
		37.995724, 34.417072, 26.191217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874619, 34.963829, 25.417852>,  <37.504166, 34.913330, 26.145390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874619, 34.963829, 25.417852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.992821, 34.617359, 25.579054>,  <38.063744, 34.409477, 25.675776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.992821, 34.617359, 25.579054>,  <37.874619, 34.963829, 25.417852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992821, 34.617359, 25.579054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076803, -0.398939, -0.913755,
		0.952247, 0.300976, -0.051365,
		0.295510, -0.866176, 0.403005,
		38.081474, 34.357506, 25.699955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432686, 34.755058, 24.998358>,  <37.874619, 34.963829, 25.417852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432686, 34.755058, 24.998358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.284119, 34.439583, 25.194328>,  <38.194981, 34.250298, 25.311911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.284119, 34.439583, 25.194328>,  <38.432686, 34.755058, 24.998358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284119, 34.439583, 25.194328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159757, -0.574090, -0.803056,
		0.914620, -0.219996, 0.339223,
		-0.371413, -0.788684, 0.489928,
		38.172695, 34.202976, 25.341307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866051, 34.198360, 24.909218>,  <38.432686, 34.755058, 24.998358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866051, 34.198360, 24.909218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.522854, 34.017658, 25.007000>,  <38.316936, 33.909237, 25.065668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.522854, 34.017658, 25.007000>,  <38.866051, 34.198360, 24.909218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522854, 34.017658, 25.007000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121903, -0.641396, -0.757464,
		0.498983, -0.620101, 0.605385,
		-0.857995, -0.451760, 0.244453,
		38.265457, 33.882130, 25.080336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864063, 33.469460, 24.785316>,  <38.866051, 34.198360, 24.909218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864063, 33.469460, 24.785316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.469391, 33.533363, 24.797535>,  <38.232586, 33.571705, 24.804865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.469391, 33.533363, 24.797535>,  <38.864063, 33.469460, 24.785316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469391, 33.533363, 24.797535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112032, -0.531383, -0.839691,
		-0.117915, -0.831932, 0.542205,
		-0.986684, 0.159756, 0.030545,
		38.173386, 33.581291, 24.806698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553703, 32.766396, 24.781311>,  <38.864063, 33.469460, 24.785316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553703, 32.766396, 24.781311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.299904, 33.042698, 24.642593>,  <38.147625, 33.208481, 24.559362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.299904, 33.042698, 24.642593>,  <38.553703, 32.766396, 24.781311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299904, 33.042698, 24.642593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270559, -0.618787, -0.737496,
		-0.724022, -0.374111, 0.579510,
		-0.634499, 0.690755, -0.346797,
		38.109554, 33.249924, 24.538555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386742, 32.260777, 24.268236>,  <38.553703, 32.766396, 24.781311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386742, 32.260777, 24.268236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.248665, 31.889002, 24.216093>,  <38.165817, 31.665937, 24.184807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.248665, 31.889002, 24.216093>,  <38.386742, 32.260777, 24.268236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248665, 31.889002, 24.216093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467965, 0.050051, 0.882328,
		-0.813541, 0.365580, -0.452220,
		-0.345196, -0.929433, -0.130360,
		38.145107, 31.610172, 24.176985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672283, 32.294334, 24.209373>,  <38.386742, 32.260777, 24.268236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672283, 32.294334, 24.209373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.743633, 31.909578, 24.292265>,  <37.786442, 31.678724, 24.342001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.743633, 31.909578, 24.292265>,  <37.672283, 32.294334, 24.209373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743633, 31.909578, 24.292265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694826, 0.025989, 0.718708,
		-0.696706, -0.272188, -0.663713,
		0.178374, -0.961893, 0.207230,
		37.797146, 31.621010, 24.354433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066250, 31.945105, 24.274364>,  <37.672283, 32.294334, 24.209373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066250, 31.945105, 24.274364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.295029, 31.701836, 24.494547>,  <37.432297, 31.555874, 24.626657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.295029, 31.701836, 24.494547>,  <37.066250, 31.945105, 24.274364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295029, 31.701836, 24.494547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699873, -0.011785, 0.714170,
		-0.427853, -0.793716, -0.432385,
		0.571944, -0.608174, 0.550458,
		37.466614, 31.519384, 24.659685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621578, 31.307514, 24.671309>,  <37.066250, 31.945105, 24.274364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621578, 31.307514, 24.671309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.960522, 31.394722, 24.864992>,  <37.163887, 31.447046, 24.981201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.960522, 31.394722, 24.864992>,  <36.621578, 31.307514, 24.671309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960522, 31.394722, 24.864992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449277, -0.191763, 0.872570,
		0.283092, -0.956919, -0.064539,
		0.847355, 0.218022, 0.484208,
		37.214729, 31.460129, 25.010254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705326, 30.763283, 25.146811>,  <36.621578, 31.307514, 24.671309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705326, 30.763283, 25.146811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.936764, 31.060993, 25.280247>,  <37.075626, 31.239620, 25.360308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.936764, 31.060993, 25.280247>,  <36.705326, 30.763283, 25.146811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936764, 31.060993, 25.280247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393673, -0.103361, 0.913421,
		0.714317, -0.659826, 0.233197,
		0.578595, 0.744276, 0.333589,
		37.110344, 31.284275, 25.380323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830624, 30.490868, 25.791925>,  <36.705326, 30.763283, 25.146811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830624, 30.490868, 25.791925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.953491, 30.869089, 25.834957>,  <37.027210, 31.096022, 25.860777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.953491, 30.869089, 25.834957>,  <36.830624, 30.490868, 25.791925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953491, 30.869089, 25.834957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390032, 0.021969, 0.920539,
		0.868058, -0.324717, 0.375545,
		0.307165, 0.945556, 0.107580,
		37.045639, 31.152756, 25.867231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131332, 30.599834, 26.457148>,  <36.830624, 30.490868, 25.791925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131332, 30.599834, 26.457148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.033298, 30.975853, 26.362278>,  <36.974480, 31.201464, 26.305357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.033298, 30.975853, 26.362278>,  <37.131332, 30.599834, 26.457148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033298, 30.975853, 26.362278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348209, 0.142963, 0.926452,
		0.904812, 0.309643, 0.292294,
		-0.245082, 0.940044, -0.237175,
		36.959774, 31.257866, 26.291126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241894, 31.059029, 27.070440>,  <37.131332, 30.599834, 26.457148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241894, 31.059029, 27.070440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.987469, 31.257467, 26.834030>,  <36.834812, 31.376532, 26.692184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.987469, 31.257467, 26.834030>,  <37.241894, 31.059029, 27.070440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987469, 31.257467, 26.834030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600055, 0.163546, 0.783062,
		0.485135, 0.852725, 0.193660,
		-0.636064, 0.496098, -0.591024,
		36.796650, 31.406296, 26.656723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698483, 31.382288, 27.406710>,  <37.241894, 31.059029, 27.070440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698483, 31.382288, 27.406710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.837914, 31.045691, 27.571821>,  <37.921570, 30.843733, 27.670887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.837914, 31.045691, 27.571821>,  <37.698483, 31.382288, 27.406710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837914, 31.045691, 27.571821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689805, -0.067838, -0.720810,
		0.634559, 0.535992, 0.556820,
		0.348575, -0.841493, 0.412777,
		37.942486, 30.793243, 27.695654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371403, 31.470654, 27.438665>,  <37.698483, 31.382288, 27.406710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371403, 31.470654, 27.438665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.317852, 31.074415, 27.449993>,  <38.285721, 30.836672, 27.456789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.317852, 31.074415, 27.449993>,  <38.371403, 31.470654, 27.438665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317852, 31.074415, 27.449993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711775, -0.115997, -0.692763,
		0.689532, -0.072588, 0.720609,
		-0.133875, -0.990594, 0.028317,
		38.277691, 30.777237, 27.458488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079708, 31.140993, 27.392944>,  <38.371403, 31.470654, 27.438665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079708, 31.140993, 27.392944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.822327, 30.861895, 27.267014>,  <38.667896, 30.694435, 27.191454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.822327, 30.861895, 27.267014>,  <39.079708, 31.140993, 27.392944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822327, 30.861895, 27.267014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593595, -0.195127, -0.780750,
		0.483332, -0.689258, 0.539734,
		-0.643455, -0.697745, -0.314829,
		38.629292, 30.652571, 27.172565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511784, 30.502670, 27.325085>,  <39.079708, 31.140993, 27.392944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511784, 30.502670, 27.325085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170254, 30.422478, 27.132921>,  <38.965336, 30.374363, 27.017624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170254, 30.422478, 27.132921>,  <39.511784, 30.502670, 27.325085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170254, 30.422478, 27.132921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514183, -0.468814, -0.718213,
		-0.081234, -0.860245, 0.503368,
		-0.853824, -0.200480, -0.480407,
		38.914108, 30.362333, 26.988798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536827, 29.763399, 27.143669>,  <39.511784, 30.502670, 27.325085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536827, 29.763399, 27.143669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.258732, 29.933069, 26.911558>,  <39.091873, 30.034872, 26.772291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.258732, 29.933069, 26.911558>,  <39.536827, 29.763399, 27.143669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258732, 29.933069, 26.911558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377736, -0.471228, -0.797032,
		-0.611524, -0.773317, 0.167388,
		-0.695237, 0.424175, -0.580277,
		39.050159, 30.060322, 26.737474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140774, 29.170980, 26.817060>,  <39.536827, 29.763399, 27.143669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140774, 29.170980, 26.817060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.105705, 29.510946, 26.609230>,  <39.084663, 29.714926, 26.484531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.105705, 29.510946, 26.609230>,  <39.140774, 29.170980, 26.817060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105705, 29.510946, 26.609230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378220, -0.454128, -0.806670,
		-0.921555, -0.267235, -0.281641,
		-0.087670, 0.849914, -0.519578,
		39.079403, 29.765921, 26.453356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818123, 29.029648, 26.064899>,  <39.140774, 29.170980, 26.817060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818123, 29.029648, 26.064899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.026367, 29.368753, 26.024384>,  <39.151314, 29.572216, 26.000074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.026367, 29.368753, 26.024384>,  <38.818123, 29.029648, 26.064899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026367, 29.368753, 26.024384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242746, -0.260710, -0.934401,
		-0.818558, 0.461873, -0.341520,
		0.520612, 0.847764, -0.101289,
		39.182552, 29.623083, 25.993998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797749, 29.135738, 25.408300>,  <38.818123, 29.029648, 26.064899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797749, 29.135738, 25.408300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.068710, 29.425550, 25.459190>,  <39.231285, 29.599438, 25.489725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.068710, 29.425550, 25.459190>,  <38.797749, 29.135738, 25.408300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068710, 29.425550, 25.459190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294620, -0.108742, -0.949407,
		-0.674037, 0.680613, -0.287122,
		0.677401, 0.724528, 0.127227,
		39.271931, 29.642908, 25.497358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630508, 29.593834, 24.842487>,  <38.797749, 29.135738, 25.408300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630508, 29.593834, 24.842487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.002548, 29.658800, 24.974262>,  <39.225773, 29.697781, 25.053328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.002548, 29.658800, 24.974262>,  <38.630508, 29.593834, 24.842487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002548, 29.658800, 24.974262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347290, -0.096880, -0.932740,
		-0.119576, 0.981955, -0.146514,
		0.930103, 0.162416, 0.329438,
		39.281578, 29.707525, 25.073093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.984005, 37.919052, 38.220032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.276180, 37.647610, 38.250900>,  <36.451485, 37.484745, 38.269421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.276180, 37.647610, 38.250900>,  <35.984005, 37.919052, 38.220032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276180, 37.647610, 38.250900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262520, -0.383271, -0.885543,
		0.630510, 0.626577, -0.458103,
		0.730438, -0.678605, 0.077167,
		36.495312, 37.444027, 38.274052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127262, 37.797222, 37.562763>,  <35.984005, 37.919052, 38.220032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127262, 37.797222, 37.562763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.316456, 37.488346, 37.732471>,  <36.429970, 37.303020, 37.834297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.316456, 37.488346, 37.732471>,  <36.127262, 37.797222, 37.562763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316456, 37.488346, 37.732471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032127, -0.466109, -0.884144,
		0.880486, 0.431815, -0.195653,
		0.472982, -0.772190, 0.424275,
		36.458351, 37.256687, 37.859753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770626, 37.660744, 37.099785>,  <36.127262, 37.797222, 37.562763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770626, 37.660744, 37.099785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.756294, 37.326069, 37.318386>,  <36.747696, 37.125263, 37.449547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.756294, 37.326069, 37.318386>,  <36.770626, 37.660744, 37.099785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756294, 37.326069, 37.318386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101087, -0.547082, -0.830953,
		0.994232, 0.025471, 0.104180,
		-0.035830, -0.836692, 0.546501,
		36.745544, 37.075062, 37.482338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307735, 37.192192, 36.798382>,  <36.770626, 37.660744, 37.099785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307735, 37.192192, 36.798382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.060638, 36.958229, 37.008633>,  <36.912380, 36.817852, 37.134785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.060638, 36.958229, 37.008633>,  <37.307735, 37.192192, 36.798382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060638, 36.958229, 37.008633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121312, -0.589528, -0.798586,
		0.776969, -0.557083, 0.293219,
		-0.617740, -0.584906, 0.525626,
		36.875317, 36.782757, 37.166321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551201, 36.511517, 36.795704>,  <37.307735, 37.192192, 36.798382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551201, 36.511517, 36.795704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.159790, 36.468201, 36.865860>,  <36.924946, 36.442211, 36.907955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.159790, 36.468201, 36.865860>,  <37.551201, 36.511517, 36.795704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159790, 36.468201, 36.865860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018884, -0.800212, -0.599420,
		0.205266, -0.589859, 0.780982,
		-0.978524, -0.108292, 0.175395,
		36.866234, 36.435715, 36.918480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422871, 35.814045, 36.799843>,  <37.551201, 36.511517, 36.795704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422871, 35.814045, 36.799843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054970, 35.955067, 36.730839>,  <36.834229, 36.039680, 36.689438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054970, 35.955067, 36.730839>,  <37.422871, 35.814045, 36.799843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054970, 35.955067, 36.730839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189361, -0.783562, -0.591754,
		-0.343795, -0.511602, 0.787444,
		-0.919755, 0.352553, -0.172507,
		36.779045, 36.060833, 36.679085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999023, 35.205086, 36.852673>,  <37.422871, 35.814045, 36.799843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999023, 35.205086, 36.852673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.771358, 35.458664, 36.643227>,  <36.634758, 35.610809, 36.517559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.771358, 35.458664, 36.643227>,  <36.999023, 35.205086, 36.852673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771358, 35.458664, 36.643227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337670, -0.760861, -0.554138,
		-0.749693, -0.138581, 0.647113,
		-0.569156, 0.633944, -0.523618,
		36.600609, 35.648846, 36.486141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333588, 34.929199, 36.865456>,  <36.999023, 35.205086, 36.852673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333588, 34.929199, 36.865456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370991, 35.179462, 36.555664>,  <36.393433, 35.329620, 36.369789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370991, 35.179462, 36.555664>,  <36.333588, 34.929199, 36.865456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370991, 35.179462, 36.555664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404354, -0.686975, -0.603790,
		-0.909810, 0.369622, 0.188747,
		0.093509, 0.625655, -0.774475,
		36.399044, 35.367161, 36.323322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715309, 34.812038, 36.524662>,  <36.333588, 34.929199, 36.865456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715309, 34.812038, 36.524662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.924141, 35.003464, 36.242271>,  <36.049438, 35.118320, 36.072838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.924141, 35.003464, 36.242271>,  <35.715309, 34.812038, 36.524662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924141, 35.003464, 36.242271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421498, -0.574830, -0.701363,
		-0.741468, 0.663735, -0.098391,
		0.522078, 0.478566, -0.705981,
		36.080765, 35.147034, 36.030476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289997, 35.177856, 35.928722>,  <35.715309, 34.812038, 36.524662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289997, 35.177856, 35.928722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.652519, 35.050941, 35.817051>,  <35.870033, 34.974792, 35.750050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.652519, 35.050941, 35.817051>,  <35.289997, 35.177856, 35.928722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652519, 35.050941, 35.817051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418510, -0.581866, -0.697339,
		0.058812, 0.748840, -0.660136,
		0.906306, -0.317286, -0.279176,
		35.924412, 34.955757, 35.733299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181015, 35.007179, 35.341087>,  <35.289997, 35.177856, 35.928722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181015, 35.007179, 35.341087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546661, 34.846794, 35.365173>,  <35.766048, 34.750561, 35.379627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546661, 34.846794, 35.365173>,  <35.181015, 35.007179, 35.341087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546661, 34.846794, 35.365173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189868, -0.554539, -0.810208,
		0.358260, 0.729187, -0.583041,
		0.914112, -0.400965, 0.060220,
		35.820896, 34.726505, 35.383240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397194, 34.920265, 34.659676>,  <35.181015, 35.007179, 35.341087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397194, 34.920265, 34.659676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.651043, 34.692448, 34.868626>,  <35.803352, 34.555756, 34.993996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.651043, 34.692448, 34.868626>,  <35.397194, 34.920265, 34.659676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651043, 34.692448, 34.868626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015696, -0.685285, -0.728106,
		0.772664, 0.453872, -0.443836,
		0.634621, -0.569548, 0.522371,
		35.841431, 34.521584, 35.025337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136642, 35.421703, 34.065872>,  <35.397194, 34.920265, 34.659676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136642, 35.421703, 34.065872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.752853, 35.340141, 33.988060>,  <34.522579, 35.291203, 33.941372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.752853, 35.340141, 33.988060>,  <35.136642, 35.421703, 34.065872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752853, 35.340141, 33.988060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274981, 0.828496, 0.487832,
		0.061693, 0.521551, -0.850987,
		-0.959468, -0.203910, -0.194530,
		34.465012, 35.278969, 33.929703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713238, 36.042820, 33.943020>,  <35.136642, 35.421703, 34.065872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713238, 36.042820, 33.943020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447689, 35.758270, 34.035294>,  <34.288361, 35.587540, 34.090656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.447689, 35.758270, 34.035294>,  <34.713238, 36.042820, 33.943020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447689, 35.758270, 34.035294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480640, 0.642186, 0.597144,
		-0.572935, 0.285554, -0.768248,
		-0.663875, -0.711376, 0.230682,
		34.248528, 35.544857, 34.104500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115597, 36.342575, 33.940205>,  <34.713238, 36.042820, 33.943020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115597, 36.342575, 33.940205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014771, 36.038952, 34.180302>,  <33.954273, 35.856777, 34.324360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014771, 36.038952, 34.180302>,  <34.115597, 36.342575, 33.940205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014771, 36.038952, 34.180302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631282, 0.599098, 0.492509,
		-0.733448, -0.254780, -0.630191,
		-0.252065, -0.759058, 0.600245,
		33.939152, 35.811234, 34.360374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380024, 36.392841, 34.069393>,  <34.115597, 36.342575, 33.940205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380024, 36.392841, 34.069393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558899, 36.175438, 34.353539>,  <33.666225, 36.044994, 34.524025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.558899, 36.175438, 34.353539>,  <33.380024, 36.392841, 34.069393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558899, 36.175438, 34.353539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473347, 0.530069, 0.703541,
		-0.758925, -0.650864, -0.020230,
		0.447186, -0.543510, 0.710367,
		33.693054, 36.012386, 34.566650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865131, 36.337177, 34.554726>,  <33.380024, 36.392841, 34.069393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865131, 36.337177, 34.554726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203693, 36.227551, 34.737362>,  <33.406830, 36.161774, 34.846943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203693, 36.227551, 34.737362>,  <32.865131, 36.337177, 34.554726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203693, 36.227551, 34.737362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335788, 0.390796, 0.857044,
		-0.413326, -0.878728, 0.238743,
		0.846409, -0.274071, 0.456593,
		33.457615, 36.145329, 34.874340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651775, 35.910591, 35.058949>,  <32.865131, 36.337177, 34.554726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651775, 35.910591, 35.058949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998684, 36.082592, 35.159298>,  <33.206829, 36.185795, 35.219509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998684, 36.082592, 35.159298>,  <32.651775, 35.910591, 35.058949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998684, 36.082592, 35.159298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430028, 0.393154, 0.812715,
		0.250838, -0.812728, 0.525884,
		0.867269, 0.430005, 0.250878,
		33.258865, 36.211594, 35.234562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599354, 35.798477, 35.791237>,  <32.651775, 35.910591, 35.058949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599354, 35.798477, 35.791237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867805, 36.089294, 35.733288>,  <33.028877, 36.263786, 35.698521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867805, 36.089294, 35.733288>,  <32.599354, 35.798477, 35.791237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867805, 36.089294, 35.733288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274384, 0.425147, 0.862533,
		0.688691, -0.539123, 0.484819,
		0.671131, 0.727046, -0.144868,
		33.069145, 36.307407, 35.689827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857121, 35.968517, 36.440231>,  <32.599354, 35.798477, 35.791237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857121, 35.968517, 36.440231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.942997, 36.292931, 36.222557>,  <32.994522, 36.487579, 36.091953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.942997, 36.292931, 36.222557>,  <32.857121, 35.968517, 36.440231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942997, 36.292931, 36.222557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259166, 0.584512, 0.768881,
		0.941669, -0.024037, 0.335681,
		0.214691, 0.811029, -0.544187,
		33.007404, 36.536240, 36.059299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251019, 36.430237, 36.921314>,  <32.857121, 35.968517, 36.440231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251019, 36.430237, 36.921314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.178368, 36.683247, 36.620136>,  <33.134777, 36.835052, 36.439430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.178368, 36.683247, 36.620136>,  <33.251019, 36.430237, 36.921314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178368, 36.683247, 36.620136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265916, 0.705561, 0.656866,
		0.946732, 0.319522, 0.040053,
		-0.181623, 0.632526, -0.752943,
		33.123882, 36.873005, 36.394253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531464, 37.051613, 37.187645>,  <33.251019, 36.430237, 36.921314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531464, 37.051613, 37.187645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294048, 37.185860, 36.895050>,  <33.151600, 37.266407, 36.719494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294048, 37.185860, 36.895050>,  <33.531464, 37.051613, 37.187645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294048, 37.185860, 36.895050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195489, 0.821555, 0.535566,
		0.780704, 0.460875, -0.422012,
		-0.593536, 0.335620, -0.731488,
		33.115986, 37.286545, 36.675602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647385, 37.759964, 37.191017>,  <33.531464, 37.051613, 37.187645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647385, 37.759964, 37.191017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.297520, 37.726585, 37.000019>,  <33.087601, 37.706558, 36.885418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.297520, 37.726585, 37.000019>,  <33.647385, 37.759964, 37.191017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297520, 37.726585, 37.000019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369046, 0.753309, 0.544363,
		0.314280, 0.652352, -0.689685,
		-0.874662, -0.083443, -0.477498,
		33.035122, 37.701553, 36.856770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468983, 38.449615, 37.011379>,  <33.647385, 37.759964, 37.191017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468983, 38.449615, 37.011379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.110832, 38.277393, 36.965893>,  <32.895943, 38.174061, 36.938599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.110832, 38.277393, 36.965893>,  <33.468983, 38.449615, 37.011379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110832, 38.277393, 36.965893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436768, 0.799267, 0.412802,
		-0.086840, 0.419281, -0.903693,
		-0.895373, -0.430552, -0.113721,
		32.842220, 38.148228, 36.931778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952610, 38.901772, 36.700966>,  <33.468983, 38.449615, 37.011379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952610, 38.901772, 36.700966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750656, 38.630413, 36.914455>,  <32.629482, 38.467598, 37.042549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750656, 38.630413, 36.914455>,  <32.952610, 38.901772, 36.700966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750656, 38.630413, 36.914455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361327, 0.727642, 0.583078,
		-0.783922, 0.101537, -0.612500,
		-0.504885, -0.678401, 0.533727,
		32.599190, 38.426891, 37.074574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315414, 39.193359, 36.801243>,  <32.952610, 38.901772, 36.700966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315414, 39.193359, 36.801243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.336018, 38.912151, 37.084965>,  <32.348381, 38.743427, 37.255199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.336018, 38.912151, 37.084965>,  <32.315414, 39.193359, 36.801243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336018, 38.912151, 37.084965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052472, 0.707361, 0.704903,
		-0.997293, -0.073528, -0.000453,
		0.051510, -0.703018, 0.709304,
		32.351471, 38.701244, 37.297756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821733, 39.388134, 37.322693>,  <32.315414, 39.193359, 36.801243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821733, 39.388134, 37.322693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115093, 39.166649, 37.480438>,  <32.291111, 39.033756, 37.575085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115093, 39.166649, 37.480438>,  <31.821733, 39.388134, 37.322693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115093, 39.166649, 37.480438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060452, 0.630943, 0.773471,
		-0.677104, -0.543423, 0.496207,
		0.733400, -0.553717, 0.394363,
		32.335114, 39.000534, 37.598747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415344, 39.835983, 37.221062>,  <31.821733, 39.388134, 37.322693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415344, 39.835983, 37.221062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.144192, 39.781097, 36.932159>,  <31.981501, 39.748165, 36.758820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.144192, 39.781097, 36.932159>,  <32.415344, 39.835983, 37.221062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144192, 39.781097, 36.932159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228542, 0.894422, -0.384420,
		0.698747, -0.425656, -0.574951,
		-0.677880, -0.137212, -0.722255,
		31.940828, 39.739933, 36.715485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719124, 40.026257, 36.596043>,  <32.415344, 39.835983, 37.221062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719124, 40.026257, 36.596043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.320938, 40.057320, 36.574043>,  <32.082027, 40.075958, 36.560844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.320938, 40.057320, 36.574043>,  <32.719124, 40.026257, 36.596043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320938, 40.057320, 36.574043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090679, 0.949399, -0.300698,
		0.028863, -0.304320, -0.952132,
		-0.995462, 0.077659, -0.054997,
		32.022301, 40.080616, 36.557545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250778, 39.943050, 36.247917>,  <32.719124, 40.026257, 36.596043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250778, 39.943050, 36.247917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452072, 40.287174, 36.215374>,  <33.572849, 40.493649, 36.195847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452072, 40.287174, 36.215374>,  <33.250778, 39.943050, 36.247917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452072, 40.287174, 36.215374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724329, -0.471280, -0.503233,
		-0.471280, 0.194312, -0.860312,
		0.503233, 0.860312, -0.081359,
		33.603043, 40.545269, 36.190968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309593, 40.125553, 35.553932>,  <33.250778, 39.943050, 36.247917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309593, 40.125553, 35.553932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.601753, 40.210194, 35.813698>,  <33.777050, 40.260979, 35.969555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.601753, 40.210194, 35.813698>,  <33.309593, 40.125553, 35.553932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601753, 40.210194, 35.813698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681897, -0.280318, -0.675602,
		0.039083, 0.936294, -0.349035,
		0.730403, 0.211601, 0.649412,
		33.820873, 40.273674, 36.008522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870762, 40.594318, 35.201622>,  <33.309593, 40.125553, 35.553932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870762, 40.594318, 35.201622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027988, 40.392086, 35.508839>,  <34.122322, 40.270748, 35.693169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027988, 40.392086, 35.508839>,  <33.870762, 40.594318, 35.201622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027988, 40.392086, 35.508839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694861, -0.383730, -0.608210,
		0.602220, 0.772748, 0.200478,
		0.393064, -0.505580, 0.768043,
		34.145908, 40.240414, 35.739250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526096, 40.602970, 35.023396>,  <33.870762, 40.594318, 35.201622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526096, 40.602970, 35.023396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530285, 40.328362, 35.314209>,  <34.532799, 40.163597, 35.488697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530285, 40.328362, 35.314209>,  <34.526096, 40.602970, 35.023396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530285, 40.328362, 35.314209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714229, -0.503722, -0.485943,
		0.699833, 0.524357, 0.485060,
		0.010472, -0.686523, 0.727033,
		34.533428, 40.122406, 35.532318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298992, 40.623383, 35.278896>,  <34.526096, 40.602970, 35.023396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298992, 40.623383, 35.278896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.102776, 40.278564, 35.329880>,  <34.985046, 40.071674, 35.360470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.102776, 40.278564, 35.329880>,  <35.298992, 40.623383, 35.278896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102776, 40.278564, 35.329880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523435, -0.408425, -0.747800,
		0.696695, -0.300112, 0.651574,
		-0.490543, -0.862045, 0.127459,
		34.955612, 40.019951, 35.368118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851379, 40.209702, 35.399826>,  <35.298992, 40.623383, 35.278896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851379, 40.209702, 35.399826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.535263, 40.009335, 35.258678>,  <35.345592, 39.889114, 35.173992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.535263, 40.009335, 35.258678>,  <35.851379, 40.209702, 35.399826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535263, 40.009335, 35.258678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600446, -0.518402, -0.608871,
		0.122069, -0.693064, 0.710465,
		-0.790293, -0.500920, -0.352867,
		35.298176, 39.859058, 35.152817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210464, 39.555492, 35.192524>,  <35.851379, 40.209702, 35.399826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210464, 39.555492, 35.192524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846905, 39.509895, 35.032066>,  <35.628769, 39.482536, 34.935791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846905, 39.509895, 35.032066>,  <36.210464, 39.555492, 35.192524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846905, 39.509895, 35.032066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369114, -0.667552, -0.646630,
		-0.194075, -0.735786, 0.648810,
		-0.908895, -0.113990, -0.401144,
		35.574238, 39.475697, 34.911724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212448, 38.878052, 34.977619>,  <36.210464, 39.555492, 35.192524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212448, 38.878052, 34.977619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917156, 39.017353, 34.746540>,  <35.739983, 39.100933, 34.607891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917156, 39.017353, 34.746540>,  <36.212448, 38.878052, 34.977619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917156, 39.017353, 34.746540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244031, -0.660539, -0.710026,
		-0.628861, -0.665139, 0.402645,
		-0.738229, 0.348250, -0.577702,
		35.695686, 39.121826, 34.573231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801170, 38.212017, 34.648895>,  <36.212448, 38.878052, 34.977619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801170, 38.212017, 34.648895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.763359, 38.545788, 34.431713>,  <35.740673, 38.746048, 34.301403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.763359, 38.545788, 34.431713>,  <35.801170, 38.212017, 34.648895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763359, 38.545788, 34.431713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319159, -0.491207, -0.810465,
		-0.942975, -0.249903, -0.219880,
		-0.094531, 0.834425, -0.542954,
		35.735001, 38.796116, 34.268826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282372, 38.008610, 34.064850>,  <35.801170, 38.212017, 34.648895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282372, 38.008610, 34.064850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517994, 38.312084, 33.953552>,  <35.659367, 38.494167, 33.886776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517994, 38.312084, 33.953552>,  <35.282372, 38.008610, 34.064850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517994, 38.312084, 33.953552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198292, -0.469494, -0.860381,
		-0.783388, 0.451638, -0.426997,
		0.589054, 0.758682, -0.278240,
		35.694710, 38.539688, 33.870079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092556, 38.148609, 33.304203>,  <35.282372, 38.008610, 34.064850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092556, 38.148609, 33.304203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449905, 38.322575, 33.349346>,  <35.664314, 38.426956, 33.376431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.449905, 38.322575, 33.349346>,  <35.092556, 38.148609, 33.304203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449905, 38.322575, 33.349346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360106, -0.542817, -0.758731,
		-0.268727, 0.718468, -0.641553,
		0.893370, 0.434918, 0.112855,
		35.717915, 38.453049, 33.383202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337406, 38.324078, 32.589287>,  <35.092556, 38.148609, 33.304203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337406, 38.324078, 32.589287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.662205, 38.333721, 32.822552>,  <35.857086, 38.339508, 32.962509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.662205, 38.333721, 32.822552>,  <35.337406, 38.324078, 32.589287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662205, 38.333721, 32.822552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541907, -0.402250, -0.737924,
		0.216785, 0.915212, -0.339692,
		0.811998, 0.024110, 0.583162,
		35.905804, 38.340954, 32.997501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839760, 38.702259, 32.185059>,  <35.337406, 38.324078, 32.589287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839760, 38.702259, 32.185059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028046, 38.477318, 32.456997>,  <36.141018, 38.342354, 32.620159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028046, 38.477318, 32.456997>,  <35.839760, 38.702259, 32.185059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028046, 38.477318, 32.456997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656865, -0.291061, -0.695566,
		0.589030, 0.773978, 0.232384,
		0.470715, -0.562354, 0.679842,
		36.169262, 38.308613, 32.660950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541973, 38.805378, 31.994108>,  <35.839760, 38.702259, 32.185059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541973, 38.805378, 31.994108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.552742, 38.464016, 32.202328>,  <36.559204, 38.259197, 32.327259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.552742, 38.464016, 32.202328>,  <36.541973, 38.805378, 31.994108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552742, 38.464016, 32.202328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623403, -0.392738, -0.676111,
		0.781438, 0.342714, 0.521443,
		0.026923, -0.853407, 0.520549,
		36.560818, 38.207993, 32.358494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233486, 38.566101, 32.064083>,  <36.541973, 38.805378, 31.994108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233486, 38.566101, 32.064083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019390, 38.238224, 32.145687>,  <36.890934, 38.041496, 32.194649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019390, 38.238224, 32.145687>,  <37.233486, 38.566101, 32.064083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019390, 38.238224, 32.145687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549991, -0.521490, -0.652348,
		0.641116, -0.236957, 0.729946,
		-0.535238, -0.819695, 0.204011,
		36.858818, 37.992317, 32.206890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697041, 38.087494, 31.960575>,  <37.233486, 38.566101, 32.064083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697041, 38.087494, 31.960575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.349422, 37.890671, 31.939995>,  <37.140854, 37.772579, 31.927647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.349422, 37.890671, 31.939995>,  <37.697041, 38.087494, 31.960575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349422, 37.890671, 31.939995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346495, -0.531115, -0.773213,
		0.353136, -0.689783, 0.632056,
		-0.869043, -0.492054, -0.051450,
		37.088711, 37.743053, 31.924561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967930, 37.430897, 31.916157>,  <37.697041, 38.087494, 31.960575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967930, 37.430897, 31.916157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.586636, 37.406246, 31.797800>,  <37.357861, 37.391457, 31.726786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.586636, 37.406246, 31.797800>,  <37.967930, 37.430897, 31.916157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586636, 37.406246, 31.797800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275727, -0.578299, -0.767819,
		-0.123793, -0.813494, 0.568246,
		-0.953231, -0.061630, -0.295891,
		37.300667, 37.387756, 31.709032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699718, 36.636909, 31.869387>,  <37.967930, 37.430897, 31.916157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699718, 36.636909, 31.869387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.501068, 36.887352, 31.628939>,  <37.381878, 37.037617, 31.484669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.501068, 36.887352, 31.628939>,  <37.699718, 36.636909, 31.869387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501068, 36.887352, 31.628939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278383, -0.541077, -0.793560,
		-0.822110, -0.561445, 0.094414,
		-0.496626, 0.626111, -0.601122,
		37.352081, 37.075184, 31.448603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469364, 36.194019, 31.368660>,  <37.699718, 36.636909, 31.869387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469364, 36.194019, 31.368660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.391659, 36.548569, 31.200562>,  <37.345036, 36.761299, 31.099703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.391659, 36.548569, 31.200562>,  <37.469364, 36.194019, 31.368660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391659, 36.548569, 31.200562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035605, -0.421751, -0.906012,
		-0.980304, -0.190964, 0.050370,
		-0.194259, 0.886374, -0.420244,
		37.333382, 36.814480, 31.074488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867069, 36.138641, 30.885004>,  <37.469364, 36.194019, 31.368660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867069, 36.138641, 30.885004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.106403, 36.436810, 30.767467>,  <37.250004, 36.615711, 30.696945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.106403, 36.436810, 30.767467>,  <36.867069, 36.138641, 30.885004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106403, 36.436810, 30.767467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225166, -0.508379, -0.831174,
		-0.768959, 0.431155, -0.472024,
		0.598332, 0.745423, -0.293841,
		37.285904, 36.660435, 30.679316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685310, 36.207607, 30.185692>,  <36.867069, 36.138641, 30.885004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685310, 36.207607, 30.185692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049816, 36.370144, 30.212494>,  <37.268520, 36.467667, 30.228575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049816, 36.370144, 30.212494>,  <36.685310, 36.207607, 30.185692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049816, 36.370144, 30.212494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251975, -0.421434, -0.871150,
		-0.325744, 0.810730, -0.486424,
		0.911263, 0.406338, 0.067004,
		37.323196, 36.492046, 30.232595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802608, 36.619415, 29.648357>,  <36.685310, 36.207607, 30.185692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802608, 36.619415, 29.648357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.164997, 36.492981, 29.761000>,  <37.382431, 36.417122, 29.828585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.164997, 36.492981, 29.761000>,  <36.802608, 36.619415, 29.648357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164997, 36.492981, 29.761000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233476, -0.181812, -0.955214,
		0.353129, 0.931146, -0.090919,
		0.905974, -0.316086, 0.281604,
		37.436790, 36.398155, 29.845480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309639, 36.763821, 29.064003>,  <36.802608, 36.619415, 29.648357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309639, 36.763821, 29.064003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.523964, 36.514759, 29.292110>,  <37.652557, 36.365322, 29.428974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.523964, 36.514759, 29.292110>,  <37.309639, 36.763821, 29.064003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523964, 36.514759, 29.292110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430712, -0.379352, -0.818889,
		0.726219, 0.684391, 0.064925,
		0.535811, -0.622657, 0.570268,
		37.684708, 36.327961, 29.463190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900623, 36.868862, 28.838017>,  <37.309639, 36.763821, 29.064003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900623, 36.868862, 28.838017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.930607, 36.503414, 28.997858>,  <37.948597, 36.284145, 29.093763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.930607, 36.503414, 28.997858>,  <37.900623, 36.868862, 28.838017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930607, 36.503414, 28.997858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581074, -0.285642, -0.762077,
		0.810391, 0.289326, 0.509467,
		0.074963, -0.913618, 0.399602,
		37.953094, 36.229328, 29.117739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577168, 36.695728, 28.709604>,  <37.900623, 36.868862, 28.838017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577168, 36.695728, 28.709604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.400711, 36.349201, 28.803314>,  <38.294838, 36.141285, 28.859541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.400711, 36.349201, 28.803314>,  <38.577168, 36.695728, 28.709604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400711, 36.349201, 28.803314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514644, -0.458067, -0.724787,
		0.735209, -0.199168, 0.647919,
		-0.441144, -0.866318, 0.234274,
		38.268368, 36.089306, 28.873596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212650, 36.881550, 28.964048>,  <38.577168, 36.695728, 28.709604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212650, 36.881550, 28.964048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.593803, 37.002007, 28.978580>,  <39.822495, 37.074280, 28.987299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.593803, 37.002007, 28.978580>,  <39.212650, 36.881550, 28.964048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593803, 37.002007, 28.978580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233082, 0.650305, 0.723033,
		0.194109, -0.697437, 0.689858,
		0.952887, 0.301141, 0.036331,
		39.879669, 37.092350, 28.989479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323341, 37.027241, 29.655855>,  <39.212650, 36.881550, 28.964048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323341, 37.027241, 29.655855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.620937, 37.230854, 29.482710>,  <39.799496, 37.353020, 29.378822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.620937, 37.230854, 29.482710>,  <39.323341, 37.027241, 29.655855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620937, 37.230854, 29.482710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158676, 0.763874, 0.625555,
		0.649079, -0.396721, 0.649083,
		0.743988, 0.509029, -0.432864,
		39.844135, 37.383564, 29.352850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871876, 37.276585, 30.229673>,  <39.323341, 37.027241, 29.655855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871876, 37.276585, 30.229673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.900505, 37.521000, 29.914330>,  <39.917683, 37.667648, 29.725124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.900505, 37.521000, 29.914330>,  <39.871876, 37.276585, 30.229673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900505, 37.521000, 29.914330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101014, 0.781881, 0.615189,
		0.992307, -0.123666, -0.005762,
		0.071573, 0.611039, -0.788358,
		39.921978, 37.704311, 29.677822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215073, 37.815651, 30.491703>,  <39.871876, 37.276585, 30.229673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215073, 37.815651, 30.491703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.061623, 37.945343, 30.145823>,  <39.969551, 38.023159, 29.938295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.061623, 37.945343, 30.145823>,  <40.215073, 37.815651, 30.491703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061623, 37.945343, 30.145823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076246, 0.922022, 0.379555,
		0.920336, 0.211536, -0.328989,
		-0.383624, 0.324234, -0.864699,
		39.946537, 38.042614, 29.886414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545570, 38.453785, 30.392307>,  <40.215073, 37.815651, 30.491703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545570, 38.453785, 30.392307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.213196, 38.475742, 30.170847>,  <40.013771, 38.488918, 30.037971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.213196, 38.475742, 30.170847>,  <40.545570, 38.453785, 30.392307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213196, 38.475742, 30.170847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212746, 0.888146, 0.407354,
		0.514081, 0.456273, -0.726317,
		-0.830939, 0.054892, -0.553649,
		39.963913, 38.492210, 30.004753>
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
