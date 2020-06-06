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
	<24.325157, 35.243629, 35.395676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170197, 35.081383, 35.064522>,  <24.077221, 34.984035, 34.865829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170197, 35.081383, 35.064522>,  <24.325157, 35.243629, 35.395676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.170197, 35.081383, 35.064522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918013, 0.252217, 0.306004,
		0.084687, 0.878557, -0.470070,
		-0.387401, -0.405616, -0.827887,
		24.053976, 34.959698, 34.816154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.589777, 34.885113, 34.758095>,  <24.325157, 35.243629, 35.395676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.589777, 34.885113, 34.758095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527582, 34.500614, 34.667030>,  <24.490265, 34.269917, 34.612392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527582, 34.500614, 34.667030>,  <24.589777, 34.885113, 34.758095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.527582, 34.500614, 34.667030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483888, 0.275037, -0.830787,
		0.861206, -0.019013, -0.507900,
		-0.155487, -0.961245, -0.227663,
		24.480936, 34.212242, 34.598732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.130009, 34.632690, 34.285557>,  <24.589777, 34.885113, 34.758095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.130009, 34.632690, 34.285557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.123196, 34.263927, 34.130741>,  <24.119108, 34.042671, 34.037853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.123196, 34.263927, 34.130741>,  <24.130009, 34.632690, 34.285557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.123196, 34.263927, 34.130741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350239, 0.368067, -0.861313,
		0.936505, 0.120883, -0.329158,
		-0.017034, -0.921908, -0.387035,
		24.118086, 33.987354, 34.014629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.551613, 34.538349, 33.663326>,  <24.130009, 34.632690, 34.285557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.551613, 34.538349, 33.663326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.225094, 34.307934, 33.646168>,  <24.029182, 34.169685, 33.635872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.225094, 34.307934, 33.646168>,  <24.551613, 34.538349, 33.663326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.225094, 34.307934, 33.646168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202463, 0.354879, -0.912727,
		0.540989, -0.736370, -0.406312,
		-0.816296, -0.576038, -0.042898,
		23.980206, 34.135120, 33.633297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.160091, 34.026798, 33.469799>,  <24.551613, 34.538349, 33.663326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.160091, 34.026798, 33.469799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270088, 34.194187, 33.123558>,  <25.336086, 34.294621, 32.915813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270088, 34.194187, 33.123558>,  <25.160091, 34.026798, 33.469799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270088, 34.194187, 33.123558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424862, 0.754744, 0.499853,
		0.862479, -0.505216, 0.029757,
		0.274993, 0.418470, -0.865599,
		25.352587, 34.319729, 32.863880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731289, 34.366329, 33.600475>,  <25.160091, 34.026798, 33.469799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731289, 34.366329, 33.600475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629839, 34.544300, 33.256912>,  <25.568970, 34.651081, 33.050774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.629839, 34.544300, 33.256912>,  <25.731289, 34.366329, 33.600475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629839, 34.544300, 33.256912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328208, 0.874845, 0.356267,
		0.909920, -0.191542, -0.367909,
		-0.253623, 0.444925, -0.858904,
		25.553753, 34.677776, 32.999241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264664, 34.787395, 33.465477>,  <25.731289, 34.366329, 33.600475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264664, 34.787395, 33.465477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973452, 34.929993, 33.231251>,  <25.798723, 35.015549, 33.090717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973452, 34.929993, 33.231251>,  <26.264664, 34.787395, 33.465477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973452, 34.929993, 33.231251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198776, 0.927237, 0.317362,
		0.656093, 0.114654, -0.745920,
		-0.728032, 0.356490, -0.585563,
		25.755043, 35.036942, 33.055580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561871, 35.346909, 33.088387>,  <26.264664, 34.787395, 33.465477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561871, 35.346909, 33.088387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165329, 35.398930, 33.095406>,  <25.927404, 35.430141, 33.099617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165329, 35.398930, 33.095406>,  <26.561871, 35.346909, 33.088387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165329, 35.398930, 33.095406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130383, 0.960908, 0.244247,
		0.014902, 0.244422, -0.969554,
		-0.991352, 0.130053, 0.017549,
		25.867924, 35.437946, 33.100670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444319, 35.938271, 32.726891>,  <26.561871, 35.346909, 33.088387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444319, 35.938271, 32.726891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104259, 35.908249, 32.935360>,  <25.900225, 35.890236, 33.060440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104259, 35.908249, 32.935360>,  <26.444319, 35.938271, 32.726891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104259, 35.908249, 32.935360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029876, 0.981319, 0.190053,
		-0.525699, 0.177143, -0.832022,
		-0.850146, -0.075053, 0.521171,
		25.849216, 35.885735, 33.091713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105919, 36.584484, 32.698681>,  <26.444319, 35.938271, 32.726891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105919, 36.584484, 32.698681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926678, 36.417431, 33.014854>,  <25.819134, 36.317200, 33.204559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926678, 36.417431, 33.014854>,  <26.105919, 36.584484, 32.698681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926678, 36.417431, 33.014854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073134, 0.864085, 0.498004,
		-0.890985, 0.280965, -0.356657,
		-0.448103, -0.417631, 0.790435,
		25.792246, 36.292141, 33.251984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646597, 37.098297, 32.917427>,  <26.105919, 36.584484, 32.698681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646597, 37.098297, 32.917427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742083, 36.845570, 33.212406>,  <25.799374, 36.693935, 33.389393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742083, 36.845570, 33.212406>,  <25.646597, 37.098297, 32.917427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.742083, 36.845570, 33.212406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368170, 0.761590, 0.533322,
		-0.898591, 0.144193, 0.414418,
		0.238716, -0.631814, 0.737445,
		25.813698, 36.656025, 33.433640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509058, 37.533646, 33.502445>,  <25.646597, 37.098297, 32.917427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.509058, 37.533646, 33.502445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712961, 37.203960, 33.601089>,  <25.835302, 37.006149, 33.660275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712961, 37.203960, 33.601089>,  <25.509058, 37.533646, 33.502445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712961, 37.203960, 33.601089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550551, 0.532791, 0.642672,
		-0.661092, -0.191835, 0.725367,
		0.509756, -0.824217, 0.246609,
		25.865889, 36.956696, 33.675072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637907, 37.497223, 34.255226>,  <25.509058, 37.533646, 33.502445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637907, 37.497223, 34.255226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936722, 37.306492, 34.069939>,  <26.116011, 37.192055, 33.958767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936722, 37.306492, 34.069939>,  <25.637907, 37.497223, 34.255226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936722, 37.306492, 34.069939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664783, 0.536116, 0.520234,
		0.000279, -0.696575, 0.717484,
		0.747036, -0.476826, -0.463221,
		26.160833, 37.163445, 33.930973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.080124, 37.241325, 34.753883>,  <25.637907, 37.497223, 34.255226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.080124, 37.241325, 34.753883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268448, 37.306252, 34.407013>,  <26.381443, 37.345207, 34.198891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268448, 37.306252, 34.407013>,  <26.080124, 37.241325, 34.753883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268448, 37.306252, 34.407013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721831, 0.494271, 0.484414,
		0.507246, -0.854020, 0.115545,
		0.470810, 0.162313, -0.867175,
		26.409691, 37.354946, 34.146862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804272, 37.106113, 34.961609>,  <26.080124, 37.241325, 34.753883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804272, 37.106113, 34.961609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754698, 37.343731, 34.643677>,  <26.724953, 37.486301, 34.452919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754698, 37.343731, 34.643677>,  <26.804272, 37.106113, 34.961609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754698, 37.343731, 34.643677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709531, 0.613019, 0.347525,
		0.693690, -0.520886, -0.497466,
		-0.123936, 0.594042, -0.794830,
		26.717518, 37.521942, 34.405228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593435, 36.423473, 34.614132>,  <26.804272, 37.106113, 34.961609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593435, 36.423473, 34.614132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480503, 36.550285, 34.251965>,  <26.412743, 36.626373, 34.034664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.480503, 36.550285, 34.251965>,  <26.593435, 36.423473, 34.614132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480503, 36.550285, 34.251965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739511, -0.673126, -0.005099,
		-0.611075, 0.668125, 0.424496,
		-0.282332, 0.317035, -0.905416,
		26.395803, 36.645397, 33.980339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007771, 36.036442, 34.540627>,  <26.593435, 36.423473, 34.614132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007771, 36.036442, 34.540627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963779, 36.217899, 34.186878>,  <25.937384, 36.326775, 33.974628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963779, 36.217899, 34.186878>,  <26.007771, 36.036442, 34.540627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963779, 36.217899, 34.186878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745679, -0.625954, -0.228352,
		-0.657166, 0.634344, 0.407111,
		-0.109979, 0.453640, -0.884373,
		25.930786, 36.353992, 33.921566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299416, 35.774055, 34.346371>,  <26.007771, 36.036442, 34.540627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299416, 35.774055, 34.346371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447422, 35.921688, 34.005344>,  <25.536226, 36.010265, 33.800728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447422, 35.921688, 34.005344>,  <25.299416, 35.774055, 34.346371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447422, 35.921688, 34.005344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515388, -0.681984, -0.518915,
		-0.772956, 0.631410, -0.062128,
		0.370018, 0.369079, -0.852565,
		25.558428, 36.032413, 33.749577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.777517, 35.761887, 33.829987>,  <25.299416, 35.774055, 34.346371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.777517, 35.761887, 33.829987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104589, 35.795341, 33.602161>,  <25.300833, 35.815414, 33.465466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104589, 35.795341, 33.602161>,  <24.777517, 35.761887, 33.829987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.104589, 35.795341, 33.602161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241823, -0.847961, -0.471682,
		-0.522416, 0.523419, -0.673137,
		0.817681, 0.083635, -0.569563,
		25.349894, 35.820431, 33.431293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.583422, 35.723091, 33.065926>,  <24.777517, 35.761887, 33.829987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.583422, 35.723091, 33.065926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973183, 35.633331, 33.060497>,  <25.207039, 35.579475, 33.057240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973183, 35.633331, 33.060497>,  <24.583422, 35.723091, 33.065926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.973183, 35.633331, 33.060497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190906, -0.794047, -0.577100,
		0.118723, 0.564919, -0.816561,
		0.974402, -0.224402, -0.013575,
		25.265503, 35.566010, 33.056423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.333410, 35.074665, 32.719028>,  <24.583422, 35.723091, 33.065926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.333410, 35.074665, 32.719028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409687, 34.939068, 32.350525>,  <24.455454, 34.857712, 32.129421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409687, 34.939068, 32.350525>,  <24.333410, 35.074665, 32.719028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.409687, 34.939068, 32.350525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469864, 0.855514, -0.217539,
		0.861896, -0.391385, 0.322419,
		0.190693, -0.338989, -0.921262,
		24.466894, 34.837372, 32.074146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.739185, 35.557163, 32.380756>,  <24.333410, 35.074665, 32.719028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.739185, 35.557163, 32.380756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063217, 35.410080, 32.563431>,  <25.257635, 35.321831, 32.673035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.063217, 35.410080, 32.563431>,  <24.739185, 35.557163, 32.380756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.063217, 35.410080, 32.563431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138635, -0.876937, -0.460175,
		0.569697, 0.309465, -0.761365,
		0.810077, -0.367712, 0.456686,
		25.306240, 35.299767, 32.700436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.173260, 35.253784, 31.900131>,  <24.739185, 35.557163, 32.380756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.173260, 35.253784, 31.900131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277946, 35.075909, 32.242771>,  <25.340759, 34.969185, 32.448353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277946, 35.075909, 32.242771>,  <25.173260, 35.253784, 31.900131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.277946, 35.075909, 32.242771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035910, -0.891405, -0.451783,
		0.964476, 0.087479, -0.249264,
		0.261717, -0.444685, 0.856598,
		25.356462, 34.942505, 32.499752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828308, 34.677387, 31.971878>,  <25.173260, 35.253784, 31.900131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828308, 34.677387, 31.971878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536650, 34.605858, 32.236111>,  <25.361654, 34.562943, 32.394650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536650, 34.605858, 32.236111>,  <25.828308, 34.677387, 31.971878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536650, 34.605858, 32.236111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108645, -0.922771, -0.369716,
		0.675681, -0.341345, 0.653405,
		-0.729145, -0.178821, 0.660584,
		25.317905, 34.552212, 32.434284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.817142, 34.083302, 31.856693>,  <25.828308, 34.677387, 31.971878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.817142, 34.083302, 31.856693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130598, 34.327026, 31.808287>,  <26.318672, 34.473263, 31.779243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130598, 34.327026, 31.808287>,  <25.817142, 34.083302, 31.856693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130598, 34.327026, 31.808287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607474, -0.710873, 0.354450,
		0.129944, -0.351276, -0.927211,
		0.783639, 0.609315, -0.121017,
		26.365690, 34.509819, 31.771982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270468, 33.659889, 31.351458>,  <25.817142, 34.083302, 31.856693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270468, 33.659889, 31.351458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478792, 33.927811, 31.563160>,  <26.603786, 34.088566, 31.690182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478792, 33.927811, 31.563160>,  <26.270468, 33.659889, 31.351458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478792, 33.927811, 31.563160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681272, -0.699708, 0.215122,
		0.514415, 0.248529, -0.820738,
		0.520812, 0.669808, 0.529256,
		26.635036, 34.128754, 31.721937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049549, 33.640289, 31.067415>,  <26.270468, 33.659889, 31.351458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049549, 33.640289, 31.067415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002111, 33.738209, 31.452333>,  <26.973648, 33.796959, 31.683285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002111, 33.738209, 31.452333>,  <27.049549, 33.640289, 31.067415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002111, 33.738209, 31.452333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687346, -0.679161, 0.257480,
		0.716583, 0.691965, -0.087712,
		-0.118597, 0.244794, 0.962294,
		26.966532, 33.811646, 31.741022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826618, 33.804226, 31.369923>,  <27.049549, 33.640289, 31.067415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826618, 33.804226, 31.369923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521475, 33.661392, 31.585531>,  <27.338390, 33.575691, 31.714895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521475, 33.661392, 31.585531>,  <27.826618, 33.804226, 31.369923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521475, 33.661392, 31.585531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604774, -0.688937, 0.399517,
		0.228689, 0.630759, 0.741515,
		-0.762856, -0.357084, 0.539019,
		27.292618, 33.554268, 31.747236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090704, 33.748940, 32.045105>,  <27.826618, 33.804226, 31.369923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090704, 33.748940, 32.045105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771343, 33.508263, 32.035976>,  <27.579727, 33.363857, 32.030499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771343, 33.508263, 32.035976>,  <28.090704, 33.748940, 32.045105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771343, 33.508263, 32.035976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453333, -0.625622, 0.634891,
		-0.396288, 0.496551, 0.772265,
		-0.798402, -0.601693, -0.022823,
		27.531822, 33.327755, 32.029129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831358, 33.714828, 32.770943>,  <28.090704, 33.748940, 32.045105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831358, 33.714828, 32.770943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785753, 33.415379, 32.509697>,  <27.758390, 33.235706, 32.352951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785753, 33.415379, 32.509697>,  <27.831358, 33.714828, 32.770943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785753, 33.415379, 32.509697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690367, -0.532442, 0.489795,
		-0.714419, -0.395045, 0.577534,
		-0.114012, -0.748629, -0.653113,
		27.751549, 33.190788, 32.313763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798336, 33.126465, 33.143627>,  <27.831358, 33.714828, 32.770943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798336, 33.126465, 33.143627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944683, 33.027634, 32.784718>,  <28.032492, 32.968334, 32.569374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944683, 33.027634, 32.784718>,  <27.798336, 33.126465, 33.143627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944683, 33.027634, 32.784718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649024, -0.623250, 0.436265,
		-0.667016, -0.741964, -0.067664,
		0.365865, -0.247080, -0.897270,
		28.054443, 32.953510, 32.515537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931026, 32.405403, 33.113640>,  <27.798336, 33.126465, 33.143627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931026, 32.405403, 33.113640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152637, 32.564518, 32.821114>,  <28.285604, 32.659988, 32.645599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152637, 32.564518, 32.821114>,  <27.931026, 32.405403, 33.113640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152637, 32.564518, 32.821114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758003, -0.604255, 0.245573,
		-0.344214, -0.690392, -0.636298,
		0.554028, 0.397787, -0.731313,
		28.318846, 32.683853, 32.601719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225189, 31.864902, 32.798134>,  <27.931026, 32.405403, 33.113640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225189, 31.864902, 32.798134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446978, 32.189327, 32.723579>,  <28.580050, 32.383984, 32.678848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446978, 32.189327, 32.723579>,  <28.225189, 31.864902, 32.798134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446978, 32.189327, 32.723579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780380, -0.428934, 0.454997,
		0.289085, -0.397733, -0.870769,
		0.554470, 0.811064, -0.186385,
		28.613319, 32.432648, 32.667664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766283, 31.537493, 32.608635>,  <28.225189, 31.864902, 32.798134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766283, 31.537493, 32.608635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881756, 31.913855, 32.679478>,  <28.951038, 32.139671, 32.721981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881756, 31.913855, 32.679478>,  <28.766283, 31.537493, 32.608635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881756, 31.913855, 32.679478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840252, -0.337651, 0.424226,
		0.458955, 0.026346, -0.888069,
		0.288681, 0.940903, 0.177103,
		28.968361, 32.196125, 32.732609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335091, 31.717903, 32.287388>,  <28.766283, 31.537493, 32.608635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335091, 31.717903, 32.287388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308002, 31.942551, 32.617237>,  <29.291750, 32.077339, 32.815147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308002, 31.942551, 32.617237>,  <29.335091, 31.717903, 32.287388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308002, 31.942551, 32.617237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922437, -0.279691, 0.266239,
		0.380163, 0.778690, -0.499117,
		-0.067719, 0.561618, 0.824621,
		29.287687, 32.111034, 32.864624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968344, 31.997101, 32.073994>,  <29.335091, 31.717903, 32.287388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968344, 31.997101, 32.073994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874809, 32.223282, 32.390369>,  <29.818689, 32.358990, 32.580196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.874809, 32.223282, 32.390369>,  <29.968344, 31.997101, 32.073994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874809, 32.223282, 32.390369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772521, -0.385900, 0.504275,
		0.590366, 0.728934, -0.346587,
		-0.233835, 0.565452, 0.790939,
		29.804659, 32.392918, 32.627651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598774, 32.422142, 32.323204>,  <29.968344, 31.997101, 32.073994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598774, 32.422142, 32.323204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334490, 32.383831, 32.621006>,  <30.175920, 32.360844, 32.799686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334490, 32.383831, 32.621006>,  <30.598774, 32.422142, 32.323204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334490, 32.383831, 32.621006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734615, -0.286365, 0.615090,
		0.154286, 0.953321, 0.259567,
		-0.660709, -0.095782, 0.744506,
		30.136276, 32.355095, 32.844357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894636, 32.750000, 33.037121>,  <30.598774, 32.422142, 32.323204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894636, 32.750000, 33.037121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621149, 32.512135, 33.206314>,  <30.457058, 32.369415, 33.307831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.621149, 32.512135, 33.206314>,  <30.894636, 32.750000, 33.037121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621149, 32.512135, 33.206314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714778, -0.428919, 0.552377,
		-0.147053, 0.680005, 0.718309,
		-0.683716, -0.594661, 0.422979,
		30.416035, 32.333736, 33.333206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944260, 32.746414, 33.832466>,  <30.894636, 32.750000, 33.037121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944260, 32.746414, 33.832466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766726, 32.397800, 33.749104>,  <30.660206, 32.188633, 33.699085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766726, 32.397800, 33.749104>,  <30.944260, 32.746414, 33.832466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766726, 32.397800, 33.749104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582087, -0.457221, 0.672401,
		-0.681312, 0.177122, 0.710241,
		-0.443834, -0.871537, -0.208410,
		30.633575, 32.136341, 33.686581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482475, 32.548477, 34.423538>,  <30.944260, 32.746414, 33.832466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482475, 32.548477, 34.423538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571081, 32.209801, 34.230026>,  <30.624245, 32.006596, 34.113918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571081, 32.209801, 34.230026>,  <30.482475, 32.548477, 34.423538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571081, 32.209801, 34.230026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378468, -0.382569, 0.842854,
		-0.898718, -0.369799, 0.235701,
		0.221515, -0.846693, -0.483779,
		30.637535, 31.955793, 34.084892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981039, 31.963079, 34.516003>,  <30.482475, 32.548477, 34.423538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981039, 31.963079, 34.516003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354671, 31.829302, 34.465984>,  <30.578852, 31.749035, 34.435974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354671, 31.829302, 34.465984>,  <29.981039, 31.963079, 34.516003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354671, 31.829302, 34.465984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030243, -0.423065, 0.905595,
		-0.355773, -0.842118, -0.405292,
		0.934083, -0.334444, -0.125047,
		30.634895, 31.728968, 34.428471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067045, 31.183115, 34.366226>,  <29.981039, 31.963079, 34.516003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067045, 31.183115, 34.366226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367332, 31.353163, 34.568493>,  <30.547504, 31.455193, 34.689854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367332, 31.353163, 34.568493>,  <30.067045, 31.183115, 34.366226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367332, 31.353163, 34.568493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117074, -0.667704, 0.735163,
		0.650166, -0.611100, -0.451487,
		0.750718, 0.425121, 0.505662,
		30.592548, 31.480700, 34.720192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005709, 31.188187, 33.680351>,  <30.067045, 31.183115, 34.366226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005709, 31.188187, 33.680351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146128, 31.559429, 33.729969>,  <30.230379, 31.782175, 33.759739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146128, 31.559429, 33.729969>,  <30.005709, 31.188187, 33.680351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146128, 31.559429, 33.729969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587255, 0.321407, -0.742852,
		-0.729312, 0.187935, 0.657864,
		0.351050, 0.928105, 0.124040,
		30.251442, 31.837860, 33.767181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458721, 31.590496, 33.700558>,  <30.005709, 31.188187, 33.680351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.458721, 31.590496, 33.700558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756891, 31.822260, 33.568726>,  <29.935793, 31.961317, 33.489624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756891, 31.822260, 33.568726>,  <29.458721, 31.590496, 33.700558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756891, 31.822260, 33.568726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629470, 0.449174, -0.634042,
		-0.219330, 0.680094, 0.699547,
		0.745427, 0.579408, -0.329582,
		29.980520, 31.996082, 33.469852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363462, 32.317566, 33.826637>,  <29.458721, 31.590496, 33.700558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363462, 32.317566, 33.826637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587034, 32.279808, 33.497108>,  <29.721178, 32.257153, 33.299389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587034, 32.279808, 33.497108>,  <29.363462, 32.317566, 33.826637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587034, 32.279808, 33.497108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682580, 0.511738, -0.521737,
		0.470831, 0.853940, 0.221594,
		0.558930, -0.094395, -0.823824,
		29.754713, 32.251492, 33.249962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328272, 32.958069, 33.605370>,  <29.363462, 32.317566, 33.826637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328272, 32.958069, 33.605370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404451, 32.723763, 33.290253>,  <29.450159, 32.583179, 33.101185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404451, 32.723763, 33.290253>,  <29.328272, 32.958069, 33.605370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404451, 32.723763, 33.290253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599995, 0.565701, -0.565675,
		0.777004, 0.580401, -0.243718,
		0.190447, -0.585762, -0.787790,
		29.461586, 32.548035, 33.053917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437437, 33.454285, 32.979412>,  <29.328272, 32.958069, 33.605370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437437, 33.454285, 32.979412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311483, 33.088623, 32.877304>,  <29.235910, 32.869225, 32.816040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311483, 33.088623, 32.877304>,  <29.437437, 33.454285, 32.979412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311483, 33.088623, 32.877304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762371, 0.403811, -0.505696,
		0.565366, 0.035373, -0.824081,
		-0.314885, -0.914159, -0.255268,
		29.217018, 32.814377, 32.800724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379091, 33.383369, 32.316399>,  <29.437437, 33.454285, 32.979412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379091, 33.383369, 32.316399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126940, 33.096550, 32.435371>,  <28.975649, 32.924458, 32.506756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126940, 33.096550, 32.435371>,  <29.379091, 33.383369, 32.316399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126940, 33.096550, 32.435371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712476, 0.382289, -0.588415,
		0.308217, -0.582837, -0.751866,
		-0.630380, -0.717047, 0.297430,
		28.937826, 32.881435, 32.524601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161724, 33.062386, 31.723555>,  <29.379091, 33.383369, 32.316399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161724, 33.062386, 31.723555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884275, 32.980045, 31.999674>,  <28.717806, 32.930641, 32.165344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884275, 32.980045, 31.999674>,  <29.161724, 33.062386, 31.723555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884275, 32.980045, 31.999674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718933, 0.257700, -0.645544,
		-0.045003, -0.944042, -0.326740,
		-0.693621, -0.205852, 0.690300,
		28.676189, 32.918289, 32.206764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587946, 32.612942, 31.444666>,  <29.161724, 33.062386, 31.723555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587946, 32.612942, 31.444666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433914, 32.841160, 31.734821>,  <28.341496, 32.978092, 31.908915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433914, 32.841160, 31.734821>,  <28.587946, 32.612942, 31.444666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433914, 32.841160, 31.734821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762290, 0.246424, -0.598489,
		-0.520220, -0.783422, 0.340030,
		-0.385078, 0.570547, 0.725390,
		28.318390, 33.012325, 31.952438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566669, 32.947723, 30.792599>,  <28.587946, 32.612942, 31.444666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566669, 32.947723, 30.792599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778677, 32.789585, 30.492523>,  <28.905882, 32.694702, 30.312477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778677, 32.789585, 30.492523>,  <28.566669, 32.947723, 30.792599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778677, 32.789585, 30.492523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772879, 0.589220, 0.235536,
		0.348910, -0.704645, 0.617849,
		0.530018, -0.395342, -0.750190,
		28.937683, 32.670982, 30.267466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500349, 33.586655, 31.175518>,  <28.566669, 32.947723, 30.792599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500349, 33.586655, 31.175518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407494, 33.975727, 31.176846>,  <28.351780, 34.209171, 31.177643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407494, 33.975727, 31.176846>,  <28.500349, 33.586655, 31.175518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407494, 33.975727, 31.176846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042138, 0.013466, -0.999021,
		-0.971769, -0.231773, -0.044112,
		-0.232140, 0.972677, 0.003319,
		28.337852, 34.267529, 31.177841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925394, 33.712296, 30.655605>,  <28.500349, 33.586655, 31.175518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925394, 33.712296, 30.655605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.199093, 33.998089, 30.714022>,  <28.363312, 34.169563, 30.749071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.199093, 33.998089, 30.714022>,  <27.925394, 33.712296, 30.655605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.199093, 33.998089, 30.714022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334541, -0.129594, -0.933428,
		-0.647989, 0.687550, -0.327697,
		0.684246, 0.714479, 0.146039,
		28.404367, 34.212433, 30.757833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933510, 34.086521, 30.082348>,  <27.925394, 33.712296, 30.655605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933510, 34.086521, 30.082348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298143, 34.173649, 30.221817>,  <28.516924, 34.225925, 30.305498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298143, 34.173649, 30.221817>,  <27.933510, 34.086521, 30.082348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298143, 34.173649, 30.221817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383852, -0.147224, -0.911583,
		-0.147224, 0.964822, -0.217816,
		0.911583, 0.217816, 0.348674,
		28.571619, 34.238995, 30.326420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145550, 34.589516, 29.578955>,  <27.933510, 34.086521, 30.082348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145550, 34.589516, 29.578955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420296, 34.346058, 29.737833>,  <28.585144, 34.199982, 29.833160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420296, 34.346058, 29.737833>,  <28.145550, 34.589516, 29.578955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420296, 34.346058, 29.737833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338804, -0.215350, -0.915880,
		0.642984, 0.763658, 0.058295,
		0.686865, -0.608647, 0.397197,
		28.626356, 34.163464, 29.856993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769049, 34.791142, 29.258104>,  <28.145550, 34.589516, 29.578955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769049, 34.791142, 29.258104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820457, 34.406025, 29.353189>,  <28.851303, 34.174953, 29.410240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820457, 34.406025, 29.353189>,  <28.769049, 34.791142, 29.258104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820457, 34.406025, 29.353189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435545, -0.160548, -0.885734,
		0.890945, 0.217370, 0.398707,
		0.128520, -0.962795, 0.237713,
		28.859013, 34.117188, 29.424503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591852, 34.702335, 29.355150>,  <28.769049, 34.791142, 29.258104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591852, 34.702335, 29.355150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380768, 34.391331, 29.218330>,  <29.254118, 34.204727, 29.136238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380768, 34.391331, 29.218330>,  <29.591852, 34.702335, 29.355150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380768, 34.391331, 29.218330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698452, -0.168014, -0.695655,
		0.483410, -0.606010, 0.631717,
		-0.527712, -0.777511, -0.342050,
		29.222454, 34.158077, 29.115715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053713, 34.023144, 29.320723>,  <29.591852, 34.702335, 29.355150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053713, 34.023144, 29.320723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743828, 34.050121, 29.069241>,  <29.557896, 34.066307, 28.918352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743828, 34.050121, 29.069241>,  <30.053713, 34.023144, 29.320723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743828, 34.050121, 29.069241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617504, -0.133228, -0.775203,
		-0.136020, -0.988790, 0.061586,
		-0.774717, 0.067413, -0.628703,
		29.511414, 34.070354, 28.880629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554127, 33.493092, 29.150486>,  <30.053713, 34.023144, 29.320723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554127, 33.493092, 29.150486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460756, 33.198730, 28.896254>,  <30.404734, 33.022114, 28.743713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460756, 33.198730, 28.896254>,  <30.554127, 33.493092, 29.150486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460756, 33.198730, 28.896254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325672, -0.556722, 0.764199,
		-0.916215, 0.385375, -0.109708,
		-0.233426, -0.735899, -0.635582,
		30.390728, 32.977962, 28.705580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839090, 33.243710, 29.288088>,  <30.554127, 33.493092, 29.150486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839090, 33.243710, 29.288088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051371, 32.950283, 29.118269>,  <30.178740, 32.774227, 29.016378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051371, 32.950283, 29.118269>,  <29.839090, 33.243710, 29.288088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051371, 32.950283, 29.118269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271296, -0.621578, 0.734874,
		-0.802966, -0.274821, -0.528885,
		0.530703, -0.733563, -0.424548,
		30.210581, 32.730213, 28.990906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403202, 32.731285, 29.280100>,  <29.839090, 33.243710, 29.288088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403202, 32.731285, 29.280100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771427, 32.575092, 29.276243>,  <29.992361, 32.481377, 29.273930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771427, 32.575092, 29.276243>,  <29.403202, 32.731285, 29.280100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771427, 32.575092, 29.276243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261508, -0.634466, 0.727370,
		-0.290140, -0.667067, -0.686178,
		0.920561, -0.390480, -0.009640,
		30.047596, 32.457947, 29.273352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362629, 32.049942, 29.189867>,  <29.403202, 32.731285, 29.280100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362629, 32.049942, 29.189867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714695, 32.120396, 29.366177>,  <29.925936, 32.162670, 29.471962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714695, 32.120396, 29.366177>,  <29.362629, 32.049942, 29.189867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714695, 32.120396, 29.366177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174382, -0.743676, 0.645397,
		0.441473, -0.644920, -0.623843,
		0.880167, 0.176139, 0.440775,
		29.978745, 32.173237, 29.498409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770460, 31.361254, 29.285143>,  <29.362629, 32.049942, 29.189867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770460, 31.361254, 29.285143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886457, 31.648434, 29.538267>,  <29.956057, 31.820742, 29.690142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886457, 31.648434, 29.538267>,  <29.770460, 31.361254, 29.285143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886457, 31.648434, 29.538267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217204, -0.693346, 0.687090,
		0.932055, -0.061803, -0.357008,
		0.289994, 0.717950, 0.632813,
		29.973455, 31.863819, 29.728111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411781, 30.972527, 29.353598>,  <29.770460, 31.361254, 29.285143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411781, 30.972527, 29.353598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754505, 30.812315, 29.483490>,  <30.960140, 30.716188, 29.561426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754505, 30.812315, 29.483490>,  <30.411781, 30.972527, 29.353598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754505, 30.812315, 29.483490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126519, -0.447222, -0.885429,
		0.499867, 0.799731, -0.332511,
		0.856811, -0.400528, 0.324733,
		31.011549, 30.692156, 29.580910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925339, 31.027454, 28.890388>,  <30.411781, 30.972527, 29.353598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925339, 31.027454, 28.890388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026793, 30.700281, 29.096945>,  <31.087664, 30.503977, 29.220879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026793, 30.700281, 29.096945>,  <30.925339, 31.027454, 28.890388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026793, 30.700281, 29.096945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137764, -0.497859, -0.856246,
		0.957440, 0.288312, -0.013592,
		0.253633, -0.817932, 0.516389,
		31.102882, 30.454901, 29.251862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627054, 30.961863, 28.904783>,  <30.925339, 31.027454, 28.890388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627054, 30.961863, 28.904783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370413, 30.655588, 28.886602>,  <31.216427, 30.471823, 28.875694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370413, 30.655588, 28.886602>,  <31.627054, 30.961863, 28.904783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370413, 30.655588, 28.886602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260525, -0.161804, -0.951812,
		0.721436, -0.622530, 0.303295,
		-0.641605, -0.765687, -0.045454,
		31.177931, 30.425882, 28.872967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995089, 30.279907, 28.730614>,  <31.627054, 30.961863, 28.904783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995089, 30.279907, 28.730614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608912, 30.235373, 28.636362>,  <31.377205, 30.208651, 28.579811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608912, 30.235373, 28.636362>,  <31.995089, 30.279907, 28.730614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608912, 30.235373, 28.636362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257002, -0.256835, -0.931657,
		0.043211, -0.960021, 0.276574,
		-0.965444, -0.111338, -0.235629,
		31.319279, 30.201971, 28.565674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054123, 29.711275, 28.278973>,  <31.995089, 30.279907, 28.730614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054123, 29.711275, 28.278973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749550, 29.969820, 28.259241>,  <31.566805, 30.124947, 28.247402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749550, 29.969820, 28.259241>,  <32.054123, 29.711275, 28.278973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749550, 29.969820, 28.259241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076541, 0.014080, -0.996967,
		-0.643707, -0.762901, -0.060194,
		-0.761435, 0.646362, -0.049330,
		31.521120, 30.163729, 28.244442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628126, 29.493559, 27.655184>,  <32.054123, 29.711275, 28.278973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628126, 29.493559, 27.655184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568861, 29.875879, 27.756767>,  <31.533302, 30.105270, 27.817717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568861, 29.875879, 27.756767>,  <31.628126, 29.493559, 27.655184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568861, 29.875879, 27.756767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054525, 0.264297, -0.962899,
		-0.987459, -0.128817, -0.091274,
		-0.148161, 0.955800, 0.253959,
		31.524412, 30.162619, 27.832954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208971, 29.798937, 27.183002>,  <31.628126, 29.493559, 27.655184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208971, 29.798937, 27.183002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386415, 30.113720, 27.354540>,  <31.492882, 30.302589, 27.457462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386415, 30.113720, 27.354540>,  <31.208971, 29.798937, 27.183002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386415, 30.113720, 27.354540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102046, 0.431037, -0.896545,
		-0.890390, 0.441481, 0.110908,
		0.443613, 0.786957, 0.428843,
		31.519499, 30.349808, 27.483192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881645, 30.364403, 26.895918>,  <31.208971, 29.798937, 27.183002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881645, 30.364403, 26.895918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213209, 30.534647, 27.041115>,  <31.412148, 30.636793, 27.128233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213209, 30.534647, 27.041115>,  <30.881645, 30.364403, 26.895918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213209, 30.534647, 27.041115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165655, 0.433038, -0.886023,
		-0.534291, 0.794564, 0.288444,
		0.828910, 0.425612, 0.362992,
		31.461882, 30.662331, 27.150013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879745, 31.197981, 26.753431>,  <30.881645, 30.364403, 26.895918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879745, 31.197981, 26.753431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261379, 31.080618, 26.777561>,  <31.490358, 31.010201, 26.792038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261379, 31.080618, 26.777561>,  <30.879745, 31.197981, 26.753431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261379, 31.080618, 26.777561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167062, 0.354059, -0.920181,
		0.248629, 0.888006, 0.386819,
		0.954083, -0.293406, 0.060322,
		31.547604, 30.992596, 26.795658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263926, 31.863924, 26.770540>,  <30.879745, 31.197981, 26.753431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263926, 31.863924, 26.770540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482803, 31.543032, 26.675039>,  <31.614130, 31.350496, 26.617739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482803, 31.543032, 26.675039>,  <31.263926, 31.863924, 26.770540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482803, 31.543032, 26.675039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275801, 0.442130, -0.853495,
		0.790260, 0.401180, 0.463188,
		0.547195, -0.802231, -0.238752,
		31.646961, 31.302362, 26.603415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774481, 32.205292, 26.507143>,  <31.263926, 31.863924, 26.770540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774481, 32.205292, 26.507143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848057, 31.834576, 26.376167>,  <31.892202, 31.612144, 26.297581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848057, 31.834576, 26.376167>,  <31.774481, 32.205292, 26.507143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848057, 31.834576, 26.376167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430356, 0.375433, -0.820880,
		0.883720, 0.010076, 0.467908,
		0.183939, -0.926795, -0.327441,
		31.903238, 31.556538, 26.277935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433426, 32.308201, 26.155632>,  <31.774481, 32.205292, 26.507143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433426, 32.308201, 26.155632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300167, 31.958893, 26.013409>,  <32.220211, 31.749310, 25.928074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300167, 31.958893, 26.013409>,  <32.433426, 32.308201, 26.155632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300167, 31.958893, 26.013409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436930, 0.191186, -0.878943,
		0.835529, -0.448168, 0.317864,
		-0.333143, -0.873266, -0.355560,
		32.200226, 31.696913, 25.906740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017784, 31.901360, 25.854801>,  <32.433426, 32.308201, 26.155632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017784, 31.901360, 25.854801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663471, 31.824303, 25.685911>,  <32.450882, 31.778069, 25.584578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663471, 31.824303, 25.685911>,  <33.017784, 31.901360, 25.854801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663471, 31.824303, 25.685911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407369, 0.113120, -0.906231,
		0.222345, -0.974726, -0.021722,
		-0.885784, -0.192647, -0.422225,
		32.397736, 31.766510, 25.559244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268391, 31.720686, 25.257336>,  <33.017784, 31.901360, 25.854801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268391, 31.720686, 25.257336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872421, 31.714046, 25.201080>,  <32.634842, 31.710062, 25.167326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872421, 31.714046, 25.201080>,  <33.268391, 31.720686, 25.257336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872421, 31.714046, 25.201080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126839, 0.337766, -0.932644,
		0.062986, -0.941084, -0.332257,
		-0.989921, -0.016600, -0.140641,
		32.575443, 31.709066, 25.158888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073063, 31.263870, 24.676039>,  <33.268391, 31.720686, 25.257336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073063, 31.263870, 24.676039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771793, 31.525253, 24.706316>,  <32.591034, 31.682083, 24.724482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771793, 31.525253, 24.706316>,  <33.073063, 31.263870, 24.676039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771793, 31.525253, 24.706316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144526, 0.276627, -0.950047,
		-0.641753, -0.704608, -0.302789,
		-0.753170, 0.653456, 0.075692,
		32.545841, 31.721291, 24.729023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734837, 31.211214, 23.979040>,  <33.073063, 31.263870, 24.676039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734837, 31.211214, 23.979040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601463, 31.550047, 24.144583>,  <32.521439, 31.753345, 24.243908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601463, 31.550047, 24.144583>,  <32.734837, 31.211214, 23.979040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601463, 31.550047, 24.144583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139312, 0.478427, -0.867006,
		-0.932423, -0.231436, -0.277533,
		-0.333435, 0.847080, 0.413854,
		32.501434, 31.804171, 24.268740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324474, 31.421801, 23.496603>,  <32.734837, 31.211214, 23.979040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324474, 31.421801, 23.496603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417774, 31.742908, 23.716114>,  <32.473755, 31.935574, 23.847820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417774, 31.742908, 23.716114>,  <32.324474, 31.421801, 23.496603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417774, 31.742908, 23.716114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117433, 0.536957, -0.835396,
		-0.965301, 0.259297, 0.030971,
		0.233246, 0.802771, 0.548775,
		32.487747, 31.983740, 23.880747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955162, 31.921057, 23.129921>,  <32.324474, 31.421801, 23.496603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955162, 31.921057, 23.129921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237854, 32.086185, 23.359741>,  <32.407471, 32.185265, 23.497633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237854, 32.086185, 23.359741>,  <31.955162, 31.921057, 23.129921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237854, 32.086185, 23.359741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277931, 0.584811, -0.762070,
		-0.650603, 0.698264, 0.298568,
		0.706732, 0.412824, 0.574549,
		32.449875, 32.210033, 23.532106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800453, 32.703598, 23.124886>,  <31.955162, 31.921057, 23.129921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800453, 32.703598, 23.124886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181904, 32.675816, 23.242031>,  <32.410774, 32.659145, 23.312319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181904, 32.675816, 23.242031>,  <31.800453, 32.703598, 23.124886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181904, 32.675816, 23.242031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236321, 0.775372, -0.585620,
		-0.186401, 0.627673, 0.755831,
		0.953628, -0.069458, 0.292863,
		32.467991, 32.654980, 23.329889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043892, 33.372219, 23.379793>,  <31.800453, 32.703598, 23.124886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043892, 33.372219, 23.379793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357944, 33.152107, 23.266123>,  <32.546375, 33.020039, 23.197920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357944, 33.152107, 23.266123>,  <32.043892, 33.372219, 23.379793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357944, 33.152107, 23.266123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244305, 0.696818, -0.674358,
		0.569107, 0.460034, 0.681531,
		0.785132, -0.550284, -0.284176,
		32.593483, 32.987022, 23.180870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524574, 33.909409, 23.309313>,  <32.043892, 33.372219, 23.379793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524574, 33.909409, 23.309313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659107, 33.591351, 23.107473>,  <32.739826, 33.400517, 22.986370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659107, 33.591351, 23.107473>,  <32.524574, 33.909409, 23.309313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659107, 33.591351, 23.107473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291481, 0.597397, -0.747099,
		0.895499, 0.104195, 0.432695,
		0.336334, -0.795148, -0.504597,
		32.760006, 33.352806, 22.956095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977673, 34.243866, 22.844748>,  <32.524574, 33.909409, 23.309313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977673, 34.243866, 22.844748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951805, 33.876690, 22.688183>,  <32.936283, 33.656384, 22.594244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951805, 33.876690, 22.688183>,  <32.977673, 34.243866, 22.844748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951805, 33.876690, 22.688183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256550, 0.363757, -0.895468,
		0.964365, -0.158328, 0.211973,
		-0.064671, -0.917939, -0.391414,
		32.932404, 33.601307, 22.570759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611366, 34.050262, 22.579494>,  <32.977673, 34.243866, 22.844748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611366, 34.050262, 22.579494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317322, 33.866585, 22.379992>,  <33.140896, 33.756378, 22.260290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317322, 33.866585, 22.379992>,  <33.611366, 34.050262, 22.579494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317322, 33.866585, 22.379992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325053, 0.406883, -0.853690,
		0.594943, -0.789678, -0.149842,
		-0.735108, -0.459190, -0.498759,
		33.096790, 33.728828, 22.230364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864716, 33.950603, 21.848854>,  <33.611366, 34.050262, 22.579494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864716, 33.950603, 21.848854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472031, 33.887531, 21.806189>,  <33.236420, 33.849689, 21.780590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472031, 33.887531, 21.806189>,  <33.864716, 33.950603, 21.848854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472031, 33.887531, 21.806189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069960, 0.222260, -0.972474,
		0.177050, -0.962152, -0.207164,
		-0.981712, -0.157683, -0.106663,
		33.177517, 33.840225, 21.774189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823433, 33.559555, 21.218283>,  <33.864716, 33.950603, 21.848854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823433, 33.559555, 21.218283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467537, 33.732796, 21.275951>,  <33.253998, 33.836739, 21.310553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467537, 33.732796, 21.275951>,  <33.823433, 33.559555, 21.218283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467537, 33.732796, 21.275951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001211, 0.318080, -0.948063,
		-0.456467, -0.843354, -0.283533,
		-0.889739, 0.433103, 0.144172,
		33.200615, 33.862728, 21.319202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521641, 33.307632, 20.686890>,  <33.823433, 33.559555, 21.218283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521641, 33.307632, 20.686890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311508, 33.623997, 20.812412>,  <33.185429, 33.813816, 20.887726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311508, 33.623997, 20.812412>,  <33.521641, 33.307632, 20.686890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311508, 33.623997, 20.812412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157024, 0.452574, -0.877793,
		-0.836281, -0.411861, -0.361946,
		-0.525336, 0.790915, 0.313807,
		33.153908, 33.861271, 20.906555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864517, 33.240429, 20.368818>,  <33.521641, 33.307632, 20.686890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864517, 33.240429, 20.368818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962132, 33.623039, 20.432707>,  <33.020702, 33.852604, 20.471041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962132, 33.623039, 20.432707>,  <32.864517, 33.240429, 20.368818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962132, 33.623039, 20.432707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015053, 0.160945, -0.986849,
		-0.969648, 0.243234, 0.024878,
		0.244039, 0.956522, 0.159722,
		33.035343, 33.909996, 20.480623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643974, 33.550045, 19.809668>,  <32.864517, 33.240429, 20.368818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643974, 33.550045, 19.809668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797485, 33.894569, 19.942844>,  <32.889591, 34.101284, 20.022751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797485, 33.894569, 19.942844>,  <32.643974, 33.550045, 19.809668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797485, 33.894569, 19.942844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066883, 0.333678, -0.940311,
		-0.921000, 0.383140, 0.070451,
		0.383779, 0.861315, 0.332943,
		32.912621, 34.152966, 20.042727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237877, 34.023361, 19.418085>,  <32.643974, 33.550045, 19.809668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237877, 34.023361, 19.418085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540203, 34.244831, 19.557907>,  <32.721600, 34.377712, 19.641800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540203, 34.244831, 19.557907>,  <32.237877, 34.023361, 19.418085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540203, 34.244831, 19.557907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072033, 0.460299, -0.884837,
		-0.650814, 0.693950, 0.308016,
		0.755812, 0.553677, 0.349556,
		32.766945, 34.410934, 19.662773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001122, 34.770676, 19.354622>,  <32.237877, 34.023361, 19.418085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001122, 34.770676, 19.354622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400234, 34.744747, 19.348539>,  <32.639702, 34.729191, 19.344891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400234, 34.744747, 19.348539>,  <32.001122, 34.770676, 19.354622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400234, 34.744747, 19.348539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024383, 0.568255, -0.822491,
		0.061958, 0.820295, 0.568575,
		0.997781, -0.064823, -0.015206,
		32.699570, 34.725300, 19.343977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302155, 35.418659, 19.241884>,  <32.001122, 34.770676, 19.354622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302155, 35.418659, 19.241884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607197, 35.180832, 19.139971>,  <32.790222, 35.038136, 19.078823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607197, 35.180832, 19.139971>,  <32.302155, 35.418659, 19.241884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607197, 35.180832, 19.139971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193779, 0.585774, -0.786968,
		0.617151, 0.550778, 0.561932,
		0.762610, -0.594569, -0.254782,
		32.835979, 35.002460, 19.063536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701393, 35.959179, 18.909252>,  <32.302155, 35.418659, 19.241884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701393, 35.959179, 18.909252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844234, 35.605156, 18.789818>,  <32.929939, 35.392742, 18.718157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844234, 35.605156, 18.789818>,  <32.701393, 35.959179, 18.909252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844234, 35.605156, 18.789818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340881, 0.421101, -0.840520,
		0.869640, 0.198374, 0.452077,
		0.357108, -0.885054, -0.298585,
		32.951366, 35.339638, 18.700243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419029, 36.135754, 18.681747>,  <32.701393, 35.959179, 18.909252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419029, 36.135754, 18.681747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279282, 35.804394, 18.506615>,  <33.195435, 35.605579, 18.401535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279282, 35.804394, 18.506615>,  <33.419029, 36.135754, 18.681747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279282, 35.804394, 18.506615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321545, 0.332900, -0.886446,
		0.880085, -0.450480, 0.150062,
		-0.349370, -0.828400, -0.437830,
		33.174469, 35.555874, 18.375265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935680, 35.884563, 18.264265>,  <33.419029, 36.135754, 18.681747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935680, 35.884563, 18.264265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608486, 35.707291, 18.117573>,  <33.412170, 35.600929, 18.029558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608486, 35.707291, 18.117573>,  <33.935680, 35.884563, 18.264265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608486, 35.707291, 18.117573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380388, 0.061509, -0.922779,
		0.431515, -0.894320, 0.118268,
		-0.817985, -0.443180, -0.366731,
		33.363091, 35.574337, 18.007553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317108, 35.454578, 17.764172>,  <33.935680, 35.884563, 18.264265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317108, 35.454578, 17.764172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929905, 35.466732, 17.664536>,  <33.697582, 35.474026, 17.604753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929905, 35.466732, 17.664536>,  <34.317108, 35.454578, 17.764172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929905, 35.466732, 17.664536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248554, 0.252532, -0.935119,
		0.034486, -0.967111, -0.252005,
		-0.968004, 0.030389, -0.249088,
		33.639503, 35.475849, 17.589809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236637, 35.063732, 17.094271>,  <34.317108, 35.454578, 17.764172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236637, 35.063732, 17.094271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959057, 35.343815, 17.161377>,  <33.792507, 35.511864, 17.201641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959057, 35.343815, 17.161377>,  <34.236637, 35.063732, 17.094271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959057, 35.343815, 17.161377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179527, 0.393903, -0.901449,
		-0.697282, -0.595442, -0.399056,
		-0.693950, 0.700206, 0.167764,
		33.750874, 35.553875, 17.211706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106472, 35.277359, 16.382460>,  <34.236637, 35.063732, 17.094271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106472, 35.277359, 16.382460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963615, 35.569481, 16.615393>,  <33.877903, 35.744755, 16.755154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963615, 35.569481, 16.615393>,  <34.106472, 35.277359, 16.382460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963615, 35.569481, 16.615393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164658, 0.662911, -0.730368,
		-0.919424, -0.164957, -0.357001,
		-0.357139, 0.730300, 0.582334,
		33.856472, 35.788570, 16.790092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891861, 35.729778, 15.906671>,  <34.106472, 35.277359, 16.382460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891861, 35.729778, 15.906671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870724, 35.954704, 16.236763>,  <33.858044, 36.089661, 16.434818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870724, 35.954704, 16.236763>,  <33.891861, 35.729778, 15.906671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870724, 35.954704, 16.236763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168626, 0.819542, -0.547645,
		-0.984263, 0.110218, -0.138127,
		-0.052841, 0.562319, 0.825231,
		33.854870, 36.123402, 16.484333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581757, 36.428364, 15.664178>,  <33.891861, 35.729778, 15.906671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581757, 36.428364, 15.664178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691059, 36.535004, 16.033882>,  <33.756641, 36.598988, 16.255705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691059, 36.535004, 16.033882>,  <33.581757, 36.428364, 15.664178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691059, 36.535004, 16.033882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068875, 0.952939, -0.295235,
		-0.959473, 0.144333, 0.242034,
		0.273255, 0.266600, 0.924260,
		33.773037, 36.614983, 16.311159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202923, 37.109859, 15.972376>,  <33.581757, 36.428364, 15.664178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202923, 37.109859, 15.972376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575485, 37.068871, 16.112083>,  <33.799023, 37.044277, 16.195908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575485, 37.068871, 16.112083>,  <33.202923, 37.109859, 15.972376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575485, 37.068871, 16.112083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212826, 0.931754, -0.294177,
		-0.295287, 0.348331, 0.889647,
		0.931403, -0.102474, 0.349269,
		33.854904, 37.038128, 16.216864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286095, 37.677116, 16.311075>,  <33.202923, 37.109859, 15.972376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286095, 37.677116, 16.311075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659470, 37.544670, 16.255856>,  <33.883495, 37.465202, 16.222725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659470, 37.544670, 16.255856>,  <33.286095, 37.677116, 16.311075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659470, 37.544670, 16.255856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314319, 0.940353, -0.130156,
		0.172909, 0.078102, 0.981836,
		0.933438, -0.331115, -0.138047,
		33.939503, 37.445335, 16.214441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609947, 38.061810, 16.765013>,  <33.286095, 37.677116, 16.311075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609947, 38.061810, 16.765013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886684, 37.913776, 16.517014>,  <34.052727, 37.824959, 16.368214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886684, 37.913776, 16.517014>,  <33.609947, 38.061810, 16.765013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886684, 37.913776, 16.517014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334518, 0.925234, -0.178993,
		0.639884, -0.083566, 0.763914,
		0.691842, -0.370078, -0.619997,
		34.094238, 37.802753, 16.331015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170170, 38.497242, 16.894075>,  <33.609947, 38.061810, 16.765013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170170, 38.497242, 16.894075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267639, 38.322678, 16.547625>,  <34.326118, 38.217941, 16.339754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267639, 38.322678, 16.547625>,  <34.170170, 38.497242, 16.894075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267639, 38.322678, 16.547625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467503, 0.835295, -0.289349,
		0.849745, -0.334410, 0.407559,
		0.243670, -0.436408, -0.866125,
		34.340740, 38.191753, 16.287786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912117, 38.554222, 16.799994>,  <34.170170, 38.497242, 16.894075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912117, 38.554222, 16.799994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740463, 38.492413, 16.444025>,  <34.637470, 38.455326, 16.230444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740463, 38.492413, 16.444025>,  <34.912117, 38.554222, 16.799994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740463, 38.492413, 16.444025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444465, 0.821591, -0.356987,
		0.786315, -0.548737, -0.283896,
		-0.429138, -0.154522, -0.889923,
		34.611721, 38.446056, 16.177048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472149, 38.750317, 16.295435>,  <34.912117, 38.554222, 16.799994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472149, 38.750317, 16.295435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138809, 38.777264, 16.075983>,  <34.938805, 38.793430, 15.944312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138809, 38.777264, 16.075983>,  <35.472149, 38.750317, 16.295435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138809, 38.777264, 16.075983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360110, 0.819171, -0.446407,
		0.419349, -0.569579, -0.706913,
		-0.833347, 0.067366, -0.548630,
		34.888805, 38.797474, 15.911394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774025, 38.881207, 15.720831>,  <35.472149, 38.750317, 16.295435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774025, 38.881207, 15.720831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387424, 38.971050, 15.671150>,  <35.155464, 39.024956, 15.641342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387424, 38.971050, 15.671150>,  <35.774025, 38.881207, 15.720831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387424, 38.971050, 15.671150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256441, 0.824941, -0.503696,
		-0.010677, -0.518673, -0.854906,
		-0.966501, 0.224611, -0.124201,
		35.097473, 39.038433, 15.633890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723106, 39.084930, 15.048059>,  <35.774025, 38.881207, 15.720831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723106, 39.084930, 15.048059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413471, 39.253811, 15.236754>,  <35.227692, 39.355141, 15.349972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413471, 39.253811, 15.236754>,  <35.723106, 39.084930, 15.048059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413471, 39.253811, 15.236754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162609, 0.852746, -0.496369,
		-0.611843, -0.307522, -0.728751,
		-0.774084, 0.422202, 0.471741,
		35.181248, 39.380470, 15.378277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248215, 39.316387, 14.548495>,  <35.723106, 39.084930, 15.048059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248215, 39.316387, 14.548495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294830, 39.515816, 14.892087>,  <35.322800, 39.635471, 15.098242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294830, 39.515816, 14.892087>,  <35.248215, 39.316387, 14.548495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294830, 39.515816, 14.892087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065787, 0.859099, -0.507563,
		-0.991004, 0.115663, 0.067323,
		0.116544, 0.498569, 0.858980,
		35.329792, 39.665386, 15.149781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941895, 39.944626, 14.568456>,  <35.248215, 39.316387, 14.548495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941895, 39.944626, 14.568456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217659, 40.028118, 14.845914>,  <35.383118, 40.078213, 15.012389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217659, 40.028118, 14.845914>,  <34.941895, 39.944626, 14.568456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217659, 40.028118, 14.845914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028823, 0.964730, -0.261658,
		-0.723796, 0.160397, 0.671112,
		0.689411, 0.208730, 0.693645,
		35.424484, 40.090736, 15.054008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288433, 40.419262, 14.564788>,  <34.941895, 39.944626, 14.568456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288433, 40.419262, 14.564788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385838, 40.807213, 14.562389>,  <34.444279, 41.039986, 14.560950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385838, 40.807213, 14.562389>,  <34.288433, 40.419262, 14.564788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385838, 40.807213, 14.562389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095894, -0.030227, -0.994933,
		-0.965147, 0.241699, -0.100366,
		0.243507, 0.969880, -0.005996,
		34.458889, 41.098179, 14.560591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081734, 40.000717, 15.033436>,  <34.288433, 40.419262, 14.564788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081734, 40.000717, 15.033436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861908, 40.301617, 15.178819>,  <33.730011, 40.482155, 15.266048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861908, 40.301617, 15.178819>,  <34.081734, 40.000717, 15.033436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861908, 40.301617, 15.178819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087347, 0.380924, -0.920471,
		-0.830872, -0.537606, -0.143636,
		-0.549565, 0.752247, 0.363458,
		33.697037, 40.527290, 15.287856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477585, 40.180740, 14.589454>,  <34.081734, 40.000717, 15.033436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477585, 40.180740, 14.589454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525448, 40.523170, 14.790581>,  <33.554165, 40.728626, 14.911257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525448, 40.523170, 14.790581>,  <33.477585, 40.180740, 14.589454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525448, 40.523170, 14.790581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271531, 0.515364, -0.812817,
		-0.954963, -0.039275, 0.294115,
		0.119653, 0.856071, 0.502818,
		33.561344, 40.779991, 14.941426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895504, 40.536980, 14.603314>,  <33.477585, 40.180740, 14.589454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895504, 40.536980, 14.603314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185917, 40.810383, 14.633472>,  <33.360165, 40.974426, 14.651567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185917, 40.810383, 14.633472>,  <32.895504, 40.536980, 14.603314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185917, 40.810383, 14.633472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435095, 0.541512, -0.719345,
		-0.532508, 0.489466, 0.690549,
		0.726036, 0.683511, 0.075395,
		33.403728, 41.015438, 14.656091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642410, 41.224838, 14.785112>,  <32.895504, 40.536980, 14.603314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642410, 41.224838, 14.785112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984695, 41.221531, 14.578160>,  <33.190067, 41.219547, 14.453989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984695, 41.221531, 14.578160>,  <32.642410, 41.224838, 14.785112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984695, 41.221531, 14.578160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439075, 0.517459, -0.734472,
		0.273794, 0.855668, 0.439169,
		0.855716, -0.008266, -0.517379,
		33.241409, 41.219051, 14.422946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035110, 41.962208, 14.689625>,  <32.642410, 41.224838, 14.785112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035110, 41.962208, 14.689625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040001, 41.667194, 14.419546>,  <33.042934, 41.490185, 14.257499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040001, 41.667194, 14.419546>,  <33.035110, 41.962208, 14.689625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040001, 41.667194, 14.419546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498574, 0.580823, -0.643481,
		0.866761, 0.344504, -0.360614,
		0.012229, -0.737537, -0.675196,
		33.043671, 41.445934, 14.216988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332375, 41.764790, 15.419739>,  <33.035110, 41.962208, 14.689625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332375, 41.764790, 15.419739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310623, 41.403461, 15.249537>,  <33.297573, 41.186665, 15.147416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310623, 41.403461, 15.249537>,  <33.332375, 41.764790, 15.419739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310623, 41.403461, 15.249537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153329, -0.428635, 0.890372,
		-0.986678, -0.016825, 0.161814,
		-0.054378, -0.903321, -0.425504,
		33.294312, 41.132465, 15.121886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859955, 41.382240, 15.810827>,  <33.332375, 41.764790, 15.419739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859955, 41.382240, 15.810827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118404, 41.123577, 15.648663>,  <33.273472, 40.968380, 15.551364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118404, 41.123577, 15.648663>,  <32.859955, 41.382240, 15.810827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118404, 41.123577, 15.648663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006231, -0.535629, 0.844431,
		-0.763210, -0.543078, -0.350110,
		0.646121, -0.646659, -0.405413,
		33.312241, 40.929581, 15.527039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602222, 40.738876, 15.894461>,  <32.859955, 41.382240, 15.810827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602222, 40.738876, 15.894461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997822, 40.698524, 15.851180>,  <33.235180, 40.674313, 15.825212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997822, 40.698524, 15.851180>,  <32.602222, 40.738876, 15.894461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997822, 40.698524, 15.851180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056991, -0.415140, 0.907970,
		-0.136513, -0.904147, -0.404824,
		0.988998, -0.100878, -0.108200,
		33.294521, 40.668262, 15.818720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662083, 40.119125, 16.099026>,  <32.602222, 40.738876, 15.894461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662083, 40.119125, 16.099026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038673, 40.253773, 16.106092>,  <33.264629, 40.334560, 16.110332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038673, 40.253773, 16.106092>,  <32.662083, 40.119125, 16.099026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038673, 40.253773, 16.106092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100081, -0.329202, 0.938941,
		0.321878, -0.882222, -0.343625,
		0.941476, 0.336615, 0.017669,
		33.321117, 40.354755, 16.111393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013824, 39.569721, 16.302940>,  <32.662083, 40.119125, 16.099026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013824, 39.569721, 16.302940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228992, 39.893902, 16.395733>,  <33.358093, 40.088409, 16.451408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228992, 39.893902, 16.395733>,  <33.013824, 39.569721, 16.302940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228992, 39.893902, 16.395733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156564, -0.366444, 0.917173,
		0.828330, -0.457046, -0.324005,
		0.537920, 0.810449, 0.231980,
		33.390369, 40.137035, 16.465326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462852, 39.312763, 16.749865>,  <33.013824, 39.569721, 16.302940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462852, 39.312763, 16.749865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506439, 39.700916, 16.836098>,  <33.532593, 39.933807, 16.887838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506439, 39.700916, 16.836098>,  <33.462852, 39.312763, 16.749865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506439, 39.700916, 16.836098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149435, -0.230402, 0.961553,
		0.982749, -0.072564, -0.170116,
		0.108969, 0.970386, 0.215584,
		33.539131, 39.992031, 16.900772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075500, 39.526417, 17.131330>,  <33.462852, 39.312763, 16.749865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075500, 39.526417, 17.131330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857349, 39.837288, 17.256907>,  <33.726460, 40.023811, 17.332253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857349, 39.837288, 17.256907>,  <34.075500, 39.526417, 17.131330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857349, 39.837288, 17.256907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200646, -0.242608, 0.949148,
		0.813821, 0.580635, -0.023624,
		-0.545377, 0.777177, 0.313942,
		33.693737, 40.070442, 17.351089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457432, 39.910812, 17.570356>,  <34.075500, 39.526417, 17.131330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457432, 39.910812, 17.570356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083790, 40.028454, 17.651300>,  <33.859604, 40.099037, 17.699867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083790, 40.028454, 17.651300>,  <34.457432, 39.910812, 17.570356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083790, 40.028454, 17.651300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184985, -0.086047, 0.978967,
		0.305326, 0.951894, 0.025973,
		-0.934107, 0.294100, 0.202358,
		33.803558, 40.116684, 17.712008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545589, 40.221313, 18.106001>,  <34.457432, 39.910812, 17.570356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545589, 40.221313, 18.106001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147839, 40.182240, 18.122358>,  <33.909187, 40.158794, 18.132174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147839, 40.182240, 18.122358>,  <34.545589, 40.221313, 18.106001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147839, 40.182240, 18.122358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037829, 0.033026, 0.998738,
		-0.098908, 0.994670, -0.029145,
		-0.994377, -0.097681, 0.040894,
		33.849525, 40.152935, 18.134626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329689, 40.624092, 18.716816>,  <34.545589, 40.221313, 18.106001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329689, 40.624092, 18.716816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038647, 40.362625, 18.633575>,  <33.864021, 40.205746, 18.583632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038647, 40.362625, 18.633575>,  <34.329689, 40.624092, 18.716816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038647, 40.362625, 18.633575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024048, -0.278865, 0.960029,
		-0.685575, 0.703526, 0.187184,
		-0.727605, -0.653671, -0.208101,
		33.820366, 40.166523, 18.571146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811001, 40.725121, 19.206797>,  <34.329689, 40.624092, 18.716816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811001, 40.725121, 19.206797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775116, 40.351059, 19.069717>,  <33.753586, 40.126621, 18.987471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775116, 40.351059, 19.069717>,  <33.811001, 40.725121, 19.206797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775116, 40.351059, 19.069717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101869, -0.350897, 0.930856,
		-0.990744, 0.048602, 0.126744,
		-0.089716, -0.935152, -0.342698,
		33.748199, 40.070515, 18.966908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405014, 40.367935, 19.753927>,  <33.811001, 40.725121, 19.206797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405014, 40.367935, 19.753927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554985, 40.063232, 19.542585>,  <33.644970, 39.880413, 19.415781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554985, 40.063232, 19.542585>,  <33.405014, 40.367935, 19.753927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554985, 40.063232, 19.542585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087717, -0.596522, 0.797789,
		-0.922894, -0.252770, -0.290473,
		0.374931, -0.761754, -0.528354,
		33.667465, 39.834705, 19.384079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914600, 39.757622, 19.773951>,  <33.405014, 40.367935, 19.753927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914600, 39.757622, 19.773951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283974, 39.621376, 19.703243>,  <33.505600, 39.539627, 19.660818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283974, 39.621376, 19.703243>,  <32.914600, 39.757622, 19.773951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283974, 39.621376, 19.703243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056356, -0.575998, 0.815506,
		-0.379594, -0.743105, -0.551093,
		0.923435, -0.340618, -0.176767,
		33.561005, 39.519192, 19.650213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873768, 39.027370, 19.875933>,  <32.914600, 39.757622, 19.773951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873768, 39.027370, 19.875933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268559, 39.078342, 19.915220>,  <33.505432, 39.108925, 19.938793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268559, 39.078342, 19.915220>,  <32.873768, 39.027370, 19.875933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268559, 39.078342, 19.915220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035988, -0.769862, 0.637196,
		0.156812, -0.625360, -0.764418,
		0.986973, 0.127430, 0.098219,
		33.564651, 39.116570, 19.944685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155907, 38.411755, 19.692556>,  <32.873768, 39.027370, 19.875933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155907, 38.411755, 19.692556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433273, 38.620148, 19.891655>,  <33.599693, 38.745182, 20.011114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433273, 38.620148, 19.891655>,  <33.155907, 38.411755, 19.692556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433273, 38.620148, 19.891655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099904, -0.614609, 0.782480,
		0.713576, -0.592313, -0.374132,
		0.693418, 0.520982, 0.497744,
		33.641300, 38.776443, 20.040977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723022, 37.923779, 19.991796>,  <33.155907, 38.411755, 19.692556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723022, 37.923779, 19.991796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703888, 38.255108, 20.215078>,  <33.692406, 38.453907, 20.349047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703888, 38.255108, 20.215078>,  <33.723022, 37.923779, 19.991796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703888, 38.255108, 20.215078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141156, -0.558842, 0.817172,
		0.988831, -0.039700, 0.143658,
		-0.047840, 0.828324, 0.558204,
		33.689537, 38.503605, 20.382540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900341, 37.672157, 20.558849>,  <33.723022, 37.923779, 19.991796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900341, 37.672157, 20.558849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727932, 38.014065, 20.674496>,  <33.624485, 38.219208, 20.743883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727932, 38.014065, 20.674496>,  <33.900341, 37.672157, 20.558849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727932, 38.014065, 20.674496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283846, -0.432580, 0.855749,
		0.856533, 0.286785, 0.429075,
		-0.431025, 0.854768, 0.289117,
		33.598625, 38.270496, 20.761230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967716, 37.533970, 21.261368>,  <33.900341, 37.672157, 20.558849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967716, 37.533970, 21.261368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709995, 37.837067, 21.219982>,  <33.555363, 38.018925, 21.195150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709995, 37.837067, 21.219982>,  <33.967716, 37.533970, 21.261368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709995, 37.837067, 21.219982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418127, -0.235747, 0.877264,
		0.640347, 0.608485, 0.468724,
		-0.644302, 0.757740, -0.103464,
		33.516705, 38.064388, 21.188942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999031, 38.100193, 21.873495>,  <33.967716, 37.533970, 21.261368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999031, 38.100193, 21.873495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632023, 38.111210, 21.714802>,  <33.411819, 38.117821, 21.619587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632023, 38.111210, 21.714802>,  <33.999031, 38.100193, 21.873495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632023, 38.111210, 21.714802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384279, -0.318266, 0.866624,
		-0.102396, 0.947601, 0.302600,
		-0.917521, 0.027544, -0.396732,
		33.356766, 38.119473, 21.595781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572021, 38.470222, 22.398766>,  <33.999031, 38.100193, 21.873495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572021, 38.470222, 22.398766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299015, 38.283890, 22.173494>,  <33.135212, 38.172089, 22.038332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299015, 38.283890, 22.173494>,  <33.572021, 38.470222, 22.398766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299015, 38.283890, 22.173494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321549, -0.500590, 0.803751,
		-0.656334, 0.729664, 0.191874,
		-0.682518, -0.465832, -0.563177,
		33.094261, 38.144138, 22.004541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022697, 38.415108, 22.791519>,  <33.572021, 38.470222, 22.398766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022697, 38.415108, 22.791519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941833, 38.145039, 22.507751>,  <32.893314, 37.982998, 22.337490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941833, 38.145039, 22.507751>,  <33.022697, 38.415108, 22.791519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941833, 38.145039, 22.507751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432556, -0.588338, 0.683194,
		-0.878651, 0.444978, -0.173111,
		-0.202158, -0.675169, -0.709421,
		32.881187, 37.942490, 22.294926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312321, 38.205498, 22.852777>,  <33.022697, 38.415108, 22.791519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312321, 38.205498, 22.852777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522232, 37.914963, 22.675217>,  <32.648178, 37.740643, 22.568680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522232, 37.914963, 22.675217>,  <32.312321, 38.205498, 22.852777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522232, 37.914963, 22.675217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244612, -0.628155, 0.738639,
		-0.815337, -0.279037, -0.507311,
		0.524777, -0.726333, -0.443902,
		32.679665, 37.697063, 22.542046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789560, 37.716175, 22.758728>,  <32.312321, 38.205498, 22.852777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789560, 37.716175, 22.758728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124958, 37.506973, 22.697542>,  <32.326195, 37.381451, 22.660831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124958, 37.506973, 22.697542>,  <31.789560, 37.716175, 22.758728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124958, 37.506973, 22.697542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394165, -0.775964, 0.492457,
		-0.376250, -0.352629, -0.856789,
		0.838492, -0.523004, -0.152962,
		32.376507, 37.350071, 22.651653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625586, 37.081886, 22.549545>,  <31.789560, 37.716175, 22.758728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625586, 37.081886, 22.549545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988861, 37.017410, 22.704058>,  <32.206825, 36.978725, 22.796764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988861, 37.017410, 22.704058>,  <31.625586, 37.081886, 22.549545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988861, 37.017410, 22.704058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392401, -0.649061, 0.651722,
		0.145666, -0.743463, -0.652721,
		0.908187, -0.161194, 0.386281,
		32.261318, 36.969051, 22.819942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678478, 36.358574, 22.623508>,  <31.625586, 37.081886, 22.549545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678478, 36.358574, 22.623508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966125, 36.494095, 22.866188>,  <32.138714, 36.575409, 23.011795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966125, 36.494095, 22.866188>,  <31.678478, 36.358574, 22.623508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966125, 36.494095, 22.866188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278849, -0.659011, 0.698533,
		0.636485, -0.671505, -0.379432,
		0.719118, 0.338802, 0.606699,
		32.181862, 36.595734, 23.048197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799259, 35.768528, 22.965433>,  <31.678478, 36.358574, 22.623508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799259, 35.768528, 22.965433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995178, 36.047432, 23.174786>,  <32.112732, 36.214775, 23.300398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995178, 36.047432, 23.174786>,  <31.799259, 35.768528, 22.965433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995178, 36.047432, 23.174786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098009, -0.552482, 0.827743,
		0.866309, -0.456724, -0.202268,
		0.489799, 0.697257, 0.523382,
		32.142117, 36.256611, 23.331800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339344, 35.397842, 23.326525>,  <31.799259, 35.768528, 22.965433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339344, 35.397842, 23.326525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280678, 35.741608, 23.522442>,  <32.245480, 35.947868, 23.639992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280678, 35.741608, 23.522442>,  <32.339344, 35.397842, 23.326525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280678, 35.741608, 23.522442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122107, -0.507092, 0.853199,
		0.981621, 0.065326, 0.179312,
		-0.146664, 0.859413, 0.489795,
		32.236679, 35.999432, 23.669380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663582, 35.273888, 23.916773>,  <32.339344, 35.397842, 23.326525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663582, 35.273888, 23.916773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399982, 35.567551, 23.982172>,  <32.241821, 35.743748, 24.021412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399982, 35.567551, 23.982172>,  <32.663582, 35.273888, 23.916773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399982, 35.567551, 23.982172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409308, -0.532411, 0.740949,
		0.631022, 0.421364, 0.651355,
		-0.658998, 0.734160, 0.163496,
		32.202282, 35.787800, 24.031221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729343, 35.446865, 24.571283>,  <32.663582, 35.273888, 23.916773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729343, 35.446865, 24.571283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359161, 35.586971, 24.513521>,  <32.137054, 35.671036, 24.478865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359161, 35.586971, 24.513521>,  <32.729343, 35.446865, 24.571283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359161, 35.586971, 24.513521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286611, -0.397986, 0.871471,
		0.247775, 0.847892, 0.468707,
		-0.925452, 0.350266, -0.144404,
		32.081524, 35.692051, 24.470200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590054, 35.611263, 25.195366>,  <32.729343, 35.446865, 24.571283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590054, 35.611263, 25.195366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237247, 35.589573, 25.008131>,  <32.025562, 35.576557, 24.895790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237247, 35.589573, 25.008131>,  <32.590054, 35.611263, 25.195366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237247, 35.589573, 25.008131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356520, -0.572740, 0.738148,
		-0.308122, 0.817942, 0.485832,
		-0.882017, -0.054231, -0.468086,
		31.972643, 35.573303, 24.867704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055347, 35.866390, 25.700577>,  <32.590054, 35.611263, 25.195366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055347, 35.866390, 25.700577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869368, 35.637558, 25.430305>,  <31.757780, 35.500259, 25.268143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869368, 35.637558, 25.430305>,  <32.055347, 35.866390, 25.700577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869368, 35.637558, 25.430305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475783, -0.482161, 0.735630,
		-0.746629, 0.663506, -0.048009,
		-0.464947, -0.572085, -0.675680,
		31.729883, 35.465931, 25.227602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428156, 35.870621, 25.885168>,  <32.055347, 35.866390, 25.700577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428156, 35.870621, 25.885168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466536, 35.541553, 25.661018>,  <31.489563, 35.344112, 25.526529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466536, 35.541553, 25.661018>,  <31.428156, 35.870621, 25.885168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466536, 35.541553, 25.661018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430427, -0.541904, 0.721854,
		-0.897511, 0.171939, -0.406091,
		0.095947, -0.822665, -0.560372,
		31.495319, 35.294754, 25.492907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873808, 35.518097, 26.023212>,  <31.428156, 35.870621, 25.885168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873808, 35.518097, 26.023212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103241, 35.222900, 25.881014>,  <31.240900, 35.045784, 25.795694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103241, 35.222900, 25.881014>,  <30.873808, 35.518097, 26.023212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103241, 35.222900, 25.881014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550703, -0.668679, 0.499595,
		-0.606406, -0.090789, -0.789955,
		0.573584, -0.737988, -0.355493,
		31.275316, 35.001503, 25.774364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439684, 35.070278, 25.960478>,  <30.873808, 35.518097, 26.023212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439684, 35.070278, 25.960478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767918, 34.842865, 25.937117>,  <30.964857, 34.706417, 25.923100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767918, 34.842865, 25.937117>,  <30.439684, 35.070278, 25.960478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767918, 34.842865, 25.937117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476838, -0.737380, 0.478430,
		-0.315068, -0.364744, -0.876181,
		0.820584, -0.568535, -0.058401,
		31.014093, 34.672306, 25.919596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252167, 34.422890, 25.651239>,  <30.439684, 35.070278, 25.960478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252167, 34.422890, 25.651239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590221, 34.376640, 25.859997>,  <30.793055, 34.348888, 25.985250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590221, 34.376640, 25.859997>,  <30.252167, 34.422890, 25.651239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590221, 34.376640, 25.859997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454929, -0.668227, 0.588654,
		0.280679, -0.734918, -0.617345,
		0.845139, -0.115625, 0.521892,
		30.843763, 34.341953, 26.016565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210749, 33.772022, 26.005312>,  <30.252167, 34.422890, 25.651239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210749, 33.772022, 26.005312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514183, 33.919922, 26.219910>,  <30.696243, 34.008663, 26.348669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514183, 33.919922, 26.219910>,  <30.210749, 33.772022, 26.005312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514183, 33.919922, 26.219910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350649, -0.462321, 0.814435,
		0.549173, -0.805942, -0.221058,
		0.758588, 0.369752, 0.536497,
		30.741760, 34.030846, 26.380859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575254, 33.154503, 26.291996>,  <30.210749, 33.772022, 26.005312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575254, 33.154503, 26.291996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686256, 33.451984, 26.535275>,  <30.752857, 33.630474, 26.681242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686256, 33.451984, 26.535275>,  <30.575254, 33.154503, 26.291996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686256, 33.451984, 26.535275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203210, -0.573299, 0.793747,
		0.938987, -0.343859, -0.007965,
		0.277504, 0.743700, 0.608196,
		30.769508, 33.675095, 26.717733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986216, 32.931416, 26.729057>,  <30.575254, 33.154503, 26.291996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986216, 32.931416, 26.729057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848009, 33.251965, 26.924368>,  <30.765085, 33.444294, 27.041553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848009, 33.251965, 26.924368>,  <30.986216, 32.931416, 26.729057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848009, 33.251965, 26.924368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096315, -0.547856, 0.831010,
		0.933456, 0.240101, 0.266479,
		-0.345518, 0.801377, 0.488275,
		30.744354, 33.492378, 27.070850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286669, 32.820728, 27.365940>,  <30.986216, 32.931416, 26.729057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286669, 32.820728, 27.365940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997494, 33.082199, 27.455439>,  <30.823988, 33.239082, 27.509138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997494, 33.082199, 27.455439>,  <31.286669, 32.820728, 27.365940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997494, 33.082199, 27.455439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205114, -0.512295, 0.833955,
		0.659765, 0.557005, 0.504437,
		-0.722938, 0.653682, 0.223745,
		30.780613, 33.278305, 27.522562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446486, 33.157501, 28.103769>,  <31.286669, 32.820728, 27.365940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446486, 33.157501, 28.103769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059376, 33.187195, 28.007517>,  <30.827110, 33.205013, 27.949766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059376, 33.187195, 28.007517>,  <31.446486, 33.157501, 28.103769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059376, 33.187195, 28.007517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246523, -0.474306, 0.845139,
		-0.051391, 0.877224, 0.477322,
		-0.967773, 0.074239, -0.240630,
		30.769043, 33.209465, 27.935328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193157, 33.379738, 28.697933>,  <31.446486, 33.157501, 28.103769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193157, 33.379738, 28.697933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873659, 33.237381, 28.503885>,  <30.681959, 33.151966, 28.387457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873659, 33.237381, 28.503885>,  <31.193157, 33.379738, 28.697933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873659, 33.237381, 28.503885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239121, -0.552109, 0.798747,
		-0.552109, 0.753999, 0.355894,
		-0.798747, -0.355894, -0.485122,
		30.634035, 33.130611, 28.358349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263515, 33.325832, 29.361935>,  <31.193157, 33.379738, 28.697933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263515, 33.325832, 29.361935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657953, 33.281082, 29.312778>,  <31.894615, 33.254230, 29.283285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657953, 33.281082, 29.312778>,  <31.263515, 33.325832, 29.361935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657953, 33.281082, 29.312778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006144, 0.763516, -0.645760,
		0.166074, 0.636025, 0.753586,
		0.986094, -0.111874, -0.122893,
		31.953781, 33.247520, 29.275911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472872, 34.048527, 29.442497>,  <31.263515, 33.325832, 29.361935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472872, 34.048527, 29.442497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789112, 33.872116, 29.272581>,  <31.978857, 33.766270, 29.170631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789112, 33.872116, 29.272581>,  <31.472872, 34.048527, 29.442497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789112, 33.872116, 29.272581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203595, 0.843586, -0.496902,
		0.577492, 0.306367, 0.756731,
		0.790602, -0.441024, -0.424789,
		32.026291, 33.739807, 29.145144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892986, 34.584099, 29.454376>,  <31.472872, 34.048527, 29.442497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892986, 34.584099, 29.454376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086323, 34.319588, 29.224907>,  <32.202324, 34.160881, 29.087225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086323, 34.319588, 29.224907>,  <31.892986, 34.584099, 29.454376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086323, 34.319588, 29.224907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417407, 0.750096, -0.512958,
		0.769515, 0.008479, 0.638573,
		0.483341, -0.661274, -0.573671,
		32.231323, 34.121204, 29.052805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538071, 34.791435, 29.429348>,  <31.892986, 34.584099, 29.454376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538071, 34.791435, 29.429348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527744, 34.561749, 29.102030>,  <32.521549, 34.423935, 28.905640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527744, 34.561749, 29.102030>,  <32.538071, 34.791435, 29.429348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527744, 34.561749, 29.102030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655027, 0.608642, -0.447764,
		0.755164, -0.547566, 0.360415,
		-0.025817, -0.574217, -0.818296,
		32.520000, 34.389484, 28.856541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148071, 34.633106, 29.249792>,  <32.538071, 34.791435, 29.429348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148071, 34.633106, 29.249792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956982, 34.579609, 28.902485>,  <32.842327, 34.547508, 28.694101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956982, 34.579609, 28.902485>,  <33.148071, 34.633106, 29.249792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956982, 34.579609, 28.902485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594554, 0.678385, -0.431624,
		0.646746, -0.722431, -0.244566,
		-0.477728, -0.133743, -0.868267,
		32.813663, 34.539486, 28.642004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612934, 34.606583, 28.703699>,  <33.148071, 34.633106, 29.249792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612934, 34.606583, 28.703699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281025, 34.706490, 28.504065>,  <33.081879, 34.766434, 28.384285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281025, 34.706490, 28.504065>,  <33.612934, 34.606583, 28.703699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281025, 34.706490, 28.504065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524163, 0.655846, -0.543249,
		0.191636, -0.712377, -0.675126,
		-0.829777, 0.249769, -0.499085,
		33.032093, 34.781422, 28.354340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820751, 34.619656, 27.974436>,  <33.612934, 34.606583, 28.703699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820751, 34.619656, 27.974436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468826, 34.809479, 27.985188>,  <33.257671, 34.923374, 27.991638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468826, 34.809479, 27.985188>,  <33.820751, 34.619656, 27.974436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468826, 34.809479, 27.985188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333918, 0.657337, -0.675579,
		-0.338273, -0.585407, -0.736797,
		-0.879812, 0.474560, 0.026881,
		33.204884, 34.951847, 27.993252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673367, 34.768284, 27.235245>,  <33.820751, 34.619656, 27.974436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673367, 34.768284, 27.235245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457397, 35.033539, 27.442602>,  <33.327816, 35.192692, 27.567017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457397, 35.033539, 27.442602>,  <33.673367, 34.768284, 27.235245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457397, 35.033539, 27.442602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292084, 0.725220, -0.623492,
		-0.789409, -0.185225, -0.585257,
		-0.539927, 0.663134, 0.518394,
		33.295418, 35.232479, 27.598120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259586, 35.086895, 26.625959>,  <33.673367, 34.768284, 27.235245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259586, 35.086895, 26.625959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237816, 35.330376, 26.942572>,  <33.224754, 35.476463, 27.132540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237816, 35.330376, 26.942572>,  <33.259586, 35.086895, 26.625959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237816, 35.330376, 26.942572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488131, 0.707748, -0.510707,
		-0.871072, 0.358575, -0.335645,
		-0.054425, 0.608701, 0.791531,
		33.221489, 35.512985, 27.180031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939022, 35.631336, 26.444315>,  <33.259586, 35.086895, 26.625959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939022, 35.631336, 26.444315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142193, 35.798519, 26.745598>,  <33.264095, 35.898830, 26.926367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142193, 35.798519, 26.745598>,  <32.939022, 35.631336, 26.444315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142193, 35.798519, 26.745598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485656, 0.583228, -0.651141,
		-0.711442, 0.696530, 0.093251,
		0.507925, 0.417961, 0.753207,
		33.294571, 35.923908, 26.971560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830269, 36.399040, 26.407419>,  <32.939022, 35.631336, 26.444315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830269, 36.399040, 26.407419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162151, 36.324406, 26.617859>,  <33.361279, 36.279625, 26.744123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162151, 36.324406, 26.617859>,  <32.830269, 36.399040, 26.407419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162151, 36.324406, 26.617859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470166, 0.741632, -0.478462,
		-0.300897, 0.644334, 0.703061,
		0.829702, -0.186588, 0.526099,
		33.411060, 36.268429, 26.775688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098022, 37.045750, 26.776423>,  <32.830269, 36.399040, 26.407419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098022, 37.045750, 26.776423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406643, 36.797215, 26.721806>,  <33.591816, 36.648094, 26.689035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406643, 36.797215, 26.721806>,  <33.098022, 37.045750, 26.776423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406643, 36.797215, 26.721806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487708, 0.715528, -0.500161,
		0.408468, 0.319310, 0.855100,
		0.771554, -0.621338, -0.136540,
		33.638107, 36.610813, 26.680843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667110, 37.444790, 26.910290>,  <33.098022, 37.045750, 26.776423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667110, 37.444790, 26.910290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814800, 37.139870, 26.697660>,  <33.903412, 36.956917, 26.570084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814800, 37.139870, 26.697660>,  <33.667110, 37.444790, 26.910290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814800, 37.139870, 26.697660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538239, 0.641696, -0.546375,
		0.757612, -0.084381, 0.647228,
		0.369220, -0.762303, -0.531573,
		33.925568, 36.911179, 26.538189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374687, 37.677269, 26.751644>,  <33.667110, 37.444790, 26.910290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374687, 37.677269, 26.751644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318531, 37.382103, 26.487589>,  <34.284840, 37.205006, 26.329157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318531, 37.382103, 26.487589>,  <34.374687, 37.677269, 26.751644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318531, 37.382103, 26.487589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431128, 0.554651, -0.711682,
		0.891303, -0.384513, 0.240269,
		-0.140386, -0.737910, -0.660136,
		34.276417, 37.160728, 26.289549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962700, 37.629215, 26.343782>,  <34.374687, 37.677269, 26.751644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962700, 37.629215, 26.343782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702263, 37.447025, 26.100925>,  <34.546001, 37.337711, 25.955212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702263, 37.447025, 26.100925>,  <34.962700, 37.629215, 26.343782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702263, 37.447025, 26.100925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436351, 0.429890, -0.790438,
		0.621031, -0.779574, -0.081150,
		-0.651090, -0.455476, -0.607143,
		34.506935, 37.310383, 25.918783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291382, 37.434875, 25.651239>,  <34.962700, 37.629215, 26.343782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291382, 37.434875, 25.651239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901745, 37.472492, 25.568966>,  <34.667965, 37.495064, 25.519602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901745, 37.472492, 25.568966>,  <35.291382, 37.434875, 25.651239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901745, 37.472492, 25.568966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225961, 0.442849, -0.867656,
		0.009491, -0.891651, -0.452624,
		-0.974090, 0.094041, -0.205681,
		34.609516, 37.500706, 25.507261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249886, 37.220070, 24.933912>,  <35.291382, 37.434875, 25.651239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249886, 37.220070, 24.933912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926563, 37.445293, 25.002731>,  <34.732571, 37.580429, 25.044024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926563, 37.445293, 25.002731>,  <35.249886, 37.220070, 24.933912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926563, 37.445293, 25.002731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049566, 0.356263, -0.933070,
		-0.586670, -0.745680, -0.315879,
		-0.808308, 0.563061, 0.172048,
		34.684071, 37.614212, 25.054346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659252, 37.027225, 24.425337>,  <35.249886, 37.220070, 24.933912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659252, 37.027225, 24.425337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578766, 37.397888, 24.552351>,  <34.530476, 37.620285, 24.628559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578766, 37.397888, 24.552351>,  <34.659252, 37.027225, 24.425337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578766, 37.397888, 24.552351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194043, 0.280034, -0.940175,
		-0.960136, -0.250790, 0.123464,
		-0.201212, 0.926653, 0.317534,
		34.518402, 37.675884, 24.647612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229057, 37.242329, 23.926737>,  <34.659252, 37.027225, 24.425337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229057, 37.242329, 23.926737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293861, 37.590900, 24.111937>,  <34.332745, 37.800041, 24.223057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293861, 37.590900, 24.111937>,  <34.229057, 37.242329, 23.926737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293861, 37.590900, 24.111937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045919, 0.475349, -0.878598,
		-0.985720, 0.121080, 0.117026,
		0.162009, 0.871426, 0.463001,
		34.342464, 37.852329, 24.250837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706879, 37.790726, 23.629894>,  <34.229057, 37.242329, 23.926737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706879, 37.790726, 23.629894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028889, 37.980579, 23.772253>,  <34.222095, 38.094490, 23.857668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028889, 37.980579, 23.772253>,  <33.706879, 37.790726, 23.629894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028889, 37.980579, 23.772253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140903, 0.429773, -0.891875,
		-0.576267, 0.768127, 0.279100,
		0.805023, 0.474632, 0.355896,
		34.270397, 38.122971, 23.879023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718960, 38.366528, 23.263401>,  <33.706879, 37.790726, 23.629894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718960, 38.366528, 23.263401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083454, 38.390064, 23.426462>,  <34.302151, 38.404186, 23.524300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083454, 38.390064, 23.426462>,  <33.718960, 38.366528, 23.263401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083454, 38.390064, 23.426462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318381, 0.527273, -0.787792,
		-0.261300, 0.847656, 0.461738,
		0.911239, 0.058842, 0.407654,
		34.356827, 38.407719, 23.548758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884808, 39.022598, 23.341413>,  <33.718960, 38.366528, 23.263401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884808, 39.022598, 23.341413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233047, 38.825802, 23.342390>,  <34.441990, 38.707722, 23.342976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233047, 38.825802, 23.342390>,  <33.884808, 39.022598, 23.341413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233047, 38.825802, 23.342390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304542, 0.534987, -0.788062,
		0.386417, 0.686826, 0.615590,
		0.870595, -0.491994, 0.002440,
		34.494225, 38.678204, 23.343122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297134, 39.479290, 23.225634>,  <33.884808, 39.022598, 23.341413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297134, 39.479290, 23.225634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503082, 39.157864, 23.106174>,  <34.626652, 38.965008, 23.034500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503082, 39.157864, 23.106174>,  <34.297134, 39.479290, 23.225634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503082, 39.157864, 23.106174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315861, 0.501682, -0.805324,
		0.796956, 0.320308, 0.512117,
		0.514872, -0.803566, -0.298646,
		34.657543, 38.916794, 23.016581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969009, 39.700878, 23.088156>,  <34.297134, 39.479290, 23.225634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969009, 39.700878, 23.088156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918327, 39.368904, 22.870844>,  <34.887917, 39.169720, 22.740458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918327, 39.368904, 22.870844>,  <34.969009, 39.700878, 23.088156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918327, 39.368904, 22.870844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452583, 0.438994, -0.776178,
		0.882674, -0.344224, 0.319993,
		-0.126704, -0.829936, -0.543279,
		34.880318, 39.119923, 22.707861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518959, 39.820034, 22.658991>,  <34.969009, 39.700878, 23.088156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518959, 39.820034, 22.658991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342937, 39.496479, 22.503014>,  <35.237324, 39.302345, 22.409428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342937, 39.496479, 22.503014>,  <35.518959, 39.820034, 22.658991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342937, 39.496479, 22.503014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471518, 0.161420, -0.866957,
		0.764216, -0.565369, 0.310372,
		-0.440051, -0.808889, -0.389942,
		35.210922, 39.253811, 22.386030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007053, 39.353878, 22.362715>,  <35.518959, 39.820034, 22.658991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007053, 39.353878, 22.362715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663208, 39.324982, 22.160389>,  <35.456902, 39.307644, 22.038994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663208, 39.324982, 22.160389>,  <36.007053, 39.353878, 22.362715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663208, 39.324982, 22.160389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500226, 0.082727, -0.861934,
		0.104113, -0.993950, -0.034975,
		-0.859613, -0.072244, -0.505813,
		35.405323, 39.303310, 22.008644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238487, 39.066956, 21.789364>,  <36.007053, 39.353878, 22.362715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238487, 39.066956, 21.789364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897808, 39.251202, 21.689411>,  <35.693401, 39.361748, 21.629440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897808, 39.251202, 21.689411>,  <36.238487, 39.066956, 21.789364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897808, 39.251202, 21.689411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437574, 0.362756, -0.822762,
		-0.288330, -0.810089, -0.510512,
		-0.851702, 0.460613, -0.249881,
		35.642296, 39.389385, 21.614447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191273, 38.837112, 21.154783>,  <36.238487, 39.066956, 21.789364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191273, 38.837112, 21.154783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927711, 39.137993, 21.156988>,  <35.769573, 39.318523, 21.158310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927711, 39.137993, 21.156988>,  <36.191273, 38.837112, 21.154783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927711, 39.137993, 21.156988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358542, 0.320494, -0.876774,
		-0.661279, -0.575736, -0.480872,
		-0.658907, 0.752205, 0.005510,
		35.730038, 39.363655, 21.158642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897327, 38.868637, 20.541157>,  <36.191273, 38.837112, 21.154783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897327, 38.868637, 20.541157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806347, 39.234539, 20.674715>,  <35.751759, 39.454079, 20.754850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806347, 39.234539, 20.674715>,  <35.897327, 38.868637, 20.541157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806347, 39.234539, 20.674715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299410, 0.391967, -0.869894,
		-0.926617, -0.097890, -0.363041,
		-0.227454, 0.914756, 0.333894,
		35.738110, 39.508965, 20.774883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528690, 39.272404, 19.927511>,  <35.897327, 38.868637, 20.541157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528690, 39.272404, 19.927511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675034, 39.547497, 20.178324>,  <35.762840, 39.712555, 20.328812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675034, 39.547497, 20.178324>,  <35.528690, 39.272404, 19.927511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675034, 39.547497, 20.178324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405313, 0.488750, -0.772558,
		-0.837776, 0.536790, -0.099935,
		0.365858, 0.687736, 0.627031,
		35.784790, 39.753819, 20.366432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392715, 40.012119, 19.636044>,  <35.528690, 39.272404, 19.927511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392715, 40.012119, 19.636044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708649, 40.057980, 19.877048>,  <35.898209, 40.085495, 20.021652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708649, 40.057980, 19.877048>,  <35.392715, 40.012119, 19.636044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708649, 40.057980, 19.877048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505878, 0.433655, -0.745675,
		-0.346777, 0.893755, 0.284513,
		0.789831, 0.114654, 0.602513,
		35.945599, 40.092377, 20.057802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576336, 40.603828, 19.396250>,  <35.392715, 40.012119, 19.636044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576336, 40.603828, 19.396250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897938, 40.456238, 19.582771>,  <36.090897, 40.367683, 19.694685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897938, 40.456238, 19.582771>,  <35.576336, 40.603828, 19.396250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897938, 40.456238, 19.582771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592132, 0.425056, -0.684622,
		0.054401, 0.826552, 0.560226,
		0.804002, -0.368972, 0.466305,
		36.139137, 40.345547, 19.722662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070107, 41.095306, 19.459932>,  <35.576336, 40.603828, 19.396250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070107, 41.095306, 19.459932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299740, 40.768513, 19.481682>,  <36.437519, 40.572437, 19.494732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299740, 40.768513, 19.481682>,  <36.070107, 41.095306, 19.459932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299740, 40.768513, 19.481682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571684, 0.352402, -0.740938,
		0.586176, 0.456447, 0.669368,
		0.574086, -0.816988, 0.054373,
		36.471966, 40.523415, 19.497993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752010, 41.278580, 19.520166>,  <36.070107, 41.095306, 19.459932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752010, 41.278580, 19.520166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795681, 40.895435, 19.413898>,  <36.821884, 40.665550, 19.350138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795681, 40.895435, 19.413898>,  <36.752010, 41.278580, 19.520166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795681, 40.895435, 19.413898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754265, 0.253906, -0.605488,
		0.647429, -0.134280, 0.750203,
		0.109176, -0.957862, -0.265669,
		36.828434, 40.608078, 19.334198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387928, 41.131870, 19.482498>,  <36.752010, 41.278580, 19.520166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387928, 41.131870, 19.482498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247337, 40.834904, 19.254366>,  <37.162983, 40.656723, 19.117487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247337, 40.834904, 19.254366>,  <37.387928, 41.131870, 19.482498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247337, 40.834904, 19.254366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657169, 0.238232, -0.715105,
		0.666779, -0.626144, 0.404164,
		-0.351474, -0.742421, -0.570331,
		37.141895, 40.612179, 19.083267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979923, 40.652790, 19.295370>,  <37.387928, 41.131870, 19.482498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979923, 40.652790, 19.295370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710045, 40.567467, 19.012732>,  <37.548119, 40.516273, 18.843149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710045, 40.567467, 19.012732>,  <37.979923, 40.652790, 19.295370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710045, 40.567467, 19.012732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717368, 0.035748, -0.695777,
		0.173676, -0.976330, 0.128903,
		-0.674700, -0.213311, -0.706596,
		37.507633, 40.503475, 18.800753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250195, 40.110165, 18.963850>,  <37.979923, 40.652790, 19.295370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250195, 40.110165, 18.963850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974281, 40.255905, 18.713585>,  <37.808735, 40.343349, 18.563425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974281, 40.255905, 18.713585>,  <38.250195, 40.110165, 18.963850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974281, 40.255905, 18.713585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666700, -0.017347, -0.745124,
		-0.282338, -0.931101, -0.230946,
		-0.689779, 0.364348, -0.625663,
		37.767349, 40.365211, 18.525887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362354, 39.791016, 18.296894>,  <38.250195, 40.110165, 18.963850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362354, 39.791016, 18.296894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145992, 40.119308, 18.223330>,  <38.016174, 40.316284, 18.179190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145992, 40.119308, 18.223330>,  <38.362354, 39.791016, 18.296894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145992, 40.119308, 18.223330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533693, 0.165915, -0.829243,
		-0.650070, -0.546697, -0.527761,
		-0.540908, 0.820728, -0.183912,
		37.983719, 40.365528, 18.168156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056114, 40.049160, 18.042778>,  <38.362354, 39.791016, 18.296894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056114, 40.049160, 18.042778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397274, 39.842255, 18.071049>,  <39.601971, 39.718113, 18.088011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397274, 39.842255, 18.071049>,  <39.056114, 40.049160, 18.042778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397274, 39.842255, 18.071049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302010, -0.378420, 0.874979,
		-0.425853, -0.767615, -0.478974,
		0.852900, -0.517267, 0.070676,
		39.653145, 39.687077, 18.092253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950703, 39.335045, 18.078756>,  <39.056114, 40.049160, 18.042778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950703, 39.335045, 18.078756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304222, 39.394913, 18.256067>,  <39.516335, 39.430836, 18.362453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304222, 39.394913, 18.256067>,  <38.950703, 39.335045, 18.078756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304222, 39.394913, 18.256067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291471, -0.564993, 0.771899,
		0.365981, -0.811407, -0.455716,
		0.883800, 0.149672, 0.443278,
		39.569363, 39.439816, 18.389051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015327, 38.745987, 18.376652>,  <38.950703, 39.335045, 18.078756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015327, 38.745987, 18.376652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300682, 38.940258, 18.578718>,  <39.471893, 39.056824, 18.699959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300682, 38.940258, 18.578718>,  <39.015327, 38.745987, 18.376652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300682, 38.940258, 18.578718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126417, -0.619852, 0.774469,
		0.689274, -0.616357, -0.380795,
		0.713386, 0.485683, 0.505166,
		39.514698, 39.085964, 18.730268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451321, 38.233917, 18.698311>,  <39.015327, 38.745987, 18.376652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451321, 38.233917, 18.698311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520638, 38.557899, 18.922434>,  <39.562229, 38.752289, 19.056908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520638, 38.557899, 18.922434>,  <39.451321, 38.233917, 18.698311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520638, 38.557899, 18.922434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170279, -0.535708, 0.827056,
		0.970038, -0.238732, 0.045083,
		0.173294, 0.809953, 0.560308,
		39.572624, 38.800884, 19.090527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955486, 38.082653, 19.274752>,  <39.451321, 38.233917, 18.698311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955486, 38.082653, 19.274752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750347, 38.403271, 19.397726>,  <39.627266, 38.595642, 19.471510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750347, 38.403271, 19.397726>,  <39.955486, 38.082653, 19.274752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750347, 38.403271, 19.397726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187130, -0.453878, 0.871193,
		0.837839, 0.389256, 0.382762,
		-0.512844, 0.801546, 0.307435,
		39.596493, 38.643734, 19.489956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129555, 38.121948, 20.085018>,  <39.955486, 38.082653, 19.274752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129555, 38.121948, 20.085018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808395, 38.352554, 20.024370>,  <39.615700, 38.490917, 19.987982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808395, 38.352554, 20.024370>,  <40.129555, 38.121948, 20.085018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808395, 38.352554, 20.024370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347916, -0.246658, 0.904497,
		0.484055, 0.778969, 0.398619,
		-0.802898, 0.576512, -0.151619,
		39.567528, 38.525509, 19.978884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915890, 38.449928, 20.775431>,  <40.129555, 38.121948, 20.085018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915890, 38.449928, 20.775431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594490, 38.468208, 20.538010>,  <39.401649, 38.479176, 20.395557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594490, 38.468208, 20.538010>,  <39.915890, 38.449928, 20.775431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594490, 38.468208, 20.538010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584603, -0.248808, 0.772227,
		-0.112389, 0.967474, 0.226633,
		-0.803497, 0.045701, -0.593552,
		39.353439, 38.481918, 20.359943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407593, 38.649952, 21.203592>,  <39.915890, 38.449928, 20.775431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407593, 38.649952, 21.203592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198792, 38.514500, 20.890457>,  <39.073509, 38.433228, 20.702576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198792, 38.514500, 20.890457>,  <39.407593, 38.649952, 21.203592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198792, 38.514500, 20.890457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674671, -0.397611, 0.621871,
		-0.521852, 0.852780, -0.020912,
		-0.522005, -0.338634, -0.782840,
		39.042191, 38.412910, 20.655605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676727, 38.827641, 21.288900>,  <39.407593, 38.649952, 21.203592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676727, 38.827641, 21.288900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693813, 38.511616, 21.044287>,  <38.704067, 38.322002, 20.897518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693813, 38.511616, 21.044287>,  <38.676727, 38.827641, 21.288900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693813, 38.511616, 21.044287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687914, -0.467148, 0.555470,
		-0.724534, 0.396955, -0.563451,
		0.042718, -0.790063, -0.611535,
		38.706631, 38.274597, 20.860826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014053, 38.577145, 21.248629>,  <38.676727, 38.827641, 21.288900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014053, 38.577145, 21.248629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228710, 38.270603, 21.107365>,  <38.357502, 38.086678, 21.022606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228710, 38.270603, 21.107365>,  <38.014053, 38.577145, 21.248629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228710, 38.270603, 21.107365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411065, -0.602934, 0.683737,
		-0.736917, -0.221746, -0.638578,
		0.536636, -0.766354, -0.353160,
		38.389702, 38.040695, 21.001417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601105, 38.101475, 21.161140>,  <38.014053, 38.577145, 21.248629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601105, 38.101475, 21.161140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950794, 37.908180, 21.179970>,  <38.160606, 37.792202, 21.191267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950794, 37.908180, 21.179970>,  <37.601105, 38.101475, 21.161140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950794, 37.908180, 21.179970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350620, -0.561280, 0.749687,
		-0.335854, -0.671899, -0.660116,
		0.874224, -0.483235, 0.047073,
		38.213062, 37.763210, 21.194092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386932, 37.365513, 21.206137>,  <37.601105, 38.101475, 21.161140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386932, 37.365513, 21.206137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763855, 37.416393, 21.329996>,  <37.990009, 37.446922, 21.404312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763855, 37.416393, 21.329996>,  <37.386932, 37.365513, 21.206137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763855, 37.416393, 21.329996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170624, -0.613324, 0.771181,
		0.288007, -0.779522, -0.556235,
		0.942305, 0.127199, 0.309647,
		38.046547, 37.454552, 21.422890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634808, 36.593491, 21.372906>,  <37.386932, 37.365513, 21.206137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634808, 36.593491, 21.372906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843784, 36.880901, 21.556547>,  <37.969170, 37.053349, 21.666731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843784, 36.880901, 21.556547>,  <37.634808, 36.593491, 21.372906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843784, 36.880901, 21.556547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132905, -0.463223, 0.876219,
		0.842255, -0.518788, -0.146510,
		0.522439, 0.718529, 0.459102,
		38.000515, 37.096458, 21.694277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091259, 36.292820, 21.814499>,  <37.634808, 36.593491, 21.372906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091259, 36.292820, 21.814499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057537, 36.666756, 21.952463>,  <38.037304, 36.891117, 22.035242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057537, 36.666756, 21.952463>,  <38.091259, 36.292820, 21.814499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057537, 36.666756, 21.952463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108647, -0.352702, 0.929407,
		0.990499, 0.040880, 0.131302,
		-0.084305, 0.934842, 0.344910,
		38.032246, 36.947208, 22.055937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388832, 36.230141, 22.515768>,  <38.091259, 36.292820, 21.814499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388832, 36.230141, 22.515768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179047, 36.570457, 22.528988>,  <38.053173, 36.774647, 22.536921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179047, 36.570457, 22.528988>,  <38.388832, 36.230141, 22.515768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179047, 36.570457, 22.528988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262234, -0.198340, 0.944402,
		0.810043, 0.486639, 0.327129,
		-0.524466, 0.850790, 0.033051,
		38.021706, 36.825695, 22.538902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502167, 36.374584, 23.203142>,  <38.388832, 36.230141, 22.515768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502167, 36.374584, 23.203142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185570, 36.604649, 23.120457>,  <37.995613, 36.742687, 23.070847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185570, 36.604649, 23.120457>,  <38.502167, 36.374584, 23.203142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185570, 36.604649, 23.120457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383588, -0.204170, 0.900652,
		0.475819, 0.792150, 0.382224,
		-0.791490, 0.575164, -0.206712,
		37.948124, 36.777199, 23.058443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375225, 36.729118, 23.753666>,  <38.502167, 36.374584, 23.203142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375225, 36.729118, 23.753666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022644, 36.742901, 23.565260>,  <37.811096, 36.751171, 23.452217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022644, 36.742901, 23.565260>,  <38.375225, 36.729118, 23.753666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022644, 36.742901, 23.565260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471883, -0.104701, 0.875422,
		-0.019155, 0.993907, 0.108547,
		-0.881453, 0.034453, -0.471014,
		37.758209, 36.753235, 23.423956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853355, 37.167942, 24.172865>,  <38.375225, 36.729118, 23.753666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853355, 37.167942, 24.172865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605743, 36.958157, 23.939028>,  <37.457176, 36.832287, 23.798725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605743, 36.958157, 23.939028>,  <37.853355, 37.167942, 24.172865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605743, 36.958157, 23.939028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579688, -0.197082, 0.790645,
		-0.529876, 0.828310, -0.182025,
		-0.619026, -0.524462, -0.584591,
		37.420036, 36.800819, 23.763651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215130, 37.265366, 24.494860>,  <37.853355, 37.167942, 24.172865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215130, 37.265366, 24.494860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167290, 36.947983, 24.256157>,  <37.138584, 36.757553, 24.112936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167290, 36.947983, 24.256157>,  <37.215130, 37.265366, 24.494860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167290, 36.947983, 24.256157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484919, -0.477811, 0.732495,
		-0.866342, 0.376984, -0.327618,
		-0.119599, -0.793460, -0.596755,
		37.131409, 36.709946, 24.077131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477039, 37.049347, 24.525679>,  <37.215130, 37.265366, 24.494860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477039, 37.049347, 24.525679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656685, 36.717743, 24.392389>,  <36.764473, 36.518780, 24.312416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656685, 36.717743, 24.392389>,  <36.477039, 37.049347, 24.525679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656685, 36.717743, 24.392389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396363, -0.519103, 0.757250,
		-0.800747, -0.208013, -0.561725,
		0.449111, -0.829013, -0.333222,
		36.791420, 36.469040, 24.292423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986080, 36.500694, 24.377781>,  <36.477039, 37.049347, 24.525679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986080, 36.500694, 24.377781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340385, 36.328690, 24.447660>,  <36.552967, 36.225487, 24.489588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340385, 36.328690, 24.447660>,  <35.986080, 36.500694, 24.377781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340385, 36.328690, 24.447660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419140, -0.579383, 0.699026,
		-0.199370, -0.692393, -0.693429,
		0.885761, -0.430009, 0.174698,
		36.606113, 36.199688, 24.500071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856174, 35.813152, 24.358503>,  <35.986080, 36.500694, 24.377781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856174, 35.813152, 24.358503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209476, 35.817825, 24.546003>,  <36.421459, 35.820629, 24.658503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209476, 35.817825, 24.546003>,  <35.856174, 35.813152, 24.358503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209476, 35.817825, 24.546003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401422, -0.497802, 0.768800,
		0.242325, -0.867212, -0.434997,
		0.883255, 0.011682, 0.468748,
		36.474453, 35.821331, 24.686628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923744, 35.120510, 24.677996>,  <35.856174, 35.813152, 24.358503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923744, 35.120510, 24.677996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172237, 35.354362, 24.886715>,  <36.321335, 35.494675, 25.011948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172237, 35.354362, 24.886715>,  <35.923744, 35.120510, 24.677996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172237, 35.354362, 24.886715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352325, -0.386396, 0.852388,
		0.699953, -0.713376, -0.034063,
		0.621235, 0.584630, 0.521799,
		36.358608, 35.529751, 25.043255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184574, 34.733406, 25.092056>,  <35.923744, 35.120510, 24.677996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184574, 34.733406, 25.092056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258076, 35.077641, 25.282059>,  <36.302177, 35.284180, 25.396059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258076, 35.077641, 25.282059>,  <36.184574, 34.733406, 25.092056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258076, 35.077641, 25.282059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257942, -0.424083, 0.868113,
		0.948525, -0.282041, 0.144055,
		0.183752, 0.860585, 0.475004,
		36.313202, 35.335815, 25.424561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495365, 34.537735, 25.705057>,  <36.184574, 34.733406, 25.092056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495365, 34.537735, 25.705057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375000, 34.914738, 25.763216>,  <36.302780, 35.140938, 25.798111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375000, 34.914738, 25.763216>,  <36.495365, 34.537735, 25.705057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375000, 34.914738, 25.763216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279858, -0.233024, 0.931332,
		0.911664, 0.239559, 0.333886,
		-0.300913, 0.942502, 0.145397,
		36.284725, 35.197487, 25.806835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746334, 34.534111, 26.355244>,  <36.495365, 34.537735, 25.705057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746334, 34.534111, 26.355244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491482, 34.837379, 26.299755>,  <36.338570, 35.019341, 26.266462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491482, 34.837379, 26.299755>,  <36.746334, 34.534111, 26.355244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491482, 34.837379, 26.299755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375221, -0.147889, 0.915062,
		0.673255, 0.635067, 0.378705,
		-0.637132, 0.758168, -0.138723,
		36.300343, 35.064831, 26.258139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817390, 34.965733, 26.933218>,  <36.746334, 34.534111, 26.355244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817390, 34.965733, 26.933218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456402, 35.061546, 26.790018>,  <36.239807, 35.119034, 26.704098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456402, 35.061546, 26.790018>,  <36.817390, 34.965733, 26.933218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456402, 35.061546, 26.790018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364935, 0.016348, 0.930890,
		0.228834, 0.970750, 0.072661,
		-0.902473, 0.239536, -0.358002,
		36.185661, 35.133408, 26.682617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641708, 35.517551, 27.406425>,  <36.817390, 34.965733, 26.933218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641708, 35.517551, 27.406425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343327, 35.316978, 27.231100>,  <36.164299, 35.196636, 27.125904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343327, 35.316978, 27.231100>,  <36.641708, 35.517551, 27.406425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343327, 35.316978, 27.231100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329303, -0.294350, 0.897172,
		-0.578889, 0.813587, 0.054448,
		-0.745954, -0.501433, -0.438313,
		36.119541, 35.166550, 27.099606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125351, 35.839542, 27.690378>,  <36.641708, 35.517551, 27.406425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125351, 35.839542, 27.690378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975327, 35.490799, 27.564402>,  <35.885311, 35.281551, 27.488815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975327, 35.490799, 27.564402>,  <36.125351, 35.839542, 27.690378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975327, 35.490799, 27.564402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293374, -0.210644, 0.932503,
		-0.879354, 0.442139, -0.176777,
		-0.375059, -0.871861, -0.314942,
		35.862808, 35.229240, 27.469919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519192, 35.750340, 28.053877>,  <36.125351, 35.839542, 27.690378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519192, 35.750340, 28.053877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598682, 35.380009, 27.925283>,  <35.646378, 35.157810, 27.848127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598682, 35.380009, 27.925283>,  <35.519192, 35.750340, 28.053877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598682, 35.380009, 27.925283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168320, -0.355395, 0.919436,
		-0.965492, -0.128608, -0.226463,
		0.198731, -0.925826, -0.321484,
		35.658302, 35.102261, 27.828838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918289, 35.384491, 28.228016>,  <35.519192, 35.750340, 28.053877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918289, 35.384491, 28.228016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230358, 35.139347, 28.177835>,  <35.417599, 34.992260, 28.147728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230358, 35.139347, 28.177835>,  <34.918289, 35.384491, 28.228016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230358, 35.139347, 28.177835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227925, -0.465241, 0.855337,
		-0.582563, -0.638717, -0.502654,
		0.780173, -0.612855, -0.125452,
		35.464409, 34.955490, 28.140200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715145, 34.787189, 28.572966>,  <34.918289, 35.384491, 28.228016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715145, 34.787189, 28.572966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104259, 34.704548, 28.531010>,  <35.337727, 34.654964, 28.505836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104259, 34.704548, 28.531010>,  <34.715145, 34.787189, 28.572966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104259, 34.704548, 28.531010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013305, -0.501757, 0.864906,
		-0.231323, -0.839973, -0.490851,
		0.972786, -0.206604, -0.104892,
		35.396095, 34.642567, 28.499542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794201, 34.067909, 28.808344>,  <34.715145, 34.787189, 28.572966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794201, 34.067909, 28.808344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162518, 34.222111, 28.832108>,  <35.383507, 34.314632, 28.846367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162518, 34.222111, 28.832108>,  <34.794201, 34.067909, 28.808344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162518, 34.222111, 28.832108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169837, -0.533366, 0.828660,
		0.351140, -0.752932, -0.556591,
		0.920791, 0.385505, 0.059411,
		35.438755, 34.337761, 28.849930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170174, 33.604103, 29.282497>,  <34.794201, 34.067909, 28.808344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170174, 33.604103, 29.282497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452782, 33.886475, 29.262495>,  <35.622345, 34.055897, 29.250494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452782, 33.886475, 29.262495>,  <35.170174, 33.604103, 29.282497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452782, 33.886475, 29.262495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459279, -0.403610, 0.791304,
		0.538419, -0.582037, -0.609375,
		0.706518, 0.705927, -0.050006,
		35.664738, 34.098251, 29.247494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930077, 33.319874, 29.301073>,  <35.170174, 33.604103, 29.282497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930077, 33.319874, 29.301073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978870, 33.692097, 29.439161>,  <36.008148, 33.915432, 29.522015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978870, 33.692097, 29.439161>,  <35.930077, 33.319874, 29.301073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978870, 33.692097, 29.439161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541913, -0.353843, 0.762316,
		0.831535, 0.094090, -0.547445,
		0.121983, 0.930560, 0.345222,
		36.015465, 33.971264, 29.542728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560139, 33.428574, 29.287704>,  <35.930077, 33.319874, 29.301073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560139, 33.428574, 29.287704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423328, 33.688797, 29.558937>,  <36.341240, 33.844929, 29.721676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423328, 33.688797, 29.558937>,  <36.560139, 33.428574, 29.287704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423328, 33.688797, 29.558937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535523, -0.458007, 0.709538,
		0.772160, 0.605810, -0.191736,
		-0.342029, 0.650556, 0.678080,
		36.320721, 33.883965, 29.762362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122246, 33.497456, 29.696627>,  <36.560139, 33.428574, 29.287704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122246, 33.497456, 29.696627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848087, 33.666630, 29.933729>,  <36.683594, 33.768135, 30.075991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848087, 33.666630, 29.933729>,  <37.122246, 33.497456, 29.696627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848087, 33.666630, 29.933729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479122, -0.351059, 0.804487,
		0.548339, 0.835393, 0.037976,
		-0.685395, 0.422936, 0.592755,
		36.642467, 33.793510, 30.111555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522163, 33.848564, 30.186176>,  <37.122246, 33.497456, 29.696627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522163, 33.848564, 30.186176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166405, 33.798500, 30.362043>,  <36.952950, 33.768463, 30.467564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166405, 33.798500, 30.362043>,  <37.522163, 33.848564, 30.186176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166405, 33.798500, 30.362043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457132, -0.241385, 0.856016,
		-0.001006, 0.962325, 0.271900,
		-0.889398, -0.125156, 0.439666,
		36.899586, 33.760952, 30.493944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537155, 34.155968, 30.881657>,  <37.522163, 33.848564, 30.186176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537155, 34.155968, 30.881657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241943, 33.886093, 30.885637>,  <37.064816, 33.724167, 30.888025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241943, 33.886093, 30.885637>,  <37.537155, 34.155968, 30.881657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241943, 33.886093, 30.885637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422999, -0.451122, 0.785851,
		-0.525717, 0.584193, 0.618336,
		-0.738033, -0.674691, 0.009950,
		37.020535, 33.683685, 30.888622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348904, 34.149445, 31.604942>,  <37.537155, 34.155968, 30.881657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348904, 34.149445, 31.604942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221367, 33.816284, 31.424004>,  <37.144844, 33.616390, 31.315439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221367, 33.816284, 31.424004>,  <37.348904, 34.149445, 31.604942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221367, 33.816284, 31.424004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511554, -0.552999, 0.657651,
		-0.797904, -0.021714, 0.602393,
		-0.318842, -0.832899, -0.452348,
		37.125713, 33.566414, 31.288300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773129, 34.253315, 32.083729>,  <37.348904, 34.149445, 31.604942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773129, 34.253315, 32.083729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763332, 33.858078, 32.144489>,  <36.757454, 33.620937, 32.180946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763332, 33.858078, 32.144489>,  <36.773129, 34.253315, 32.083729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763332, 33.858078, 32.144489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810764, -0.108529, -0.575224,
		0.584860, 0.109066, 0.803768,
		-0.024495, -0.988092, 0.151902,
		36.755985, 33.561649, 32.190060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345383, 33.904285, 32.495110>,  <36.773129, 34.253315, 32.083729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345383, 33.904285, 32.495110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229908, 33.594513, 32.269928>,  <37.160622, 33.408649, 32.134819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229908, 33.594513, 32.269928>,  <37.345383, 33.904285, 32.495110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229908, 33.594513, 32.269928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929020, -0.084422, -0.360270,
		0.231477, -0.627004, 0.743831,
		-0.288686, -0.774428, -0.562958,
		37.143303, 33.362183, 32.101040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856606, 33.294422, 32.597027>,  <37.345383, 33.904285, 32.495110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856606, 33.294422, 32.597027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653301, 33.232548, 32.258148>,  <37.531319, 33.195423, 32.054821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653301, 33.232548, 32.258148>,  <37.856606, 33.294422, 32.597027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653301, 33.232548, 32.258148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847944, -0.261840, -0.460902,
		-0.150534, -0.952634, 0.264249,
		-0.508262, -0.154687, -0.847196,
		37.500824, 33.186142, 32.003990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270683, 33.439110, 31.924623>,  <37.856606, 33.294422, 32.597027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270683, 33.439110, 31.924623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461773, 33.469742, 31.574558>,  <38.576427, 33.488121, 31.364519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461773, 33.469742, 31.574558>,  <38.270683, 33.439110, 31.924623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461773, 33.469742, 31.574558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378141, -0.917111, 0.126162,
		-0.792961, -0.391207, -0.467087,
		0.477726, 0.076583, -0.875165,
		38.605091, 33.492718, 31.312010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151691, 32.868660, 31.568768>,  <38.270683, 33.439110, 31.924623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151691, 32.868660, 31.568768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495716, 33.022144, 31.434273>,  <38.702133, 33.114235, 31.353577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495716, 33.022144, 31.434273>,  <38.151691, 32.868660, 31.568768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495716, 33.022144, 31.434273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452519, -0.878110, 0.155400,
		-0.235622, -0.285807, -0.928869,
		0.860063, 0.383715, -0.336235,
		38.753735, 33.137260, 31.333403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470074, 32.515087, 30.912210>,  <38.151691, 32.868660, 31.568768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470074, 32.515087, 30.912210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731342, 32.661015, 31.177624>,  <38.888103, 32.748569, 31.336872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731342, 32.661015, 31.177624>,  <38.470074, 32.515087, 30.912210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731342, 32.661015, 31.177624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331489, -0.925620, 0.182599,
		0.680795, 0.100686, -0.725520,
		0.653171, 0.364815, 0.663534,
		38.927292, 32.770458, 31.376684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243118, 32.343620, 30.768452>,  <38.470074, 32.515087, 30.912210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243118, 32.343620, 30.768452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173092, 32.388577, 31.159700>,  <39.131077, 32.415550, 31.394449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173092, 32.388577, 31.159700>,  <39.243118, 32.343620, 30.768452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173092, 32.388577, 31.159700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535967, -0.822479, 0.190438,
		0.825888, 0.557580, 0.083749,
		-0.175066, 0.112394, 0.978120,
		39.120571, 32.422295, 31.453136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796291, 32.690552, 30.505871>,  <39.243118, 32.343620, 30.768452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796291, 32.690552, 30.505871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123749, 32.870224, 30.362730>,  <40.320225, 32.978027, 30.276846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123749, 32.870224, 30.362730>,  <39.796291, 32.690552, 30.505871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123749, 32.870224, 30.362730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545532, 0.802963, -0.240095,
		0.179497, 0.391772, 0.902383,
		0.818642, 0.449183, -0.357854,
		40.369343, 33.004978, 30.255373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746986, 33.370720, 30.556398>,  <39.796291, 32.690552, 30.505871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746986, 33.370720, 30.556398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041874, 33.382458, 30.286390>,  <40.218807, 33.389500, 30.124386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041874, 33.382458, 30.286390>,  <39.746986, 33.370720, 30.556398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041874, 33.382458, 30.286390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335261, 0.883279, -0.327749,
		0.586612, 0.467929, 0.661006,
		0.737215, 0.029348, -0.675020,
		40.263039, 33.391262, 30.083883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125584, 33.995945, 30.759565>,  <39.746986, 33.370720, 30.556398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125584, 33.995945, 30.759565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163380, 33.880337, 30.378506>,  <40.186058, 33.810970, 30.149870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163380, 33.880337, 30.378506>,  <40.125584, 33.995945, 30.759565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163380, 33.880337, 30.378506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228574, 0.925065, -0.303328,
		0.968930, 0.246412, 0.021350,
		0.094494, -0.289023, -0.952647,
		40.191727, 33.793629, 30.092712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671928, 33.706894, 31.214380>,  <40.125584, 33.995945, 30.759565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671928, 33.706894, 31.214380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460037, 33.378464, 31.299442>,  <39.332901, 33.181404, 31.350479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460037, 33.378464, 31.299442>,  <39.671928, 33.706894, 31.214380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460037, 33.378464, 31.299442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422235, -0.037837, 0.905697,
		-0.735598, 0.569566, 0.366730,
		-0.529730, -0.821074, 0.212657,
		39.301117, 33.132141, 31.363239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849159, 34.380539, 31.579802>,  <39.671928, 33.706894, 31.214380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849159, 34.380539, 31.579802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002151, 34.226715, 31.915855>,  <40.093945, 34.134422, 32.117489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002151, 34.226715, 31.915855>,  <39.849159, 34.380539, 31.579802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002151, 34.226715, 31.915855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224116, 0.843505, 0.488130,
		-0.896373, -0.374986, 0.236435,
		0.382476, -0.384558, 0.840135,
		40.116894, 34.111347, 32.167896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340847, 34.306744, 32.069843>,  <39.849159, 34.380539, 31.579802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340847, 34.306744, 32.069843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722500, 34.407173, 32.135075>,  <39.951492, 34.467430, 32.174213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722500, 34.407173, 32.135075>,  <39.340847, 34.306744, 32.069843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722500, 34.407173, 32.135075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281392, 0.938055, 0.202166,
		-0.102219, -0.238782, 0.965678,
		0.954133, 0.251069, 0.163078,
		40.008739, 34.482494, 32.183998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423809, 34.918587, 32.536518>,  <39.340847, 34.306744, 32.069843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423809, 34.918587, 32.536518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793427, 34.938187, 32.384865>,  <40.015198, 34.949947, 32.293873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793427, 34.938187, 32.384865>,  <39.423809, 34.918587, 32.536518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793427, 34.938187, 32.384865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036221, 0.998512, 0.040777,
		0.380567, -0.023947, 0.924443,
		0.924044, 0.049003, -0.379133,
		40.070641, 34.952888, 32.271126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837830, 35.326817, 33.013733>,  <39.423809, 34.918587, 32.536518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837830, 35.326817, 33.013733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004978, 35.353672, 32.651325>,  <40.105267, 35.369785, 32.433880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004978, 35.353672, 32.651325>,  <39.837830, 35.326817, 33.013733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004978, 35.353672, 32.651325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028023, 0.995838, 0.086723,
		0.908072, -0.061629, 0.414255,
		0.417876, 0.067142, -0.906020,
		40.130341, 35.373814, 32.379520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266598, 35.862957, 33.037445>,  <39.837830, 35.326817, 33.013733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266598, 35.862957, 33.037445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257191, 35.810009, 32.641075>,  <40.251545, 35.778240, 32.403255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257191, 35.810009, 32.641075>,  <40.266598, 35.862957, 33.037445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257191, 35.810009, 32.641075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107911, 0.985068, -0.134148,
		0.993882, -0.110086, -0.008884,
		-0.023519, -0.132369, -0.990922,
		40.250134, 35.770298, 32.343800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786022, 36.190460, 32.686172>,  <40.266598, 35.862957, 33.037445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786022, 36.190460, 32.686172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526562, 36.156330, 32.383659>,  <40.370884, 36.135853, 32.202152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526562, 36.156330, 32.383659>,  <40.786022, 36.190460, 32.686172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526562, 36.156330, 32.383659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285083, 0.894113, -0.345384,
		0.705673, -0.439639, -0.555647,
		-0.648655, -0.085322, -0.756284,
		40.331966, 36.130733, 32.156773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077332, 36.601875, 32.151329>,  <40.786022, 36.190460, 32.686172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077332, 36.601875, 32.151329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686131, 36.574917, 32.072376>,  <40.451408, 36.558743, 32.025005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686131, 36.574917, 32.072376>,  <41.077332, 36.601875, 32.151329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686131, 36.574917, 32.072376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083804, 0.993581, 0.075980,
		0.190997, 0.090851, -0.977377,
		-0.978007, -0.067396, -0.197385,
		40.392727, 36.554699, 32.013161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877571, 36.953808, 31.648781>,  <41.077332, 36.601875, 32.151329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877571, 36.953808, 31.648781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546654, 36.911987, 31.869560>,  <40.348103, 36.886894, 32.002029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546654, 36.911987, 31.869560>,  <40.877571, 36.953808, 31.648781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546654, 36.911987, 31.869560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016343, 0.986591, 0.162393,
		-0.561525, 0.125327, -0.817914,
		-0.827298, -0.104555, 0.551947,
		40.298466, 36.880619, 32.035145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312588, 37.201508, 31.150560>,  <40.877571, 36.953808, 31.648781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312588, 37.201508, 31.150560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531227, 37.534496, 31.186811>,  <41.662411, 37.734291, 31.208563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531227, 37.534496, 31.186811>,  <41.312588, 37.201508, 31.150560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531227, 37.534496, 31.186811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259674, 0.065612, 0.963465,
		0.796113, -0.550165, 0.252035,
		0.546602, 0.832474, 0.090629,
		41.695206, 37.784237, 31.214001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564129, 37.269413, 30.874676>,  <41.312588, 37.201508, 31.150560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564129, 37.269413, 30.874676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314491, 37.005135, 31.041523>,  <40.164711, 36.846569, 31.141632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314491, 37.005135, 31.041523>,  <40.564129, 37.269413, 30.874676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314491, 37.005135, 31.041523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363905, 0.718191, 0.593106,
		-0.691435, 0.218361, -0.688648,
		-0.624092, -0.660697, 0.417120,
		40.127262, 36.806927, 31.166658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827389, 37.554623, 30.868389>,  <40.564129, 37.269413, 30.874676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827389, 37.554623, 30.868389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965549, 37.339607, 31.176092>,  <40.048447, 37.210598, 31.360714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965549, 37.339607, 31.176092>,  <39.827389, 37.554623, 30.868389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965549, 37.339607, 31.176092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189059, 0.763042, 0.618080,
		-0.919215, -0.358919, 0.161928,
		0.345399, -0.537535, 0.769257,
		40.069168, 37.178349, 31.406870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773712, 38.312904, 31.111475>,  <39.827389, 37.554623, 30.868389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773712, 38.312904, 31.111475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732536, 38.377380, 31.504091>,  <39.707829, 38.416065, 31.739660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732536, 38.377380, 31.504091>,  <39.773712, 38.312904, 31.111475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732536, 38.377380, 31.504091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144285, -0.978765, 0.145606,
		0.984167, -0.126633, 0.124014,
		-0.102942, 0.161194, 0.981539,
		39.701653, 38.425739, 31.798553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341312, 38.080025, 31.580217>,  <39.773712, 38.312904, 31.111475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341312, 38.080025, 31.580217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980373, 38.054855, 31.750776>,  <39.763809, 38.039753, 31.853111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980373, 38.054855, 31.750776>,  <40.341312, 38.080025, 31.580217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980373, 38.054855, 31.750776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131057, -0.982501, 0.132347,
		0.410607, 0.175306, 0.894801,
		-0.902344, -0.062928, 0.426397,
		39.709671, 38.035976, 31.878695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243191, 37.724796, 32.378899>,  <40.341312, 38.080025, 31.580217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243191, 37.724796, 32.378899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959816, 37.657993, 32.104607>,  <39.789791, 37.617912, 31.940033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959816, 37.657993, 32.104607>,  <40.243191, 37.724796, 32.378899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959816, 37.657993, 32.104607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133350, -0.985773, 0.102319,
		-0.693059, -0.018954, 0.720632,
		-0.708441, -0.167009, -0.685726,
		39.747284, 37.607891, 31.898890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623409, 37.283863, 32.574108>,  <40.243191, 37.724796, 32.378899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623409, 37.283863, 32.574108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725384, 37.249290, 32.188873>,  <39.786568, 37.228546, 31.957733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725384, 37.249290, 32.188873>,  <39.623409, 37.283863, 32.574108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725384, 37.249290, 32.188873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046780, -0.993729, 0.101562,
		-0.965825, -0.070945, -0.249298,
		0.254940, -0.086429, -0.963087,
		39.801865, 37.223362, 31.899948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161213, 36.846931, 32.280151>,  <39.623409, 37.283863, 32.574108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161213, 36.846931, 32.280151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508492, 36.841225, 32.081741>,  <39.716858, 36.837803, 31.962696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508492, 36.841225, 32.081741>,  <39.161213, 36.846931, 32.280151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508492, 36.841225, 32.081741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064015, -0.994453, -0.083452,
		-0.492080, 0.104205, -0.864290,
		0.868193, -0.014262, -0.496022,
		39.768948, 36.836945, 31.932934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106701, 36.358727, 31.785631>,  <39.161213, 36.846931, 32.280151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106701, 36.358727, 31.785631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501041, 36.422222, 31.807194>,  <39.737644, 36.460320, 31.820131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501041, 36.422222, 31.807194>,  <39.106701, 36.358727, 31.785631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501041, 36.422222, 31.807194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163964, -0.979990, -0.112851,
		0.034914, 0.120093, -0.992149,
		0.985848, 0.158737, 0.053906,
		39.796795, 36.469845, 31.823366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457115, 36.006504, 31.234163>,  <39.106701, 36.358727, 31.785631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457115, 36.006504, 31.234163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723583, 36.044014, 31.530117>,  <39.883465, 36.066521, 31.707689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723583, 36.044014, 31.530117>,  <39.457115, 36.006504, 31.234163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723583, 36.044014, 31.530117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300294, -0.941818, -0.151004,
		0.682676, 0.322776, -0.655568,
		0.666167, 0.093777, 0.739884,
		39.923431, 36.072147, 31.752083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043243, 35.629776, 31.110394>,  <39.457115, 36.006504, 31.234163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043243, 35.629776, 31.110394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087978, 35.680218, 31.504671>,  <40.114819, 35.710484, 31.741238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087978, 35.680218, 31.504671>,  <40.043243, 35.629776, 31.110394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087978, 35.680218, 31.504671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408367, -0.910122, 0.070099,
		0.905940, 0.394685, -0.153285,
		0.111841, 0.126102, 0.985693,
		40.121532, 35.718048, 31.800379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738762, 35.449055, 31.251348>,  <40.043243, 35.629776, 31.110394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738762, 35.449055, 31.251348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557320, 35.418186, 31.606489>,  <40.448452, 35.399666, 31.819574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557320, 35.418186, 31.606489>,  <40.738762, 35.449055, 31.251348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557320, 35.418186, 31.606489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301665, -0.950731, 0.071482,
		0.838593, 0.300259, 0.454540,
		-0.453608, -0.077174, 0.887854,
		40.421238, 35.395035, 31.872845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202942, 35.017006, 31.664198>,  <40.738762, 35.449055, 31.251348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.202942, 35.017006, 31.664198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847942, 34.992359, 31.846869>,  <40.634945, 34.977573, 31.956470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847942, 34.992359, 31.846869>,  <41.202942, 35.017006, 31.664198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847942, 34.992359, 31.846869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109619, -0.990801, 0.079358,
		0.447586, 0.120490, 0.886086,
		-0.887497, -0.061613, 0.456676,
		40.581692, 34.973877, 31.983871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179432, 34.632446, 32.316864>,  <41.202942, 35.017006, 31.664198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179432, 34.632446, 32.316864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825096, 34.579842, 32.138882>,  <40.612495, 34.548279, 32.032093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825096, 34.579842, 32.138882>,  <41.179432, 34.632446, 32.316864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825096, 34.579842, 32.138882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163314, -0.985998, -0.033721,
		-0.434293, -0.102540, 0.894917,
		-0.885843, -0.131507, -0.444958,
		40.559341, 34.540390, 32.005394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801342, 34.097244, 32.652225>,  <41.179432, 34.632446, 32.316864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801342, 34.097244, 32.652225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710648, 34.101177, 32.262665>,  <40.656231, 34.103539, 32.028927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710648, 34.101177, 32.262665>,  <40.801342, 34.097244, 32.652225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710648, 34.101177, 32.262665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483509, -0.866891, -0.121322,
		-0.845464, -0.498401, 0.191802,
		-0.226738, 0.009835, -0.973906,
		40.642628, 34.104126, 31.970493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385979, 33.570278, 32.356598>,  <40.801342, 34.097244, 32.652225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385979, 33.570278, 32.356598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619247, 33.709194, 32.062851>,  <40.759209, 33.792542, 31.886602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619247, 33.709194, 32.062851>,  <40.385979, 33.570278, 32.356598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619247, 33.709194, 32.062851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155135, -0.934984, -0.318963,
		-0.797395, 0.072085, -0.599136,
		0.583175, 0.347287, -0.734369,
		40.794201, 33.813381, 31.842541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264908, 32.820496, 32.411957>,  <40.385979, 33.570278, 32.356598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264908, 32.820496, 32.411957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877167, 32.915417, 32.386494>,  <39.644524, 32.972370, 32.371216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877167, 32.915417, 32.386494>,  <40.264908, 32.820496, 32.411957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877167, 32.915417, 32.386494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234741, -0.818034, 0.525088,
		0.072533, 0.523935, 0.848664,
		-0.969348, 0.237303, -0.063655,
		39.586361, 32.986607, 32.367397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966805, 33.012638, 33.067085>,  <40.264908, 32.820496, 32.411957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966805, 33.012638, 33.067085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717724, 32.840168, 32.805912>,  <39.568275, 32.736687, 32.649208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717724, 32.840168, 32.805912>,  <39.966805, 33.012638, 33.067085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717724, 32.840168, 32.805912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436996, -0.500554, 0.747315,
		-0.649055, 0.750687, 0.123275,
		-0.622706, -0.431178, -0.652934,
		39.530910, 32.710815, 32.610031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346367, 33.057568, 33.512569>,  <39.966805, 33.012638, 33.067085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346367, 33.057568, 33.512569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316776, 32.791782, 33.215111>,  <39.299023, 32.632313, 33.036636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316776, 32.791782, 33.215111>,  <39.346367, 33.057568, 33.512569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316776, 32.791782, 33.215111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351676, -0.680409, 0.642937,
		-0.933195, 0.309084, -0.183344,
		-0.073972, -0.664463, -0.743651,
		39.294586, 32.592442, 32.992016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501869, 33.774441, 33.579670>,  <39.346367, 33.057568, 33.512569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501869, 33.774441, 33.579670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424877, 33.569912, 33.244648>,  <39.378681, 33.447193, 33.043633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424877, 33.569912, 33.244648>,  <39.501869, 33.774441, 33.579670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424877, 33.569912, 33.244648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854894, -0.506414, 0.112700,
		-0.481776, -0.694331, 0.534599,
		-0.192477, -0.511322, -0.837557,
		39.367134, 33.416515, 32.993382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194939, 34.251106, 34.143543>,  <39.501869, 33.774441, 33.579670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194939, 34.251106, 34.143543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842197, 34.146976, 34.300808>,  <38.630554, 34.084499, 34.395168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842197, 34.146976, 34.300808>,  <39.194939, 34.251106, 34.143543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842197, 34.146976, 34.300808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158482, 0.948918, 0.272834,
		-0.444102, 0.178290, -0.878058,
		-0.881849, -0.260323, 0.393160,
		38.577644, 34.068878, 34.418755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703949, 34.635498, 34.419197>,  <39.194939, 34.251106, 34.143543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703949, 34.635498, 34.419197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555553, 34.541355, 34.778522>,  <39.466515, 34.484867, 34.994118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555553, 34.541355, 34.778522>,  <39.703949, 34.635498, 34.419197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555553, 34.541355, 34.778522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802454, 0.405604, 0.437667,
		-0.467370, 0.883228, 0.038390,
		-0.370988, -0.235359, 0.898317,
		39.444256, 34.470749, 35.048019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447639, 34.298187, 34.219269>,  <39.703949, 34.635498, 34.419197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447639, 34.298187, 34.219269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823364, 34.300346, 34.082058>,  <41.048798, 34.301643, 33.999729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823364, 34.300346, 34.082058>,  <40.447639, 34.298187, 34.219269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823364, 34.300346, 34.082058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064106, 0.979505, 0.190949,
		0.337030, -0.201350, 0.919712,
		0.939309, 0.005397, -0.343030,
		41.105156, 34.301964, 33.979149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026516, 34.687946, 34.607372>,  <40.447639, 34.298187, 34.219269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026516, 34.687946, 34.607372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075470, 34.683155, 34.210407>,  <41.104843, 34.680279, 33.972229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.075470, 34.683155, 34.210407>,  <41.026516, 34.687946, 34.607372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075470, 34.683155, 34.210407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155878, 0.987285, -0.031142,
		0.980165, 0.158506, 0.118963,
		0.122387, -0.011981, -0.992410,
		41.112186, 34.679562, 33.912685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521404, 35.145992, 34.410728>,  <41.026516, 34.687946, 34.607372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521404, 35.145992, 34.410728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256878, 35.113983, 34.112400>,  <41.098160, 35.094776, 33.933403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256878, 35.113983, 34.112400>,  <41.521404, 35.145992, 34.410728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256878, 35.113983, 34.112400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143466, 0.989431, 0.021050,
		0.736257, 0.120921, -0.665810,
		-0.661319, -0.080023, -0.745824,
		41.058483, 35.089977, 33.888653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589443, 35.627243, 34.863029>,  <41.521404, 35.145992, 34.410728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589443, 35.627243, 34.863029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453133, 35.352303, 35.119598>,  <41.371346, 35.187340, 35.273540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453133, 35.352303, 35.119598>,  <41.589443, 35.627243, 34.863029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453133, 35.352303, 35.119598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899294, -0.437248, 0.009228,
		0.274118, 0.579973, 0.767132,
		-0.340779, -0.687347, 0.641423,
		41.350899, 35.146099, 35.312027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920002, 35.636223, 35.593170>,  <41.589443, 35.627243, 34.863029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920002, 35.636223, 35.593170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787048, 35.288700, 35.446365>,  <41.707275, 35.080185, 35.358284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787048, 35.288700, 35.446365>,  <41.920002, 35.636223, 35.593170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787048, 35.288700, 35.446365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905647, -0.402645, 0.132966,
		-0.263296, -0.288186, 0.920665,
		-0.332382, -0.868807, -0.367009,
		41.687332, 35.028057, 35.336262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982723, 35.040951, 36.118187>,  <41.920002, 35.636223, 35.593170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982723, 35.040951, 36.118187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992584, 34.911644, 35.739792>,  <41.998501, 34.834061, 35.512756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992584, 34.911644, 35.739792>,  <41.982723, 35.040951, 36.118187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992584, 34.911644, 35.739792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877019, -0.447190, 0.175666,
		-0.479823, -0.833979, 0.272486,
		0.024649, -0.323264, -0.945988,
		41.999977, 34.814667, 35.455994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933113, 34.363670, 36.149899>,  <41.982723, 35.040951, 36.118187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933113, 34.363670, 36.149899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138596, 34.445374, 35.816578>,  <42.261887, 34.494396, 35.616585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138596, 34.445374, 35.816578>,  <41.933113, 34.363670, 36.149899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138596, 34.445374, 35.816578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756820, -0.565384, 0.327969,
		-0.404141, -0.799136, -0.445030,
		0.513705, 0.204262, -0.833297,
		42.292706, 34.506653, 35.566589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264038, 33.714386, 35.827442>,  <41.933113, 34.363670, 36.149899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264038, 33.714386, 35.827442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484974, 34.013252, 35.679577>,  <42.617535, 34.192574, 35.590858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484974, 34.013252, 35.679577>,  <42.264038, 33.714386, 35.827442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484974, 34.013252, 35.679577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777641, -0.621580, -0.094410,
		-0.300317, -0.235320, -0.924356,
		0.552344, 0.747170, -0.369666,
		42.650677, 34.237404, 35.568676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547901, 33.436447, 35.184250>,  <42.264038, 33.714386, 35.827442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547901, 33.436447, 35.184250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749954, 33.730907, 35.364437>,  <42.871185, 33.907585, 35.472549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749954, 33.730907, 35.364437>,  <42.547901, 33.436447, 35.184250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749954, 33.730907, 35.364437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843214, -0.532206, -0.075808,
		0.183933, 0.418130, -0.889571,
		0.505132, 0.736155, 0.450464,
		42.901493, 33.951756, 35.499577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084976, 33.480114, 34.740280>,  <42.547901, 33.436447, 35.184250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084976, 33.480114, 34.740280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185871, 33.623821, 35.099682>,  <43.246407, 33.710045, 35.315323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185871, 33.623821, 35.099682>,  <43.084976, 33.480114, 34.740280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185871, 33.623821, 35.099682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755874, -0.652891, 0.048863,
		0.604179, 0.666831, -0.436239,
		0.252233, 0.359264, 0.898503,
		43.261539, 33.731602, 35.369232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575539, 33.937073, 35.005756>,  <43.084976, 33.480114, 34.740280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575539, 33.937073, 35.005756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408966, 33.981712, 35.366673>,  <43.309021, 34.008495, 35.583221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408966, 33.981712, 35.366673>,  <43.575539, 33.937073, 35.005756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408966, 33.981712, 35.366673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889363, -0.156003, 0.429763,
		0.188719, 0.981433, -0.034283,
		-0.416435, 0.111595, 0.902291,
		43.284035, 34.015190, 35.637360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903351, 34.452667, 35.305351>,  <43.575539, 33.937073, 35.005756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903351, 34.452667, 35.305351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735367, 34.251991, 35.607857>,  <43.634575, 34.131584, 35.789360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735367, 34.251991, 35.607857>,  <43.903351, 34.452667, 35.305351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735367, 34.251991, 35.607857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852834, 0.066791, 0.517893,
		-0.310335, 0.862464, 0.399810,
		-0.419960, -0.501692, 0.756266,
		43.609379, 34.101482, 35.834736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059799, 34.835938, 35.922909>,  <43.903351, 34.452667, 35.305351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059799, 34.835938, 35.922909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996517, 34.452126, 36.016087>,  <43.958546, 34.221836, 36.071995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.996517, 34.452126, 36.016087>,  <44.059799, 34.835938, 35.922909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.996517, 34.452126, 36.016087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832875, -0.002962, 0.553453,
		-0.530367, 0.281577, 0.799641,
		-0.158208, -0.959534, 0.232947,
		43.949055, 34.164265, 36.085972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959511, 34.680706, 36.655048>,  <44.059799, 34.835938, 35.922909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959511, 34.680706, 36.655048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128418, 34.376171, 36.458252>,  <44.229763, 34.193451, 36.340172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128418, 34.376171, 36.458252>,  <43.959511, 34.680706, 36.655048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128418, 34.376171, 36.458252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802446, 0.061501, 0.593547,
		-0.421631, -0.645433, 0.636902,
		0.422265, -0.761337, -0.491994,
		44.255096, 34.147770, 36.310654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.223724, 34.254395, 37.120167>,  <43.959511, 34.680706, 36.655048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.223724, 34.254395, 37.120167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442638, 34.181999, 36.793308>,  <44.573986, 34.138561, 36.597195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442638, 34.181999, 36.793308>,  <44.223724, 34.254395, 37.120167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442638, 34.181999, 36.793308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835625, 0.063250, 0.545647,
		-0.047070, -0.981449, 0.185851,
		0.547280, -0.180985, -0.817146,
		44.606823, 34.127705, 36.548164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865475, 34.444714, 37.234840>,  <44.223724, 34.254395, 37.120167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865475, 34.444714, 37.234840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989799, 34.239250, 36.914955>,  <45.064396, 34.115971, 36.723022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989799, 34.239250, 36.914955>,  <44.865475, 34.444714, 37.234840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989799, 34.239250, 36.914955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938884, 0.034948, 0.342456,
		-0.147957, -0.857282, 0.493130,
		0.310815, -0.513660, -0.799717,
		45.083042, 34.085152, 36.675041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251255, 33.990788, 37.581596>,  <44.865475, 34.444714, 37.234840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251255, 33.990788, 37.581596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377140, 34.029186, 37.203869>,  <45.452671, 34.052227, 36.977234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377140, 34.029186, 37.203869>,  <45.251255, 33.990788, 37.581596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377140, 34.029186, 37.203869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941566, 0.094242, 0.323376,
		0.120040, -0.990910, -0.060733,
		0.314713, 0.096002, -0.944319,
		45.471554, 34.057987, 36.920574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.734116, 33.506245, 37.273376>,  <45.251255, 33.990788, 37.581596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.734116, 33.506245, 37.273376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794903, 33.882507, 37.152004>,  <45.831375, 34.108265, 37.079182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794903, 33.882507, 37.152004>,  <45.734116, 33.506245, 37.273376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794903, 33.882507, 37.152004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939850, -0.042502, 0.338933,
		0.305924, -0.336685, -0.890536,
		0.151963, 0.940658, -0.303431,
		45.840492, 34.164703, 37.060974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.398300, 33.472782, 37.064213>,  <45.734116, 33.506245, 37.273376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.398300, 33.472782, 37.064213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.290070, 33.847000, 37.155018>,  <46.225132, 34.071533, 37.209499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.290070, 33.847000, 37.155018>,  <46.398300, 33.472782, 37.064213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.290070, 33.847000, 37.155018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857696, 0.127181, 0.498179,
		0.437200, 0.329503, -0.836830,
		-0.270581, 0.935549, 0.227010,
		46.208897, 34.127666, 37.223122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936611, 33.998230, 36.892132>,  <46.398300, 33.472782, 37.064213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936611, 33.998230, 36.892132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.727455, 34.155739, 37.194530>,  <46.601959, 34.250244, 37.375969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.727455, 34.155739, 37.194530>,  <46.936611, 33.998230, 36.892132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.727455, 34.155739, 37.194530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845492, 0.352268, 0.401310,
		-0.108287, 0.849029, -0.517131,
		-0.522893, 0.393773, 0.755993,
		46.570587, 34.273872, 37.421329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.008999, 34.865013, 37.023289>,  <46.936611, 33.998230, 36.892132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.008999, 34.865013, 37.023289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.948822, 34.623615, 37.336510>,  <46.912716, 34.478779, 37.524441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.948822, 34.623615, 37.336510>,  <47.008999, 34.865013, 37.023289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.948822, 34.623615, 37.336510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863548, 0.305395, 0.401271,
		-0.481303, 0.736568, 0.475200,
		-0.150440, -0.603491, 0.783049,
		46.903690, 34.442570, 37.571426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566143, 34.833347, 36.443974>,  <47.008999, 34.865013, 37.023289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566143, 34.833347, 36.443974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501720, 34.818645, 36.049469>,  <46.463066, 34.809822, 35.812767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501720, 34.818645, 36.049469>,  <46.566143, 34.833347, 36.443974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501720, 34.818645, 36.049469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949626, 0.266429, -0.165002,
		0.268833, -0.963154, -0.008010,
		-0.161057, -0.036751, -0.986261,
		46.453403, 34.807617, 35.753590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.027370, 34.283009, 36.058121>,  <46.566143, 34.833347, 36.443974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.027370, 34.283009, 36.058121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934330, 34.616222, 35.857338>,  <46.878506, 34.816151, 35.736870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934330, 34.616222, 35.857338>,  <47.027370, 34.283009, 36.058121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934330, 34.616222, 35.857338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972488, 0.206008, -0.108756,
		0.012809, -0.513439, -0.858030,
		-0.232600, 0.833031, -0.501952,
		46.864552, 34.866131, 35.706753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.293064, 34.274166, 35.374947>,  <47.027370, 34.283009, 36.058121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.293064, 34.274166, 35.374947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.259842, 34.637009, 35.539997>,  <47.239910, 34.854713, 35.639027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.259842, 34.637009, 35.539997>,  <47.293064, 34.274166, 35.374947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.259842, 34.637009, 35.539997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996447, 0.069791, 0.047145,
		0.013968, 0.415075, -0.909680,
		-0.083057, 0.907106, 0.412625,
		47.234924, 34.909142, 35.663784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.819881, 34.541870, 35.218491>,  <47.293064, 34.274166, 35.374947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.819881, 34.541870, 35.218491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.700668, 34.826874, 35.472580>,  <47.629139, 34.997875, 35.625034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.700668, 34.826874, 35.472580>,  <47.819881, 34.541870, 35.218491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.700668, 34.826874, 35.472580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949241, 0.291345, 0.118576,
		-0.100584, 0.638321, -0.763170,
		-0.298036, 0.712505, 0.635225,
		47.611259, 35.040627, 35.663147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.350353, 34.699532, 34.644310>,  <47.819881, 34.541870, 35.218491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.350353, 34.699532, 34.644310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650639, 34.903713, 34.812050>,  <47.830811, 35.026222, 34.912693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650639, 34.903713, 34.812050>,  <47.350353, 34.699532, 34.644310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.650639, 34.903713, 34.812050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303184, 0.297771, -0.905214,
		-0.586944, 0.806701, 0.068779,
		0.750717, 0.510457, 0.419354,
		47.875854, 35.056850, 34.937855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.946636, 33.843502, 21.294094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.553272, 33.811047, 21.229197>,  <36.317253, 33.791573, 21.190258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.553272, 33.811047, 21.229197>,  <36.946636, 33.843502, 21.294094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553272, 33.811047, 21.229197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126826, -0.331938, 0.934737,
		-0.129699, 0.939805, 0.316140,
		-0.983409, -0.081140, -0.162244,
		36.258251, 33.786705, 21.180523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541218, 34.139030, 21.877934>,  <36.946636, 33.843502, 21.294094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541218, 34.139030, 21.877934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.281830, 33.887745, 21.705967>,  <36.126198, 33.736973, 21.602787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.281830, 33.887745, 21.705967>,  <36.541218, 34.139030, 21.877934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281830, 33.887745, 21.705967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322435, -0.284923, 0.902693,
		-0.689578, 0.723992, -0.017794,
		-0.648473, -0.628215, -0.429918,
		36.087288, 33.699280, 21.576992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921635, 34.260876, 22.294651>,  <36.541218, 34.139030, 21.877934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921635, 34.260876, 22.294651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.871475, 33.896111, 22.138351>,  <35.841381, 33.677250, 22.044573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.871475, 33.896111, 22.138351>,  <35.921635, 34.260876, 22.294651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871475, 33.896111, 22.138351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302606, -0.339933, 0.890435,
		-0.944831, 0.229899, -0.233325,
		-0.125396, -0.911917, -0.390748,
		35.833855, 33.622536, 22.021128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230179, 34.024769, 22.394735>,  <35.921635, 34.260876, 22.294651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230179, 34.024769, 22.394735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418041, 33.678661, 22.324610>,  <35.530758, 33.470997, 22.282534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.418041, 33.678661, 22.324610>,  <35.230179, 34.024769, 22.394735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418041, 33.678661, 22.324610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284699, -0.336405, 0.897652,
		-0.835687, -0.371673, -0.404334,
		0.469653, -0.865269, -0.175314,
		35.558937, 33.419079, 22.272015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741272, 33.476025, 22.487743>,  <35.230179, 34.024769, 22.394735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741272, 33.476025, 22.487743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.093811, 33.289890, 22.520456>,  <35.305336, 33.178211, 22.540085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.093811, 33.289890, 22.520456>,  <34.741272, 33.476025, 22.487743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093811, 33.289890, 22.520456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341923, -0.508749, 0.790103,
		-0.326054, -0.724321, -0.607493,
		0.881350, -0.465332, 0.081783,
		35.358215, 33.150291, 22.544991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557392, 32.768982, 22.629580>,  <34.741272, 33.476025, 22.487743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557392, 32.768982, 22.629580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939407, 32.795013, 22.745277>,  <35.168617, 32.810631, 22.814695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.939407, 32.795013, 22.745277>,  <34.557392, 32.768982, 22.629580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939407, 32.795013, 22.745277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218283, -0.505849, 0.834547,
		0.200624, -0.860164, -0.468901,
		0.955041, 0.065077, 0.289245,
		35.225918, 32.814537, 22.832050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694000, 32.213146, 22.927477>,  <34.557392, 32.768982, 22.629580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694000, 32.213146, 22.927477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987442, 32.429699, 23.091784>,  <35.163506, 32.559631, 23.190369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.987442, 32.429699, 23.091784>,  <34.694000, 32.213146, 22.927477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987442, 32.429699, 23.091784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046585, -0.562961, 0.825169,
		0.677980, -0.624482, -0.387769,
		0.733602, 0.541384, 0.410768,
		35.207523, 32.592113, 23.215014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045643, 31.724018, 23.276678>,  <34.694000, 32.213146, 22.927477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045643, 31.724018, 23.276678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.198269, 32.064346, 23.421186>,  <35.289845, 32.268543, 23.507891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.198269, 32.064346, 23.421186>,  <35.045643, 31.724018, 23.276678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198269, 32.064346, 23.421186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248850, -0.281858, 0.926623,
		0.890216, -0.443466, 0.104180,
		0.381561, 0.850819, 0.361271,
		35.312737, 32.319592, 23.529568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454372, 31.546616, 23.884266>,  <35.045643, 31.724018, 23.276678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454372, 31.546616, 23.884266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343433, 31.930485, 23.902597>,  <35.276871, 32.160809, 23.913597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343433, 31.930485, 23.902597>,  <35.454372, 31.546616, 23.884266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343433, 31.930485, 23.902597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227522, -0.111949, 0.967316,
		0.933440, 0.257858, 0.249397,
		-0.277350, 0.959675, 0.045829,
		35.260227, 32.218388, 23.916346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768478, 31.892395, 24.506012>,  <35.454372, 31.546616, 23.884266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768478, 31.892395, 24.506012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445656, 32.118851, 24.438908>,  <35.251961, 32.254726, 24.398645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.445656, 32.118851, 24.438908>,  <35.768478, 31.892395, 24.506012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445656, 32.118851, 24.438908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239318, -0.053891, 0.969445,
		0.539802, 0.822545, 0.178981,
		-0.807057, 0.566141, -0.167760,
		35.203537, 32.288692, 24.388580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768909, 32.416546, 24.994625>,  <35.768478, 31.892395, 24.506012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768909, 32.416546, 24.994625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389633, 32.372776, 24.875317>,  <35.162067, 32.346512, 24.803732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389633, 32.372776, 24.875317>,  <35.768909, 32.416546, 24.994625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389633, 32.372776, 24.875317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290403, -0.082283, 0.953360,
		-0.128868, 0.990583, 0.046241,
		-0.948187, -0.109429, -0.298272,
		35.105179, 32.339947, 24.785835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489094, 32.783882, 25.427988>,  <35.768909, 32.416546, 24.994625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489094, 32.783882, 25.427988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.185658, 32.561970, 25.291309>,  <35.003593, 32.428822, 25.209301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.185658, 32.561970, 25.291309>,  <35.489094, 32.783882, 25.427988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185658, 32.561970, 25.291309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320564, -0.138785, 0.937005,
		-0.567252, 0.820341, -0.072560,
		-0.758593, -0.554778, -0.341698,
		34.958080, 32.395535, 25.188801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863575, 32.964725, 25.862309>,  <35.489094, 32.783882, 25.427988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863575, 32.964725, 25.862309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.811646, 32.588451, 25.736929>,  <34.780487, 32.362686, 25.661701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.811646, 32.588451, 25.736929>,  <34.863575, 32.964725, 25.862309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811646, 32.588451, 25.736929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179307, -0.288638, 0.940498,
		-0.975189, 0.178306, -0.131199,
		-0.129827, -0.940689, -0.313449,
		34.772697, 32.306244, 25.642895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194118, 32.761951, 26.105709>,  <34.863575, 32.964725, 25.862309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194118, 32.761951, 26.105709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.356556, 32.409191, 26.009930>,  <34.454018, 32.197536, 25.952463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.356556, 32.409191, 26.009930>,  <34.194118, 32.761951, 26.105709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356556, 32.409191, 26.009930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235486, -0.354168, 0.905048,
		-0.882967, -0.311151, -0.351502,
		0.406097, -0.881901, -0.239447,
		34.478386, 32.144619, 25.938095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719929, 32.222057, 26.327915>,  <34.194118, 32.761951, 26.105709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719929, 32.222057, 26.327915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.064297, 32.026360, 26.272120>,  <34.270920, 31.908941, 26.238642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.064297, 32.026360, 26.272120>,  <33.719929, 32.222057, 26.327915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064297, 32.026360, 26.272120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138665, -0.489474, 0.860922,
		-0.489474, -0.721844, -0.489240,
		-0.860922, 0.489240, 0.139491,
		34.322575, 31.879587, 26.230272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573273, 31.524643, 26.378429>,  <33.719929, 32.222057, 26.327915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573273, 31.524643, 26.378429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.962376, 31.545551, 26.468777>,  <34.195835, 31.558096, 26.522985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.962376, 31.545551, 26.468777>,  <33.573273, 31.524643, 26.378429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962376, 31.545551, 26.468777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156856, -0.569021, 0.807224,
		0.170719, -0.820660, -0.545319,
		0.972754, 0.052272, 0.225869,
		34.254204, 31.561234, 26.536537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680870, 30.840504, 26.783030>,  <33.573273, 31.524643, 26.378429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680870, 30.840504, 26.783030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.014664, 31.054192, 26.837046>,  <34.214939, 31.182405, 26.869455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.014664, 31.054192, 26.837046>,  <33.680870, 30.840504, 26.783030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014664, 31.054192, 26.837046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093356, -0.378601, 0.920840,
		0.543060, -0.755823, -0.365811,
		0.834488, 0.534222, 0.135042,
		34.265011, 31.214458, 26.877558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142536, 30.428528, 27.280264>,  <33.680870, 30.840504, 26.783030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142536, 30.428528, 27.280264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.332512, 30.780003, 27.299646>,  <34.446495, 30.990887, 27.311275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.332512, 30.780003, 27.299646>,  <34.142536, 30.428528, 27.280264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332512, 30.780003, 27.299646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094741, -0.105794, 0.989864,
		0.874905, -0.465532, -0.133493,
		0.474937, 0.878685, 0.048455,
		34.474995, 31.043608, 27.314182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741226, 30.197659, 27.609470>,  <34.142536, 30.428528, 27.280264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741226, 30.197659, 27.609470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.714672, 30.593370, 27.661507>,  <34.698742, 30.830797, 27.692728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.714672, 30.593370, 27.661507>,  <34.741226, 30.197659, 27.609470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714672, 30.593370, 27.661507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421418, -0.090382, 0.902351,
		0.904434, 0.114721, -0.410899,
		-0.066381, 0.989278, 0.130090,
		34.694759, 30.890154, 27.700533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403240, 30.556513, 27.787766>,  <34.741226, 30.197659, 27.609470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403240, 30.556513, 27.787766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119160, 30.796907, 27.934425>,  <34.948711, 30.941145, 28.022421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119160, 30.796907, 27.934425>,  <35.403240, 30.556513, 27.787766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119160, 30.796907, 27.934425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201616, -0.325364, 0.923845,
		0.674513, 0.730037, 0.109905,
		-0.710200, 0.600986, 0.366649,
		34.906101, 30.977203, 28.044420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712334, 30.961222, 28.285973>,  <35.403240, 30.556513, 27.787766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712334, 30.961222, 28.285973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.323376, 30.950657, 28.378714>,  <35.090000, 30.944317, 28.434359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.323376, 30.950657, 28.378714>,  <35.712334, 30.961222, 28.285973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323376, 30.950657, 28.378714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228603, -0.307239, 0.923767,
		0.046834, 0.951266, 0.304795,
		-0.972392, -0.026413, 0.231852,
		35.031658, 30.942734, 28.448269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785648, 31.475853, 28.860500>,  <35.712334, 30.961222, 28.285973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785648, 31.475853, 28.860500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.017696, 31.159842, 28.939808>,  <36.156925, 30.970234, 28.987392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.017696, 31.159842, 28.939808>,  <35.785648, 31.475853, 28.860500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017696, 31.159842, 28.939808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754011, -0.612941, -0.236160,
		0.308100, -0.012495, -0.951272,
		0.580123, -0.790030, 0.198269,
		36.191734, 30.922832, 28.999289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440037, 31.876699, 28.630943>,  <35.785648, 31.475853, 28.860500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440037, 31.876699, 28.630943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779900, 31.887287, 28.841614>,  <36.983818, 31.893641, 28.968016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779900, 31.887287, 28.841614>,  <36.440037, 31.876699, 28.630943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779900, 31.887287, 28.841614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438283, 0.519945, -0.733188,
		-0.293248, 0.853789, 0.430173,
		0.849655, 0.026468, 0.526674,
		37.034798, 31.895227, 28.999617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666485, 32.608261, 28.670450>,  <36.440037, 31.876699, 28.630943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666485, 32.608261, 28.670450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983250, 32.378460, 28.753229>,  <37.173309, 32.240578, 28.802896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983250, 32.378460, 28.753229>,  <36.666485, 32.608261, 28.670450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983250, 32.378460, 28.753229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552721, 0.530311, -0.642861,
		0.259581, 0.623470, 0.737498,
		0.791908, -0.574505, 0.206946,
		37.220821, 32.206108, 28.815313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315952, 33.054909, 28.676065>,  <36.666485, 32.608261, 28.670450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315952, 33.054909, 28.676065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.452431, 32.688290, 28.592611>,  <37.534317, 32.468319, 28.542540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.452431, 32.688290, 28.592611>,  <37.315952, 33.054909, 28.676065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452431, 32.688290, 28.592611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502927, 0.365509, -0.783242,
		0.794136, 0.162309, 0.585666,
		0.341193, -0.916547, -0.208634,
		37.554790, 32.413326, 28.530022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993614, 33.173668, 28.381836>,  <37.315952, 33.054909, 28.676065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993614, 33.173668, 28.381836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954067, 32.785191, 28.295113>,  <37.930340, 32.552105, 28.243078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954067, 32.785191, 28.295113>,  <37.993614, 33.173668, 28.381836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954067, 32.785191, 28.295113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714162, 0.082475, -0.695105,
		0.692963, -0.223561, 0.685436,
		-0.098867, -0.971194, -0.216811,
		37.924408, 32.493832, 28.230070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690228, 32.772243, 28.180899>,  <37.993614, 33.173668, 28.381836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690228, 32.772243, 28.180899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385883, 32.566441, 28.022724>,  <38.203278, 32.442959, 27.927818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385883, 32.566441, 28.022724>,  <38.690228, 32.772243, 28.180899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385883, 32.566441, 28.022724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498008, -0.072294, -0.864154,
		0.416025, -0.854433, 0.311235,
		-0.760862, -0.514507, -0.395438,
		38.157623, 32.412090, 27.904093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046383, 32.178577, 27.735407>,  <38.690228, 32.772243, 28.180899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046383, 32.178577, 27.735407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.668465, 32.233303, 27.616320>,  <38.441711, 32.266140, 27.544868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.668465, 32.233303, 27.616320>,  <39.046383, 32.178577, 27.735407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668465, 32.233303, 27.616320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305553, 0.039894, -0.951339,
		-0.118279, -0.989793, -0.079496,
		-0.944800, 0.136814, -0.297716,
		38.385025, 32.274345, 27.527004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951660, 31.748796, 27.147015>,  <39.046383, 32.178577, 27.735407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951660, 31.748796, 27.147015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.638916, 31.996702, 27.119949>,  <38.451267, 32.145447, 27.103710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.638916, 31.996702, 27.119949>,  <38.951660, 31.748796, 27.147015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638916, 31.996702, 27.119949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006620, -0.100273, -0.994938,
		-0.623414, -0.778354, 0.074297,
		-0.781864, 0.619766, -0.067664,
		38.404358, 32.182632, 27.099649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569660, 31.426859, 26.554382>,  <38.951660, 31.748796, 27.147015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569660, 31.426859, 26.554382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.430294, 31.799503, 26.595774>,  <38.346672, 32.023090, 26.620609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.430294, 31.799503, 26.595774>,  <38.569660, 31.426859, 26.554382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430294, 31.799503, 26.595774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042889, 0.094436, -0.994607,
		-0.936357, -0.350977, 0.007053,
		-0.348418, 0.931610, 0.103479,
		38.325768, 32.078987, 26.626818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039570, 31.549726, 25.952005>,  <38.569660, 31.426859, 26.554382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039570, 31.549726, 25.952005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113712, 31.910553, 26.107912>,  <38.158199, 32.127048, 26.201456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113712, 31.910553, 26.107912>,  <38.039570, 31.549726, 25.952005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113712, 31.910553, 26.107912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065752, 0.384366, -0.920836,
		-0.980469, 0.196312, 0.011932,
		0.185358, 0.902067, 0.389767,
		38.169319, 32.181171, 26.224842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662868, 32.038223, 25.630222>,  <38.039570, 31.549726, 25.952005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662868, 32.038223, 25.630222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.977779, 32.239151, 25.773262>,  <38.166725, 32.359707, 25.859085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.977779, 32.239151, 25.773262>,  <37.662868, 32.038223, 25.630222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977779, 32.239151, 25.773262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209402, 0.327673, -0.921293,
		-0.579958, 0.800191, 0.152781,
		0.787273, 0.502319, 0.357599,
		38.213963, 32.389847, 25.880541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528320, 32.685707, 25.263487>,  <37.662868, 32.038223, 25.630222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528320, 32.685707, 25.263487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.900940, 32.656399, 25.405952>,  <38.124512, 32.638813, 25.491432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.900940, 32.656399, 25.405952>,  <37.528320, 32.685707, 25.263487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900940, 32.656399, 25.405952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362594, 0.260867, -0.894692,
		-0.027356, 0.962590, 0.269578,
		0.931545, -0.073272, 0.356166,
		38.180405, 32.634418, 25.512802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827141, 33.369179, 25.163607>,  <37.528320, 32.685707, 25.263487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827141, 33.369179, 25.163607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122913, 33.101849, 25.196087>,  <38.300377, 32.941452, 25.215574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.122913, 33.101849, 25.196087>,  <37.827141, 33.369179, 25.163607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122913, 33.101849, 25.196087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451828, 0.403214, -0.795782,
		0.499097, 0.625112, 0.600114,
		0.739428, -0.668321, 0.081200,
		38.344742, 32.901352, 25.220448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373669, 33.784927, 25.095688>,  <37.827141, 33.369179, 25.163607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373669, 33.784927, 25.095688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498253, 33.420738, 24.986855>,  <38.573006, 33.202225, 24.921555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.498253, 33.420738, 24.986855>,  <38.373669, 33.784927, 25.095688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498253, 33.420738, 24.986855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323114, 0.370737, -0.870719,
		0.893637, 0.183284, 0.409658,
		0.311464, -0.910473, -0.272083,
		38.591694, 33.147594, 24.905230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037632, 33.865612, 24.755455>,  <38.373669, 33.784927, 25.095688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037632, 33.865612, 24.755455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913033, 33.505249, 24.634567>,  <38.838272, 33.289032, 24.562035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913033, 33.505249, 24.634567>,  <39.037632, 33.865612, 24.755455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913033, 33.505249, 24.634567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117933, 0.278933, -0.953042,
		0.942899, -0.332517, 0.019358,
		-0.311503, -0.900904, -0.302220,
		38.819580, 33.234978, 24.543901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510670, 33.620625, 24.248886>,  <39.037632, 33.865612, 24.755455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510670, 33.620625, 24.248886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.169277, 33.420406, 24.190893>,  <38.964443, 33.300274, 24.156097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.169277, 33.420406, 24.190893>,  <39.510670, 33.620625, 24.248886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169277, 33.420406, 24.190893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084021, 0.142399, -0.986237,
		0.514305, -0.853917, -0.079478,
		-0.853482, -0.500548, -0.144984,
		38.913231, 33.270241, 24.147398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675247, 33.154285, 23.649355>,  <39.510670, 33.620625, 24.248886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675247, 33.154285, 23.649355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.276451, 33.124355, 23.657408>,  <39.037174, 33.106400, 23.662239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.276451, 33.124355, 23.657408>,  <39.675247, 33.154285, 23.649355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276451, 33.124355, 23.657408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045499, 0.355014, -0.933753,
		0.062719, -0.931862, -0.357351,
		-0.996994, -0.074823, 0.020133,
		38.977352, 33.101910, 23.663448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406517, 32.800480, 23.004366>,  <39.675247, 33.154285, 23.649355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406517, 32.800480, 23.004366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.088974, 32.990784, 23.155867>,  <38.898449, 33.104965, 23.246767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.088974, 32.990784, 23.155867>,  <39.406517, 32.800480, 23.004366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088974, 32.990784, 23.155867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209528, 0.370700, -0.904809,
		-0.570872, -0.797645, -0.194597,
		-0.793853, 0.475756, 0.378752,
		38.850819, 33.133511, 23.269491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941872, 32.797653, 22.487965>,  <39.406517, 32.800480, 23.004366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941872, 32.797653, 22.487965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.801201, 33.092834, 22.718353>,  <38.716797, 33.269943, 22.856586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.801201, 33.092834, 22.718353>,  <38.941872, 32.797653, 22.487965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801201, 33.092834, 22.718353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263571, 0.512329, -0.817343,
		-0.898249, -0.439253, 0.014328,
		-0.351679, 0.737954, 0.575974,
		38.695698, 33.314220, 22.891146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.087486, 32.784687, 22.284679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.208073, 33.121769, 22.463104>,  <38.280422, 33.324017, 22.570158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.208073, 33.121769, 22.463104>,  <38.087486, 32.784687, 22.284679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208073, 33.121769, 22.463104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368747, 0.534464, -0.760509,
		-0.879288, 0.064781, 0.471865,
		0.301461, 0.842705, 0.446060,
		38.298512, 33.374580, 22.596922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580643, 33.269100, 22.151300>,  <38.087486, 32.784687, 22.284679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580643, 33.269100, 22.151300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.915577, 33.482449, 22.199280>,  <38.116539, 33.610458, 22.228067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.915577, 33.482449, 22.199280>,  <37.580643, 33.269100, 22.151300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915577, 33.482449, 22.199280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259877, 0.581370, -0.771020,
		-0.480972, 0.614431, 0.625412,
		0.837335, 0.533369, 0.119946,
		38.166779, 33.642460, 22.235264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340183, 33.905819, 22.072992>,  <37.580643, 33.269100, 22.151300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340183, 33.905819, 22.072992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.737106, 33.931301, 22.030539>,  <37.975262, 33.946590, 22.005066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.737106, 33.931301, 22.030539>,  <37.340183, 33.905819, 22.072992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737106, 33.931301, 22.030539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120770, 0.686297, -0.717224,
		0.027149, 0.724526, 0.688713,
		0.992309, 0.063704, -0.106134,
		38.034798, 33.950413, 21.998699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353439, 34.540249, 21.950562>,  <37.340183, 33.905819, 22.072992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353439, 34.540249, 21.950562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724197, 34.433250, 21.845257>,  <37.946651, 34.369053, 21.782074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724197, 34.433250, 21.845257>,  <37.353439, 34.540249, 21.950562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724197, 34.433250, 21.845257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037396, 0.763776, -0.644397,
		0.373446, 0.587445, 0.717945,
		0.926898, -0.267496, -0.263261,
		38.002266, 34.353001, 21.766279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667034, 35.225395, 21.823870>,  <37.353439, 34.540249, 21.950562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667034, 35.225395, 21.823870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.901928, 34.953789, 21.647642>,  <38.042862, 34.790825, 21.541906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.901928, 34.953789, 21.647642>,  <37.667034, 35.225395, 21.823870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901928, 34.953789, 21.647642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277427, 0.680177, -0.678523,
		0.760390, 0.276226, 0.587798,
		0.587232, -0.679013, -0.440567,
		38.078098, 34.750084, 21.515472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198082, 35.627689, 21.539299>,  <37.667034, 35.225395, 21.823870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198082, 35.627689, 21.539299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.198196, 35.289680, 21.325403>,  <38.198265, 35.086876, 21.197065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.198196, 35.289680, 21.325403>,  <38.198082, 35.627689, 21.539299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198196, 35.289680, 21.325403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279971, 0.513421, -0.811181,
		0.960008, -0.149477, 0.236728,
		0.000288, -0.845018, -0.534737,
		38.198284, 35.036175, 21.164982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936932, 35.682549, 21.134563>,  <38.198082, 35.627689, 21.539299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936932, 35.682549, 21.134563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.687256, 35.420864, 20.963736>,  <38.537449, 35.263851, 20.861238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.687256, 35.420864, 20.963736>,  <38.936932, 35.682549, 21.134563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687256, 35.420864, 20.963736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230587, 0.368017, -0.900774,
		0.746467, -0.660733, -0.078860,
		-0.624192, -0.654214, -0.427069,
		38.499996, 35.224602, 20.835615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268597, 35.511997, 20.415287>,  <38.936932, 35.682549, 21.134563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268597, 35.511997, 20.415287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.890255, 35.383049, 20.400124>,  <38.663250, 35.305679, 20.391026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.890255, 35.383049, 20.400124>,  <39.268597, 35.511997, 20.415287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890255, 35.383049, 20.400124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084371, 0.356953, -0.930304,
		0.313433, -0.876734, -0.364824,
		-0.945855, -0.322369, -0.037910,
		38.606499, 35.286339, 20.388750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275097, 35.150135, 19.888556>,  <39.268597, 35.511997, 20.415287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275097, 35.150135, 19.888556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.898228, 35.271503, 19.945457>,  <38.672104, 35.344326, 19.979599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.898228, 35.271503, 19.945457>,  <39.275097, 35.150135, 19.888556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898228, 35.271503, 19.945457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058939, 0.267841, -0.961659,
		-0.329891, -0.914437, -0.234470,
		-0.942177, 0.303423, 0.142255,
		38.615574, 35.362530, 19.988134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951233, 34.843307, 19.385838>,  <39.275097, 35.150135, 19.888556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951233, 34.843307, 19.385838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685238, 35.123558, 19.489307>,  <38.525642, 35.291710, 19.551390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685238, 35.123558, 19.489307>,  <38.951233, 34.843307, 19.385838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685238, 35.123558, 19.489307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001439, 0.345150, -0.938546,
		-0.746857, -0.624490, -0.228511,
		-0.664983, 0.700631, 0.258676,
		38.485744, 35.333748, 19.566910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309811, 34.790794, 18.920671>,  <38.951233, 34.843307, 19.385838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309811, 34.790794, 18.920671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364902, 35.154819, 19.077038>,  <38.397957, 35.373234, 19.170858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364902, 35.154819, 19.077038>,  <38.309811, 34.790794, 18.920671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364902, 35.154819, 19.077038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065382, 0.385464, -0.920403,
		-0.988309, 0.152328, -0.006411,
		0.137732, 0.910062, 0.390917,
		38.406223, 35.427837, 19.194313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214352, 35.186489, 18.380007>,  <38.309811, 34.790794, 18.920671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214352, 35.186489, 18.380007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.352795, 35.480740, 18.612923>,  <38.435860, 35.657291, 18.752672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.352795, 35.480740, 18.612923>,  <38.214352, 35.186489, 18.380007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352795, 35.480740, 18.612923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156207, 0.566804, -0.808908,
		-0.925099, 0.370927, 0.081266,
		0.346107, 0.735626, 0.582292,
		38.456627, 35.701427, 18.787611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972527, 35.832329, 18.033268>,  <38.214352, 35.186489, 18.380007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972527, 35.832329, 18.033268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278717, 35.942123, 18.266060>,  <38.462433, 36.007999, 18.405735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278717, 35.942123, 18.266060>,  <37.972527, 35.832329, 18.033268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278717, 35.942123, 18.266060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287217, 0.663597, -0.690757,
		-0.575807, 0.695912, 0.429129,
		0.765475, 0.274490, 0.581982,
		38.508358, 36.024471, 18.440655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978115, 36.636246, 18.104824>,  <37.972527, 35.832329, 18.033268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978115, 36.636246, 18.104824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348793, 36.498024, 18.163912>,  <38.571201, 36.415092, 18.199366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348793, 36.498024, 18.163912>,  <37.978115, 36.636246, 18.104824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348793, 36.498024, 18.163912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369379, 0.765168, -0.527330,
		0.069189, 0.543242, 0.836721,
		0.926699, -0.345553, 0.147721,
		38.626804, 36.394360, 18.208229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319008, 37.269913, 18.217323>,  <37.978115, 36.636246, 18.104824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319008, 37.269913, 18.217323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.584007, 36.980564, 18.139528>,  <38.743008, 36.806953, 18.092852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.584007, 36.980564, 18.139528>,  <38.319008, 37.269913, 18.217323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584007, 36.980564, 18.139528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455125, 0.594944, -0.662497,
		0.594944, 0.350386, 0.723375,
		0.662497, -0.723375, -0.194489,
		38.782757, 36.763550, 18.081181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942432, 37.684452, 18.173109>,  <38.319008, 37.269913, 18.217323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942432, 37.684452, 18.173109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.022709, 37.327156, 18.012184>,  <39.070873, 37.112778, 17.915628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.022709, 37.327156, 18.012184>,  <38.942432, 37.684452, 18.173109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022709, 37.327156, 18.012184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390560, 0.449571, -0.803336,
		0.898436, 0.004093, 0.439086,
		0.200688, -0.893235, -0.402312,
		39.082916, 37.059185, 17.891491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689407, 37.717995, 18.035589>,  <38.942432, 37.684452, 18.173109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689407, 37.717995, 18.035589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.503628, 37.455624, 17.797581>,  <39.392159, 37.298203, 17.654776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.503628, 37.455624, 17.797581>,  <39.689407, 37.717995, 18.035589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503628, 37.455624, 17.797581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256544, 0.543428, -0.799294,
		0.847628, -0.523880, -0.084121,
		-0.464448, -0.655924, -0.595023,
		39.364292, 37.258846, 17.619074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124203, 37.570122, 17.512571>,  <39.689407, 37.717995, 18.035589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124203, 37.570122, 17.512571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.782867, 37.443264, 17.347055>,  <39.578064, 37.367149, 17.247746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.782867, 37.443264, 17.347055>,  <40.124203, 37.570122, 17.512571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782867, 37.443264, 17.347055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193300, 0.544655, -0.816080,
		0.484190, -0.776382, -0.403474,
		-0.853344, -0.317146, -0.413791,
		39.526863, 37.348118, 17.222918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325302, 37.471916, 16.856064>,  <40.124203, 37.570122, 17.512571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325302, 37.471916, 16.856064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.928394, 37.453270, 16.810062>,  <39.690250, 37.442081, 16.782461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.928394, 37.453270, 16.810062>,  <40.325302, 37.471916, 16.856064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928394, 37.453270, 16.810062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064706, 0.596433, -0.800051,
		0.105887, -0.801308, -0.588807,
		-0.992271, -0.046616, -0.115004,
		39.630714, 37.439285, 16.775560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308064, 37.349873, 16.179502>,  <40.325302, 37.471916, 16.856064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308064, 37.349873, 16.179502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953049, 37.499691, 16.286825>,  <39.740040, 37.589581, 16.351219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.953049, 37.499691, 16.286825>,  <40.308064, 37.349873, 16.179502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953049, 37.499691, 16.286825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008502, 0.568940, -0.822335,
		-0.460650, -0.732137, -0.501773,
		-0.887541, 0.374542, 0.268307,
		39.686787, 37.612053, 16.367317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867477, 37.289589, 15.595612>,  <40.308064, 37.349873, 16.179502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867477, 37.289589, 15.595612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745052, 37.602615, 15.812467>,  <39.671597, 37.790432, 15.942579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.745052, 37.602615, 15.812467>,  <39.867477, 37.289589, 15.595612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745052, 37.602615, 15.812467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080283, 0.588653, -0.804389,
		-0.948620, -0.202668, -0.242991,
		-0.306061, 0.782568, 0.542137,
		39.653233, 37.837387, 15.975108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321716, 37.700706, 15.181757>,  <39.867477, 37.289589, 15.595612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321716, 37.700706, 15.181757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447639, 37.961330, 15.457836>,  <39.523193, 38.117702, 15.623484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447639, 37.961330, 15.457836>,  <39.321716, 37.700706, 15.181757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447639, 37.961330, 15.457836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111970, 0.747585, -0.654660,
		-0.942528, 0.128810, 0.308300,
		0.314807, 0.651556, 0.690197,
		39.542080, 38.156796, 15.664895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845848, 38.228619, 15.212692>,  <39.321716, 37.700706, 15.181757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845848, 38.228619, 15.212692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.225792, 38.306110, 15.310863>,  <39.453758, 38.352604, 15.369766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.225792, 38.306110, 15.310863>,  <38.845848, 38.228619, 15.212692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225792, 38.306110, 15.310863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080381, 0.607261, -0.790426,
		-0.302166, 0.770522, 0.561241,
		0.949860, 0.193727, 0.245429,
		39.510750, 38.364227, 15.384492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078682, 38.255405, 14.980578>,  <38.845848, 38.228619, 15.212692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078682, 38.255405, 14.980578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760166, 38.460415, 14.852057>,  <37.569057, 38.583420, 14.774943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760166, 38.460415, 14.852057>,  <38.078682, 38.255405, 14.980578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760166, 38.460415, 14.852057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514957, -0.295651, 0.804618,
		0.317395, 0.806168, 0.499353,
		-0.796291, 0.512527, -0.321304,
		37.521278, 38.614174, 14.755666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782322, 38.666813, 15.586742>,  <38.078682, 38.255405, 14.980578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782322, 38.666813, 15.586742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527225, 38.551807, 15.300911>,  <37.374168, 38.482803, 15.129413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527225, 38.551807, 15.300911>,  <37.782322, 38.666813, 15.586742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527225, 38.551807, 15.300911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528835, -0.511068, 0.677601,
		-0.560016, 0.810029, 0.173883,
		-0.637743, -0.287512, -0.714578,
		37.335903, 38.465553, 15.086537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152241, 38.806622, 15.722736>,  <37.782322, 38.666813, 15.586742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152241, 38.806622, 15.722736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090691, 38.515316, 15.455618>,  <37.053761, 38.340534, 15.295346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.090691, 38.515316, 15.455618>,  <37.152241, 38.806622, 15.722736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090691, 38.515316, 15.455618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525179, -0.512196, 0.679590,
		-0.836964, 0.455287, -0.303652,
		-0.153879, -0.728264, -0.667797,
		37.044525, 38.296837, 15.255279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430862, 38.582542, 15.767447>,  <37.152241, 38.806622, 15.722736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430862, 38.582542, 15.767447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.613941, 38.285954, 15.571189>,  <36.723789, 38.107998, 15.453435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.613941, 38.285954, 15.571189>,  <36.430862, 38.582542, 15.767447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613941, 38.285954, 15.571189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458338, -0.669627, 0.584402,
		-0.761868, -0.042596, -0.646330,
		0.457693, -0.741474, -0.490644,
		36.751251, 38.063511, 15.423996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905323, 38.110718, 15.560119>,  <36.430862, 38.582542, 15.767447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905323, 38.110718, 15.560119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248413, 37.907444, 15.591227>,  <36.454269, 37.785480, 15.609891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.248413, 37.907444, 15.591227>,  <35.905323, 38.110718, 15.560119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248413, 37.907444, 15.591227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444970, -0.658083, 0.607395,
		-0.257490, -0.555586, -0.790584,
		0.857730, -0.508185, 0.077769,
		36.505733, 37.754990, 15.614557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728504, 37.475147, 15.630980>,  <35.905323, 38.110718, 15.560119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728504, 37.475147, 15.630980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106537, 37.436661, 15.755924>,  <36.333355, 37.413567, 15.830891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106537, 37.436661, 15.755924>,  <35.728504, 37.475147, 15.630980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106537, 37.436661, 15.755924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294694, -0.664184, 0.687034,
		0.141358, -0.741351, -0.656061,
		0.945078, -0.096219, 0.312360,
		36.390060, 37.407795, 15.849632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744564, 36.748238, 15.753222>,  <35.728504, 37.475147, 15.630980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744564, 36.748238, 15.753222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.084652, 36.871342, 15.924064>,  <36.288704, 36.945206, 16.026567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.084652, 36.871342, 15.924064>,  <35.744564, 36.748238, 15.753222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084652, 36.871342, 15.924064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183352, -0.587396, 0.788256,
		0.493473, -0.748497, -0.442985,
		0.850215, 0.307761, 0.427103,
		36.339718, 36.963669, 16.052195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202175, 36.158562, 15.898438>,  <35.744564, 36.748238, 15.753222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202175, 36.158562, 15.898438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295464, 36.457466, 16.147341>,  <36.351437, 36.636810, 16.296682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.295464, 36.457466, 16.147341>,  <36.202175, 36.158562, 15.898438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295464, 36.457466, 16.147341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176301, -0.596807, 0.782777,
		0.956309, -0.292262, -0.007442,
		0.233217, 0.747265, 0.622258,
		36.365429, 36.681644, 16.334019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571617, 35.862476, 16.366085>,  <36.202175, 36.158562, 15.898438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571617, 35.862476, 16.366085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448776, 36.200626, 16.540915>,  <36.375072, 36.403515, 16.645813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448776, 36.200626, 16.540915>,  <36.571617, 35.862476, 16.366085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448776, 36.200626, 16.540915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165109, -0.499631, 0.850357,
		0.937245, 0.188979, 0.293015,
		-0.307100, 0.845373, 0.437075,
		36.356647, 36.454239, 16.672037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764000, 35.763920, 16.962639>,  <36.571617, 35.862476, 16.366085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764000, 35.763920, 16.962639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.552864, 36.096264, 17.033121>,  <36.426182, 36.295670, 17.075411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.552864, 36.096264, 17.033121>,  <36.764000, 35.763920, 16.962639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552864, 36.096264, 17.033121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102490, -0.268254, 0.957881,
		0.843137, 0.487549, 0.226750,
		-0.527840, 0.830865, 0.176206,
		36.394512, 36.345524, 17.085983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027931, 36.218159, 17.350552>,  <36.764000, 35.763920, 16.962639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027931, 36.218159, 17.350552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.633263, 36.248783, 17.408001>,  <36.396461, 36.267159, 17.442471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.633263, 36.248783, 17.408001>,  <37.027931, 36.218159, 17.350552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633263, 36.248783, 17.408001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131195, -0.148090, 0.980233,
		0.096314, 0.986006, 0.136071,
		-0.986667, 0.076559, 0.143622,
		36.337261, 36.271751, 17.451088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060734, 36.411762, 18.051666>,  <37.027931, 36.218159, 17.350552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060734, 36.411762, 18.051666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675114, 36.324398, 17.991117>,  <36.443741, 36.271980, 17.954788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675114, 36.324398, 17.991117>,  <37.060734, 36.411762, 18.051666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675114, 36.324398, 17.991117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078263, -0.311006, 0.947180,
		-0.253947, 0.924972, 0.282731,
		-0.964046, -0.218406, -0.151370,
		36.385899, 36.258877, 17.945705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681126, 36.659657, 18.596958>,  <37.060734, 36.411762, 18.051666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681126, 36.659657, 18.596958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479534, 36.350941, 18.441858>,  <36.358578, 36.165710, 18.348799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479534, 36.350941, 18.441858>,  <36.681126, 36.659657, 18.596958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479534, 36.350941, 18.441858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130016, -0.376027, 0.917442,
		-0.853873, 0.512787, 0.089165,
		-0.503981, -0.771786, -0.387750,
		36.328339, 36.119404, 18.325533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221741, 36.521698, 19.186390>,  <36.681126, 36.659657, 18.596958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221741, 36.521698, 19.186390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.189186, 36.197243, 18.954723>,  <36.169655, 36.002571, 18.815723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.189186, 36.197243, 18.954723>,  <36.221741, 36.521698, 19.186390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189186, 36.197243, 18.954723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106454, -0.570693, 0.814234,
		-0.990981, 0.127923, -0.039902,
		-0.081388, -0.811138, -0.579164,
		36.164768, 35.953903, 18.780973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670982, 36.296852, 19.435602>,  <36.221741, 36.521698, 19.186390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670982, 36.296852, 19.435602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858723, 35.991299, 19.258430>,  <35.971367, 35.807968, 19.152126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858723, 35.991299, 19.258430>,  <35.670982, 36.296852, 19.435602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858723, 35.991299, 19.258430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153879, -0.564696, 0.810826,
		-0.869499, -0.312407, -0.382587,
		0.469353, -0.763885, -0.442931,
		35.999527, 35.762135, 19.125551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274555, 35.623798, 19.588589>,  <35.670982, 36.296852, 19.435602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274555, 35.623798, 19.588589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.629971, 35.486095, 19.467274>,  <35.843220, 35.403473, 19.394485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.629971, 35.486095, 19.467274>,  <35.274555, 35.623798, 19.588589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629971, 35.486095, 19.467274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000829, -0.659840, 0.751406,
		-0.458797, -0.667906, -0.586009,
		0.888541, -0.344258, -0.303287,
		35.896534, 35.382816, 19.376287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178513, 34.942577, 19.278740>,  <35.274555, 35.623798, 19.588589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178513, 34.942577, 19.278740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555298, 34.993515, 19.402987>,  <35.781368, 35.024078, 19.477533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.555298, 34.993515, 19.402987>,  <35.178513, 34.942577, 19.278740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555298, 34.993515, 19.402987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130899, -0.712690, 0.689158,
		0.309135, -0.689823, -0.654660,
		0.941966, 0.127348, 0.310615,
		35.837887, 35.031719, 19.496170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531116, 34.248451, 19.199675>,  <35.178513, 34.942577, 19.278740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531116, 34.248451, 19.199675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760365, 34.458424, 19.451382>,  <35.897915, 34.584408, 19.602406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.760365, 34.458424, 19.451382>,  <35.531116, 34.248451, 19.199675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760365, 34.458424, 19.451382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008098, -0.764229, 0.644894,
		0.819430, -0.374699, -0.433746,
		0.573122, 0.524933, 0.629267,
		35.932301, 34.615902, 19.640162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963207, 33.726284, 19.453730>,  <35.531116, 34.248451, 19.199675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963207, 33.726284, 19.453730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.013111, 34.023972, 19.716202>,  <36.043053, 34.202583, 19.873684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.013111, 34.023972, 19.716202>,  <35.963207, 33.726284, 19.453730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013111, 34.023972, 19.716202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098825, -0.667379, 0.738132,
		0.987253, -0.027245, -0.156812,
		0.124763, 0.744220, 0.656179,
		36.050541, 34.247238, 19.913055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314968, 33.389591, 20.007420>,  <35.963207, 33.726284, 19.453730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314968, 33.389591, 20.007420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.202244, 33.727055, 20.190210>,  <36.134609, 33.929531, 20.299885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.202244, 33.727055, 20.190210>,  <36.314968, 33.389591, 20.007420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202244, 33.727055, 20.190210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051291, -0.488847, 0.870860,
		0.958097, 0.221983, 0.181036,
		-0.281815, 0.843654, 0.456977,
		36.117699, 33.980152, 20.327303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816662, 33.517326, 20.501348>,  <36.314968, 33.389591, 20.007420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816662, 33.517326, 20.501348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.477009, 33.699543, 20.608274>,  <36.273216, 33.808872, 20.672430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.477009, 33.699543, 20.608274>,  <36.816662, 33.517326, 20.501348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477009, 33.699543, 20.608274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086173, -0.379843, 0.921029,
		0.521105, 0.805110, 0.283281,
		-0.849131, 0.455542, 0.267317,
		36.222271, 33.836205, 20.688469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.504845, 32.309765, 25.267477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.154995, 32.503529, 25.275290>,  <38.945087, 32.619789, 25.279976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.154995, 32.503529, 25.275290>,  <39.504845, 32.309765, 25.267477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154995, 32.503529, 25.275290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141774, -0.294084, 0.945206,
		0.463613, 0.823929, 0.325889,
		-0.874622, 0.484412, 0.019529,
		38.892609, 32.648853, 25.281149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482468, 32.707523, 25.839043>,  <39.504845, 32.309765, 25.267477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482468, 32.707523, 25.839043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.091873, 32.663090, 25.765144>,  <38.857517, 32.636429, 25.720806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.091873, 32.663090, 25.765144>,  <39.482468, 32.707523, 25.839043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091873, 32.663090, 25.765144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177461, -0.072318, 0.981467,
		-0.122382, 0.991177, 0.050906,
		-0.976489, -0.111081, -0.184746,
		38.798927, 32.629765, 25.709721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198116, 33.024563, 26.406090>,  <39.482468, 32.707523, 25.839043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198116, 33.024563, 26.406090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.898544, 32.821918, 26.235235>,  <38.718800, 32.700333, 26.132723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.898544, 32.821918, 26.235235>,  <39.198116, 33.024563, 26.406090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898544, 32.821918, 26.235235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476206, -0.036755, 0.878565,
		-0.460789, 0.861392, -0.213723,
		-0.748933, -0.506610, -0.427136,
		38.673862, 32.669937, 26.107094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638443, 33.334309, 26.686041>,  <39.198116, 33.024563, 26.406090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638443, 33.334309, 26.686041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.480110, 33.002052, 26.529402>,  <38.385113, 32.802696, 26.435419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.480110, 33.002052, 26.529402>,  <38.638443, 33.334309, 26.686041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480110, 33.002052, 26.529402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413381, -0.219608, 0.883679,
		-0.820021, 0.511665, -0.256446,
		-0.395830, -0.830645, -0.391596,
		38.361362, 32.752857, 26.411922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900028, 33.360302, 26.927214>,  <38.638443, 33.334309, 26.686041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900028, 33.360302, 26.927214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.020115, 32.984596, 26.860697>,  <38.092167, 32.759174, 26.820787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.020115, 32.984596, 26.860697>,  <37.900028, 33.360302, 26.927214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020115, 32.984596, 26.860697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460192, -0.295325, 0.837261,
		-0.835518, -0.174838, -0.520904,
		0.300221, -0.939263, -0.166290,
		38.110180, 32.702816, 26.810810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344925, 32.953526, 27.111231>,  <37.900028, 33.360302, 26.927214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344925, 32.953526, 27.111231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.680641, 32.736134, 27.105295>,  <37.882072, 32.605698, 27.101734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.680641, 32.736134, 27.105295>,  <37.344925, 32.953526, 27.111231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680641, 32.736134, 27.105295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276934, -0.450829, 0.848564,
		-0.467869, -0.708081, -0.528885,
		0.839289, -0.543483, -0.014837,
		37.932426, 32.573090, 27.100843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161549, 32.334415, 27.153105>,  <37.344925, 32.953526, 27.111231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161549, 32.334415, 27.153105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.540894, 32.314079, 27.278339>,  <37.768501, 32.301880, 27.353481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.540894, 32.314079, 27.278339>,  <37.161549, 32.334415, 27.153105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540894, 32.314079, 27.278339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298737, -0.474905, 0.827781,
		0.106605, -0.878567, -0.465569,
		0.948363, -0.050838, 0.313088,
		37.825401, 32.298828, 27.372265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242268, 31.654442, 27.405863>,  <37.161549, 32.334415, 27.153105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242268, 31.654442, 27.405863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.528439, 31.880938, 27.569588>,  <37.700142, 32.016834, 27.667822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.528439, 31.880938, 27.569588>,  <37.242268, 31.654442, 27.405863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528439, 31.880938, 27.569588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295936, -0.285103, 0.911668,
		0.632918, -0.773362, -0.036400,
		0.715427, 0.566240, 0.409312,
		37.743065, 32.050808, 27.692381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580296, 31.262016, 27.869551>,  <37.242268, 31.654442, 27.405863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580296, 31.262016, 27.869551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.692249, 31.631721, 27.973398>,  <37.759422, 31.853544, 28.035707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.692249, 31.631721, 27.973398>,  <37.580296, 31.262016, 27.869551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692249, 31.631721, 27.973398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339456, -0.157680, 0.927312,
		0.898017, -0.347670, 0.269614,
		0.279885, 0.924263, 0.259618,
		37.776215, 31.909000, 28.051283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002716, 31.207890, 28.457031>,  <37.580296, 31.262016, 27.869551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002716, 31.207890, 28.457031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.879932, 31.588575, 28.458853>,  <37.806263, 31.816986, 28.459946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.879932, 31.588575, 28.458853>,  <38.002716, 31.207890, 28.457031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879932, 31.588575, 28.458853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279477, -0.094713, 0.955470,
		0.909764, 0.292013, 0.295055,
		-0.306956, 0.951713, 0.004556,
		37.787846, 31.874090, 28.460220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318726, 31.506857, 28.993544>,  <38.002716, 31.207890, 28.457031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318726, 31.506857, 28.993544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.974659, 31.701332, 28.931911>,  <37.768219, 31.818016, 28.894932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.974659, 31.701332, 28.931911>,  <38.318726, 31.506857, 28.993544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974659, 31.701332, 28.931911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229725, -0.099609, 0.968145,
		0.455352, 0.868159, 0.197370,
		-0.860164, 0.486187, -0.154081,
		37.716610, 31.847189, 28.885687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148052, 31.936388, 29.599302>,  <38.318726, 31.506857, 28.993544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148052, 31.936388, 29.599302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.800369, 31.886950, 29.407799>,  <37.591759, 31.857286, 29.292896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.800369, 31.886950, 29.407799>,  <38.148052, 31.936388, 29.599302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800369, 31.886950, 29.407799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427337, -0.299294, 0.853115,
		-0.248731, 0.946122, 0.207330,
		-0.869204, -0.123596, -0.478757,
		37.539608, 31.849871, 29.264172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697586, 32.398735, 29.878557>,  <38.148052, 31.936388, 29.599302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697586, 32.398735, 29.878557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.586056, 32.042973, 29.733662>,  <37.519138, 31.829515, 29.646725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.586056, 32.042973, 29.733662>,  <37.697586, 32.398735, 29.878557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586056, 32.042973, 29.733662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232057, -0.303621, 0.924102,
		-0.931882, 0.341726, -0.121733,
		-0.278829, -0.889403, -0.362239,
		37.502407, 31.776152, 29.624990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341057, 32.504993, 30.533867>,  <37.697586, 32.398735, 29.878557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341057, 32.504993, 30.533867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.307350, 32.687218, 30.888350>,  <37.287125, 32.796551, 31.101040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.307350, 32.687218, 30.888350>,  <37.341057, 32.504993, 30.533867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307350, 32.687218, 30.888350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709406, 0.597124, -0.374416,
		-0.699744, -0.660232, 0.272858,
		-0.084271, 0.455562, 0.886206,
		37.282070, 32.823887, 31.154211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569012, 32.493137, 30.726276>,  <37.341057, 32.504993, 30.533867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569012, 32.493137, 30.726276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.726337, 32.811905, 30.909674>,  <36.820732, 33.003166, 31.019712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.726337, 32.811905, 30.909674>,  <36.569012, 32.493137, 30.726276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726337, 32.811905, 30.909674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712715, 0.579312, -0.395520,
		-0.580808, -0.171209, 0.795833,
		0.393319, 0.796923, 0.458492,
		36.844334, 33.050983, 31.047222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036350, 32.862869, 30.929815>,  <36.569012, 32.493137, 30.726276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036350, 32.862869, 30.929815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.349285, 33.111900, 30.937279>,  <36.537045, 33.261318, 30.941757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.349285, 33.111900, 30.937279>,  <36.036350, 32.862869, 30.929815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349285, 33.111900, 30.937279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496223, 0.641099, -0.585452,
		-0.376454, 0.448759, 0.810492,
		0.782333, 0.622581, 0.018659,
		36.583984, 33.298676, 30.942877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754772, 33.532005, 31.060862>,  <36.036350, 32.862869, 30.929815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754772, 33.532005, 31.060862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.102894, 33.598370, 30.875370>,  <36.311768, 33.638187, 30.764074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.102894, 33.598370, 30.875370>,  <35.754772, 33.532005, 31.060862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102894, 33.598370, 30.875370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468437, 0.569645, -0.675331,
		0.152117, 0.804971, 0.573482,
		0.870303, 0.165911, -0.463731,
		36.363983, 33.648144, 30.736250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778992, 34.200516, 30.948271>,  <35.754772, 33.532005, 31.060862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778992, 34.200516, 30.948271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.044922, 34.056965, 30.686214>,  <36.204479, 33.970833, 30.528980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.044922, 34.056965, 30.686214>,  <35.778992, 34.200516, 30.948271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044922, 34.056965, 30.686214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222493, 0.742094, -0.632292,
		0.713092, 0.566131, 0.413517,
		0.664829, -0.358878, -0.655141,
		36.244370, 33.949303, 30.489672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004204, 34.768204, 30.636415>,  <35.778992, 34.200516, 30.948271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004204, 34.768204, 30.636415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.103073, 34.484062, 30.372807>,  <36.162395, 34.313580, 30.214642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.103073, 34.484062, 30.372807>,  <36.004204, 34.768204, 30.636415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103073, 34.484062, 30.372807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344693, 0.571177, -0.744946,
		0.905590, 0.411289, -0.103675,
		0.247172, -0.710351, -0.659020,
		36.177223, 34.270958, 30.175100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096172, 35.158943, 30.049202>,  <36.004204, 34.768204, 30.636415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096172, 35.158943, 30.049202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.065609, 34.795425, 29.885128>,  <36.047272, 34.577316, 29.786684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.065609, 34.795425, 29.885128>,  <36.096172, 35.158943, 30.049202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065609, 34.795425, 29.885128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020922, 0.412759, -0.910600,
		0.996857, -0.060992, -0.050551,
		-0.076405, -0.908796, -0.410186,
		36.042686, 34.522785, 29.762072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319530, 35.217159, 29.439381>,  <36.096172, 35.158943, 30.049202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319530, 35.217159, 29.439381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.148125, 34.861202, 29.376802>,  <36.045280, 34.647629, 29.339256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.148125, 34.861202, 29.376802>,  <36.319530, 35.217159, 29.439381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148125, 34.861202, 29.376802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166026, 0.247750, -0.954492,
		0.888150, -0.383039, -0.253909,
		-0.428514, -0.889888, -0.156444,
		36.019569, 34.594234, 29.329868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612408, 34.853493, 28.897902>,  <36.319530, 35.217159, 29.439381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612408, 34.853493, 28.897902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.255478, 34.673862, 28.879625>,  <36.041321, 34.566082, 28.868660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.255478, 34.673862, 28.879625>,  <36.612408, 34.853493, 28.897902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255478, 34.673862, 28.879625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115325, 0.324667, -0.938771,
		0.436419, -0.832417, -0.341498,
		-0.892322, -0.449081, -0.045692,
		35.987782, 34.539139, 28.865917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656181, 34.386700, 28.355564>,  <36.612408, 34.853493, 28.897902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656181, 34.386700, 28.355564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.271034, 34.478340, 28.412701>,  <36.039948, 34.533325, 28.446981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.271034, 34.478340, 28.412701>,  <36.656181, 34.386700, 28.355564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271034, 34.478340, 28.412701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092989, 0.215281, -0.972115,
		-0.253462, -0.949298, -0.185983,
		-0.962866, 0.229100, 0.142840,
		35.982174, 34.547070, 28.455553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372688, 34.058224, 27.857994>,  <36.656181, 34.386700, 28.355564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372688, 34.058224, 27.857994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.109089, 34.343700, 27.952963>,  <35.950932, 34.514988, 28.009945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.109089, 34.343700, 27.952963>,  <36.372688, 34.058224, 27.857994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109089, 34.343700, 27.952963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123196, 0.208978, -0.970129,
		-0.741991, -0.668559, -0.049791,
		-0.658994, 0.713693, 0.237423,
		35.911392, 34.557808, 28.024189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898323, 33.902115, 27.401699>,  <36.372688, 34.058224, 27.857994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898323, 33.902115, 27.401699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.848156, 34.274307, 27.539385>,  <35.818058, 34.497623, 27.621996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.848156, 34.274307, 27.539385>,  <35.898323, 33.902115, 27.401699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848156, 34.274307, 27.539385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064622, 0.338557, -0.938724,
		-0.989998, -0.139974, 0.017670,
		-0.125415, 0.930477, 0.344216,
		35.810532, 34.553452, 27.642651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352867, 34.142014, 27.033724>,  <35.898323, 33.902115, 27.401699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352867, 34.142014, 27.033724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.542053, 34.470997, 27.160126>,  <35.655567, 34.668388, 27.235968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.542053, 34.470997, 27.160126>,  <35.352867, 34.142014, 27.033724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542053, 34.470997, 27.160126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053042, 0.331426, -0.941989,
		-0.879482, 0.462292, 0.113129,
		0.472968, 0.822461, 0.316004,
		35.683945, 34.717735, 27.254927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019054, 34.647594, 26.684328>,  <35.352867, 34.142014, 27.033724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019054, 34.647594, 26.684328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.361927, 34.824104, 26.790543>,  <35.567650, 34.930012, 26.854271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.361927, 34.824104, 26.790543>,  <35.019054, 34.647594, 26.684328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361927, 34.824104, 26.790543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103333, 0.357743, -0.928085,
		-0.504535, 0.822979, 0.261054,
		0.857185, 0.441276, 0.265536,
		35.619083, 34.956486, 26.870203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972775, 35.310356, 26.350634>,  <35.019054, 34.647594, 26.684328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972775, 35.310356, 26.350634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.354443, 35.256779, 26.457674>,  <35.583443, 35.224632, 26.521898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.354443, 35.256779, 26.457674>,  <34.972775, 35.310356, 26.350634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354443, 35.256779, 26.457674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298361, 0.494767, -0.816202,
		-0.023076, 0.858641, 0.512058,
		0.954174, -0.133944, 0.267602,
		35.640694, 35.216595, 26.537954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744602, 35.936256, 26.689873>,  <34.972775, 35.310356, 26.350634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744602, 35.936256, 26.689873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.395237, 36.130451, 26.674589>,  <34.185619, 36.246967, 26.665419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.395237, 36.130451, 26.674589>,  <34.744602, 35.936256, 26.689873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395237, 36.130451, 26.674589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348141, -0.567601, 0.746074,
		0.340519, 0.664931, 0.664765,
		-0.873410, 0.485484, -0.038211,
		34.133213, 36.276096, 26.663126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422661, 35.887619, 27.424519>,  <34.744602, 35.936256, 26.689873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422661, 35.887619, 27.424519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.111465, 36.034485, 27.220589>,  <33.924747, 36.122604, 27.098230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.111465, 36.034485, 27.220589>,  <34.422661, 35.887619, 27.424519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111465, 36.034485, 27.220589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628248, -0.462318, 0.625753,
		-0.005949, 0.807127, 0.590348,
		-0.777991, 0.367162, -0.509826,
		33.878067, 36.144634, 27.067640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996494, 36.263264, 27.960440>,  <34.422661, 35.887619, 27.424519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996494, 36.263264, 27.960440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.775902, 36.160686, 27.642923>,  <33.643547, 36.099140, 27.452414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.775902, 36.160686, 27.642923>,  <33.996494, 36.263264, 27.960440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775902, 36.160686, 27.642923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685687, -0.402582, 0.606433,
		-0.475081, 0.878730, 0.046178,
		-0.551481, -0.256441, -0.793792,
		33.610458, 36.083755, 27.404785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289268, 36.374069, 28.156460>,  <33.996494, 36.263264, 27.960440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289268, 36.374069, 28.156460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.251549, 36.092693, 27.874672>,  <33.228916, 35.923866, 27.705599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.251549, 36.092693, 27.874672>,  <33.289268, 36.374069, 28.156460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251549, 36.092693, 27.874672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529907, -0.563586, 0.633694,
		-0.842796, 0.433061, -0.319613,
		-0.094299, -0.703440, -0.704471,
		33.223259, 35.881660, 27.663330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585819, 36.037209, 28.254860>,  <33.289268, 36.374069, 28.156460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585819, 36.037209, 28.254860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.798351, 35.783043, 28.030735>,  <32.925869, 35.630543, 27.896261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.798351, 35.783043, 28.030735>,  <32.585819, 36.037209, 28.254860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798351, 35.783043, 28.030735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464982, -0.771597, 0.434086,
		-0.708156, 0.029893, -0.705423,
		0.531326, -0.635409, -0.560310,
		32.957748, 35.592419, 27.862642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084904, 35.602940, 27.924252>,  <32.585819, 36.037209, 28.254860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084904, 35.602940, 27.924252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.426861, 35.399483, 27.965122>,  <32.632034, 35.277409, 27.989645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.426861, 35.399483, 27.965122>,  <32.084904, 35.602940, 27.924252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426861, 35.399483, 27.965122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516840, -0.817862, 0.252938,
		-0.045089, -0.269044, -0.962072,
		0.854894, -0.508642, 0.102176,
		32.683331, 35.246891, 27.995775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043163, 35.010098, 27.529610>,  <32.084904, 35.602940, 27.924252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043163, 35.010098, 27.529610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.335480, 34.945404, 27.794874>,  <32.510868, 34.906590, 27.954033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.335480, 34.945404, 27.794874>,  <32.043163, 35.010098, 27.529610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335480, 34.945404, 27.794874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430242, -0.863384, 0.263553,
		0.529939, -0.477923, -0.700538,
		0.730791, -0.161734, 0.663163,
		32.554718, 34.896885, 27.993824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025703, 34.357239, 27.597250>,  <32.043163, 35.010098, 27.529610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025703, 34.357239, 27.597250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.277401, 34.405598, 27.904348>,  <32.428421, 34.434612, 28.088608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.277401, 34.405598, 27.904348>,  <32.025703, 34.357239, 27.597250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277401, 34.405598, 27.904348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201046, -0.928886, 0.311049,
		0.750752, -0.350079, -0.560194,
		0.629248, 0.120896, 0.767744,
		32.466175, 34.441868, 28.134672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386150, 33.683685, 27.717506>,  <32.025703, 34.357239, 27.597250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386150, 33.683685, 27.717506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.420242, 33.891949, 28.057306>,  <32.440697, 34.016907, 28.261187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.420242, 33.891949, 28.057306>,  <32.386150, 33.683685, 27.717506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420242, 33.891949, 28.057306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271505, -0.808202, 0.522584,
		0.958656, -0.275184, 0.072477,
		0.085231, 0.520656, 0.849502,
		32.445812, 34.048145, 28.312157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555244, 33.178188, 28.087955>,  <32.386150, 33.683685, 27.717506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555244, 33.178188, 28.087955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.463326, 33.464729, 28.351480>,  <32.408173, 33.636654, 28.509596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.463326, 33.464729, 28.351480>,  <32.555244, 33.178188, 28.087955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463326, 33.464729, 28.351480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004691, -0.676107, 0.736789,
		0.973227, 0.172405, 0.152009,
		-0.229800, 0.716350, 0.658814,
		32.394386, 33.679634, 28.549124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127972, 33.125977, 28.580793>,  <32.555244, 33.178188, 28.087955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127972, 33.125977, 28.580793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.796112, 33.298336, 28.722784>,  <32.596996, 33.401752, 28.807978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.796112, 33.298336, 28.722784>,  <33.127972, 33.125977, 28.580793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796112, 33.298336, 28.722784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047179, -0.579448, 0.813642,
		0.556285, 0.691787, 0.460411,
		-0.829652, 0.430895, 0.354976,
		32.547218, 33.427605, 28.829277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274048, 33.282501, 29.240080>,  <33.127972, 33.125977, 28.580793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274048, 33.282501, 29.240080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.874943, 33.260899, 29.255806>,  <32.635479, 33.247936, 29.265242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.874943, 33.260899, 29.255806>,  <33.274048, 33.282501, 29.240080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874943, 33.260899, 29.255806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061197, -0.503110, 0.862053,
		-0.026774, 0.862533, 0.505291,
		-0.997767, -0.054003, 0.039314,
		32.575611, 33.244698, 29.267599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.536972, 38.286633, 23.978483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165432, 38.352249, 23.845625>,  <34.942509, 38.391621, 23.765909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165432, 38.352249, 23.845625>,  <35.536972, 38.286633, 23.978483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165432, 38.352249, 23.845625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361243, -0.202448, 0.910230,
		0.082075, 0.965455, 0.247304,
		-0.928853, 0.164044, -0.332148,
		34.886776, 38.401463, 23.745981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247334, 38.793480, 24.434916>,  <35.536972, 38.286633, 23.978483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247334, 38.793480, 24.434916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955803, 38.585548, 24.256664>,  <34.780884, 38.460789, 24.149714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955803, 38.585548, 24.256664>,  <35.247334, 38.793480, 24.434916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955803, 38.585548, 24.256664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378999, -0.235754, 0.894863,
		-0.570235, 0.821095, -0.025191,
		-0.728829, -0.519830, -0.445630,
		34.737156, 38.429600, 24.122974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600170, 38.976986, 24.801905>,  <35.247334, 38.793480, 24.434916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600170, 38.976986, 24.801905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531918, 38.617714, 24.639841>,  <34.490967, 38.402149, 24.542603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531918, 38.617714, 24.639841>,  <34.600170, 38.976986, 24.801905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531918, 38.617714, 24.639841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354650, -0.327645, 0.875712,
		-0.919297, 0.293117, -0.262632,
		-0.170636, -0.898182, -0.405157,
		34.480728, 38.348259, 24.518293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098026, 38.765228, 25.214178>,  <34.600170, 38.976986, 24.801905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098026, 38.765228, 25.214178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220497, 38.436230, 25.022451>,  <34.293980, 38.238831, 24.907415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220497, 38.436230, 25.022451>,  <34.098026, 38.765228, 25.214178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220497, 38.436230, 25.022451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281704, -0.559230, 0.779682,
		-0.909338, -0.103698, -0.402927,
		0.306181, -0.822501, -0.479318,
		34.312351, 38.189480, 24.878656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612885, 38.238003, 25.401644>,  <34.098026, 38.765228, 25.214178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612885, 38.238003, 25.401644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944180, 38.051830, 25.276814>,  <34.142956, 37.940128, 25.201916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944180, 38.051830, 25.276814>,  <33.612885, 38.238003, 25.401644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944180, 38.051830, 25.276814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137048, -0.708237, 0.692545,
		-0.543357, -0.530824, -0.650376,
		0.828240, -0.465431, -0.312077,
		34.192650, 37.912201, 25.183189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405624, 37.545280, 25.146133>,  <33.612885, 38.238003, 25.401644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405624, 37.545280, 25.146133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774757, 37.532711, 25.299702>,  <33.996235, 37.525169, 25.391844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774757, 37.532711, 25.299702>,  <33.405624, 37.545280, 25.146133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774757, 37.532711, 25.299702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300425, -0.682516, 0.666271,
		0.241098, -0.730195, -0.639286,
		0.922831, -0.031421, 0.383922,
		34.051605, 37.523285, 25.414879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494026, 36.756493, 25.336378>,  <33.405624, 37.545280, 25.146133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494026, 36.756493, 25.336378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828083, 36.915379, 25.488562>,  <34.028519, 37.010712, 25.579872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828083, 36.915379, 25.488562>,  <33.494026, 36.756493, 25.336378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828083, 36.915379, 25.488562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001740, -0.689798, 0.724000,
		0.550026, -0.605307, -0.575391,
		0.835146, 0.397217, 0.380460,
		34.078629, 37.034542, 25.602699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977371, 36.222355, 25.392645>,  <33.494026, 36.756493, 25.336378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977371, 36.222355, 25.392645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045334, 36.505699, 25.666685>,  <34.086109, 36.675705, 25.831108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045334, 36.505699, 25.666685>,  <33.977371, 36.222355, 25.392645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045334, 36.505699, 25.666685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148151, -0.668945, 0.728398,
		0.974261, -0.225256, -0.008713,
		0.169905, 0.708359, 0.685099,
		34.096306, 36.718208, 25.872215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452766, 35.945499, 25.904749>,  <33.977371, 36.222355, 25.392645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452766, 35.945499, 25.904749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282597, 36.253464, 26.095011>,  <34.180496, 36.438244, 26.209167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282597, 36.253464, 26.095011>,  <34.452766, 35.945499, 25.904749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282597, 36.253464, 26.095011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124160, -0.570275, 0.812016,
		0.896436, 0.286395, 0.338202,
		-0.425426, 0.769912, 0.475656,
		34.154968, 36.484436, 26.237707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287338, 36.007599, 26.139639>,  <34.452766, 35.945499, 25.904749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287338, 36.007599, 26.139639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580997, 35.739952, 26.185793>,  <35.757191, 35.579365, 26.213486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580997, 35.739952, 26.185793>,  <35.287338, 36.007599, 26.139639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580997, 35.739952, 26.185793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504986, 0.424463, -0.751545,
		0.453895, 0.610011, 0.649512,
		0.734145, -0.669117, 0.115385,
		35.801243, 35.539215, 26.220407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841457, 36.412270, 26.071453>,  <35.287338, 36.007599, 26.139639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841457, 36.412270, 26.071453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985752, 36.045471, 26.003349>,  <36.072330, 35.825394, 25.962486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985752, 36.045471, 26.003349>,  <35.841457, 36.412270, 26.071453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985752, 36.045471, 26.003349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515572, 0.348186, -0.782912,
		0.777209, 0.194643, 0.598381,
		0.360736, -0.916995, -0.170261,
		36.093971, 35.770374, 25.952271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543217, 36.524498, 25.907404>,  <35.841457, 36.412270, 26.071453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543217, 36.524498, 25.907404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474548, 36.158489, 25.761379>,  <36.433346, 35.938885, 25.673765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474548, 36.158489, 25.761379>,  <36.543217, 36.524498, 25.907404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474548, 36.158489, 25.761379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551044, 0.217985, -0.805502,
		0.816627, -0.339447, 0.466794,
		-0.171671, -0.915018, -0.365062,
		36.423046, 35.883984, 25.651861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211750, 36.258556, 25.798460>,  <36.543217, 36.524498, 25.907404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211750, 36.258556, 25.798460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955563, 36.060047, 25.564020>,  <36.801849, 35.940941, 25.423357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955563, 36.060047, 25.564020>,  <37.211750, 36.258556, 25.798460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955563, 36.060047, 25.564020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515784, 0.287475, -0.807047,
		0.569007, -0.819188, 0.071853,
		-0.640467, -0.496275, -0.586100,
		36.763424, 35.911163, 25.388189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635906, 35.962578, 25.285467>,  <37.211750, 36.258556, 25.798460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635906, 35.962578, 25.285467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281601, 35.932671, 25.102240>,  <37.069016, 35.914726, 24.992304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281601, 35.932671, 25.102240>,  <37.635906, 35.962578, 25.285467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281601, 35.932671, 25.102240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406745, 0.350319, -0.843703,
		0.223551, -0.933641, -0.279890,
		-0.885767, -0.074767, -0.458068,
		37.015869, 35.910240, 24.964819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768414, 35.604763, 24.667421>,  <37.635906, 35.962578, 25.285467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768414, 35.604763, 24.667421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422138, 35.800117, 24.623499>,  <37.214371, 35.917332, 24.597145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422138, 35.800117, 24.623499>,  <37.768414, 35.604763, 24.667421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422138, 35.800117, 24.623499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252026, 0.235711, -0.938575,
		-0.432505, -0.840190, -0.327139,
		-0.865692, 0.488386, -0.109804,
		37.162430, 35.946632, 24.590557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526520, 35.477528, 23.957897>,  <37.768414, 35.604763, 24.667421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526520, 35.477528, 23.957897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302284, 35.789471, 24.069300>,  <37.167744, 35.976635, 24.136141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302284, 35.789471, 24.069300>,  <37.526520, 35.477528, 23.957897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302284, 35.789471, 24.069300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252686, 0.481376, -0.839301,
		-0.788598, -0.400131, -0.466914,
		-0.560591, 0.779854, 0.278505,
		37.134106, 36.023426, 24.152851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014771, 35.578102, 23.485552>,  <37.526520, 35.477528, 23.957897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014771, 35.578102, 23.485552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095345, 35.923901, 23.669758>,  <37.143688, 36.131378, 23.780281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095345, 35.923901, 23.669758>,  <37.014771, 35.578102, 23.485552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095345, 35.923901, 23.669758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323806, 0.384947, -0.864272,
		-0.924431, 0.323212, -0.202387,
		0.201435, 0.864494, 0.460515,
		37.155773, 36.183250, 23.807913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666977, 36.112293, 23.005398>,  <37.014771, 35.578102, 23.485552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666977, 36.112293, 23.005398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898479, 36.335289, 23.243475>,  <37.037380, 36.469086, 23.386320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898479, 36.335289, 23.243475>,  <36.666977, 36.112293, 23.005398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898479, 36.335289, 23.243475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232100, 0.587058, -0.775560,
		-0.781776, 0.587002, 0.210369,
		0.578754, 0.557487, 0.595191,
		37.072105, 36.502537, 23.422031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646362, 36.716167, 22.685484>,  <36.666977, 36.112293, 23.005398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646362, 36.716167, 22.685484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960266, 36.755337, 22.930288>,  <37.148609, 36.778839, 23.077171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960266, 36.755337, 22.930288>,  <36.646362, 36.716167, 22.685484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960266, 36.755337, 22.930288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425047, 0.633636, -0.646406,
		-0.451090, 0.767409, 0.455633,
		0.784763, 0.097922, 0.612011,
		37.195694, 36.784714, 23.113892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881275, 37.479977, 22.658197>,  <36.646362, 36.716167, 22.685484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881275, 37.479977, 22.658197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186493, 37.254063, 22.783920>,  <37.369621, 37.118515, 22.859354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186493, 37.254063, 22.783920>,  <36.881275, 37.479977, 22.658197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186493, 37.254063, 22.783920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594715, 0.423029, -0.683637,
		0.253145, 0.708567, 0.658673,
		0.763041, -0.564782, 0.314308,
		37.415405, 37.084629, 22.878212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467236, 37.934353, 22.734694>,  <36.881275, 37.479977, 22.658197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467236, 37.934353, 22.734694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636921, 37.578823, 22.665384>,  <37.738731, 37.365505, 22.623798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636921, 37.578823, 22.665384>,  <37.467236, 37.934353, 22.734694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636921, 37.578823, 22.665384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647948, 0.431599, -0.627603,
		0.632617, 0.153966, 0.759006,
		0.424216, -0.888829, -0.173275,
		37.764187, 37.312176, 22.613401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054810, 38.111881, 22.522560>,  <37.467236, 37.934353, 22.734694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054810, 38.111881, 22.522560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053974, 37.737110, 22.382750>,  <38.053474, 37.512249, 22.298864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053974, 37.737110, 22.382750>,  <38.054810, 38.111881, 22.522560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053974, 37.737110, 22.382750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615963, 0.274142, -0.738536,
		0.787772, -0.216837, 0.576539,
		-0.002089, -0.936925, -0.349525,
		38.053349, 37.456032, 22.277891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775272, 37.904602, 22.440516>,  <38.054810, 38.111881, 22.522560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775272, 37.904602, 22.440516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538895, 37.675117, 22.213661>,  <38.397068, 37.537426, 22.077549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538895, 37.675117, 22.213661>,  <38.775272, 37.904602, 22.440516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538895, 37.675117, 22.213661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554070, 0.222327, -0.802232,
		0.586337, -0.788309, 0.186491,
		-0.590945, -0.573707, -0.567137,
		38.361610, 37.503006, 22.043520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.301693, 34.158974, 18.216370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.211380, 34.517567, 18.368868>,  <33.157192, 34.732723, 18.460367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.211380, 34.517567, 18.368868>,  <33.301693, 34.158974, 18.216370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211380, 34.517567, 18.368868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159340, -0.352098, 0.922301,
		0.961059, 0.268984, -0.063348,
		-0.225779, 0.896479, 0.381246,
		33.143646, 34.786510, 18.483242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850388, 34.220280, 18.825596>,  <33.301693, 34.158974, 18.216370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850388, 34.220280, 18.825596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.552364, 34.482300, 18.875885>,  <33.373550, 34.639511, 18.906059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.552364, 34.482300, 18.875885>,  <33.850388, 34.220280, 18.825596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552364, 34.482300, 18.875885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056328, -0.249609, 0.966707,
		0.664622, 0.713167, 0.222870,
		-0.745054, 0.655048, 0.125724,
		33.328850, 34.678814, 18.913603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045319, 34.496105, 19.460665>,  <33.850388, 34.220280, 18.825596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045319, 34.496105, 19.460665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.660816, 34.594269, 19.410454>,  <33.430115, 34.653168, 19.380327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.660816, 34.594269, 19.410454>,  <34.045319, 34.496105, 19.460665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660816, 34.594269, 19.410454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133447, -0.015849, 0.990929,
		0.241198, 0.969289, 0.047985,
		-0.961257, 0.245413, -0.125526,
		33.372440, 34.667892, 19.372797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855225, 35.064396, 19.929317>,  <34.045319, 34.496105, 19.460665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855225, 35.064396, 19.929317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.517658, 34.864872, 19.850336>,  <33.315117, 34.745155, 19.802946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.517658, 34.864872, 19.850336>,  <33.855225, 35.064396, 19.929317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517658, 34.864872, 19.850336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177869, -0.087080, 0.980194,
		-0.506128, 0.862324, -0.015235,
		-0.843918, -0.498813, -0.197455,
		33.264484, 34.715229, 19.791100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553757, 35.133099, 20.586859>,  <33.855225, 35.064396, 19.929317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553757, 35.133099, 20.586859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.354969, 34.845764, 20.392122>,  <33.235699, 34.673363, 20.275280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.354969, 34.845764, 20.392122>,  <33.553757, 35.133099, 20.586859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354969, 34.845764, 20.392122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126286, -0.495184, 0.859561,
		-0.858532, 0.488654, 0.155373,
		-0.496966, -0.718339, -0.486841,
		33.205879, 34.630264, 20.246069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920696, 35.184307, 20.819498>,  <33.553757, 35.133099, 20.586859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920696, 35.184307, 20.819498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.962711, 34.802185, 20.708965>,  <32.987923, 34.572910, 20.642645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.962711, 34.802185, 20.708965>,  <32.920696, 35.184307, 20.819498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962711, 34.802185, 20.708965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106592, -0.287085, 0.951956,
		-0.988739, -0.070541, -0.131984,
		0.105042, -0.955304, -0.276333,
		32.994225, 34.515594, 20.626066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527901, 34.923607, 21.293257>,  <32.920696, 35.184307, 20.819498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527901, 34.923607, 21.293257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.677696, 34.582684, 21.147196>,  <32.767574, 34.378132, 21.059559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.677696, 34.582684, 21.147196>,  <32.527901, 34.923607, 21.293257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677696, 34.582684, 21.147196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263614, -0.475422, 0.839334,
		-0.888968, -0.218064, -0.402721,
		0.374492, -0.852304, -0.365150,
		32.790043, 34.326992, 21.037651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016045, 34.350060, 21.357201>,  <32.527901, 34.923607, 21.293257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016045, 34.350060, 21.357201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.377991, 34.180206, 21.345125>,  <32.595158, 34.078297, 21.337879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.377991, 34.180206, 21.345125>,  <32.016045, 34.350060, 21.357201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377991, 34.180206, 21.345125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234164, -0.555706, 0.797720,
		-0.355512, -0.714759, -0.602272,
		0.904864, -0.424630, -0.030189,
		32.649448, 34.052818, 21.336069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929272, 33.714508, 21.676254>,  <32.016045, 34.350060, 21.357201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929272, 33.714508, 21.676254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.328865, 33.727798, 21.688465>,  <32.568619, 33.735775, 21.695791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.328865, 33.727798, 21.688465>,  <31.929272, 33.714508, 21.676254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328865, 33.727798, 21.688465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001651, -0.649126, 0.760679,
		0.045092, -0.759955, -0.648410,
		0.998982, 0.033230, 0.030525,
		32.628559, 33.737766, 21.697622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255318, 32.974316, 21.636917>,  <31.929272, 33.714508, 21.676254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255318, 32.974316, 21.636917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.515465, 33.221127, 21.814142>,  <32.671555, 33.369213, 21.920477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.515465, 33.221127, 21.814142>,  <32.255318, 32.974316, 21.636917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515465, 33.221127, 21.814142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106272, -0.651440, 0.751221,
		0.752150, -0.441483, -0.489247,
		0.650366, 0.617024, 0.443063,
		32.710575, 33.406235, 21.947062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704082, 32.445766, 21.945011>,  <32.255318, 32.974316, 21.636917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704082, 32.445766, 21.945011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.780937, 32.793121, 22.127872>,  <32.827049, 33.001534, 22.237589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.780937, 32.793121, 22.127872>,  <32.704082, 32.445766, 21.945011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780937, 32.793121, 22.127872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137112, -0.485018, 0.863689,
		0.971742, -0.103268, -0.212257,
		0.192140, 0.868386, 0.457153,
		32.838577, 33.053638, 22.265018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289932, 32.293262, 22.318113>,  <32.704082, 32.445766, 21.945011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289932, 32.293262, 22.318113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.114006, 32.610153, 22.487318>,  <33.008450, 32.800285, 22.588840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.114006, 32.610153, 22.487318>,  <33.289932, 32.293262, 22.318113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114006, 32.610153, 22.487318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169789, -0.389173, 0.905382,
		0.881891, 0.470026, 0.036654,
		-0.439818, 0.792224, 0.423014,
		32.982059, 32.847820, 22.614222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640251, 32.229729, 22.931372>,  <33.289932, 32.293262, 22.318113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640251, 32.229729, 22.931372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.342186, 32.488155, 22.997501>,  <33.163345, 32.643211, 23.037178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.342186, 32.488155, 22.997501>,  <33.640251, 32.229729, 22.931372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342186, 32.488155, 22.997501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145047, -0.398984, 0.905413,
		0.650916, 0.650702, 0.391019,
		-0.745164, 0.646064, 0.165323,
		33.118637, 32.681976, 23.047098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733860, 32.617455, 23.593590>,  <33.640251, 32.229729, 22.931372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733860, 32.617455, 23.593590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.343575, 32.587090, 23.511398>,  <33.109402, 32.568871, 23.462084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.343575, 32.587090, 23.511398>,  <33.733860, 32.617455, 23.593590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343575, 32.587090, 23.511398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174412, -0.298316, 0.938396,
		-0.132535, 0.951443, 0.277830,
		-0.975712, -0.075913, -0.205481,
		33.050861, 32.564316, 23.449755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213463, 33.137665, 24.064251>,  <33.733860, 32.617455, 23.593590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213463, 33.137665, 24.064251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.508648, 32.884399, 24.157644>,  <34.685757, 32.732441, 24.213680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.508648, 32.884399, 24.157644>,  <34.213463, 33.137665, 24.064251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508648, 32.884399, 24.157644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509278, 0.295514, -0.808274,
		0.442775, 0.715382, 0.540536,
		0.737960, -0.633167, 0.233482,
		34.730038, 32.694450, 24.227690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933411, 33.442974, 23.995367>,  <34.213463, 33.137665, 24.064251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933411, 33.442974, 23.995367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.008381, 33.050941, 23.969105>,  <35.053364, 32.815723, 23.953348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.008381, 33.050941, 23.969105>,  <34.933411, 33.442974, 23.995367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008381, 33.050941, 23.969105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561619, 0.161760, -0.811429,
		0.805887, 0.115210, 0.580751,
		0.187427, -0.980082, -0.065656,
		35.064610, 32.756916, 23.949408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649796, 33.508236, 23.994905>,  <34.933411, 33.442974, 23.995367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649796, 33.508236, 23.994905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.575588, 33.142315, 23.851395>,  <35.531063, 32.922764, 23.765287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.575588, 33.142315, 23.851395>,  <35.649796, 33.508236, 23.994905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575588, 33.142315, 23.851395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307776, 0.292651, -0.905334,
		0.933198, -0.278377, 0.227263,
		-0.185516, -0.914801, -0.358779,
		35.519932, 32.867874, 23.743761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219864, 33.300327, 23.617695>,  <35.649796, 33.508236, 23.994905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219864, 33.300327, 23.617695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.901695, 33.093063, 23.491957>,  <35.710793, 32.968704, 23.416513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.901695, 33.093063, 23.491957>,  <36.219864, 33.300327, 23.617695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901695, 33.093063, 23.491957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223063, 0.231966, -0.946802,
		0.563509, -0.823230, -0.068930,
		-0.795425, -0.518156, -0.314347,
		35.663067, 32.937618, 23.397654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541702, 32.790794, 23.143078>,  <36.219864, 33.300327, 23.617695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541702, 32.790794, 23.143078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151230, 32.811440, 23.058792>,  <35.916946, 32.823826, 23.008221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151230, 32.811440, 23.058792>,  <36.541702, 32.790794, 23.143078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151230, 32.811440, 23.058792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216603, 0.177468, -0.959994,
		-0.012155, -0.982772, -0.184421,
		-0.976184, 0.051615, -0.210714,
		35.858376, 32.826923, 22.995579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460838, 32.401909, 22.521860>,  <36.541702, 32.790794, 23.143078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460838, 32.401909, 22.521860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.153847, 32.656456, 22.552860>,  <35.969650, 32.809185, 22.571461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.153847, 32.656456, 22.552860>,  <36.460838, 32.401909, 22.521860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153847, 32.656456, 22.552860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174552, 0.323759, -0.929899,
		-0.616853, -0.700151, -0.359558,
		-0.767479, 0.636372, 0.077499,
		35.923603, 32.847366, 22.576111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136196, 32.345448, 21.933041>,  <36.460838, 32.401909, 22.521860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136196, 32.345448, 21.933041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954720, 32.677582, 22.062471>,  <35.845833, 32.876862, 22.140129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954720, 32.677582, 22.062471>,  <36.136196, 32.345448, 21.933041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954720, 32.677582, 22.062471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006806, 0.359856, -0.932983,
		-0.891133, -0.425489, -0.157613,
		-0.453691, 0.830339, 0.323575,
		35.818611, 32.926685, 22.159544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681530, 32.464912, 21.362972>,  <36.136196, 32.345448, 21.933041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681530, 32.464912, 21.362972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.728508, 32.802589, 21.572180>,  <35.756695, 33.005196, 21.697704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.728508, 32.802589, 21.572180>,  <35.681530, 32.464912, 21.362972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728508, 32.802589, 21.572180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173023, 0.501212, -0.847850,
		-0.977890, 0.190070, -0.087199,
		0.117445, 0.844191, 0.523017,
		35.763741, 33.055847, 21.729086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280289, 32.875774, 21.038149>,  <35.681530, 32.464912, 21.362972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280289, 32.875774, 21.038149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.541817, 33.118114, 21.219460>,  <35.698734, 33.263519, 21.328245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.541817, 33.118114, 21.219460>,  <35.280289, 32.875774, 21.038149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541817, 33.118114, 21.219460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110164, 0.516453, -0.849200,
		-0.748587, 0.605159, 0.270924,
		0.653820, 0.605854, 0.453277,
		35.737965, 33.299870, 21.355442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007660, 33.534595, 20.979168>,  <35.280289, 32.875774, 21.038149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007660, 33.534595, 20.979168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.399612, 33.595371, 21.030924>,  <35.634785, 33.631836, 21.061977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.399612, 33.595371, 21.030924>,  <35.007660, 33.534595, 20.979168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399612, 33.595371, 21.030924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040395, 0.483916, -0.874182,
		-0.195441, 0.861823, 0.468043,
		0.979883, 0.151944, 0.129391,
		35.693577, 33.640953, 21.069740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041405, 34.248589, 20.991951>,  <35.007660, 33.534595, 20.979168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041405, 34.248589, 20.991951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.415901, 34.138462, 20.904640>,  <35.640598, 34.072388, 20.852255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.415901, 34.138462, 20.904640>,  <35.041405, 34.248589, 20.991951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415901, 34.138462, 20.904640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112081, 0.822834, -0.557119,
		0.332990, 0.497136, 0.801233,
		0.936246, -0.275318, -0.218276,
		35.696774, 34.055866, 20.839157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322666, 34.847763, 20.834951>,  <35.041405, 34.248589, 20.991951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322666, 34.847763, 20.834951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.610069, 34.608246, 20.693424>,  <35.782513, 34.464535, 20.608507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.610069, 34.608246, 20.693424>,  <35.322666, 34.847763, 20.834951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610069, 34.608246, 20.693424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326438, 0.739532, -0.588669,
		0.614152, 0.307464, 0.726830,
		0.718509, -0.598797, -0.353817,
		35.825623, 34.428608, 20.587278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991661, 35.212402, 20.756889>,  <35.322666, 34.847763, 20.834951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991661, 35.212402, 20.756889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.038994, 34.907867, 20.501904>,  <36.067394, 34.725147, 20.348911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.038994, 34.907867, 20.501904>,  <35.991661, 35.212402, 20.756889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038994, 34.907867, 20.501904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315021, 0.637597, -0.703016,
		0.941679, -0.117622, 0.315288,
		0.118336, -0.761338, -0.637465,
		36.074493, 34.679466, 20.310663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633701, 35.288792, 20.523727>,  <35.991661, 35.212402, 20.756889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633701, 35.288792, 20.523727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.423004, 35.092167, 20.246336>,  <36.296585, 34.974190, 20.079901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.423004, 35.092167, 20.246336>,  <36.633701, 35.288792, 20.523727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423004, 35.092167, 20.246336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170486, 0.738157, -0.652731,
		0.832755, -0.462047, -0.305011,
		-0.526739, -0.491565, -0.693477,
		36.264980, 34.944698, 20.038294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320583, 34.978046, 20.403551>,  <36.633701, 35.288792, 20.523727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320583, 34.978046, 20.403551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706375, 35.081875, 20.383936>,  <37.937851, 35.144173, 20.372166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.706375, 35.081875, 20.383936>,  <37.320583, 34.978046, 20.403551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706375, 35.081875, 20.383936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209985, -0.640709, 0.738511,
		0.160277, -0.722574, -0.672456,
		0.964478, 0.259572, -0.049039,
		37.995720, 35.159748, 20.369225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751942, 34.347118, 20.205950>,  <37.320583, 34.978046, 20.403551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751942, 34.347118, 20.205950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.977215, 34.609753, 20.406633>,  <38.112381, 34.767334, 20.527042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.977215, 34.609753, 20.406633>,  <37.751942, 34.347118, 20.205950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977215, 34.609753, 20.406633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100952, -0.657275, 0.746859,
		0.820139, -0.369973, -0.436453,
		0.563187, 0.656589, 0.501708,
		38.146172, 34.806728, 20.557146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272270, 33.983204, 20.415627>,  <37.751942, 34.347118, 20.205950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272270, 33.983204, 20.415627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.272198, 34.305111, 20.653061>,  <38.272156, 34.498257, 20.795521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.272198, 34.305111, 20.653061>,  <38.272270, 33.983204, 20.415627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272198, 34.305111, 20.653061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209829, -0.580340, 0.786878,
		0.977738, 0.124693, -0.168760,
		-0.000180, 0.804771, 0.593585,
		38.272144, 34.546543, 20.831137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719746, 33.822613, 20.956057>,  <38.272270, 33.983204, 20.415627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719746, 33.822613, 20.956057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.560070, 34.149921, 21.121508>,  <38.464264, 34.346306, 21.220778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.560070, 34.149921, 21.121508>,  <38.719746, 33.822613, 20.956057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560070, 34.149921, 21.121508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059491, -0.427062, 0.902263,
		0.914939, 0.384777, 0.121796,
		-0.399185, 0.818270, 0.413626,
		38.440315, 34.395401, 21.245596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207615, 34.018791, 21.331482>,  <38.719746, 33.822613, 20.956057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207615, 34.018791, 21.331482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.851627, 34.128468, 21.477232>,  <38.638035, 34.194271, 21.564682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.851627, 34.128468, 21.477232>,  <39.207615, 34.018791, 21.331482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851627, 34.128468, 21.477232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196349, -0.490775, 0.848874,
		0.411578, 0.827019, 0.382940,
		-0.889973, 0.274187, 0.364377,
		38.584637, 34.210724, 21.586546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313496, 34.162552, 22.013435>,  <39.207615, 34.018791, 21.331482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313496, 34.162552, 22.013435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.916889, 34.112244, 22.000319>,  <38.678925, 34.082058, 21.992449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.916889, 34.112244, 22.000319>,  <39.313496, 34.162552, 22.013435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916889, 34.112244, 22.000319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020403, -0.399792, 0.916379,
		-0.128364, 0.907936, 0.398966,
		-0.991517, -0.125770, -0.032794,
		38.619434, 34.074512, 21.990480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161919, 34.364510, 22.648399>,  <39.313496, 34.162552, 22.013435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161919, 34.364510, 22.648399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.861012, 34.133190, 22.522120>,  <38.680470, 33.994396, 22.446352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.861012, 34.133190, 22.522120>,  <39.161919, 34.364510, 22.648399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861012, 34.133190, 22.522120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020424, -0.499395, 0.866134,
		-0.658545, 0.645113, 0.387488,
		-0.752264, -0.578302, -0.315698,
		38.635334, 33.959698, 22.427410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647648, 34.510166, 23.093777>,  <39.161919, 34.364510, 22.648399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647648, 34.510166, 23.093777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.581303, 34.150574, 22.931633>,  <38.541496, 33.934818, 22.834347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.581303, 34.150574, 22.931633>,  <38.647648, 34.510166, 23.093777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581303, 34.150574, 22.931633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109452, -0.391733, 0.913545,
		-0.980055, 0.195895, -0.033420,
		-0.165868, -0.898983, -0.405361,
		38.531544, 33.880878, 22.810024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253105, 34.292965, 23.603743>,  <38.647648, 34.510166, 23.093777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253105, 34.292965, 23.603743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.355820, 33.979172, 23.377947>,  <38.417450, 33.790897, 23.242470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.355820, 33.979172, 23.377947>,  <38.253105, 34.292965, 23.603743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355820, 33.979172, 23.377947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016122, -0.587469, 0.809086,
		-0.966333, -0.198663, -0.163502,
		0.256788, -0.784483, -0.564488,
		38.432858, 33.743828, 23.208601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819283, 33.724693, 23.736418>,  <38.253105, 34.292965, 23.603743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819283, 33.724693, 23.736418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.152168, 33.552654, 23.596457>,  <38.351902, 33.449432, 23.512480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.152168, 33.552654, 23.596457>,  <37.819283, 33.724693, 23.736418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152168, 33.552654, 23.596457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046431, -0.574804, 0.816973,
		-0.552496, -0.696148, -0.458395,
		0.832222, -0.430090, -0.349900,
		38.401833, 33.423626, 23.491486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650780, 33.079597, 23.816351>,  <37.819283, 33.724693, 23.736418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650780, 33.079597, 23.816351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.046932, 33.104637, 23.767006>,  <38.284626, 33.119663, 23.737398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.046932, 33.104637, 23.767006>,  <37.650780, 33.079597, 23.816351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046932, 33.104637, 23.767006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137796, -0.525367, 0.839644,
		-0.012247, -0.848570, -0.528942,
		0.990385, 0.062603, -0.123364,
		38.344048, 33.123417, 23.729998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961380, 32.437305, 24.019876>,  <37.650780, 33.079597, 23.816351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961380, 32.437305, 24.019876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.269836, 32.688683, 24.060692>,  <38.454910, 32.839508, 24.085180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.269836, 32.688683, 24.060692>,  <37.961380, 32.437305, 24.019876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269836, 32.688683, 24.060692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228476, -0.422748, 0.876974,
		0.594262, -0.652953, -0.469580,
		0.771136, 0.628440, 0.102039,
		38.501179, 32.877216, 24.091303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502831, 32.004719, 24.236420>,  <37.961380, 32.437305, 24.019876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502831, 32.004719, 24.236420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.597752, 32.381401, 24.331810>,  <38.654705, 32.607410, 24.389044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.597752, 32.381401, 24.331810>,  <38.502831, 32.004719, 24.236420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597752, 32.381401, 24.331810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193555, -0.286401, 0.938355,
		0.951957, -0.176520, -0.250237,
		0.237307, 0.941709, 0.238475,
		38.668945, 32.663914, 24.403353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133419, 32.009941, 24.620188>,  <38.502831, 32.004719, 24.236420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133419, 32.009941, 24.620188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.964905, 32.359516, 24.717134>,  <38.863796, 32.569263, 24.775303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.964905, 32.359516, 24.717134>,  <39.133419, 32.009941, 24.620188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964905, 32.359516, 24.717134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003856, -0.265509, 0.964101,
		0.906918, 0.407100, 0.108486,
		-0.421289, 0.873942, 0.242365,
		38.838516, 32.621700, 24.789845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.226246, 37.580460, 21.919733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.859283, 37.529137, 21.769049>,  <38.639107, 37.498344, 21.678638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.859283, 37.529137, 21.769049>,  <39.226246, 37.580460, 21.919733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859283, 37.529137, 21.769049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321602, 0.318533, -0.891689,
		0.234404, -0.939188, -0.250960,
		-0.917402, -0.128307, -0.376710,
		38.584064, 37.490643, 21.656036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315113, 37.195541, 21.318062>,  <39.226246, 37.580460, 21.919733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315113, 37.195541, 21.318062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.958591, 37.371769, 21.275213>,  <38.744678, 37.477505, 21.249504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.958591, 37.371769, 21.275213>,  <39.315113, 37.195541, 21.318062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958591, 37.371769, 21.275213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207221, 0.185685, -0.960511,
		-0.403282, -0.878305, -0.256797,
		-0.891304, 0.440570, -0.107120,
		38.691200, 37.503941, 21.243076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112530, 37.022251, 20.601664>,  <39.315113, 37.195541, 21.318062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112530, 37.022251, 20.601664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.885162, 37.335129, 20.703701>,  <38.748741, 37.522854, 20.764923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.885162, 37.335129, 20.703701>,  <39.112530, 37.022251, 20.601664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885162, 37.335129, 20.703701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269905, 0.470181, -0.840286,
		-0.777205, -0.408787, -0.478379,
		-0.568422, 0.782191, 0.255093,
		38.714634, 37.569786, 20.780230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779724, 37.319206, 20.004475>,  <39.112530, 37.022251, 20.601664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779724, 37.319206, 20.004475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.741821, 37.620731, 20.264563>,  <38.719078, 37.801647, 20.420614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.741821, 37.620731, 20.264563>,  <38.779724, 37.319206, 20.004475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741821, 37.620731, 20.264563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241507, 0.651052, -0.719587,
		-0.965762, 0.088848, -0.243743,
		-0.094756, 0.753815, 0.650218,
		38.713394, 37.846874, 20.459627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396236, 37.853783, 19.661346>,  <38.779724, 37.319206, 20.004475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396236, 37.853783, 19.661346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.573067, 38.036228, 19.970285>,  <38.679165, 38.145695, 20.155649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.573067, 38.036228, 19.970285>,  <38.396236, 37.853783, 19.661346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573067, 38.036228, 19.970285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289516, 0.742415, -0.604153,
		-0.848969, 0.490690, 0.196152,
		0.442078, 0.456118, 0.772349,
		38.705688, 38.173065, 20.201990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256905, 38.609726, 19.627512>,  <38.396236, 37.853783, 19.661346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256905, 38.609726, 19.627512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.589443, 38.544579, 19.840055>,  <38.788967, 38.505489, 19.967581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.589443, 38.544579, 19.840055>,  <38.256905, 38.609726, 19.627512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589443, 38.544579, 19.840055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446983, 0.764110, -0.465127,
		-0.330263, 0.624188, 0.708036,
		0.831344, -0.162866, 0.531358,
		38.838848, 38.495720, 19.999462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485794, 39.254799, 19.877951>,  <38.256905, 38.609726, 19.627512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485794, 39.254799, 19.877951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.812271, 39.025005, 19.902603>,  <39.008156, 38.887131, 19.917395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.812271, 39.025005, 19.902603>,  <38.485794, 39.254799, 19.877951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812271, 39.025005, 19.902603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505667, 0.658649, -0.557210,
		0.279514, 0.485956, 0.828082,
		0.816194, -0.574481, 0.061631,
		39.057129, 38.852661, 19.921093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034653, 39.732708, 19.899523>,  <38.485794, 39.254799, 19.877951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034653, 39.732708, 19.899523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.198936, 39.393574, 19.765364>,  <39.297508, 39.190094, 19.684868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.198936, 39.393574, 19.765364>,  <39.034653, 39.732708, 19.899523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198936, 39.393574, 19.765364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381231, 0.493843, -0.781525,
		0.828237, 0.193120, 0.526049,
		0.410714, -0.847835, -0.335396,
		39.322151, 39.139225, 19.664745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728302, 39.906467, 19.733232>,  <39.034653, 39.732708, 19.899523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728302, 39.906467, 19.733232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.667156, 39.574295, 19.518940>,  <39.630470, 39.374992, 19.390364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.667156, 39.574295, 19.518940>,  <39.728302, 39.906467, 19.733232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667156, 39.574295, 19.518940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465904, 0.417521, -0.780135,
		0.871531, -0.368856, 0.323079,
		-0.152865, -0.830435, -0.535733,
		39.621296, 39.325165, 19.358219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276974, 39.902679, 19.389124>,  <39.728302, 39.906467, 19.733232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276974, 39.902679, 19.389124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.060165, 39.639652, 19.179815>,  <39.930080, 39.481834, 19.054230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.060165, 39.639652, 19.179815>,  <40.276974, 39.902679, 19.389124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060165, 39.639652, 19.179815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431044, 0.316983, -0.844821,
		0.721400, -0.683462, 0.111633,
		-0.542017, -0.657573, -0.523274,
		39.897560, 39.442379, 19.022833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709019, 39.560337, 18.984415>,  <40.276974, 39.902679, 19.389124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709019, 39.560337, 18.984415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.360130, 39.518375, 18.793324>,  <40.150799, 39.493198, 18.678669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.360130, 39.518375, 18.793324>,  <40.709019, 39.560337, 18.984415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360130, 39.518375, 18.793324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411788, 0.369552, -0.832984,
		0.263929, -0.923270, -0.279133,
		-0.872222, -0.104905, -0.477727,
		40.098465, 39.486904, 18.650005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783054, 39.136078, 18.307306>,  <40.709019, 39.560337, 18.984415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783054, 39.136078, 18.307306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.468830, 39.383587, 18.309082>,  <40.280296, 39.532093, 18.310148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.468830, 39.383587, 18.309082>,  <40.783054, 39.136078, 18.307306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468830, 39.383587, 18.309082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292100, 0.377143, -0.878886,
		-0.545501, -0.689122, -0.477011,
		-0.785561, 0.618768, 0.004440,
		40.233162, 39.569218, 18.310413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267014, 38.971123, 17.772438>,  <40.783054, 39.136078, 18.307306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267014, 38.971123, 17.772438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.247971, 39.361748, 17.856398>,  <40.236546, 39.596123, 17.906773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.247971, 39.361748, 17.856398>,  <40.267014, 38.971123, 17.772438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247971, 39.361748, 17.856398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259454, 0.215011, -0.941517,
		-0.964581, 0.009640, -0.263609,
		-0.047603, 0.976564, 0.209897,
		40.233688, 39.654716, 17.919367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130146, 39.188259, 17.234125>,  <40.267014, 38.971123, 17.772438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130146, 39.188259, 17.234125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.244892, 39.523899, 17.419003>,  <40.313740, 39.725285, 17.529928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.244892, 39.523899, 17.419003>,  <40.130146, 39.188259, 17.234125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244892, 39.523899, 17.419003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308148, 0.376003, -0.873880,
		-0.907058, 0.393108, -0.150705,
		0.286864, 0.839099, 0.462192,
		40.330952, 39.775627, 17.557661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783775, 39.086998, 16.545401>,  <40.130146, 39.188259, 17.234125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783775, 39.086998, 16.545401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.696117, 38.820072, 16.260677>,  <39.643524, 38.659916, 16.089844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.696117, 38.820072, 16.260677>,  <39.783775, 39.086998, 16.545401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696117, 38.820072, 16.260677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388162, -0.609697, 0.691085,
		-0.895157, 0.427745, -0.125412,
		-0.219145, -0.667310, -0.711809,
		39.630375, 38.619881, 16.047134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049129, 38.789043, 16.661953>,  <39.783775, 39.086998, 16.545401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049129, 38.789043, 16.661953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.252422, 38.509258, 16.460972>,  <39.374397, 38.341389, 16.340384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.252422, 38.509258, 16.460972>,  <39.049129, 38.789043, 16.661953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252422, 38.509258, 16.460972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314793, -0.693922, 0.647593,
		-0.801628, -0.170958, -0.572857,
		0.508230, -0.699461, -0.502451,
		39.404892, 38.299419, 16.310236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626835, 38.245972, 16.657988>,  <39.049129, 38.789043, 16.661953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626835, 38.245972, 16.657988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.968430, 38.050400, 16.586823>,  <39.173386, 37.933056, 16.544123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.968430, 38.050400, 16.586823>,  <38.626835, 38.245972, 16.657988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968430, 38.050400, 16.586823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275347, -0.714834, 0.642803,
		-0.441465, -0.499958, -0.745085,
		0.853987, -0.488932, -0.177913,
		39.224625, 37.903721, 16.533449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371304, 37.602036, 16.689651>,  <38.626835, 38.245972, 16.657988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371304, 37.602036, 16.689651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.765705, 37.538208, 16.708958>,  <39.002346, 37.499912, 16.720541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.765705, 37.538208, 16.708958>,  <38.371304, 37.602036, 16.689651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765705, 37.538208, 16.708958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144684, -0.675293, 0.723219,
		-0.082808, -0.720082, -0.688930,
		0.986007, -0.159565, 0.048265,
		39.061508, 37.490337, 16.723436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418179, 36.875191, 16.774839>,  <38.371304, 37.602036, 16.689651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418179, 36.875191, 16.774839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770302, 37.019436, 16.898144>,  <38.981575, 37.105984, 16.972126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.770302, 37.019436, 16.898144>,  <38.418179, 36.875191, 16.774839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770302, 37.019436, 16.898144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058907, -0.727840, 0.683212,
		0.470738, -0.583275, -0.661963,
		0.880304, 0.360608, 0.308263,
		39.034393, 37.127617, 16.990623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776833, 36.305565, 16.857735>,  <38.418179, 36.875191, 16.774839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776833, 36.305565, 16.857735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.962738, 36.575417, 17.087120>,  <39.074284, 36.737328, 17.224752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.962738, 36.575417, 17.087120>,  <38.776833, 36.305565, 16.857735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962738, 36.575417, 17.087120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021540, -0.656089, 0.754376,
		0.885170, -0.338257, -0.319461,
		0.464768, 0.674632, 0.573465,
		39.102169, 36.777805, 17.259159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340816, 35.974453, 17.235531>,  <38.776833, 36.305565, 16.857735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340816, 35.974453, 17.235531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.286091, 36.306404, 17.451893>,  <39.253254, 36.505577, 17.581711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.286091, 36.306404, 17.451893>,  <39.340816, 35.974453, 17.235531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286091, 36.306404, 17.451893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171256, -0.557635, 0.812228,
		0.975681, 0.018491, 0.218414,
		-0.136814, 0.829880, 0.540907,
		39.245049, 36.555367, 17.614164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612797, 35.826241, 17.804365>,  <39.340816, 35.974453, 17.235531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612797, 35.826241, 17.804365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.348206, 36.115124, 17.885227>,  <39.189453, 36.288452, 17.933744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.348206, 36.115124, 17.885227>,  <39.612797, 35.826241, 17.804365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348206, 36.115124, 17.885227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229873, -0.451820, 0.861985,
		0.713869, 0.523712, 0.464883,
		-0.661475, 0.722209, 0.202153,
		39.149761, 36.331787, 17.945873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814461, 35.971069, 18.423031>,  <39.612797, 35.826241, 17.804365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814461, 35.971069, 18.423031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.442181, 36.110725, 18.379396>,  <39.218811, 36.194519, 18.353216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.442181, 36.110725, 18.379396>,  <39.814461, 35.971069, 18.423031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442181, 36.110725, 18.379396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298700, -0.553301, 0.777584,
		0.211127, 0.756281, 0.619245,
		-0.930701, 0.349137, -0.109084,
		39.162971, 36.215466, 18.346672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555794, 36.423649, 19.016867>,  <39.814461, 35.971069, 18.423031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555794, 36.423649, 19.016867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.222687, 36.279442, 18.848810>,  <39.022823, 36.192917, 18.747976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.222687, 36.279442, 18.848810>,  <39.555794, 36.423649, 19.016867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222687, 36.279442, 18.848810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271679, -0.395112, 0.877540,
		-0.482373, 0.844934, 0.231093,
		-0.832771, -0.360518, -0.420142,
		38.972855, 36.171288, 18.722767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111439, 36.549477, 19.506800>,  <39.555794, 36.423649, 19.016867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111439, 36.549477, 19.506800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.899845, 36.286621, 19.292007>,  <38.772888, 36.128906, 19.163132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.899845, 36.286621, 19.292007>,  <39.111439, 36.549477, 19.506800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899845, 36.286621, 19.292007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272038, -0.468063, 0.840781,
		-0.803851, 0.590835, 0.068830,
		-0.528980, -0.657138, -0.536982,
		38.741150, 36.089481, 19.130913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402359, 36.644405, 19.698433>,  <39.111439, 36.549477, 19.506800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402359, 36.644405, 19.698433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.439266, 36.272125, 19.556849>,  <38.461411, 36.048759, 19.471897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.439266, 36.272125, 19.556849>,  <38.402359, 36.644405, 19.698433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439266, 36.272125, 19.556849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335827, -0.363737, 0.868859,
		-0.937394, 0.038705, -0.346113,
		0.092265, -0.930697, -0.353963,
		38.466946, 35.992916, 19.450659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959923, 36.358948, 20.094475>,  <38.402359, 36.644405, 19.698433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959923, 36.358948, 20.094475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108414, 36.035870, 19.911251>,  <38.197510, 35.842022, 19.801315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108414, 36.035870, 19.911251>,  <37.959923, 36.358948, 20.094475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108414, 36.035870, 19.911251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285196, -0.568648, 0.771559,
		-0.883659, -0.155786, -0.441448,
		0.371227, -0.807694, -0.458062,
		38.219780, 35.793560, 19.773832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392929, 35.793903, 20.033234>,  <37.959923, 36.358948, 20.094475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392929, 35.793903, 20.033234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.771355, 35.664879, 20.045364>,  <37.998409, 35.587463, 20.052643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.771355, 35.664879, 20.045364>,  <37.392929, 35.793903, 20.033234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771355, 35.664879, 20.045364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229046, -0.599705, 0.766741,
		-0.229133, -0.732332, -0.641239,
		0.946064, -0.322559, 0.030326,
		38.055172, 35.568111, 20.054462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090813, 35.131790, 19.743074>,  <37.392929, 35.793903, 20.033234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090813, 35.131790, 19.743074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.701527, 35.070435, 19.674574>,  <36.467957, 35.033619, 19.633474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.701527, 35.070435, 19.674574>,  <37.090813, 35.131790, 19.743074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701527, 35.070435, 19.674574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098225, 0.396048, -0.912961,
		0.207863, -0.905327, -0.370372,
		-0.973214, -0.153391, -0.171249,
		36.409561, 35.024418, 19.623199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091484, 34.902416, 19.099728>,  <37.090813, 35.131790, 19.743074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091484, 34.902416, 19.099728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.720501, 35.035538, 19.167915>,  <36.497910, 35.115410, 19.208828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.720501, 35.035538, 19.167915>,  <37.091484, 34.902416, 19.099728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720501, 35.035538, 19.167915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014454, 0.487463, -0.873024,
		-0.373640, -0.807232, -0.456913,
		-0.927461, 0.332801, 0.170468,
		36.442261, 35.135380, 19.219055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660709, 34.755047, 18.489788>,  <37.091484, 34.902416, 19.099728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660709, 34.755047, 18.489788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423332, 35.020512, 18.671946>,  <36.280907, 35.179790, 18.781240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423332, 35.020512, 18.671946>,  <36.660709, 34.755047, 18.489788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423332, 35.020512, 18.671946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058035, 0.529036, -0.846613,
		-0.802783, -0.528843, -0.275436,
		-0.593440, 0.663662, 0.455392,
		36.245300, 35.219608, 18.808563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113533, 34.858040, 18.064562>,  <36.660709, 34.755047, 18.489788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113533, 34.858040, 18.064562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125355, 35.191532, 18.285112>,  <36.132446, 35.391628, 18.417442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125355, 35.191532, 18.285112>,  <36.113533, 34.858040, 18.064562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125355, 35.191532, 18.285112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069445, 0.551997, -0.830950,
		-0.997148, -0.013736, 0.074210,
		0.029550, 0.833733, 0.551376,
		36.134220, 35.441650, 18.450525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531223, 35.335800, 17.784380>,  <36.113533, 34.858040, 18.064562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531223, 35.335800, 17.784380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.779903, 35.598705, 17.954790>,  <35.929111, 35.756447, 18.057035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.779903, 35.598705, 17.954790>,  <35.531223, 35.335800, 17.784380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779903, 35.598705, 17.954790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174136, 0.646288, -0.742960,
		-0.763652, 0.387712, 0.516250,
		0.621701, 0.657261, 0.426024,
		35.966415, 35.795883, 18.082598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093174, 35.949226, 17.799795>,  <35.531223, 35.335800, 17.784380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093174, 35.949226, 17.799795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.476543, 36.053654, 17.845873>,  <35.706566, 36.116310, 17.873520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.476543, 36.053654, 17.845873>,  <35.093174, 35.949226, 17.799795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476543, 36.053654, 17.845873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102408, 0.691480, -0.715100,
		-0.266344, 0.673571, 0.689466,
		0.958422, 0.261070, 0.115192,
		35.764069, 36.131973, 17.880430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102985, 36.684315, 17.628283>,  <35.093174, 35.949226, 17.799795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102985, 36.684315, 17.628283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.472431, 36.544975, 17.564285>,  <35.694099, 36.461372, 17.525887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.472431, 36.544975, 17.564285>,  <35.102985, 36.684315, 17.628283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472431, 36.544975, 17.564285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089073, 0.600985, -0.794282,
		0.372838, 0.719356, 0.586105,
		0.923611, -0.348344, -0.159994,
		35.749516, 36.440472, 17.516287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405605, 36.998947, 17.394205>,  <35.102985, 36.684315, 17.628283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405605, 36.998947, 17.394205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230717, 36.868530, 17.058935>,  <34.125782, 36.790279, 16.857773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230717, 36.868530, 17.058935>,  <34.405605, 36.998947, 17.394205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230717, 36.868530, 17.058935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516772, -0.671680, 0.530842,
		-0.736059, 0.665241, 0.125187,
		-0.437223, -0.326038, -0.838174,
		34.099548, 36.770718, 16.807484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846672, 36.797832, 17.669518>,  <34.405605, 36.998947, 17.394205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846672, 36.797832, 17.669518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.837418, 36.609371, 17.316818>,  <33.831867, 36.496296, 17.105198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.837418, 36.609371, 17.316818>,  <33.846672, 36.797832, 17.669518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837418, 36.609371, 17.316818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452212, -0.781666, 0.429536,
		-0.891610, 0.408674, -0.194979,
		-0.023132, -0.471151, -0.881749,
		33.830479, 36.468025, 17.052294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171703, 36.726013, 17.418472>,  <33.846672, 36.797832, 17.669518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171703, 36.726013, 17.418472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.387676, 36.450191, 17.225395>,  <33.517262, 36.284698, 17.109549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.387676, 36.450191, 17.225395>,  <33.171703, 36.726013, 17.418472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387676, 36.450191, 17.225395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515818, -0.724235, 0.457619,
		-0.665134, 0.001897, -0.746722,
		0.539934, -0.689550, -0.482692,
		33.549656, 36.243328, 17.080587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692032, 36.218166, 17.298685>,  <33.171703, 36.726013, 17.418472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692032, 36.218166, 17.298685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.034737, 36.013042, 17.276814>,  <33.240360, 35.889969, 17.263691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.034737, 36.013042, 17.276814>,  <32.692032, 36.218166, 17.298685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034737, 36.013042, 17.276814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441134, -0.783646, 0.437379,
		-0.267139, -0.350609, -0.897614,
		0.856760, -0.512809, -0.054677,
		33.291763, 35.859200, 17.260410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406963, 35.517769, 17.144531>,  <32.692032, 36.218166, 17.298685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406963, 35.517769, 17.144531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.774929, 35.525799, 17.301174>,  <32.995708, 35.530617, 17.395159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.774929, 35.525799, 17.301174>,  <32.406963, 35.517769, 17.144531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774929, 35.525799, 17.301174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302247, -0.599943, 0.740753,
		0.249810, -0.799791, -0.545829,
		0.919914, 0.020072, 0.391606,
		33.050903, 35.531822, 17.418655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402290, 34.899837, 17.527626>,  <32.406963, 35.517769, 17.144531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402290, 34.899837, 17.527626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.686409, 35.126221, 17.695038>,  <32.856880, 35.262051, 17.795485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.686409, 35.126221, 17.695038>,  <32.402290, 34.899837, 17.527626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686409, 35.126221, 17.695038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176397, -0.432496, 0.884212,
		0.681443, -0.701879, -0.207366,
		0.710295, 0.565962, 0.418531,
		32.899498, 35.296009, 17.820597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688854, 34.426884, 17.926281>,  <32.402290, 34.899837, 17.527626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688854, 34.426884, 17.926281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826283, 34.774464, 18.068762>,  <32.908741, 34.983013, 18.154251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826283, 34.774464, 18.068762>,  <32.688854, 34.426884, 17.926281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826283, 34.774464, 18.068762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166164, -0.317061, 0.933735,
		0.924308, -0.379996, 0.035454,
		0.343575, 0.868951, 0.356203,
		32.929356, 35.035149, 18.175623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.220737, 41.383209, 17.771255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.452068, 41.082985, 17.899130>,  <37.590866, 40.902851, 17.975855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.452068, 41.082985, 17.899130>,  <37.220737, 41.383209, 17.771255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452068, 41.082985, 17.899130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712567, -0.273943, 0.645913,
		-0.397220, -0.601346, -0.693252,
		0.578329, -0.750558, 0.319684,
		37.625568, 40.857819, 17.995035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824547, 40.748909, 17.661627>,  <37.220737, 41.383209, 17.771255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824547, 40.748909, 17.661627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.096500, 40.620716, 17.925461>,  <37.259674, 40.543800, 18.083761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.096500, 40.620716, 17.925461>,  <36.824547, 40.748909, 17.661627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096500, 40.620716, 17.925461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731846, -0.353529, 0.582597,
		0.046471, -0.878811, -0.474901,
		0.679884, -0.320480, 0.659584,
		37.300465, 40.524570, 18.123337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544106, 40.228172, 17.969820>,  <36.824547, 40.748909, 17.661627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544106, 40.228172, 17.969820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.849331, 40.269047, 18.225098>,  <37.032467, 40.293571, 18.378263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.849331, 40.269047, 18.225098>,  <36.544106, 40.228172, 17.969820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849331, 40.269047, 18.225098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541282, -0.438560, 0.717411,
		0.353194, -0.892874, -0.279339,
		0.763065, 0.102184, 0.638193,
		37.078251, 40.299702, 18.416555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699600, 39.590710, 18.388483>,  <36.544106, 40.228172, 17.969820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699600, 39.590710, 18.388483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.853230, 39.895840, 18.596556>,  <36.945408, 40.078918, 18.721399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.853230, 39.895840, 18.596556>,  <36.699600, 39.590710, 18.388483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853230, 39.895840, 18.596556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464722, -0.327113, 0.822819,
		0.797821, -0.557765, 0.228863,
		0.384076, 0.762820, 0.520183,
		36.968452, 40.124687, 18.752611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006290, 39.303806, 19.027967>,  <36.699600, 39.590710, 18.388483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006290, 39.303806, 19.027967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.942966, 39.688126, 19.119007>,  <36.904972, 39.918716, 19.173630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.942966, 39.688126, 19.119007>,  <37.006290, 39.303806, 19.027967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942966, 39.688126, 19.119007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212829, -0.258291, 0.942332,
		0.964179, 0.100743, 0.245377,
		-0.158312, 0.960800, 0.227598,
		36.895473, 39.976364, 19.187286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121605, 39.366928, 19.754353>,  <37.006290, 39.303806, 19.027967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121605, 39.366928, 19.754353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.946075, 39.716686, 19.671530>,  <36.840759, 39.926540, 19.621836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.946075, 39.716686, 19.671530>,  <37.121605, 39.366928, 19.754353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946075, 39.716686, 19.671530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467381, -0.025302, 0.883694,
		0.767455, 0.484561, 0.419777,
		-0.438825, 0.874391, -0.207057,
		36.814426, 39.979004, 19.609413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235378, 39.931469, 20.266857>,  <37.121605, 39.366928, 19.754353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235378, 39.931469, 20.266857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.886555, 40.033855, 20.100008>,  <36.677261, 40.095287, 19.999899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.886555, 40.033855, 20.100008>,  <37.235378, 39.931469, 20.266857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886555, 40.033855, 20.100008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430797, 0.002933, 0.902444,
		0.232218, 0.966682, 0.107711,
		-0.872060, 0.255965, -0.417124,
		36.624935, 40.110645, 19.974871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915245, 40.299335, 20.857492>,  <37.235378, 39.931469, 20.266857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915245, 40.299335, 20.857492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.610100, 40.234360, 20.607164>,  <36.427013, 40.195374, 20.456968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.610100, 40.234360, 20.607164>,  <36.915245, 40.299335, 20.857492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610100, 40.234360, 20.607164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572852, -0.278997, 0.770715,
		-0.299798, 0.946453, 0.119781,
		-0.762864, -0.162442, -0.625820,
		36.381241, 40.185627, 20.419418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287491, 40.523075, 21.221249>,  <36.915245, 40.299335, 20.857492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287491, 40.523075, 21.221249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.117905, 40.313244, 20.925934>,  <36.016155, 40.187344, 20.748745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.117905, 40.313244, 20.925934>,  <36.287491, 40.523075, 21.221249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117905, 40.313244, 20.925934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772801, -0.215537, 0.596928,
		-0.472266, 0.823625, -0.314018,
		-0.423962, -0.524582, -0.738289,
		35.990715, 40.155869, 20.704447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590858, 40.709045, 21.192190>,  <36.287491, 40.523075, 21.221249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590858, 40.709045, 21.192190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.622910, 40.332382, 21.061432>,  <35.642139, 40.106384, 20.982977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.622910, 40.332382, 21.061432>,  <35.590858, 40.709045, 21.192190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622910, 40.332382, 21.061432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613596, -0.305045, 0.728318,
		-0.785545, 0.142225, -0.602239,
		0.080126, -0.941658, -0.326895,
		35.646946, 40.049885, 20.963364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867935, 40.331833, 21.252823>,  <35.590858, 40.709045, 21.192190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867935, 40.331833, 21.252823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.127216, 40.031021, 21.205025>,  <35.282784, 39.850533, 21.176346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.127216, 40.031021, 21.205025>,  <34.867935, 40.331833, 21.252823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127216, 40.031021, 21.205025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489296, -0.531598, 0.691370,
		-0.583461, -0.389675, -0.712550,
		0.648200, -0.752035, -0.119500,
		35.321678, 39.805412, 21.169176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442108, 39.819004, 21.268545>,  <34.867935, 40.331833, 21.252823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442108, 39.819004, 21.268545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.802071, 39.681850, 21.376322>,  <35.018047, 39.599560, 21.440987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.802071, 39.681850, 21.376322>,  <34.442108, 39.819004, 21.268545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802071, 39.681850, 21.376322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435794, -0.684626, 0.584269,
		-0.015871, -0.643208, -0.765527,
		0.899907, -0.342885, 0.269440,
		35.072044, 39.578983, 21.457153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578655, 39.506340, 20.569113>,  <34.442108, 39.819004, 21.268545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578655, 39.506340, 20.569113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.281662, 39.285168, 20.417858>,  <34.103466, 39.152466, 20.327106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.281662, 39.285168, 20.417858>,  <34.578655, 39.506340, 20.569113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281662, 39.285168, 20.417858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122791, 0.442588, -0.888278,
		0.658511, -0.705966, -0.260721,
		-0.742486, -0.552927, -0.378135,
		34.058914, 39.119289, 20.304417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840469, 39.422398, 19.836014>,  <34.578655, 39.506340, 20.569113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840469, 39.422398, 19.836014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.456615, 39.318386, 19.878901>,  <34.226303, 39.255981, 19.904633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.456615, 39.318386, 19.878901>,  <34.840469, 39.422398, 19.836014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456615, 39.318386, 19.878901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175704, 0.256551, -0.950426,
		0.219626, -0.930897, -0.291881,
		-0.959632, -0.260023, 0.107218,
		34.168728, 39.240379, 19.911066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684525, 38.966003, 19.335346>,  <34.840469, 39.422398, 19.836014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684525, 38.966003, 19.335346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.353123, 39.154839, 19.455820>,  <34.154282, 39.268139, 19.528105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.353123, 39.154839, 19.455820>,  <34.684525, 38.966003, 19.335346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353123, 39.154839, 19.455820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192375, 0.265163, -0.944817,
		-0.525899, -0.840727, -0.128871,
		-0.828506, 0.472087, 0.301184,
		34.104572, 39.296463, 19.546175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141193, 38.691399, 18.863796>,  <34.684525, 38.966003, 19.335346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141193, 38.691399, 18.863796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.021301, 39.042568, 19.013145>,  <33.949368, 39.253269, 19.102755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.021301, 39.042568, 19.013145>,  <34.141193, 38.691399, 18.863796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021301, 39.042568, 19.013145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247908, 0.306247, -0.919105,
		-0.921252, -0.368042, 0.125854,
		-0.299727, 0.877928, 0.373372,
		33.931385, 39.305946, 19.125156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474556, 38.862152, 18.514460>,  <34.141193, 38.691399, 18.863796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474556, 38.862152, 18.514460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.560997, 39.226170, 18.655951>,  <33.612862, 39.444580, 18.740845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.560997, 39.226170, 18.655951>,  <33.474556, 38.862152, 18.514460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560997, 39.226170, 18.655951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387093, 0.412457, -0.824644,
		-0.896357, 0.041286, 0.441406,
		0.216107, 0.910041, 0.353727,
		33.625828, 39.499184, 18.762068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987026, 39.240677, 18.227468>,  <33.474556, 38.862152, 18.514460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987026, 39.240677, 18.227468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.259190, 39.515690, 18.328934>,  <33.422489, 39.680698, 18.389812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.259190, 39.515690, 18.328934>,  <32.987026, 39.240677, 18.227468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259190, 39.515690, 18.328934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259971, 0.550083, -0.793615,
		-0.685168, 0.474040, 0.553020,
		0.680412, 0.687528, 0.253662,
		33.463314, 39.721947, 18.405033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597042, 39.839298, 18.162367>,  <32.987026, 39.240677, 18.227468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597042, 39.839298, 18.162367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.979065, 39.957401, 18.172913>,  <33.208279, 40.028263, 18.179239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.979065, 39.957401, 18.172913>,  <32.597042, 39.839298, 18.162367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979065, 39.957401, 18.172913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142036, 0.533862, -0.833557,
		-0.260188, 0.792347, 0.551804,
		0.955054, 0.295257, 0.026362,
		33.265583, 40.045979, 18.180820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530281, 40.516975, 17.949497>,  <32.597042, 39.839298, 18.162367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530281, 40.516975, 17.949497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.908680, 40.399937, 17.893671>,  <33.135719, 40.329716, 17.860176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.908680, 40.399937, 17.893671>,  <32.530281, 40.516975, 17.949497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908680, 40.399937, 17.893671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040069, 0.321689, -0.945997,
		0.321689, 0.900503, 0.292593,
		0.945997, -0.292593, -0.139566,
		33.192478, 40.312160, 17.851801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856224, 41.013790, 17.630743>,  <32.530281, 40.516975, 17.949497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856224, 41.013790, 17.630743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.111851, 40.714893, 17.557838>,  <33.265224, 40.535553, 17.514095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.111851, 40.714893, 17.557838>,  <32.856224, 41.013790, 17.630743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111851, 40.714893, 17.557838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031508, 0.262199, -0.964499,
		0.768507, 0.610635, 0.191106,
		0.639065, -0.747246, -0.182262,
		33.303570, 40.490719, 17.503160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322044, 41.268642, 17.008875>,  <32.856224, 41.013790, 17.630743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322044, 41.268642, 17.008875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.433079, 40.884640, 16.994278>,  <33.499699, 40.654240, 16.985519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.433079, 40.884640, 16.994278>,  <33.322044, 41.268642, 17.008875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433079, 40.884640, 16.994278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278727, 0.116828, -0.953238,
		0.919378, 0.254436, 0.300010,
		0.277588, -0.960007, -0.036491,
		33.516354, 40.596638, 16.983332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058414, 41.189262, 16.829750>,  <33.322044, 41.268642, 17.008875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058414, 41.189262, 16.829750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.887817, 40.848839, 16.707239>,  <33.785458, 40.644585, 16.633732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.887817, 40.848839, 16.707239>,  <34.058414, 41.189262, 16.829750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887817, 40.848839, 16.707239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198939, 0.242063, -0.949646,
		0.882341, -0.465950, 0.066070,
		-0.426495, -0.851056, -0.306278,
		33.759869, 40.593521, 16.615356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491474, 40.865429, 16.326157>,  <34.058414, 41.189262, 16.829750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491474, 40.865429, 16.326157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.126282, 40.718426, 16.255276>,  <33.907166, 40.630222, 16.212748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.126282, 40.718426, 16.255276>,  <34.491474, 40.865429, 16.326157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126282, 40.718426, 16.255276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140609, 0.124301, -0.982231,
		0.383008, -0.921675, -0.061809,
		-0.912981, -0.367511, -0.177204,
		33.852386, 40.608173, 16.202114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565250, 40.486828, 15.717951>,  <34.491474, 40.865429, 16.326157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565250, 40.486828, 15.717951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.175903, 40.563377, 15.768432>,  <33.942295, 40.609306, 15.798720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.175903, 40.563377, 15.768432>,  <34.565250, 40.486828, 15.717951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175903, 40.563377, 15.768432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068070, 0.284408, -0.956284,
		-0.218902, -0.939408, -0.263807,
		-0.973369, 0.191375, 0.126203,
		33.883892, 40.620789, 15.806293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149475, 39.852837, 16.097569>,  <34.565250, 40.486828, 15.717951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149475, 39.852837, 16.097569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.425056, 39.698742, 15.851989>,  <34.590405, 39.606285, 15.704641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.425056, 39.698742, 15.851989>,  <34.149475, 39.852837, 16.097569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425056, 39.698742, 15.851989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254800, -0.921718, 0.292426,
		-0.678541, -0.045035, -0.733181,
		0.688955, -0.385237, -0.613949,
		34.631744, 39.583172, 15.667804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852951, 39.468140, 15.688156>,  <34.149475, 39.852837, 16.097569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852951, 39.468140, 15.688156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.226540, 39.326633, 15.667974>,  <34.450695, 39.241730, 15.655866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.226540, 39.326633, 15.667974>,  <33.852951, 39.468140, 15.688156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226540, 39.326633, 15.667974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318707, -0.888508, 0.330122,
		-0.161614, -0.292245, -0.942589,
		0.933974, -0.353761, -0.050455,
		34.506733, 39.220505, 15.652838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793911, 38.896793, 15.240873>,  <33.852951, 39.468140, 15.688156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793911, 38.896793, 15.240873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.135765, 38.868076, 15.446572>,  <34.340878, 38.850845, 15.569992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.135765, 38.868076, 15.446572>,  <33.793911, 38.896793, 15.240873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135765, 38.868076, 15.446572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197798, -0.960733, 0.194598,
		0.480084, -0.268026, -0.835273,
		0.854632, -0.071792, 0.514248,
		34.392155, 38.846539, 15.600846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187180, 38.272152, 14.975061>,  <33.793911, 38.896793, 15.240873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187180, 38.272152, 14.975061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.304024, 38.323814, 15.354111>,  <34.374130, 38.354813, 15.581540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.304024, 38.323814, 15.354111>,  <34.187180, 38.272152, 14.975061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304024, 38.323814, 15.354111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183844, -0.964777, 0.188168,
		0.938547, -0.229181, -0.258079,
		0.292114, 0.129158, 0.947622,
		34.391659, 38.362560, 15.638397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441204, 37.603321, 15.141547>,  <34.187180, 38.272152, 14.975061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441204, 37.603321, 15.141547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.422279, 37.774624, 15.502515>,  <34.410927, 37.877403, 15.719095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.422279, 37.774624, 15.502515>,  <34.441204, 37.603321, 15.141547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422279, 37.774624, 15.502515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066229, -0.902787, 0.424957,
		0.996682, -0.039662, 0.071073,
		-0.047309, 0.428255, 0.902419,
		34.408085, 37.903099, 15.773240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039162, 37.299160, 15.591598>,  <34.441204, 37.603321, 15.141547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039162, 37.299160, 15.591598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.743595, 37.460625, 15.807400>,  <34.566257, 37.557503, 15.936881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.743595, 37.460625, 15.807400>,  <35.039162, 37.299160, 15.591598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743595, 37.460625, 15.807400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092413, -0.853838, 0.512270,
		0.667432, 0.328666, 0.668216,
		-0.738914, 0.403658, 0.539505,
		34.521919, 37.581722, 15.969252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161652, 37.017139, 16.190783>,  <35.039162, 37.299160, 15.591598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161652, 37.017139, 16.190783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.789783, 37.159901, 16.227301>,  <34.566662, 37.245556, 16.249210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.789783, 37.159901, 16.227301>,  <35.161652, 37.017139, 16.190783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789783, 37.159901, 16.227301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271805, -0.831800, 0.483974,
		0.248670, 0.425122, 0.870307,
		-0.929669, 0.356904, 0.091293,
		34.510883, 37.266972, 16.254688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956844, 36.963310, 16.899174>,  <35.161652, 37.017139, 16.190783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956844, 36.963310, 16.899174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.636059, 36.953121, 16.660442>,  <34.443588, 36.947010, 16.517204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.636059, 36.953121, 16.660442>,  <34.956844, 36.963310, 16.899174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636059, 36.953121, 16.660442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329949, -0.813978, 0.478094,
		-0.497981, 0.580337, 0.644379,
		-0.801966, -0.025470, -0.596827,
		34.395470, 36.945480, 16.481394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535664, 37.304417, 17.324570>,  <34.956844, 36.963310, 16.899174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535664, 37.304417, 17.324570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.806698, 37.011650, 17.295815>,  <35.969318, 36.835991, 17.278561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.806698, 37.011650, 17.295815>,  <35.535664, 37.304417, 17.324570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806698, 37.011650, 17.295815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489917, 0.522118, -0.698122,
		0.548505, 0.437818, 0.712361,
		0.677586, -0.731921, -0.071889,
		36.009975, 36.792072, 17.274248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272156, 37.579048, 17.409384>,  <35.535664, 37.304417, 17.324570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272156, 37.579048, 17.409384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.285980, 37.261780, 17.166176>,  <36.294277, 37.071419, 17.020250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.285980, 37.261780, 17.166176>,  <36.272156, 37.579048, 17.409384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285980, 37.261780, 17.166176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570541, 0.515163, -0.639602,
		0.820541, -0.324794, 0.470341,
		0.034563, -0.793168, -0.608021,
		36.296349, 37.023830, 16.983770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741070, 37.763729, 16.971069>,  <36.272156, 37.579048, 17.409384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741070, 37.763729, 16.971069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.641861, 37.418659, 16.794762>,  <36.582336, 37.211617, 16.688978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.641861, 37.418659, 16.794762>,  <36.741070, 37.763729, 16.971069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641861, 37.418659, 16.794762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513745, 0.268608, -0.814810,
		0.821310, -0.428534, 0.376574,
		-0.248023, -0.862675, -0.440768,
		36.567455, 37.159855, 16.662531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267532, 37.420273, 16.803232>,  <36.741070, 37.763729, 16.971069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267532, 37.420273, 16.803232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.981491, 37.307320, 16.547457>,  <36.809864, 37.239548, 16.393991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.981491, 37.307320, 16.547457>,  <37.267532, 37.420273, 16.803232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981491, 37.307320, 16.547457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589700, 0.247477, -0.768771,
		0.375337, -0.926829, -0.010448,
		-0.715105, -0.282387, -0.639439,
		36.766960, 37.222603, 16.355625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607731, 37.204052, 16.183022>,  <37.267532, 37.420273, 16.803232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607731, 37.204052, 16.183022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.230370, 37.274998, 16.070923>,  <37.003952, 37.317566, 16.003664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.230370, 37.274998, 16.070923>,  <37.607731, 37.204052, 16.183022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230370, 37.274998, 16.070923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330272, 0.425236, -0.842671,
		-0.030288, -0.887534, -0.459746,
		-0.943400, 0.177364, -0.280247,
		36.947350, 37.328205, 15.986849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696392, 37.158142, 15.525081>,  <37.607731, 37.204052, 16.183022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696392, 37.158142, 15.525081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.337986, 37.329021, 15.573501>,  <37.122940, 37.431549, 15.602552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.337986, 37.329021, 15.573501>,  <37.696392, 37.158142, 15.525081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337986, 37.329021, 15.573501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076294, 0.416701, -0.905836,
		-0.437412, -0.802411, -0.405965,
		-0.896019, 0.427196, 0.121050,
		37.069180, 37.457180, 15.609816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343918, 37.072365, 14.891082>,  <37.696392, 37.158142, 15.525081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343918, 37.072365, 14.891082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.177586, 37.388870, 15.070410>,  <37.077785, 37.578773, 15.178007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.177586, 37.388870, 15.070410>,  <37.343918, 37.072365, 14.891082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177586, 37.388870, 15.070410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091408, 0.526829, -0.845042,
		-0.904837, -0.310414, -0.291399,
		-0.415830, 0.791261, 0.448320,
		37.052837, 37.626247, 15.204906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957523, 37.455860, 14.328541>,  <37.343918, 37.072365, 14.891082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957523, 37.455860, 14.328541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.969090, 37.710228, 14.637026>,  <36.976028, 37.862850, 14.822117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.969090, 37.710228, 14.637026>,  <36.957523, 37.455860, 14.328541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969090, 37.710228, 14.637026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123992, 0.767859, -0.628504,
		-0.991862, -0.077448, 0.101055,
		0.028920, 0.635920, 0.771213,
		36.977764, 37.901005, 14.868390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513676, 38.055229, 14.139357>,  <36.957523, 37.455860, 14.328541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513676, 38.055229, 14.139357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.796036, 38.141045, 14.409372>,  <36.965450, 38.192535, 14.571382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.796036, 38.141045, 14.409372>,  <36.513676, 38.055229, 14.139357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796036, 38.141045, 14.409372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308379, 0.764875, -0.565569,
		-0.637657, 0.607404, 0.473766,
		0.705901, 0.214540, 0.675038,
		37.007805, 38.205406, 14.611884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.830860, 30.410238, 28.863550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.160309, 30.634014, 28.900795>,  <34.357979, 30.768280, 28.923141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.160309, 30.634014, 28.900795>,  <33.830860, 30.410238, 28.863550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160309, 30.634014, 28.900795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104749, 0.311411, -0.944484,
		-0.557378, 0.768148, 0.315087,
		0.823625, 0.559439, 0.093111,
		34.407394, 30.801846, 28.928728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752907, 31.088673, 28.637846>,  <33.830860, 30.410238, 28.863550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752907, 31.088673, 28.637846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.151493, 31.075207, 28.607084>,  <34.390644, 31.067127, 28.588627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.151493, 31.075207, 28.607084>,  <33.752907, 31.088673, 28.637846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151493, 31.075207, 28.607084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042738, 0.585076, -0.809852,
		0.072258, 0.810280, 0.581572,
		0.996470, -0.033663, -0.076906,
		34.450436, 31.065107, 28.584013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915745, 31.710579, 28.436825>,  <33.752907, 31.088673, 28.637846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915745, 31.710579, 28.436825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237923, 31.502987, 28.322344>,  <34.431229, 31.378431, 28.253654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237923, 31.502987, 28.322344>,  <33.915745, 31.710579, 28.436825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237923, 31.502987, 28.322344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044311, 0.428823, -0.902301,
		0.591006, 0.739439, 0.322399,
		0.805449, -0.518980, -0.286202,
		34.479557, 31.347294, 28.236483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161873, 32.142284, 27.883017>,  <33.915745, 31.710579, 28.436825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161873, 32.142284, 27.883017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.337872, 31.786648, 27.832546>,  <34.443470, 31.573267, 27.802263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.337872, 31.786648, 27.832546>,  <34.161873, 32.142284, 27.883017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337872, 31.786648, 27.832546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038407, 0.159012, -0.986530,
		0.897177, 0.429226, 0.104112,
		0.439999, -0.889090, -0.126176,
		34.469872, 31.519920, 27.794693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776211, 32.291859, 27.464508>,  <34.161873, 32.142284, 27.883017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776211, 32.291859, 27.464508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697384, 31.902584, 27.417067>,  <34.650089, 31.669018, 27.388601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697384, 31.902584, 27.417067>,  <34.776211, 32.291859, 27.464508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697384, 31.902584, 27.417067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217315, 0.074605, -0.973246,
		0.956002, -0.217568, 0.196786,
		-0.197066, -0.973190, -0.118603,
		34.638264, 31.610626, 27.381485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331818, 31.908846, 27.250847>,  <34.776211, 32.291859, 27.464508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331818, 31.908846, 27.250847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007748, 31.703476, 27.137707>,  <34.813305, 31.580254, 27.069822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007748, 31.703476, 27.137707>,  <35.331818, 31.908846, 27.250847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007748, 31.703476, 27.137707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243935, 0.143461, -0.959122,
		0.533017, -0.846057, 0.009013,
		-0.810178, -0.513427, -0.282850,
		34.764694, 31.549448, 27.052853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506355, 31.563316, 26.711735>,  <35.331818, 31.908846, 27.250847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506355, 31.563316, 26.711735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110279, 31.547884, 26.658024>,  <34.872631, 31.538624, 26.625797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110279, 31.547884, 26.658024>,  <35.506355, 31.563316, 26.711735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110279, 31.547884, 26.658024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126732, 0.156461, -0.979520,
		0.058798, -0.986930, -0.150038,
		-0.990193, -0.038579, -0.134275,
		34.813221, 31.536310, 26.617741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399670, 31.143421, 26.153816>,  <35.506355, 31.563316, 26.711735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399670, 31.143421, 26.153816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.065968, 31.363369, 26.170109>,  <34.865746, 31.495338, 26.179884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.065968, 31.363369, 26.170109>,  <35.399670, 31.143421, 26.153816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065968, 31.363369, 26.170109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006888, 0.084261, -0.996420,
		-0.551335, -0.830988, -0.074083,
		-0.834255, 0.549872, 0.040732,
		34.815689, 31.528330, 26.182329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990475, 30.976591, 25.545979>,  <35.399670, 31.143421, 26.153816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990475, 30.976591, 25.545979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853035, 31.330446, 25.672060>,  <34.770569, 31.542759, 25.747709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853035, 31.330446, 25.672060>,  <34.990475, 30.976591, 25.545979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853035, 31.330446, 25.672060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009587, 0.332317, -0.943119,
		-0.939067, -0.327079, -0.105704,
		-0.343602, 0.884639, 0.315203,
		34.749954, 31.595839, 25.766621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472393, 31.197433, 25.009584>,  <34.990475, 30.976591, 25.545979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472393, 31.197433, 25.009584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574432, 31.518950, 25.224562>,  <34.635654, 31.711859, 25.353548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574432, 31.518950, 25.224562>,  <34.472393, 31.197433, 25.009584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574432, 31.518950, 25.224562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163062, 0.583634, -0.795476,
		-0.953067, 0.115286, 0.279950,
		0.255096, 0.803791, 0.537443,
		34.650963, 31.760086, 25.385794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954967, 31.665449, 24.849209>,  <34.472393, 31.197433, 25.009584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954967, 31.665449, 24.849209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.270679, 31.886959, 24.955322>,  <34.460106, 32.019863, 25.018990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.270679, 31.886959, 24.955322>,  <33.954967, 31.665449, 24.849209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270679, 31.886959, 24.955322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100263, 0.542463, -0.834075,
		-0.605794, 0.631720, 0.483677,
		0.789278, 0.553773, 0.265283,
		34.507462, 32.053089, 25.034906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899284, 32.273239, 24.387074>,  <33.954967, 31.665449, 24.849209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899284, 32.273239, 24.387074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275387, 32.308212, 24.518698>,  <34.501049, 32.329197, 24.597672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275387, 32.308212, 24.518698>,  <33.899284, 32.273239, 24.387074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275387, 32.308212, 24.518698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255353, 0.458180, -0.851391,
		-0.225212, 0.884548, 0.408477,
		0.940252, 0.087437, 0.329060,
		34.557461, 32.334442, 24.617416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439999, 32.855335, 24.216002>,  <33.899284, 32.273239, 24.387074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439999, 32.855335, 24.216002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144566, 32.666607, 24.023382>,  <32.967308, 32.553371, 23.907810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144566, 32.666607, 24.023382>,  <33.439999, 32.855335, 24.216002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144566, 32.666607, 24.023382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347075, -0.346247, 0.871580,
		-0.577961, 0.810865, 0.091975,
		-0.738580, -0.471817, -0.481548,
		32.922993, 32.525063, 23.878918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879520, 33.001701, 24.613634>,  <33.439999, 32.855335, 24.216002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879520, 33.001701, 24.613634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.726101, 32.707924, 24.389677>,  <32.634048, 32.531658, 24.255302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.726101, 32.707924, 24.389677>,  <32.879520, 33.001701, 24.613634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726101, 32.707924, 24.389677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517086, -0.331533, 0.789119,
		-0.765188, 0.592178, -0.252612,
		-0.383550, -0.734446, -0.559892,
		32.611034, 32.487591, 24.221710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055984, 32.903854, 24.866856>,  <32.879520, 33.001701, 24.613634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055984, 32.903854, 24.866856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.178944, 32.574448, 24.676144>,  <32.252720, 32.376804, 24.561716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.178944, 32.574448, 24.676144>,  <32.055984, 32.903854, 24.866856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178944, 32.574448, 24.676144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439189, -0.567268, 0.696649,
		-0.844167, -0.004752, -0.536059,
		0.307399, -0.823519, -0.476783,
		32.271164, 32.327393, 24.533110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530453, 32.525383, 24.905195>,  <32.055984, 32.903854, 24.866856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530453, 32.525383, 24.905195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.827375, 32.268970, 24.827166>,  <32.005531, 32.115124, 24.780348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.827375, 32.268970, 24.827166>,  <31.530453, 32.525383, 24.905195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827375, 32.268970, 24.827166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155362, -0.447856, 0.880504,
		-0.651798, -0.623299, -0.432039,
		0.742309, -0.641034, -0.195075,
		32.050068, 32.076660, 24.768642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302197, 31.917112, 24.874258>,  <31.530453, 32.525383, 24.905195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302197, 31.917112, 24.874258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.679575, 31.862213, 24.994968>,  <31.906002, 31.829273, 25.067394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.679575, 31.862213, 24.994968>,  <31.302197, 31.917112, 24.874258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679575, 31.862213, 24.994968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328142, -0.516259, 0.791074,
		0.047220, -0.845363, -0.532101,
		0.943447, -0.137250, 0.301777,
		31.962608, 31.821037, 25.085501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402657, 31.292376, 24.917213>,  <31.302197, 31.917112, 24.874258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402657, 31.292376, 24.917213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711439, 31.419117, 25.137644>,  <31.896709, 31.495161, 25.269903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711439, 31.419117, 25.137644>,  <31.402657, 31.292376, 24.917213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711439, 31.419117, 25.137644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427159, -0.383448, 0.818842,
		0.470762, -0.867509, -0.160659,
		0.771957, 0.316853, 0.551077,
		31.943026, 31.514174, 25.302967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564207, 30.723768, 25.346359>,  <31.402657, 31.292376, 24.917213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564207, 30.723768, 25.346359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.756760, 31.030779, 25.515675>,  <31.872292, 31.214985, 25.617264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.756760, 31.030779, 25.515675>,  <31.564207, 30.723768, 25.346359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756760, 31.030779, 25.515675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136840, -0.411194, 0.901218,
		0.865764, -0.491752, -0.092912,
		0.481381, 0.767528, 0.423288,
		31.901175, 31.261038, 25.642660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096985, 30.384348, 25.790894>,  <31.564207, 30.723768, 25.346359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096985, 30.384348, 25.790894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030670, 30.753477, 25.929985>,  <31.990883, 30.974955, 26.013441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030670, 30.753477, 25.929985>,  <32.096985, 30.384348, 25.790894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030670, 30.753477, 25.929985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057938, -0.361114, 0.930720,
		0.984459, 0.134150, 0.113333,
		-0.165782, 0.922822, 0.347730,
		31.980936, 31.030323, 26.034304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494469, 30.350605, 26.326933>,  <32.096985, 30.384348, 25.790894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494469, 30.350605, 26.326933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238815, 30.652601, 26.385580>,  <32.085423, 30.833799, 26.420769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.238815, 30.652601, 26.385580>,  <32.494469, 30.350605, 26.326933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238815, 30.652601, 26.385580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033841, -0.218062, 0.975348,
		0.768351, 0.618416, 0.164921,
		-0.639134, 0.754991, 0.146620,
		32.047073, 30.879099, 26.429565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767788, 30.733412, 26.932562>,  <32.494469, 30.350605, 26.326933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767788, 30.733412, 26.932562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.381264, 30.831553, 26.901443>,  <32.149349, 30.890438, 26.882772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.381264, 30.831553, 26.901443>,  <32.767788, 30.733412, 26.932562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381264, 30.831553, 26.901443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152908, -0.304078, 0.940296,
		0.207049, 0.920510, 0.331349,
		-0.966307, 0.245353, -0.077794,
		32.091370, 30.905159, 26.878105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590786, 31.166782, 27.519505>,  <32.767788, 30.733412, 26.932562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590786, 31.166782, 27.519505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256279, 30.978216, 27.407482>,  <32.055576, 30.865076, 27.340269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.256279, 30.978216, 27.407482>,  <32.590786, 31.166782, 27.519505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256279, 30.978216, 27.407482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231396, -0.159630, 0.959674,
		-0.497112, 0.867343, 0.024409,
		-0.836263, -0.471417, -0.280054,
		32.005402, 30.836792, 27.323465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033272, 31.424471, 27.945328>,  <32.590786, 31.166782, 27.519505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033272, 31.424471, 27.945328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.870052, 31.090912, 27.796675>,  <31.772121, 30.890776, 27.707483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.870052, 31.090912, 27.796675>,  <32.033272, 31.424471, 27.945328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870052, 31.090912, 27.796675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426217, -0.185982, 0.885297,
		-0.807365, 0.519638, -0.279532,
		-0.408045, -0.833899, -0.371634,
		31.747639, 30.840742, 27.685184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310511, 31.454336, 28.095911>,  <32.033272, 31.424471, 27.945328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310511, 31.454336, 28.095911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.349279, 31.073044, 27.981401>,  <31.372541, 30.844269, 27.912695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.349279, 31.073044, 27.981401>,  <31.310511, 31.454336, 28.095911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349279, 31.073044, 27.981401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484087, -0.296464, 0.823267,
		-0.869635, 0.058788, -0.490182,
		0.096923, -0.953233, -0.286274,
		31.378357, 30.787073, 27.895519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622721, 31.124262, 28.235950>,  <31.310511, 31.454336, 28.095911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622721, 31.124262, 28.235950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.885824, 30.822977, 28.238169>,  <31.043686, 30.642206, 28.239500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.885824, 30.822977, 28.238169>,  <30.622721, 31.124262, 28.235950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885824, 30.822977, 28.238169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368989, -0.315790, 0.874142,
		-0.656661, -0.577019, -0.485639,
		0.657756, -0.753210, 0.005546,
		31.083151, 30.597013, 28.239832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605946, 31.839842, 28.279881>,  <30.622721, 31.124262, 28.235950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605946, 31.839842, 28.279881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.385252, 32.118408, 28.463444>,  <30.252836, 32.285549, 28.573582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.385252, 32.118408, 28.463444>,  <30.605946, 31.839842, 28.279881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385252, 32.118408, 28.463444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063814, 0.583874, -0.809332,
		-0.831576, -0.417249, -0.366583,
		-0.551732, 0.696415, 0.458910,
		30.219732, 32.327332, 28.601116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013426, 32.115887, 27.841883>,  <30.605946, 31.839842, 28.279881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013426, 32.115887, 27.841883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.100573, 32.401192, 28.108353>,  <30.152861, 32.572376, 28.268234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.100573, 32.401192, 28.108353>,  <30.013426, 32.115887, 27.841883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100573, 32.401192, 28.108353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172641, 0.643644, -0.745599,
		-0.960587, 0.277452, 0.017092,
		0.217869, 0.713262, 0.666176,
		30.165934, 32.615170, 28.308205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671883, 32.727665, 27.570271>,  <30.013426, 32.115887, 27.841883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671883, 32.727665, 27.570271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.943480, 32.841621, 27.840916>,  <30.106438, 32.909996, 28.003304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.943480, 32.841621, 27.840916>,  <29.671883, 32.727665, 27.570271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943480, 32.841621, 27.840916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286150, 0.746040, -0.601284,
		-0.676082, 0.601880, 0.425034,
		0.678993, 0.284894, 0.676612,
		30.147177, 32.927090, 28.043900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531672, 33.510952, 27.633127>,  <29.671883, 32.727665, 27.570271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531672, 33.510952, 27.633127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.901680, 33.391083, 27.726538>,  <30.123684, 33.319160, 27.782585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.901680, 33.391083, 27.726538>,  <29.531672, 33.510952, 27.633127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901680, 33.391083, 27.726538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378376, 0.671279, -0.637352,
		0.034235, 0.677924, 0.734335,
		0.925019, -0.299674, 0.233529,
		30.179186, 33.301182, 27.796597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843695, 34.180470, 27.859035>,  <29.531672, 33.510952, 27.633127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843695, 34.180470, 27.859035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.103172, 33.900139, 27.740349>,  <30.258858, 33.731941, 27.669136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.103172, 33.900139, 27.740349>,  <29.843695, 34.180470, 27.859035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103172, 33.900139, 27.740349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371430, 0.631833, -0.680314,
		0.664257, 0.331105, 0.670173,
		0.648693, -0.700825, -0.296717,
		30.297781, 33.689892, 27.651333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348492, 34.581684, 27.700315>,  <29.843695, 34.180470, 27.859035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348492, 34.581684, 27.700315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.473789, 34.243591, 27.527130>,  <30.548967, 34.040733, 27.423218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.473789, 34.243591, 27.527130>,  <30.348492, 34.581684, 27.700315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473789, 34.243591, 27.527130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430919, 0.532777, -0.728325,
		0.846279, 0.041569, 0.531115,
		0.313242, -0.845234, -0.432965,
		30.567762, 33.990021, 27.397240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973719, 34.762772, 27.407669>,  <30.348492, 34.581684, 27.700315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973719, 34.762772, 27.407669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.931908, 34.421524, 27.203215>,  <30.906820, 34.216774, 27.080542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.931908, 34.421524, 27.203215>,  <30.973719, 34.762772, 27.407669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931908, 34.421524, 27.203215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361778, 0.446123, -0.818591,
		0.926386, -0.270484, 0.262008,
		-0.104528, -0.853120, -0.511137,
		30.900549, 34.165588, 27.049873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606010, 34.625172, 27.100431>,  <30.973719, 34.762772, 27.407669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606010, 34.625172, 27.100431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.342508, 34.439621, 26.863499>,  <31.184408, 34.328289, 26.721338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.342508, 34.439621, 26.863499>,  <31.606010, 34.625172, 27.100431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342508, 34.439621, 26.863499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525963, 0.279006, -0.803442,
		0.537966, -0.840815, 0.060189,
		-0.658753, -0.463882, -0.592333,
		31.144882, 34.300457, 26.685799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951296, 34.109962, 26.637526>,  <31.606010, 34.625172, 27.100431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951296, 34.109962, 26.637526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.621256, 34.190296, 26.426291>,  <31.423231, 34.238495, 26.299549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.621256, 34.190296, 26.426291>,  <31.951296, 34.109962, 26.637526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621256, 34.190296, 26.426291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562728, 0.375624, -0.736372,
		0.050476, -0.904751, -0.422941,
		-0.825099, 0.200831, -0.528089,
		31.373726, 34.250546, 26.267864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170277, 34.107578, 25.879431>,  <31.951296, 34.109962, 26.637526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170277, 34.107578, 25.879431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800226, 34.259239, 25.871645>,  <31.578196, 34.350235, 25.866974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800226, 34.259239, 25.871645>,  <32.170277, 34.107578, 25.879431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800226, 34.259239, 25.871645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306353, 0.715257, -0.628136,
		-0.224237, -0.587070, -0.777860,
		-0.925130, 0.379151, -0.019464,
		31.522688, 34.372986, 25.865807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985083, 34.149540, 25.184456>,  <32.170277, 34.107578, 25.879431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985083, 34.149540, 25.184456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.725824, 34.394505, 25.365501>,  <31.570269, 34.541485, 25.474129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.725824, 34.394505, 25.365501>,  <31.985083, 34.149540, 25.184456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725824, 34.394505, 25.365501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000844, 0.594937, -0.803772,
		-0.761515, -0.520580, -0.386123,
		-0.648146, 0.612410, 0.452614,
		31.531380, 34.578228, 25.501286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534370, 34.282700, 24.684744>,  <31.985083, 34.149540, 25.184456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534370, 34.282700, 24.684744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.535910, 34.587738, 24.943487>,  <31.536833, 34.770763, 25.098734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.535910, 34.587738, 24.943487>,  <31.534370, 34.282700, 24.684744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535910, 34.587738, 24.943487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079469, 0.644584, -0.760392,
		-0.996830, 0.054332, -0.058122,
		0.003849, 0.762600, 0.646859,
		31.537064, 34.816517, 25.137545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079458, 34.742298, 24.384134>,  <31.534370, 34.282700, 24.684744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079458, 34.742298, 24.384134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.289572, 34.970337, 24.636822>,  <31.415640, 35.107159, 24.788433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.289572, 34.970337, 24.636822>,  <31.079458, 34.742298, 24.384134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289572, 34.970337, 24.636822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159267, 0.663398, -0.731121,
		-0.835890, 0.484657, 0.257674,
		0.525283, 0.570098, 0.631717,
		31.447157, 35.141365, 24.826338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787958, 35.474377, 24.222128>,  <31.079458, 34.742298, 24.384134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787958, 35.474377, 24.222128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.137276, 35.502941, 24.414900>,  <31.346867, 35.520081, 24.530563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.137276, 35.502941, 24.414900>,  <30.787958, 35.474377, 24.222128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.137276, 35.502941, 24.414900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267758, 0.756064, -0.597221,
		-0.407016, 0.650591, 0.641147,
		0.873295, 0.071407, 0.481931,
		31.399263, 35.524364, 24.559479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830212, 36.073921, 24.380463>,  <30.787958, 35.474377, 24.222128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830212, 36.073921, 24.380463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.213346, 35.959698, 24.393122>,  <31.443228, 35.891163, 24.400717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.213346, 35.959698, 24.393122>,  <30.830212, 36.073921, 24.380463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213346, 35.959698, 24.393122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259212, 0.811417, -0.523843,
		0.123906, 0.509961, 0.851227,
		0.957839, -0.285555, 0.031649,
		31.500698, 35.874031, 24.402617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293201, 36.677040, 24.331886>,  <30.830212, 36.073921, 24.380463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293201, 36.677040, 24.331886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.590683, 36.419922, 24.258434>,  <31.769173, 36.265652, 24.214363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.590683, 36.419922, 24.258434>,  <31.293201, 36.677040, 24.331886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590683, 36.419922, 24.258434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446003, 0.681704, -0.579966,
		0.497980, 0.349424, 0.793675,
		0.743705, -0.642793, -0.183630,
		31.813795, 36.227085, 24.203344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959032, 37.079224, 24.309685>,  <31.293201, 36.677040, 24.331886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959032, 37.079224, 24.309685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030704, 36.744858, 24.102171>,  <32.073708, 36.544239, 23.977663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030704, 36.744858, 24.102171>,  <31.959032, 37.079224, 24.309685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030704, 36.744858, 24.102171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558284, 0.520583, -0.645997,
		0.810070, -0.173878, 0.559958,
		0.179180, -0.835918, -0.518782,
		32.084457, 36.494083, 23.946537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668793, 37.163357, 24.115490>,  <31.959032, 37.079224, 24.309685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668793, 37.163357, 24.115490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.508659, 36.888405, 23.873089>,  <32.412579, 36.723434, 23.727648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.508659, 36.888405, 23.873089>,  <32.668793, 37.163357, 24.115490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508659, 36.888405, 23.873089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471540, 0.412513, -0.779411,
		0.785737, -0.597780, 0.158985,
		-0.400333, -0.687380, -0.606004,
		32.388561, 36.682190, 23.691288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218365, 37.036957, 23.644829>,  <32.668793, 37.163357, 24.115490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218365, 37.036957, 23.644829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878551, 36.895691, 23.488077>,  <32.674664, 36.810932, 23.394026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.878551, 36.895691, 23.488077>,  <33.218365, 37.036957, 23.644829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878551, 36.895691, 23.488077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295051, 0.297706, -0.907918,
		0.437308, -0.886931, -0.148710,
		-0.849533, -0.353163, -0.391880,
		32.623692, 36.789742, 23.370514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470104, 36.623646, 23.163101>,  <33.218365, 37.036957, 23.644829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470104, 36.623646, 23.163101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097019, 36.730431, 23.066128>,  <32.873169, 36.794502, 23.007944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.097019, 36.730431, 23.066128>,  <33.470104, 36.623646, 23.163101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097019, 36.730431, 23.066128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352238, 0.530398, -0.771107,
		-0.077272, -0.804617, -0.588745,
		-0.932715, 0.266963, -0.242432,
		32.817204, 36.810520, 22.993399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528931, 36.640984, 22.456007>,  <33.470104, 36.623646, 23.163101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528931, 36.640984, 22.456007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.180016, 36.828491, 22.511673>,  <32.970665, 36.940998, 22.545073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.180016, 36.828491, 22.511673>,  <33.528931, 36.640984, 22.456007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180016, 36.828491, 22.511673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125740, 0.490051, -0.862577,
		-0.472552, -0.734916, -0.486408,
		-0.872286, 0.468774, 0.139166,
		32.918331, 36.969124, 22.553423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055168, 36.684601, 21.841469>,  <33.528931, 36.640984, 22.456007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055168, 36.684601, 21.841469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.937416, 36.997345, 22.061298>,  <32.866764, 37.184990, 22.193197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.937416, 36.997345, 22.061298>,  <33.055168, 36.684601, 21.841469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937416, 36.997345, 22.061298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241473, 0.617250, -0.748795,
		-0.924680, -0.087721, -0.370503,
		-0.294378, 0.781862, 0.549576,
		32.849102, 37.231903, 22.226171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585114, 36.999893, 21.449896>,  <33.055168, 36.684601, 21.841469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585114, 36.999893, 21.449896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.684566, 37.290730, 21.705872>,  <32.744236, 37.465229, 21.859457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.684566, 37.290730, 21.705872>,  <32.585114, 36.999893, 21.449896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684566, 37.290730, 21.705872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148556, 0.624246, -0.766973,
		-0.957139, 0.285760, 0.047193,
		0.248630, 0.727089, 0.639942,
		32.759155, 37.508858, 21.897854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249249, 37.599419, 21.118206>,  <32.585114, 36.999893, 21.449896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249249, 37.599419, 21.118206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495670, 37.764481, 21.386589>,  <32.643524, 37.863518, 21.547619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495670, 37.764481, 21.386589>,  <32.249249, 37.599419, 21.118206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495670, 37.764481, 21.386589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291638, 0.671771, -0.680934,
		-0.731723, 0.615172, 0.293504,
		0.616059, 0.412658, 0.670958,
		32.680489, 37.888279, 21.587877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230331, 38.276772, 21.026051>,  <32.249249, 37.599419, 21.118206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230331, 38.276772, 21.026051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583138, 38.221973, 21.206400>,  <32.794819, 38.189095, 21.314610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583138, 38.221973, 21.206400>,  <32.230331, 38.276772, 21.026051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583138, 38.221973, 21.206400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443603, 0.564164, -0.696373,
		-0.158971, 0.814219, 0.558369,
		0.882012, -0.136991, 0.450876,
		32.847740, 38.180878, 21.341663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567284, 38.965965, 21.113520>,  <32.230331, 38.276772, 21.026051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567284, 38.965965, 21.113520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.871258, 38.706169, 21.123817>,  <33.053642, 38.550293, 21.129995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.871258, 38.706169, 21.123817>,  <32.567284, 38.965965, 21.113520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871258, 38.706169, 21.123817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540850, 0.609862, -0.579266,
		0.360528, 0.454127, 0.814732,
		0.759935, -0.649489, 0.025743,
		33.099239, 38.511322, 21.131540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147350, 39.359463, 21.292044>,  <32.567284, 38.965965, 21.113520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147350, 39.359463, 21.292044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281906, 39.025597, 21.117607>,  <33.362640, 38.825275, 21.012945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281906, 39.025597, 21.117607>,  <33.147350, 39.359463, 21.292044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281906, 39.025597, 21.117607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521054, 0.550702, -0.652097,
		0.784440, -0.007871, 0.620155,
		0.336388, -0.834665, -0.436093,
		33.382824, 38.775196, 20.986778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798828, 39.537247, 21.121887>,  <33.147350, 39.359463, 21.292044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798828, 39.537247, 21.121887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741966, 39.219814, 20.885239>,  <33.707848, 39.029354, 20.743250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741966, 39.219814, 20.885239>,  <33.798828, 39.537247, 21.121887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741966, 39.219814, 20.885239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488149, 0.463753, -0.739353,
		0.861105, -0.393902, 0.321463,
		-0.142154, -0.793583, -0.591623,
		33.699322, 38.981739, 20.707752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341877, 39.061214, 21.258383>,  <33.798828, 39.537247, 21.121887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341877, 39.061214, 21.258383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670696, 39.147102, 21.469334>,  <34.867989, 39.198635, 21.595905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670696, 39.147102, 21.469334>,  <34.341877, 39.061214, 21.258383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670696, 39.147102, 21.469334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245991, -0.701373, 0.669003,
		0.513539, -0.679684, -0.523744,
		0.822050, 0.214723, 0.527378,
		34.917313, 39.211517, 21.627546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576668, 38.445034, 21.583794>,  <34.341877, 39.061214, 21.258383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576668, 38.445034, 21.583794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.763386, 38.701641, 21.827288>,  <34.875416, 38.855606, 21.973385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.763386, 38.701641, 21.827288>,  <34.576668, 38.445034, 21.583794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763386, 38.701641, 21.827288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157824, -0.616852, 0.771093,
		0.870168, -0.456017, -0.186698,
		0.466797, 0.641515, 0.608736,
		34.903423, 38.894096, 22.009909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850216, 38.035980, 22.080551>,  <34.576668, 38.445034, 21.583794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850216, 38.035980, 22.080551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.911694, 38.377655, 22.279242>,  <34.948578, 38.582661, 22.398457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.911694, 38.377655, 22.279242>,  <34.850216, 38.035980, 22.080551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911694, 38.377655, 22.279242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002293, -0.503006, 0.864280,
		0.988116, -0.131693, -0.079267,
		0.153691, 0.854191, 0.496727,
		34.957802, 38.633911, 22.428259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320370, 37.836643, 22.705429>,  <34.850216, 38.035980, 22.080551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320370, 37.836643, 22.705429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124775, 38.174950, 22.790813>,  <35.007416, 38.377934, 22.842043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.124775, 38.174950, 22.790813>,  <35.320370, 37.836643, 22.705429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124775, 38.174950, 22.790813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171762, -0.333279, 0.927051,
		0.855212, 0.416654, 0.308241,
		-0.488989, 0.845769, 0.213459,
		34.978077, 38.428680, 22.854851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646309, 38.119354, 23.262354>,  <35.320370, 37.836643, 22.705429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646309, 38.119354, 23.262354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.276608, 38.269588, 23.289747>,  <35.054787, 38.359730, 23.306183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.276608, 38.269588, 23.289747>,  <35.646309, 38.119354, 23.262354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276608, 38.269588, 23.289747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017957, -0.221956, 0.974891,
		0.381352, 0.899819, 0.211888,
		-0.924256, 0.375581, 0.068485,
		34.999332, 38.382263, 23.310293>
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
