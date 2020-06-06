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
	<24.024338, 34.609932, 34.767612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378277, 34.796070, 34.758694>,  <24.590641, 34.907753, 34.753342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.378277, 34.796070, 34.758694>,  <24.024338, 34.609932, 34.767612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.378277, 34.796070, 34.758694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163900, -0.355748, -0.920098,
		-0.436096, 0.810493, -0.391053,
		0.884849, 0.465345, -0.022300,
		24.643732, 34.935673, 34.752003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.141520, 35.038227, 34.276371>,  <24.024338, 34.609932, 34.767612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.141520, 35.038227, 34.276371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.500359, 34.868587, 34.325943>,  <24.715662, 34.766804, 34.355686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.500359, 34.868587, 34.325943>,  <24.141520, 35.038227, 34.276371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.500359, 34.868587, 34.325943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015670, -0.310850, -0.950330,
		0.441558, 0.850595, -0.285508,
		0.897096, -0.424100, 0.123930,
		24.769487, 34.741356, 34.363121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.587166, 35.206707, 33.645184>,  <24.141520, 35.038227, 34.276371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.587166, 35.206707, 33.645184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755880, 34.881035, 33.804787>,  <24.857109, 34.685631, 33.900551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.755880, 34.881035, 33.804787>,  <24.587166, 35.206707, 33.645184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.755880, 34.881035, 33.804787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024032, -0.429880, -0.902566,
		0.906377, 0.390278, -0.161750,
		0.421785, -0.814179, 0.399012,
		24.882416, 34.636780, 33.924492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259605, 35.037872, 33.332020>,  <24.587166, 35.206707, 33.645184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.259605, 35.037872, 33.332020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072186, 34.717693, 33.481552>,  <24.959734, 34.525585, 33.571270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072186, 34.717693, 33.481552>,  <25.259605, 35.037872, 33.332020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.072186, 34.717693, 33.481552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140643, -0.485344, -0.862937,
		0.872170, -0.351752, 0.339985,
		-0.468549, -0.800445, 0.373832,
		24.931622, 34.477558, 33.593700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761997, 34.580379, 33.398853>,  <25.259605, 35.037872, 33.332020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761997, 34.580379, 33.398853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397470, 34.432884, 33.325607>,  <25.178755, 34.344387, 33.281658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397470, 34.432884, 33.325607>,  <25.761997, 34.580379, 33.398853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397470, 34.432884, 33.325607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297280, -0.281666, -0.912299,
		0.284826, -0.885830, 0.366306,
		-0.911317, -0.368741, -0.183113,
		25.124075, 34.322262, 33.270672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854052, 33.899620, 32.976864>,  <25.761997, 34.580379, 33.398853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854052, 33.899620, 32.976864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504339, 34.080391, 32.905987>,  <25.294512, 34.188854, 32.863461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504339, 34.080391, 32.905987>,  <25.854052, 33.899620, 32.976864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504339, 34.080391, 32.905987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110054, -0.170983, -0.979108,
		-0.472779, -0.875517, 0.099751,
		-0.874282, 0.451923, -0.177191,
		25.242054, 34.215969, 32.852829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.702215, 33.581562, 32.389790>,  <25.854052, 33.899620, 32.976864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.702215, 33.581562, 32.389790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460695, 33.900318, 32.397678>,  <25.315783, 34.091572, 32.402412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460695, 33.900318, 32.397678>,  <25.702215, 33.581562, 32.389790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460695, 33.900318, 32.397678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014427, 0.035664, -0.999260,
		-0.797006, -0.603068, -0.033030,
		-0.603799, 0.796893, 0.019724,
		25.279556, 34.139385, 32.403595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.976601, 33.609318, 31.913893>,  <25.702215, 33.581562, 32.389790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.976601, 33.609318, 31.913893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177713, 33.950657, 31.969040>,  <25.298382, 34.155460, 32.002129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177713, 33.950657, 31.969040>,  <24.976601, 33.609318, 31.913893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177713, 33.950657, 31.969040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107748, 0.096380, -0.989496,
		-0.857672, 0.512355, -0.043489,
		0.502781, 0.853349, 0.137868,
		25.328548, 34.206661, 32.010399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.681290, 34.050419, 31.412704>,  <24.976601, 33.609318, 31.913893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.681290, 34.050419, 31.412704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015339, 34.250713, 31.503767>,  <25.215769, 34.370892, 31.558405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015339, 34.250713, 31.503767>,  <24.681290, 34.050419, 31.412704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.015339, 34.250713, 31.503767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099310, 0.269813, -0.957778,
		-0.541023, 0.822472, 0.175599,
		0.835124, 0.500741, 0.227655,
		25.265877, 34.400936, 31.572063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.762560, 34.634457, 30.886385>,  <24.681290, 34.050419, 31.412704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.762560, 34.634457, 30.886385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.127403, 34.584465, 31.042559>,  <25.346310, 34.554470, 31.136263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.127403, 34.584465, 31.042559>,  <24.762560, 34.634457, 30.886385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.127403, 34.584465, 31.042559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405277, 0.131483, -0.904689,
		0.061730, 0.983409, 0.170577,
		0.912108, -0.124977, 0.390436,
		25.401035, 34.546970, 31.159689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.179207, 35.210983, 30.483421>,  <24.762560, 34.634457, 30.886385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.179207, 35.210983, 30.483421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.432758, 34.945644, 30.642504>,  <25.584888, 34.786442, 30.737953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.432758, 34.945644, 30.642504>,  <25.179207, 35.210983, 30.483421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432758, 34.945644, 30.642504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520113, -0.014983, -0.853966,
		0.572435, 0.748162, 0.335518,
		0.633878, -0.663347, 0.397706,
		25.622921, 34.746639, 30.761816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797428, 35.439342, 30.230946>,  <25.179207, 35.210983, 30.483421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797428, 35.439342, 30.230946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770164, 35.046997, 30.303886>,  <25.753805, 34.811588, 30.347651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770164, 35.046997, 30.303886>,  <25.797428, 35.439342, 30.230946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770164, 35.046997, 30.303886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449725, -0.193363, -0.871985,
		0.890563, 0.022574, 0.454300,
		-0.068160, -0.980868, 0.182354,
		25.749716, 34.752735, 30.358593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865969, 35.308758, 29.443424>,  <25.797428, 35.439342, 30.230946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865969, 35.308758, 29.443424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229343, 35.141598, 29.447351>,  <26.447369, 35.041302, 29.449709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229343, 35.141598, 29.447351>,  <25.865969, 35.308758, 29.443424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229343, 35.141598, 29.447351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263053, -0.553253, 0.790389,
		-0.324872, -0.720603, -0.612527,
		0.908439, -0.417903, 0.009821,
		26.501875, 35.016228, 29.450298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916182, 34.572510, 29.366829>,  <25.865969, 35.308758, 29.443424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916182, 34.572510, 29.366829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212597, 34.697556, 29.604528>,  <26.390446, 34.772583, 29.747149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212597, 34.697556, 29.604528>,  <25.916182, 34.572510, 29.366829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212597, 34.697556, 29.604528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463910, -0.401459, 0.789695,
		0.485438, -0.860873, -0.152472,
		0.741038, 0.312615, 0.594251,
		26.434908, 34.791340, 29.782804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090528, 33.995510, 29.724215>,  <25.916182, 34.572510, 29.366829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090528, 33.995510, 29.724215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173113, 34.318546, 29.945181>,  <26.222664, 34.512367, 30.077761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173113, 34.318546, 29.945181>,  <26.090528, 33.995510, 29.724215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.173113, 34.318546, 29.945181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637705, -0.317136, 0.701967,
		0.742096, -0.497207, 0.449531,
		0.206460, 0.807595, 0.552417,
		26.235050, 34.560825, 30.110907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384455, 33.754711, 30.413101>,  <26.090528, 33.995510, 29.724215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384455, 33.754711, 30.413101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237850, 34.124428, 30.455719>,  <26.149887, 34.346256, 30.481291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237850, 34.124428, 30.455719>,  <26.384455, 33.754711, 30.413101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237850, 34.124428, 30.455719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397966, -0.259248, 0.880008,
		0.841006, 0.280132, 0.462855,
		-0.366513, 0.924292, 0.106546,
		26.127897, 34.401714, 30.487682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561306, 33.883606, 31.150923>,  <26.384455, 33.754711, 30.413101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561306, 33.883606, 31.150923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274626, 34.141655, 31.044975>,  <26.102617, 34.296486, 30.981407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274626, 34.141655, 31.044975>,  <26.561306, 33.883606, 31.150923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274626, 34.141655, 31.044975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424184, -0.101805, 0.899835,
		0.553540, 0.757265, 0.346615,
		-0.716701, 0.645124, -0.264867,
		26.059616, 34.335194, 30.965515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556622, 34.398052, 31.670429>,  <26.561306, 33.883606, 31.150923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556622, 34.398052, 31.670429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201658, 34.468105, 31.499859>,  <25.988680, 34.510136, 31.397516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201658, 34.468105, 31.499859>,  <26.556622, 34.398052, 31.670429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201658, 34.468105, 31.499859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437738, -0.030062, 0.898600,
		0.144554, 0.984086, 0.103339,
		-0.887406, 0.175132, -0.426426,
		25.935436, 34.520645, 31.371931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316744, 34.982452, 32.033184>,  <26.556622, 34.398052, 31.670429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316744, 34.982452, 32.033184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994146, 34.812519, 31.868702>,  <25.800589, 34.710560, 31.770014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994146, 34.812519, 31.868702>,  <26.316744, 34.982452, 32.033184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994146, 34.812519, 31.868702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455392, 0.002783, 0.890287,
		-0.377077, 0.905268, -0.195709,
		-0.806493, -0.424831, -0.411203,
		25.752199, 34.685070, 31.745340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784950, 35.393948, 32.235298>,  <26.316744, 34.982452, 32.033184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784950, 35.393948, 32.235298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644825, 35.030552, 32.144154>,  <25.560749, 34.812515, 32.089466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644825, 35.030552, 32.144154>,  <25.784950, 35.393948, 32.235298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644825, 35.030552, 32.144154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343421, -0.101752, 0.933653,
		-0.871402, 0.405326, -0.276350,
		-0.350314, -0.908492, -0.227864,
		25.539730, 34.758003, 32.075794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.115076, 35.329010, 32.003887>,  <25.784950, 35.393948, 32.235298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.115076, 35.329010, 32.003887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.062332, 34.932793, 31.988703>,  <25.030685, 34.695065, 31.979591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.062332, 34.932793, 31.988703>,  <25.115076, 35.329010, 32.003887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.062332, 34.932793, 31.988703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416298, 0.020581, 0.908995,
		-0.899616, 0.135665, -0.415075,
		-0.131862, -0.990541, -0.037962,
		25.022774, 34.635632, 31.977314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.544273, 35.254715, 32.408234>,  <25.115076, 35.329010, 32.003887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.544273, 35.254715, 32.408234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.756306, 34.915573, 32.413136>,  <24.883526, 34.712086, 32.416077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.756306, 34.915573, 32.413136>,  <24.544273, 35.254715, 32.408234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.756306, 34.915573, 32.413136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340837, -0.199818, 0.918642,
		-0.776430, -0.491131, -0.394901,
		0.530082, -0.847858, 0.012252,
		24.915331, 34.661217, 32.416813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.112820, 34.703941, 32.669518>,  <24.544273, 35.254715, 32.408234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.112820, 34.703941, 32.669518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487347, 34.582294, 32.739746>,  <24.712063, 34.509308, 32.781883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487347, 34.582294, 32.739746>,  <24.112820, 34.703941, 32.669518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487347, 34.582294, 32.739746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220130, -0.118770, 0.968213,
		-0.273599, -0.945201, -0.178152,
		0.936315, -0.304119, 0.175572,
		24.768242, 34.491058, 32.792419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.174797, 34.005466, 32.870884>,  <24.112820, 34.703941, 32.669518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.174797, 34.005466, 32.870884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453606, 34.239864, 33.036179>,  <24.620892, 34.380505, 33.135357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453606, 34.239864, 33.036179>,  <24.174797, 34.005466, 32.870884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.453606, 34.239864, 33.036179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357878, -0.215094, 0.908657,
		0.621355, -0.781245, 0.059789,
		0.697024, 0.585996, 0.413240,
		24.662712, 34.415665, 33.160152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.113239, 33.416168, 33.191322>,  <24.174797, 34.005466, 32.870884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.113239, 33.416168, 33.191322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397314, 33.696732, 33.215523>,  <24.567759, 33.865070, 33.230042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397314, 33.696732, 33.215523>,  <24.113239, 33.416168, 33.191322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.397314, 33.696732, 33.215523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256509, 0.177772, 0.950053,
		0.655618, -0.690236, 0.306169,
		0.710189, 0.701406, 0.060501,
		24.610371, 33.907154, 33.233673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.132740, 33.393127, 33.811749>,  <24.113239, 33.416168, 33.191322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.132740, 33.393127, 33.811749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.362892, 33.716389, 33.761425>,  <24.500982, 33.910347, 33.731232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.362892, 33.716389, 33.761425>,  <24.132740, 33.393127, 33.811749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.362892, 33.716389, 33.761425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157407, 0.260368, 0.952592,
		0.802598, -0.528296, 0.277019,
		0.575378, 0.808153, -0.125813,
		24.535505, 33.958836, 33.723682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.996952, 33.276337, 33.827366>,  <24.132740, 33.393127, 33.811749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.996952, 33.276337, 33.827366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067413, 33.668404, 33.791065>,  <25.109690, 33.903645, 33.769283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067413, 33.668404, 33.791065>,  <24.996952, 33.276337, 33.827366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.067413, 33.668404, 33.791065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097361, 0.109094, 0.989251,
		0.979536, -0.165425, 0.114648,
		0.176154, 0.980170, -0.090756,
		25.120260, 33.962456, 33.763840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429487, 33.542179, 34.366249>,  <24.996952, 33.276337, 33.827366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429487, 33.542179, 34.366249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268314, 33.886036, 34.240608>,  <25.171610, 34.092350, 34.165222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.268314, 33.886036, 34.240608>,  <25.429487, 33.542179, 34.366249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268314, 33.886036, 34.240608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108731, 0.385726, 0.916184,
		0.908748, 0.335009, -0.248891,
		-0.402933, 0.859642, -0.314102,
		25.147434, 34.143929, 34.146378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838427, 34.064301, 34.513214>,  <25.429487, 33.542179, 34.366249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838427, 34.064301, 34.513214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489614, 34.259014, 34.492817>,  <25.280327, 34.375843, 34.480579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489614, 34.259014, 34.492817>,  <25.838427, 34.064301, 34.513214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489614, 34.259014, 34.492817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221874, 0.486016, 0.845317,
		0.436275, 0.725828, -0.531826,
		-0.872030, 0.486789, -0.050994,
		25.228006, 34.405052, 34.477520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991724, 34.684879, 34.673428>,  <25.838427, 34.064301, 34.513214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991724, 34.684879, 34.673428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.595600, 34.655262, 34.720432>,  <25.357925, 34.637489, 34.748634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.595600, 34.655262, 34.720432>,  <25.991724, 34.684879, 34.673428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.595600, 34.655262, 34.720432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078578, 0.398936, 0.913606,
		-0.114526, 0.913984, -0.389251,
		-0.990308, -0.074045, 0.117507,
		25.298508, 34.633049, 34.755684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662636, 35.378372, 34.567421>,  <25.991724, 34.684879, 34.673428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.662636, 35.378372, 34.567421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501905, 35.119434, 34.826492>,  <25.405468, 34.964073, 34.981934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501905, 35.119434, 34.826492>,  <25.662636, 35.378372, 34.567421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.501905, 35.119434, 34.826492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153140, 0.649823, 0.744499,
		-0.902821, 0.398342, -0.161980,
		-0.401824, -0.647344, 0.647676,
		25.381359, 34.925232, 35.020794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.923481, 35.571590, 34.814198>,  <25.662636, 35.378372, 34.567421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.923481, 35.571590, 34.814198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170881, 35.402431, 35.079109>,  <25.319321, 35.300938, 35.238056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170881, 35.402431, 35.079109>,  <24.923481, 35.571590, 34.814198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.170881, 35.402431, 35.079109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028244, 0.830320, 0.556571,
		-0.785277, -0.362945, 0.501609,
		0.618501, -0.422895, 0.662282,
		25.356432, 35.275562, 35.277794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.686146, 35.816647, 35.326515>,  <24.923481, 35.571590, 34.814198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.686146, 35.816647, 35.326515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059423, 35.721420, 35.434196>,  <25.283390, 35.664284, 35.498806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059423, 35.721420, 35.434196>,  <24.686146, 35.816647, 35.326515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059423, 35.721420, 35.434196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076533, 0.863571, 0.498385,
		-0.351126, -0.444488, 0.824100,
		0.933195, -0.238067, 0.269205,
		25.339382, 35.650002, 35.514957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.644018, 36.002754, 36.066257>,  <24.686146, 35.816647, 35.326515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.644018, 36.002754, 36.066257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024134, 35.982288, 35.943401>,  <25.252203, 35.970009, 35.869690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024134, 35.982288, 35.943401>,  <24.644018, 36.002754, 36.066257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024134, 35.982288, 35.943401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155788, 0.932194, 0.326717,
		0.269593, -0.358324, 0.893825,
		0.950289, -0.051166, -0.307135,
		25.309221, 35.966938, 35.851261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867411, 36.746689, 36.113239>,  <24.644018, 36.002754, 36.066257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867411, 36.746689, 36.113239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198648, 36.523636, 36.136234>,  <25.397390, 36.389805, 36.150032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198648, 36.523636, 36.136234>,  <24.867411, 36.746689, 36.113239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198648, 36.523636, 36.136234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551852, 0.828924, 0.091340,
		-0.098589, -0.043913, 0.994159,
		0.828094, -0.557634, 0.057490,
		25.447077, 36.356346, 36.153481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198606, 36.907944, 36.713608>,  <24.867411, 36.746689, 36.113239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198606, 36.907944, 36.713608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437107, 36.801804, 36.410538>,  <25.580208, 36.738121, 36.228695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437107, 36.801804, 36.410538>,  <25.198606, 36.907944, 36.713608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437107, 36.801804, 36.410538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467660, 0.881926, 0.059161,
		0.652516, -0.389610, 0.649943,
		0.596252, -0.265349, -0.757676,
		25.615982, 36.722198, 36.183235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381229, 37.522327, 36.929893>,  <25.198606, 36.907944, 36.713608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381229, 37.522327, 36.929893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673874, 37.255684, 36.986988>,  <25.849461, 37.095695, 37.021244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.673874, 37.255684, 36.986988>,  <25.381229, 37.522327, 36.929893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673874, 37.255684, 36.986988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552146, 0.456607, -0.697600,
		0.399853, 0.589184, 0.702125,
		0.731610, -0.666613, 0.142740,
		25.893356, 37.055698, 37.029812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068838, 37.826870, 37.191158>,  <25.381229, 37.522327, 36.929893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068838, 37.826870, 37.191158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149559, 37.522484, 36.944515>,  <26.197992, 37.339851, 36.796528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149559, 37.522484, 36.944515>,  <26.068838, 37.826870, 37.191158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149559, 37.522484, 36.944515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516649, 0.617555, -0.593043,
		0.832075, -0.198892, 0.517776,
		0.201804, -0.760965, -0.616610,
		26.210100, 37.294193, 36.759533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831255, 37.763828, 37.150494>,  <26.068838, 37.826870, 37.191158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831255, 37.763828, 37.150494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619085, 37.660488, 36.827530>,  <26.491783, 37.598484, 36.633751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619085, 37.660488, 36.827530>,  <26.831255, 37.763828, 37.150494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619085, 37.660488, 36.827530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676983, 0.444165, -0.586866,
		0.510241, -0.857887, -0.060695,
		-0.530423, -0.258354, -0.807406,
		26.459959, 37.582981, 36.585308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260790, 37.354343, 36.698124>,  <26.831255, 37.763828, 37.150494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260790, 37.354343, 36.698124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990248, 37.593346, 36.525829>,  <26.827923, 37.736748, 36.422455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990248, 37.593346, 36.525829>,  <27.260790, 37.354343, 36.698124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990248, 37.593346, 36.525829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717648, 0.402836, -0.568070,
		-0.165912, -0.693331, -0.701260,
		-0.676354, 0.597507, -0.430733,
		26.787342, 37.772598, 36.396610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299431, 37.211941, 36.001892>,  <27.260790, 37.354343, 36.698124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299431, 37.211941, 36.001892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202566, 37.589745, 36.090672>,  <27.144447, 37.816425, 36.143940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202566, 37.589745, 36.090672>,  <27.299431, 37.211941, 36.001892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202566, 37.589745, 36.090672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746599, 0.327500, -0.579080,
		-0.619635, 0.025478, -0.784477,
		-0.242162, 0.944507, 0.221952,
		27.129917, 37.873096, 36.157257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846699, 36.598095, 35.958000>,  <27.299431, 37.211941, 36.001892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.846699, 36.598095, 35.958000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097286, 36.802219, 36.193668>,  <28.247639, 36.924694, 36.335072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097286, 36.802219, 36.193668>,  <27.846699, 36.598095, 35.958000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097286, 36.802219, 36.193668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302989, -0.855874, 0.419139,
		0.718148, -0.084063, -0.690794,
		0.626467, 0.510307, 0.589174,
		28.285227, 36.955311, 36.370422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739010, 36.698338, 35.232307>,  <27.846699, 36.598095, 35.958000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739010, 36.698338, 35.232307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398211, 36.849346, 35.087212>,  <27.193731, 36.939949, 35.000153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398211, 36.849346, 35.087212>,  <27.739010, 36.698338, 35.232307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398211, 36.849346, 35.087212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337821, 0.132894, 0.931781,
		0.399969, 0.916417, 0.014308,
		-0.851999, 0.377517, -0.362739,
		27.142611, 36.962601, 34.978390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902182, 36.072544, 34.905045>,  <27.739010, 36.698338, 35.232307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902182, 36.072544, 34.905045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719749, 36.138851, 34.555298>,  <27.610291, 36.178635, 34.345451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719749, 36.138851, 34.555298>,  <27.902182, 36.072544, 34.905045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719749, 36.138851, 34.555298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750895, -0.599010, 0.278109,
		-0.477650, 0.783395, 0.397673,
		-0.456079, 0.165772, -0.874364,
		27.582926, 36.188583, 34.292988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202110, 36.258080, 35.087791>,  <27.902182, 36.072544, 34.905045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202110, 36.258080, 35.087791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208490, 36.112366, 34.715332>,  <27.212318, 36.024937, 34.491856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208490, 36.112366, 34.715332>,  <27.202110, 36.258080, 35.087791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208490, 36.112366, 34.715332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796589, -0.567477, 0.208366,
		-0.604311, 0.738420, -0.299239,
		0.015949, -0.364289, -0.931150,
		27.213276, 36.003078, 34.435986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536848, 36.517483, 35.351177>,  <27.202110, 36.258080, 35.087791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536848, 36.517483, 35.351177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206083, 36.438107, 35.561638>,  <26.007624, 36.390480, 35.687916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206083, 36.438107, 35.561638>,  <26.536848, 36.517483, 35.351177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206083, 36.438107, 35.561638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066575, -0.963634, -0.258801,
		0.558375, -0.178978, 0.810052,
		-0.826913, -0.198437, 0.526153,
		25.958010, 36.378574, 35.719482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602369, 35.948910, 35.776085>,  <26.536848, 36.517483, 35.351177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602369, 35.948910, 35.776085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202452, 35.941944, 35.771984>,  <25.962502, 35.937763, 35.769524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202452, 35.941944, 35.771984>,  <26.602369, 35.948910, 35.776085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202452, 35.941944, 35.771984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019092, -0.980353, -0.196323,
		-0.006629, -0.196478, 0.980486,
		-0.999796, -0.017418, -0.010250,
		25.902514, 35.936718, 35.768909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.449644, 35.268490, 36.043541>,  <26.602369, 35.948910, 35.776085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.449644, 35.268490, 36.043541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112976, 35.378754, 35.857807>,  <25.910975, 35.444912, 35.746368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112976, 35.378754, 35.857807>,  <26.449644, 35.268490, 36.043541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112976, 35.378754, 35.857807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071873, -0.909422, -0.409616,
		-0.535187, -0.311389, 0.785246,
		-0.841671, 0.275659, -0.464331,
		25.860476, 35.461452, 35.718510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074465, 35.459480, 36.443314>,  <26.449644, 35.268490, 36.043541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074465, 35.459480, 36.443314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182613, 35.220848, 36.745571>,  <27.247503, 35.077671, 36.926926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182613, 35.220848, 36.745571>,  <27.074465, 35.459480, 36.443314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182613, 35.220848, 36.745571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938530, -0.011645, -0.345002,
		0.214619, 0.802472, 0.556756,
		0.270371, -0.596576, 0.755643,
		27.263725, 35.041874, 36.972263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484922, 35.893974, 36.802826>,  <27.074465, 35.459480, 36.443314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484922, 35.893974, 36.802826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558018, 35.500710, 36.802048>,  <27.601875, 35.264751, 36.801582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558018, 35.500710, 36.802048>,  <27.484922, 35.893974, 36.802826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558018, 35.500710, 36.802048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883625, 0.165105, -0.438117,
		0.431060, 0.078345, 0.898916,
		0.182739, -0.983159, -0.001943,
		27.612839, 35.205761, 36.801464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260605, 35.574284, 37.035477>,  <27.484922, 35.893974, 36.802826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260605, 35.574284, 37.035477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092335, 35.374523, 36.732521>,  <27.991373, 35.254669, 36.550747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092335, 35.374523, 36.732521>,  <28.260605, 35.574284, 37.035477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092335, 35.374523, 36.732521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862206, 0.039601, -0.505007,
		0.282194, -0.865466, 0.413926,
		-0.420674, -0.499400, -0.757386,
		27.966133, 35.224705, 36.505306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875425, 35.375778, 36.797180>,  <28.260605, 35.574284, 37.035477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875425, 35.375778, 36.797180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622337, 35.266300, 36.507420>,  <28.470486, 35.200611, 36.333565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622337, 35.266300, 36.507420>,  <28.875425, 35.375778, 36.797180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622337, 35.266300, 36.507420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687081, 0.233075, -0.688183,
		0.357194, -0.933148, 0.040581,
		-0.632719, -0.273697, -0.724401,
		28.432522, 35.184193, 36.290100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148525, 34.704369, 36.402561>,  <28.875425, 35.375778, 36.797180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148525, 34.704369, 36.402561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920824, 34.979500, 36.222412>,  <28.784203, 35.144581, 36.114323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.920824, 34.979500, 36.222412>,  <29.148525, 34.704369, 36.402561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920824, 34.979500, 36.222412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788302, 0.301046, -0.536611,
		-0.233515, -0.660499, -0.713591,
		-0.569255, 0.687832, -0.450374,
		28.750048, 35.185848, 36.087299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360006, 34.763893, 35.726166>,  <29.148525, 34.704369, 36.402561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360006, 34.763893, 35.726166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187223, 35.115421, 35.807243>,  <29.083553, 35.326340, 35.855892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187223, 35.115421, 35.807243>,  <29.360006, 34.763893, 35.726166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187223, 35.115421, 35.807243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757295, 0.475482, -0.447683,
		-0.489812, -0.039879, -0.870916,
		-0.431958, 0.878821, 0.202697,
		29.057636, 35.379066, 35.868053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007772, 35.207672, 35.233189>,  <29.360006, 34.763893, 35.726166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007772, 35.207672, 35.233189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191114, 35.460365, 35.483250>,  <29.301121, 35.611980, 35.633286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191114, 35.460365, 35.483250>,  <29.007772, 35.207672, 35.233189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191114, 35.460365, 35.483250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775187, 0.059896, -0.628886,
		-0.434734, 0.772866, -0.462260,
		0.458357, 0.631736, 0.625155,
		29.328621, 35.649887, 35.670795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282747, 35.718922, 34.762928>,  <29.007772, 35.207672, 35.233189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282747, 35.718922, 34.762928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527369, 35.787106, 35.071976>,  <29.674141, 35.828014, 35.257404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527369, 35.787106, 35.071976>,  <29.282747, 35.718922, 34.762928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527369, 35.787106, 35.071976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744896, 0.205129, -0.634864,
		-0.266706, 0.963777, -0.001528,
		0.611554, 0.170460, 0.772623,
		29.710835, 35.838245, 35.303764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593998, 36.434761, 34.766518>,  <29.282747, 35.718922, 34.762928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593998, 36.434761, 34.766518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821947, 36.157700, 34.943371>,  <29.958715, 35.991463, 35.049484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821947, 36.157700, 34.943371>,  <29.593998, 36.434761, 34.766518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821947, 36.157700, 34.943371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778558, 0.282999, -0.560142,
		0.262860, 0.663434, 0.700542,
		0.569870, -0.692652, 0.442133,
		29.992908, 35.949905, 35.076012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179642, 36.765919, 34.816162>,  <29.593998, 36.434761, 34.766518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179642, 36.765919, 34.816162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233961, 36.370892, 34.784504>,  <30.266552, 36.133873, 34.765511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233961, 36.370892, 34.784504>,  <30.179642, 36.765919, 34.816162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233961, 36.370892, 34.784504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875569, 0.157010, -0.456865,
		0.463613, -0.007253, 0.886008,
		0.135798, -0.987570, -0.079143,
		30.274700, 36.074619, 34.760761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748251, 36.429909, 35.152828>,  <30.179642, 36.765919, 34.816162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748251, 36.429909, 35.152828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647438, 36.254078, 34.807980>,  <30.586950, 36.148579, 34.601070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647438, 36.254078, 34.807980>,  <30.748251, 36.429909, 35.152828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647438, 36.254078, 34.807980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770353, 0.448054, -0.453656,
		0.585694, -0.778472, 0.225707,
		-0.252030, -0.439577, -0.862121,
		30.571829, 36.122204, 34.549343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351355, 36.337524, 34.827583>,  <30.748251, 36.429909, 35.152828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351355, 36.337524, 34.827583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080383, 36.278267, 34.539379>,  <30.917801, 36.242714, 34.366455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080383, 36.278267, 34.539379>,  <31.351355, 36.337524, 34.827583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080383, 36.278267, 34.539379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601233, 0.452823, -0.658385,
		0.423799, -0.879207, -0.217689,
		-0.677431, -0.148141, -0.720515,
		30.877153, 36.233822, 34.323223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718870, 35.883808, 34.259884>,  <31.351355, 36.337524, 34.827583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718870, 35.883808, 34.259884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417728, 36.108566, 34.122780>,  <31.237043, 36.243420, 34.040516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417728, 36.108566, 34.122780>,  <31.718870, 35.883808, 34.259884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417728, 36.108566, 34.122780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524919, 0.198399, -0.827706,
		-0.397079, -0.803065, -0.444314,
		-0.752853, 0.561894, -0.342764,
		31.191872, 36.277134, 34.019951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671465, 35.861927, 33.508316>,  <31.718870, 35.883808, 34.259884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671465, 35.861927, 33.508316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500629, 36.208183, 33.612823>,  <31.398129, 36.415936, 33.675526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500629, 36.208183, 33.612823>,  <31.671465, 35.861927, 33.508316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500629, 36.208183, 33.612823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344989, 0.423087, -0.837842,
		-0.835809, -0.267700, -0.479333,
		-0.427090, 0.865641, 0.261267,
		31.372503, 36.467876, 33.691204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482929, 36.084816, 32.916409>,  <31.671465, 35.861927, 33.508316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482929, 36.084816, 32.916409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569839, 36.403355, 33.142197>,  <31.621986, 36.594479, 33.277668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569839, 36.403355, 33.142197>,  <31.482929, 36.084816, 32.916409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569839, 36.403355, 33.142197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621595, 0.332986, -0.709042,
		-0.752603, 0.504928, -0.422655,
		0.217277, 0.796347, 0.564467,
		31.635023, 36.642258, 33.311535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251333, 36.855881, 32.587837>,  <31.482929, 36.084816, 32.916409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251333, 36.855881, 32.587837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594358, 36.863499, 32.793446>,  <31.800175, 36.868069, 32.916813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594358, 36.863499, 32.793446>,  <31.251333, 36.855881, 32.587837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594358, 36.863499, 32.793446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497234, 0.225146, -0.837894,
		-0.131684, 0.974139, 0.183610,
		0.857565, 0.019040, 0.514024,
		31.851627, 36.869209, 32.947651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354836, 36.153690, 32.042942>,  <31.251333, 36.855881, 32.587837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354836, 36.153690, 32.042942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999279, 36.197803, 32.220802>,  <30.785946, 36.224270, 32.327518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999279, 36.197803, 32.220802>,  <31.354836, 36.153690, 32.042942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999279, 36.197803, 32.220802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309270, -0.860497, -0.404842,
		0.337973, -0.497377, 0.798993,
		-0.888890, 0.110279, 0.444649,
		30.732613, 36.230888, 32.354198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260534, 35.508465, 32.337940>,  <31.354836, 36.153690, 32.042942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260534, 35.508465, 32.337940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926741, 35.722397, 32.284885>,  <30.726465, 35.850758, 32.253052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926741, 35.722397, 32.284885>,  <31.260534, 35.508465, 32.337940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926741, 35.722397, 32.284885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358822, -0.710096, -0.605814,
		-0.418190, -0.457951, 0.784473,
		-0.834484, 0.534831, -0.132632,
		30.676395, 35.882847, 32.245094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902876, 35.361782, 32.076252>,  <31.260534, 35.508465, 32.337940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902876, 35.361782, 32.076252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771679, 35.540943, 31.743553>,  <31.692961, 35.648438, 31.543934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771679, 35.540943, 31.743553>,  <31.902876, 35.361782, 32.076252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771679, 35.540943, 31.743553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327704, -0.771837, -0.544865,
		-0.886019, -0.451280, 0.106379,
		-0.327994, 0.447900, -0.831748,
		31.673281, 35.675312, 31.494028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344971, 34.887451, 31.740437>,  <31.902876, 35.361782, 32.076252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344971, 34.887451, 31.740437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569218, 35.132915, 31.518040>,  <31.703766, 35.280193, 31.384602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569218, 35.132915, 31.518040>,  <31.344971, 34.887451, 31.740437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569218, 35.132915, 31.518040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261169, -0.768192, -0.584526,
		-0.785811, 0.182487, -0.590931,
		0.560617, 0.613660, -0.555994,
		31.737402, 35.317013, 31.351242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336325, 34.631359, 31.072971>,  <31.344971, 34.887451, 31.740437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336325, 34.631359, 31.072971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657328, 34.869431, 31.056267>,  <31.849930, 35.012276, 31.046244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657328, 34.869431, 31.056267>,  <31.336325, 34.631359, 31.072971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657328, 34.869431, 31.056267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452635, -0.652916, -0.607307,
		-0.388722, 0.468466, -0.793369,
		0.802506, 0.595181, -0.041759,
		31.898079, 35.047985, 31.043739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575321, 34.608234, 30.411407>,  <31.336325, 34.631359, 31.072971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575321, 34.608234, 30.411407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902113, 34.744026, 30.597868>,  <32.098186, 34.825500, 30.709743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902113, 34.744026, 30.597868>,  <31.575321, 34.608234, 30.411407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902113, 34.744026, 30.597868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554009, -0.686414, -0.471073,
		0.160052, 0.643109, -0.748862,
		0.816980, 0.339480, 0.466151,
		32.147205, 34.845871, 30.737713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017712, 34.718224, 29.897905>,  <31.575321, 34.608234, 30.411407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017712, 34.718224, 29.897905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248638, 34.700996, 30.224060>,  <32.387192, 34.690659, 30.419752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248638, 34.700996, 30.224060>,  <32.017712, 34.718224, 29.897905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248638, 34.700996, 30.224060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621684, -0.624220, -0.473137,
		0.529358, 0.780061, -0.333595,
		0.577312, -0.043068, 0.815387,
		32.421833, 34.688076, 30.468676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671326, 34.883755, 29.708418>,  <32.017712, 34.718224, 29.897905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671326, 34.883755, 29.708418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702328, 34.662418, 30.040155>,  <32.720928, 34.529617, 30.239199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702328, 34.662418, 30.040155>,  <32.671326, 34.883755, 29.708418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702328, 34.662418, 30.040155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629148, -0.618156, -0.471229,
		0.773412, 0.558301, 0.300223,
		0.077503, -0.553338, 0.829343,
		32.725578, 34.496418, 30.288958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385902, 34.791740, 29.768084>,  <32.671326, 34.883755, 29.708418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385902, 34.791740, 29.768084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226650, 34.507950, 30.000683>,  <33.131100, 34.337677, 30.140244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226650, 34.507950, 30.000683>,  <33.385902, 34.791740, 29.768084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226650, 34.507950, 30.000683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583778, -0.684928, -0.435978,
		0.707601, 0.165892, 0.686863,
		-0.398126, -0.709474, 0.581500,
		33.107212, 34.295109, 30.175133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923603, 34.395748, 30.128918>,  <33.385902, 34.791740, 29.768084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923603, 34.395748, 30.128918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598904, 34.162285, 30.120853>,  <33.404083, 34.022205, 30.116014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598904, 34.162285, 30.120853>,  <33.923603, 34.395748, 30.128918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598904, 34.162285, 30.120853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543423, -0.742243, -0.392132,
		0.213906, -0.329269, 0.919688,
		-0.811749, -0.583659, -0.020162,
		33.355377, 33.987186, 30.114805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188080, 33.833641, 30.298628>,  <33.923603, 34.395748, 30.128918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188080, 33.833641, 30.298628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841511, 33.712624, 30.139744>,  <33.633568, 33.640015, 30.044413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841511, 33.712624, 30.139744>,  <34.188080, 33.833641, 30.298628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841511, 33.712624, 30.139744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456809, -0.801463, -0.385983,
		-0.201574, -0.515875, 0.832611,
		-0.866426, -0.302540, -0.397211,
		33.581585, 33.621861, 30.020580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273010, 33.120953, 30.404385>,  <34.188080, 33.833641, 30.298628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273010, 33.120953, 30.404385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031925, 33.229893, 30.104368>,  <33.887276, 33.295258, 29.924358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031925, 33.229893, 30.104368>,  <34.273010, 33.120953, 30.404385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031925, 33.229893, 30.104368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436013, -0.674820, -0.595408,
		-0.668300, -0.685889, 0.287977,
		-0.602716, 0.272349, -0.750039,
		33.851112, 33.311600, 29.879356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379559, 32.568298, 29.880791>,  <34.273010, 33.120953, 30.404385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379559, 32.568298, 29.880791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159019, 32.813313, 29.654228>,  <34.026695, 32.960320, 29.518291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159019, 32.813313, 29.654228>,  <34.379559, 32.568298, 29.880791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159019, 32.813313, 29.654228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382241, -0.417996, -0.824118,
		-0.741558, -0.670879, -0.003676,
		-0.551347, 0.612536, -0.566406,
		33.993614, 32.997074, 29.484306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067291, 32.152664, 29.382687>,  <34.379559, 32.568298, 29.880791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067291, 32.152664, 29.382687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109943, 32.527695, 29.250273>,  <34.135532, 32.752712, 29.170824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109943, 32.527695, 29.250273>,  <34.067291, 32.152664, 29.382687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109943, 32.527695, 29.250273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396930, -0.345390, -0.850383,
		-0.911634, -0.040723, -0.408980,
		0.106627, 0.937575, -0.331034,
		34.141933, 32.808968, 29.150963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171581, 32.145672, 28.639751>,  <34.067291, 32.152664, 29.382687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171581, 32.145672, 28.639751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291466, 32.521946, 28.703358>,  <34.363396, 32.747711, 28.741522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291466, 32.521946, 28.703358>,  <34.171581, 32.145672, 28.639751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291466, 32.521946, 28.703358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577570, -0.046246, -0.815030,
		-0.759332, 0.336117, -0.557171,
		0.299712, 0.940684, 0.159015,
		34.381378, 32.804150, 28.751062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097603, 32.484039, 28.031755>,  <34.171581, 32.145672, 28.639751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097603, 32.484039, 28.031755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361519, 32.725601, 28.210630>,  <34.519867, 32.870537, 28.317955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361519, 32.725601, 28.210630>,  <34.097603, 32.484039, 28.031755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361519, 32.725601, 28.210630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444947, 0.165598, -0.880113,
		-0.605558, 0.779665, -0.159445,
		0.659790, 0.603904, 0.447188,
		34.559456, 32.906773, 28.344788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204559, 33.128483, 27.570459>,  <34.097603, 32.484039, 28.031755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204559, 33.128483, 27.570459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509853, 33.116707, 27.828640>,  <34.693031, 33.109642, 27.983547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509853, 33.116707, 27.828640>,  <34.204559, 33.128483, 27.570459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509853, 33.116707, 27.828640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644691, 0.101106, -0.757727,
		-0.042955, 0.994440, 0.096145,
		0.763235, -0.029436, 0.645450,
		34.738823, 33.107876, 28.022274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510582, 33.757595, 27.604012>,  <34.204559, 33.128483, 27.570459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510582, 33.757595, 27.604012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795803, 33.506702, 27.729322>,  <34.966934, 33.356167, 27.804508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795803, 33.506702, 27.729322>,  <34.510582, 33.757595, 27.604012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795803, 33.506702, 27.729322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524453, 0.180630, -0.832059,
		0.465306, 0.757598, 0.457751,
		0.713050, -0.627230, 0.313276,
		35.009720, 33.318535, 27.823305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108803, 34.185009, 27.647144>,  <34.510582, 33.757595, 27.604012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108803, 34.185009, 27.647144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206673, 33.800247, 27.598366>,  <35.265392, 33.569389, 27.569098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206673, 33.800247, 27.598366>,  <35.108803, 34.185009, 27.647144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206673, 33.800247, 27.598366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474488, 0.228464, -0.850097,
		0.845575, 0.150132, 0.512312,
		0.244671, -0.961907, -0.121948,
		35.280075, 33.511677, 27.561781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692711, 34.236023, 27.421883>,  <35.108803, 34.185009, 27.647144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692711, 34.236023, 27.421883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617275, 33.863010, 27.298708>,  <35.572014, 33.639202, 27.224804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617275, 33.863010, 27.298708>,  <35.692711, 34.236023, 27.421883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617275, 33.863010, 27.298708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456245, 0.194475, -0.868344,
		0.869642, -0.304250, 0.388787,
		-0.188584, -0.932530, -0.307936,
		35.560699, 33.583252, 27.206327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286152, 33.957420, 27.112455>,  <35.692711, 34.236023, 27.421883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286152, 33.957420, 27.112455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979939, 33.741825, 26.971916>,  <35.796211, 33.612469, 26.887592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979939, 33.741825, 26.971916>,  <36.286152, 33.957420, 27.112455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979939, 33.741825, 26.971916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422545, -0.009366, -0.906293,
		0.485192, -0.842260, 0.234917,
		-0.765535, -0.538989, -0.351349,
		35.750278, 33.580128, 26.866512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610935, 33.343193, 26.840031>,  <36.286152, 33.957420, 27.112455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610935, 33.343193, 26.840031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256592, 33.408142, 26.666185>,  <36.043987, 33.447109, 26.561878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256592, 33.408142, 26.666185>,  <36.610935, 33.343193, 26.840031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256592, 33.408142, 26.666185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414484, -0.143938, -0.898602,
		-0.208466, -0.976175, 0.060207,
		-0.885858, 0.162373, -0.434615,
		35.990833, 33.456852, 26.535801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506466, 32.766857, 26.342203>,  <36.610935, 33.343193, 26.840031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506466, 32.766857, 26.342203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263554, 33.075256, 26.265497>,  <36.117805, 33.260296, 26.219475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263554, 33.075256, 26.265497>,  <36.506466, 32.766857, 26.342203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263554, 33.075256, 26.265497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361085, 0.052842, -0.931034,
		-0.707694, -0.634639, -0.310486,
		-0.607277, 0.771000, -0.191763,
		36.081371, 33.306557, 26.207968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369244, 32.710510, 25.664995>,  <36.506466, 32.766857, 26.342203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369244, 32.710510, 25.664995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266327, 33.093922, 25.714033>,  <36.204578, 33.323967, 25.743456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266327, 33.093922, 25.714033>,  <36.369244, 32.710510, 25.664995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266327, 33.093922, 25.714033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262537, 0.191429, -0.945743,
		-0.929987, -0.211144, -0.300902,
		-0.257289, 0.958527, 0.122593,
		36.189140, 33.381481, 25.750811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979637, 32.828297, 25.014376>,  <36.369244, 32.710510, 25.664995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979637, 32.828297, 25.014376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063175, 33.186634, 25.171270>,  <36.113297, 33.401638, 25.265408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063175, 33.186634, 25.171270>,  <35.979637, 32.828297, 25.014376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063175, 33.186634, 25.171270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425906, 0.277727, -0.861087,
		-0.880334, 0.346890, -0.323543,
		0.208846, 0.895843, 0.392235,
		36.125828, 33.455387, 25.288940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689598, 33.249001, 24.523430>,  <35.979637, 32.828297, 25.014376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689598, 33.249001, 24.523430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938824, 33.486206, 24.727440>,  <36.088360, 33.628529, 24.849846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938824, 33.486206, 24.727440>,  <35.689598, 33.249001, 24.523430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938824, 33.486206, 24.727440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348542, 0.373248, -0.859770,
		-0.700221, 0.713458, 0.025867,
		0.623065, 0.593013, 0.510026,
		36.125744, 33.664108, 24.880447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647003, 33.837528, 24.235064>,  <35.689598, 33.249001, 24.523430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647003, 33.837528, 24.235064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009678, 33.883862, 24.397303>,  <36.227283, 33.911663, 24.494646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009678, 33.883862, 24.397303>,  <35.647003, 33.837528, 24.235064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009678, 33.883862, 24.397303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332007, 0.397143, -0.855599,
		-0.260187, 0.910418, 0.321625,
		0.906683, 0.115834, 0.405597,
		36.281681, 33.918613, 24.518982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832737, 34.466473, 24.052017>,  <35.647003, 33.837528, 24.235064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832737, 34.466473, 24.052017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163353, 34.265030, 24.152584>,  <36.361721, 34.144165, 24.212925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163353, 34.265030, 24.152584>,  <35.832737, 34.466473, 24.052017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163353, 34.265030, 24.152584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420996, 0.256620, -0.870005,
		0.373620, 0.824942, 0.424122,
		0.826541, -0.503605, 0.251419,
		36.411316, 34.113949, 24.228010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253056, 34.706665, 23.656809>,  <35.832737, 34.466473, 24.052017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253056, 34.706665, 23.656809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477455, 34.400330, 23.782520>,  <36.612095, 34.216530, 23.857948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477455, 34.400330, 23.782520>,  <36.253056, 34.706665, 23.656809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477455, 34.400330, 23.782520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621132, 0.138445, -0.771381,
		0.547242, 0.627955, 0.553353,
		0.561001, -0.765837, 0.314280,
		36.645756, 34.170578, 23.876804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949997, 34.833351, 23.714998>,  <36.253056, 34.706665, 23.656809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949997, 34.833351, 23.714998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932968, 34.442223, 23.632963>,  <36.922749, 34.207546, 23.583742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932968, 34.442223, 23.632963>,  <36.949997, 34.833351, 23.714998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932968, 34.442223, 23.632963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546058, 0.149126, -0.824368,
		0.836665, -0.147085, 0.527596,
		-0.042574, -0.977818, -0.205086,
		36.920197, 34.148876, 23.571438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569183, 34.629681, 23.472647>,  <36.949997, 34.833351, 23.714998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569183, 34.629681, 23.472647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332756, 34.337166, 23.336491>,  <37.190899, 34.161659, 23.254797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332756, 34.337166, 23.336491>,  <37.569183, 34.629681, 23.472647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332756, 34.337166, 23.336491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470858, 0.029835, -0.881704,
		0.654932, -0.681421, 0.326696,
		-0.591065, -0.731283, -0.340392,
		37.155437, 34.117783, 23.234373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963238, 34.138908, 23.118053>,  <37.569183, 34.629681, 23.472647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963238, 34.138908, 23.118053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602310, 34.074554, 22.958080>,  <37.385754, 34.035942, 22.862097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602310, 34.074554, 22.958080>,  <37.963238, 34.138908, 23.118053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602310, 34.074554, 22.958080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405699, -0.003295, -0.914001,
		0.145731, -0.986968, 0.068244,
		-0.902314, -0.160884, -0.399931,
		37.331615, 34.026291, 22.838100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089127, 33.650120, 22.673901>,  <37.963238, 34.138908, 23.118053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089127, 33.650120, 22.673901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742126, 33.809025, 22.554148>,  <37.533928, 33.904369, 22.482296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742126, 33.809025, 22.554148>,  <38.089127, 33.650120, 22.673901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742126, 33.809025, 22.554148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330925, 0.011540, -0.943586,
		-0.371396, -0.917633, -0.141475,
		-0.867498, 0.397262, -0.299382,
		37.481876, 33.928204, 22.464333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843868, 33.242992, 22.095619>,  <38.089127, 33.650120, 22.673901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843868, 33.242992, 22.095619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661743, 33.597645, 22.063192>,  <37.552467, 33.810436, 22.043736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661743, 33.597645, 22.063192>,  <37.843868, 33.242992, 22.095619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661743, 33.597645, 22.063192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367202, 0.104057, -0.924302,
		-0.811082, -0.450614, -0.372952,
		-0.455312, 0.886634, -0.081067,
		37.525150, 33.863636, 22.038872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697197, 33.302704, 21.476070>,  <37.843868, 33.242992, 22.095619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697197, 33.302704, 21.476070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644001, 33.691448, 21.553844>,  <37.612083, 33.924694, 21.600510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644001, 33.691448, 21.553844>,  <37.697197, 33.302704, 21.476070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644001, 33.691448, 21.553844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382644, 0.231312, -0.894471,
		-0.914275, -0.044552, -0.402637,
		-0.132986, 0.971859, 0.194435,
		37.604107, 33.983006, 21.612175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318184, 33.576405, 20.845894>,  <37.697197, 33.302704, 21.476070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318184, 33.576405, 20.845894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481182, 33.886997, 21.038155>,  <37.578979, 34.073353, 21.153511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481182, 33.886997, 21.038155>,  <37.318184, 33.576405, 20.845894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481182, 33.886997, 21.038155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322677, 0.369955, -0.871213,
		-0.854298, 0.510113, -0.099796,
		0.407497, 0.776478, 0.480654,
		37.603432, 34.119942, 21.182350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271976, 34.101696, 20.302061>,  <37.318184, 33.576405, 20.845894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271976, 34.101696, 20.302061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541279, 34.242500, 20.562157>,  <37.702862, 34.326984, 20.718214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541279, 34.242500, 20.562157>,  <37.271976, 34.101696, 20.302061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541279, 34.242500, 20.562157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481210, 0.459090, -0.746775,
		-0.561395, 0.815673, 0.139692,
		0.673255, 0.352015, 0.650241,
		37.743256, 34.348106, 20.757229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395519, 34.785385, 20.116861>,  <37.271976, 34.101696, 20.302061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395519, 34.785385, 20.116861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704994, 34.669205, 20.342087>,  <37.890678, 34.599495, 20.477222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704994, 34.669205, 20.342087>,  <37.395519, 34.785385, 20.116861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704994, 34.669205, 20.342087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624145, 0.502119, -0.598598,
		-0.108861, 0.814563, 0.569769,
		0.773688, -0.290455, 0.563066,
		37.937099, 34.582069, 20.511007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696487, 35.380844, 20.261612>,  <37.395519, 34.785385, 20.116861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696487, 35.380844, 20.261612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989059, 35.111031, 20.301649>,  <38.164600, 34.949142, 20.325670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989059, 35.111031, 20.301649>,  <37.696487, 35.380844, 20.261612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989059, 35.111031, 20.301649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595428, 0.560192, -0.575891,
		0.332388, 0.480819, 0.811376,
		0.731426, -0.674536, 0.100092,
		38.208488, 34.908669, 20.331676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252472, 35.822659, 20.475937>,  <37.696487, 35.380844, 20.261612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252472, 35.822659, 20.475937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382168, 35.466942, 20.346926>,  <38.459984, 35.253510, 20.269518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382168, 35.466942, 20.346926>,  <38.252472, 35.822659, 20.475937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382168, 35.466942, 20.346926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672211, 0.456489, -0.582881,
		0.665584, -0.027816, 0.745805,
		0.324239, -0.889294, -0.322530,
		38.479439, 35.200153, 20.250166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901718, 35.765236, 20.559799>,  <38.252472, 35.822659, 20.475937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901718, 35.765236, 20.559799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854824, 35.478870, 20.284489>,  <38.826687, 35.307053, 20.119303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854824, 35.478870, 20.284489>,  <38.901718, 35.765236, 20.559799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854824, 35.478870, 20.284489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805897, 0.336414, -0.487192,
		0.580333, -0.611794, 0.537513,
		-0.117234, -0.715914, -0.688275,
		38.819653, 35.264095, 20.078007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534657, 35.416111, 20.454977>,  <38.901718, 35.765236, 20.559799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534657, 35.416111, 20.454977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318211, 35.340179, 20.127281>,  <39.188343, 35.294621, 19.930664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318211, 35.340179, 20.127281>,  <39.534657, 35.416111, 20.454977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318211, 35.340179, 20.127281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744210, 0.345533, -0.571627,
		0.391589, -0.919005, -0.045698,
		-0.541118, -0.189834, -0.819240,
		39.155876, 35.283230, 19.881510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012405, 35.050251, 19.921652>,  <39.534657, 35.416111, 20.454977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012405, 35.050251, 19.921652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693459, 35.169533, 19.711784>,  <39.502090, 35.241100, 19.585863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693459, 35.169533, 19.711784>,  <40.012405, 35.050251, 19.921652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693459, 35.169533, 19.711784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596541, 0.257885, -0.760023,
		-0.091335, -0.919006, -0.383518,
		-0.797369, 0.298201, -0.524670,
		39.454247, 35.258991, 19.554382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043121, 34.701939, 19.223965>,  <40.012405, 35.050251, 19.921652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043121, 34.701939, 19.223965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795574, 35.008713, 19.156069>,  <39.647045, 35.192776, 19.115332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795574, 35.008713, 19.156069>,  <40.043121, 34.701939, 19.223965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795574, 35.008713, 19.156069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601955, 0.324233, -0.729741,
		-0.504628, -0.553792, -0.662318,
		-0.618870, 0.766934, -0.169741,
		39.609913, 35.238792, 19.105146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839535, 34.751053, 18.441122>,  <40.043121, 34.701939, 19.223965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839535, 34.751053, 18.441122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810215, 35.108227, 18.618795>,  <39.792622, 35.322529, 18.725399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810215, 35.108227, 18.618795>,  <39.839535, 34.751053, 18.441122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810215, 35.108227, 18.618795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699726, 0.363406, -0.615077,
		-0.710641, 0.265722, -0.651445,
		-0.073300, 0.892932, 0.444184,
		39.788223, 35.376106, 18.752050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832081, 35.243076, 17.943020>,  <39.839535, 34.751053, 18.441122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832081, 35.243076, 17.943020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006721, 35.357502, 18.284204>,  <40.111507, 35.426159, 18.488914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006721, 35.357502, 18.284204>,  <39.832081, 35.243076, 17.943020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006721, 35.357502, 18.284204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781492, 0.349104, -0.517104,
		-0.445698, 0.892352, -0.071140,
		0.436604, 0.286068, 0.852961,
		40.137703, 35.443321, 18.540092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121212, 35.958241, 17.914532>,  <39.832081, 35.243076, 17.943020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121212, 35.958241, 17.914532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362713, 35.702896, 18.105516>,  <40.507614, 35.549690, 18.220106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362713, 35.702896, 18.105516>,  <40.121212, 35.958241, 17.914532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362713, 35.702896, 18.105516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791066, 0.405809, -0.457748,
		0.098452, 0.654071, 0.749999,
		0.603756, -0.638365, 0.477461,
		40.543839, 35.511387, 18.248755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200428, 36.614193, 18.195501>,  <40.121212, 35.958241, 17.914532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200428, 36.614193, 18.195501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416508, 36.950527, 18.181744>,  <40.546154, 37.152328, 18.173489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416508, 36.950527, 18.181744>,  <40.200428, 36.614193, 18.195501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416508, 36.950527, 18.181744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320422, -0.243305, -0.915496,
		-0.778148, 0.483530, -0.400855,
		0.540200, 0.840834, -0.034394,
		40.578568, 37.202778, 18.171425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007645, 37.025810, 17.539175>,  <40.200428, 36.614193, 18.195501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007645, 37.025810, 17.539175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381046, 37.098446, 17.662853>,  <40.605087, 37.142029, 17.737061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381046, 37.098446, 17.662853>,  <40.007645, 37.025810, 17.539175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381046, 37.098446, 17.662853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329038, -0.091094, -0.939913,
		-0.142511, 0.979146, -0.144786,
		0.933501, 0.181588, 0.309194,
		40.661098, 37.152924, 17.755611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431019, 37.544880, 17.081236>,  <40.007645, 37.025810, 17.539175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431019, 37.544880, 17.081236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684654, 37.293743, 17.261789>,  <40.836838, 37.143063, 17.370121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684654, 37.293743, 17.261789>,  <40.431019, 37.544880, 17.081236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684654, 37.293743, 17.261789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498760, -0.113999, -0.859210,
		0.590902, 0.769951, 0.240855,
		0.634092, -0.627838, 0.451383,
		40.874882, 37.105392, 17.397203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112839, 37.745529, 16.866400>,  <40.431019, 37.544880, 17.081236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112839, 37.745529, 16.866400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109234, 37.356209, 16.958139>,  <41.107071, 37.122616, 17.013184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109234, 37.356209, 16.958139>,  <41.112839, 37.745529, 16.866400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109234, 37.356209, 16.958139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371520, -0.216197, -0.902902,
		0.928381, 0.077071, 0.363550,
		-0.009011, -0.973303, 0.229347,
		41.106529, 37.064217, 17.026943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837925, 37.374714, 16.873293>,  <41.112839, 37.745529, 16.866400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837925, 37.374714, 16.873293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549080, 37.113541, 16.781879>,  <41.375771, 36.956837, 16.727032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549080, 37.113541, 16.781879>,  <41.837925, 37.374714, 16.873293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549080, 37.113541, 16.781879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484083, -0.240945, -0.841195,
		0.494181, -0.718069, 0.490064,
		-0.722114, -0.652934, -0.228534,
		41.332447, 36.917660, 16.713320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872520, 36.705029, 17.326632>,  <41.837925, 37.374714, 16.873293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872520, 36.705029, 17.326632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618858, 36.990482, 17.207586>,  <41.466663, 37.161755, 17.136158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618858, 36.990482, 17.207586>,  <41.872520, 36.705029, 17.326632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618858, 36.990482, 17.207586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105993, 0.301043, 0.947702,
		0.765908, 0.632533, -0.115267,
		-0.634153, 0.713635, -0.297615,
		41.428612, 37.204575, 17.118301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085484, 37.321835, 17.589626>,  <41.872520, 36.705029, 17.326632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085484, 37.321835, 17.589626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688892, 37.305641, 17.540083>,  <41.450939, 37.295925, 17.510357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688892, 37.305641, 17.540083>,  <42.085484, 37.321835, 17.589626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688892, 37.305641, 17.540083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128932, 0.442444, 0.887480,
		0.018873, 0.895882, -0.443891,
		-0.991474, -0.040482, -0.123858,
		41.391449, 37.293495, 17.502926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859207, 37.586056, 18.112232>,  <42.085484, 37.321835, 17.589626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859207, 37.586056, 18.112232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489063, 37.477024, 18.006842>,  <41.266979, 37.411606, 17.943607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489063, 37.477024, 18.006842>,  <41.859207, 37.586056, 18.112232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489063, 37.477024, 18.006842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358934, 0.406294, 0.840292,
		-0.121994, 0.872140, -0.473803,
		-0.925356, -0.272575, -0.263475,
		41.211456, 37.395252, 17.927799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500374, 38.140369, 18.191013>,  <41.859207, 37.586056, 18.112232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500374, 38.140369, 18.191013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208977, 37.866383, 18.186714>,  <41.034138, 37.701988, 18.184134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208977, 37.866383, 18.186714>,  <41.500374, 38.140369, 18.191013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208977, 37.866383, 18.186714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396689, 0.408998, 0.821802,
		-0.558513, 0.602941, -0.569672,
		-0.728493, -0.684969, -0.010750,
		40.990429, 37.660892, 18.183489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904484, 38.574066, 18.121370>,  <41.500374, 38.140369, 18.191013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904484, 38.574066, 18.121370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773033, 38.234486, 18.286921>,  <40.694164, 38.030739, 18.386250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773033, 38.234486, 18.286921>,  <40.904484, 38.574066, 18.121370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773033, 38.234486, 18.286921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345068, 0.515842, 0.784115,
		-0.879166, 0.114866, -0.462464,
		-0.328626, -0.848948, 0.413874,
		40.674446, 37.979801, 18.411083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159149, 38.622017, 18.316681>,  <40.904484, 38.574066, 18.121370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159149, 38.622017, 18.316681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325306, 38.333881, 18.538876>,  <40.424999, 38.160999, 18.672192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325306, 38.333881, 18.538876>,  <40.159149, 38.622017, 18.316681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325306, 38.333881, 18.538876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387451, 0.412390, 0.824510,
		-0.823001, -0.557720, -0.107791,
		0.415394, -0.720335, 0.555486,
		40.449924, 38.117783, 18.705521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606514, 38.479179, 18.793818>,  <40.159149, 38.622017, 18.316681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606514, 38.479179, 18.793818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945442, 38.339935, 18.954252>,  <40.148800, 38.256390, 19.050512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945442, 38.339935, 18.954252>,  <39.606514, 38.479179, 18.793818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945442, 38.339935, 18.954252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259404, 0.387726, 0.884521,
		-0.463422, -0.853515, 0.238227,
		0.847319, -0.348110, 0.401086,
		40.199638, 38.235504, 19.074577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403336, 38.067802, 19.378469>,  <39.606514, 38.479179, 18.793818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403336, 38.067802, 19.378469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786201, 38.160015, 19.448538>,  <40.015923, 38.215343, 19.490580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786201, 38.160015, 19.448538>,  <39.403336, 38.067802, 19.378469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786201, 38.160015, 19.448538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222279, 0.197403, 0.954790,
		0.185500, -0.952838, 0.240185,
		0.957174, 0.230502, 0.175178,
		40.073353, 38.229172, 19.501089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463997, 37.822292, 19.982912>,  <39.403336, 38.067802, 19.378469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463997, 37.822292, 19.982912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786503, 38.056438, 19.948784>,  <39.980007, 38.196926, 19.928307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786503, 38.056438, 19.948784>,  <39.463997, 37.822292, 19.982912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786503, 38.056438, 19.948784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022099, 0.173935, 0.984509,
		0.591141, -0.791890, 0.153174,
		0.806266, 0.585369, -0.085321,
		40.028381, 38.232048, 19.923187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808582, 37.728168, 20.594799>,  <39.463997, 37.822292, 19.982912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808582, 37.728168, 20.594799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964268, 38.075176, 20.470917>,  <40.057678, 38.283382, 20.396587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964268, 38.075176, 20.470917>,  <39.808582, 37.728168, 20.594799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964268, 38.075176, 20.470917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057325, 0.358377, 0.931815,
		0.919362, -0.344921, 0.189216,
		0.389214, 0.867523, -0.309706,
		40.081032, 38.335434, 20.378006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354645, 37.907349, 21.042442>,  <39.808582, 37.728168, 20.594799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354645, 37.907349, 21.042442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212242, 38.237759, 20.867657>,  <40.126801, 38.436005, 20.762785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212242, 38.237759, 20.867657>,  <40.354645, 37.907349, 21.042442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212242, 38.237759, 20.867657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234773, 0.373543, 0.897411,
		0.904511, 0.422073, 0.060944,
		-0.356008, 0.826026, -0.436965,
		40.105438, 38.485565, 20.736567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737263, 38.559078, 21.312778>,  <40.354645, 37.907349, 21.042442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737263, 38.559078, 21.312778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373108, 38.657551, 21.179760>,  <40.154613, 38.716633, 21.099949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373108, 38.657551, 21.179760>,  <40.737263, 38.559078, 21.312778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373108, 38.657551, 21.179760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271183, 0.252000, 0.928954,
		0.312490, 0.935891, -0.162659,
		-0.910390, 0.246179, -0.332545,
		40.099991, 38.731403, 21.079996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504471, 39.083595, 21.730610>,  <40.737263, 38.559078, 21.312778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504471, 39.083595, 21.730610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169353, 38.978149, 21.539358>,  <39.968285, 38.914883, 21.424606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169353, 38.978149, 21.539358>,  <40.504471, 39.083595, 21.730610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169353, 38.978149, 21.539358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524074, 0.142675, 0.839637,
		-0.153122, 0.954019, -0.257686,
		-0.837795, -0.263614, -0.478130,
		39.918015, 38.899067, 21.395920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098106, 39.544788, 22.114237>,  <40.504471, 39.083595, 21.730610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098106, 39.544788, 22.114237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849976, 39.317165, 21.898323>,  <39.701096, 39.180592, 21.768776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.849976, 39.317165, 21.898323>,  <40.098106, 39.544788, 22.114237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849976, 39.317165, 21.898323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707851, 0.109739, 0.697785,
		-0.337846, 0.814941, -0.470883,
		-0.620328, -0.569059, -0.539782,
		39.663876, 39.146446, 21.736389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410809, 39.881081, 21.924179>,  <40.098106, 39.544788, 22.114237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410809, 39.881081, 21.924179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333683, 39.488884, 21.939455>,  <39.287407, 39.253567, 21.948620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333683, 39.488884, 21.939455>,  <39.410809, 39.881081, 21.924179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333683, 39.488884, 21.939455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745862, 0.171742, 0.643579,
		-0.637583, 0.095609, -0.764426,
		-0.192816, -0.980491, 0.038189,
		39.275837, 39.194736, 21.950912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679897, 39.853432, 21.897604>,  <39.410809, 39.881081, 21.924179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679897, 39.853432, 21.897604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782036, 39.489273, 22.027821>,  <38.843319, 39.270779, 22.105949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782036, 39.489273, 22.027821>,  <38.679897, 39.853432, 21.897604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782036, 39.489273, 22.027821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700230, 0.058041, 0.711555,
		-0.666692, -0.409643, -0.622667,
		0.255343, -0.910398, 0.325539,
		38.858639, 39.216152, 22.125483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015800, 39.411198, 21.914982>,  <38.679897, 39.853432, 21.897604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015800, 39.411198, 21.914982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291103, 39.268421, 22.167616>,  <38.456284, 39.182755, 22.319197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291103, 39.268421, 22.167616>,  <38.015800, 39.411198, 21.914982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291103, 39.268421, 22.167616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713169, -0.173271, 0.679240,
		-0.133008, -0.917919, -0.373809,
		0.688258, -0.356933, 0.631585,
		38.497581, 39.161339, 22.357090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798550, 38.755970, 22.055672>,  <38.015800, 39.411198, 21.914982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798550, 38.755970, 22.055672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051685, 38.877014, 22.340752>,  <38.203568, 38.949638, 22.511799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051685, 38.877014, 22.340752>,  <37.798550, 38.755970, 22.055672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051685, 38.877014, 22.340752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648594, -0.295549, 0.701411,
		0.422890, -0.906134, 0.009234,
		0.632843, 0.302609, 0.712698,
		38.241539, 38.967796, 22.554562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700695, 38.265526, 22.564243>,  <37.798550, 38.755970, 22.055672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700695, 38.265526, 22.564243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915260, 38.538063, 22.763456>,  <38.043999, 38.701584, 22.882984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915260, 38.538063, 22.763456>,  <37.700695, 38.265526, 22.564243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915260, 38.538063, 22.763456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657761, -0.032226, 0.752537,
		0.528783, -0.731257, 0.430872,
		0.536413, 0.681340, 0.498033,
		38.076183, 38.742466, 22.912867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857822, 37.989037, 23.202318>,  <37.700695, 38.265526, 22.564243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857822, 37.989037, 23.202318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865841, 38.386517, 23.246412>,  <37.870651, 38.625004, 23.272869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865841, 38.386517, 23.246412>,  <37.857822, 37.989037, 23.202318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865841, 38.386517, 23.246412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624182, -0.073691, 0.777796,
		0.781022, -0.084403, 0.618774,
		0.020051, 0.993703, 0.110238,
		37.871857, 38.684628, 23.279484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940697, 38.055496, 23.932686>,  <37.857822, 37.989037, 23.202318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940697, 38.055496, 23.932686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811623, 38.422890, 23.841234>,  <37.734177, 38.643326, 23.786364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811623, 38.422890, 23.841234>,  <37.940697, 38.055496, 23.932686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811623, 38.422890, 23.841234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598807, -0.011035, 0.800817,
		0.733011, 0.395316, 0.553552,
		-0.322684, 0.918479, -0.228629,
		37.714817, 38.698433, 23.772646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897953, 38.477787, 24.587744>,  <37.940697, 38.055496, 23.932686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897953, 38.477787, 24.587744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664379, 38.646435, 24.310253>,  <37.524235, 38.747623, 24.143759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664379, 38.646435, 24.310253>,  <37.897953, 38.477787, 24.587744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664379, 38.646435, 24.310253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751314, 0.043004, 0.658542,
		0.307485, 0.905754, 0.291655,
		-0.583935, 0.421617, -0.693729,
		37.489197, 38.772919, 24.102135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603382, 38.976551, 24.993246>,  <37.897953, 38.477787, 24.587744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603382, 38.976551, 24.993246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360035, 38.930576, 24.679131>,  <37.214027, 38.902992, 24.490662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360035, 38.930576, 24.679131>,  <37.603382, 38.976551, 24.993246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360035, 38.930576, 24.679131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792691, 0.136790, 0.594079,
		0.039139, 0.983909, -0.174327,
		-0.608366, -0.114935, -0.785290,
		37.177525, 38.896095, 24.443544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119179, 39.345493, 25.221842>,  <37.603382, 38.976551, 24.993246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119179, 39.345493, 25.221842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952896, 39.157326, 24.910486>,  <36.853127, 39.044426, 24.723673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952896, 39.157326, 24.910486>,  <37.119179, 39.345493, 25.221842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952896, 39.157326, 24.910486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905461, 0.133526, 0.402878,
		-0.085587, 0.872282, -0.481455,
		-0.415710, -0.470420, -0.778389,
		36.828182, 39.016201, 24.676970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481422, 39.816360, 24.962732>,  <37.119179, 39.345493, 25.221842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481422, 39.816360, 24.962732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442272, 39.423893, 24.896132>,  <36.418781, 39.188412, 24.856171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442272, 39.423893, 24.896132>,  <36.481422, 39.816360, 24.962732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442272, 39.423893, 24.896132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885069, 0.009319, 0.465366,
		-0.455052, 0.192912, -0.869317,
		-0.097876, -0.981172, -0.166500,
		36.412910, 39.129539, 24.846182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819286, 39.784645, 24.776234>,  <36.481422, 39.816360, 24.962732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819286, 39.784645, 24.776234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910801, 39.403633, 24.856581>,  <35.965710, 39.175026, 24.904789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910801, 39.403633, 24.856581>,  <35.819286, 39.784645, 24.776234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910801, 39.403633, 24.856581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900694, -0.128840, 0.414911,
		-0.369335, -0.275844, -0.887413,
		0.228785, -0.952529, 0.200866,
		35.979435, 39.117874, 24.916840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208836, 39.393875, 24.567617>,  <35.819286, 39.784645, 24.776234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208836, 39.393875, 24.567617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403858, 39.164806, 24.831232>,  <35.520874, 39.027367, 24.989401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403858, 39.164806, 24.831232>,  <35.208836, 39.393875, 24.567617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403858, 39.164806, 24.831232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860320, -0.186492, 0.474415,
		-0.148776, -0.798294, -0.583604,
		0.487560, -0.572668, 0.659043,
		35.550125, 38.993004, 25.028944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796482, 38.729656, 24.825161>,  <35.208836, 39.393875, 24.567617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796482, 38.729656, 24.825161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080246, 38.734657, 25.107035>,  <35.250504, 38.737659, 25.276159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080246, 38.734657, 25.107035>,  <34.796482, 38.729656, 24.825161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080246, 38.734657, 25.107035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654003, -0.361004, 0.664797,
		0.262705, -0.932480, -0.247925,
		0.709412, 0.012502, 0.704683,
		35.293068, 38.738407, 25.318439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836811, 37.996758, 25.161165>,  <34.796482, 38.729656, 24.825161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836811, 37.996758, 25.161165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972717, 38.272099, 25.417521>,  <35.054260, 38.437302, 25.571333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972717, 38.272099, 25.417521>,  <34.836811, 37.996758, 25.161165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972717, 38.272099, 25.417521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626436, -0.342646, 0.700123,
		0.701526, -0.639351, 0.314788,
		0.339764, 0.688349, 0.640887,
		35.074646, 38.478603, 25.609787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831776, 37.693909, 25.822859>,  <34.836811, 37.996758, 25.161165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831776, 37.693909, 25.822859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878586, 38.067963, 25.956621>,  <34.906673, 38.292397, 26.036879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878586, 38.067963, 25.956621>,  <34.831776, 37.693909, 25.822859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878586, 38.067963, 25.956621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513937, -0.231102, 0.826112,
		0.849808, -0.268541, 0.453555,
		0.117027, 0.935135, 0.334405,
		34.913692, 38.348503, 26.056942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099140, 37.628265, 26.634960>,  <34.831776, 37.693909, 25.822859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099140, 37.628265, 26.634960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937862, 37.989319, 26.574717>,  <34.841095, 38.205952, 26.538570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937862, 37.989319, 26.574717>,  <35.099140, 37.628265, 26.634960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937862, 37.989319, 26.574717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620865, -0.148913, 0.769644,
		0.672279, 0.403827, 0.620455,
		-0.403197, 0.902634, -0.150611,
		34.816902, 38.260109, 26.529533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114552, 38.073177, 27.259239>,  <35.099140, 37.628265, 26.634960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114552, 38.073177, 27.259239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816063, 38.244293, 27.055222>,  <34.636971, 38.346962, 26.932812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816063, 38.244293, 27.055222>,  <35.114552, 38.073177, 27.259239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816063, 38.244293, 27.055222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604633, -0.115007, 0.788158,
		0.278508, 0.896531, 0.344478,
		-0.746225, 0.427791, -0.510042,
		34.592194, 38.372631, 26.902208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881668, 38.532028, 27.730499>,  <35.114552, 38.073177, 27.259239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881668, 38.532028, 27.730499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583199, 38.465237, 27.472710>,  <34.404118, 38.425163, 27.318035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583199, 38.465237, 27.472710>,  <34.881668, 38.532028, 27.730499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583199, 38.465237, 27.472710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653628, -0.000180, 0.756816,
		-0.126485, 0.985961, -0.109005,
		-0.746172, -0.166975, -0.644474,
		34.359348, 38.415146, 27.279367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370739, 38.924908, 27.866837>,  <34.881668, 38.532028, 27.730499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370739, 38.924908, 27.866837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179031, 38.647820, 27.651266>,  <34.064007, 38.481567, 27.521923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179031, 38.647820, 27.651266>,  <34.370739, 38.924908, 27.866837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179031, 38.647820, 27.651266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747132, -0.000199, 0.664675,
		-0.460542, 0.721205, -0.517459,
		-0.479265, -0.692721, -0.538927,
		34.035252, 38.440002, 27.489588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719219, 39.154182, 27.812403>,  <34.370739, 38.924908, 27.866837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719219, 39.154182, 27.812403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665958, 38.765179, 27.735985>,  <33.634003, 38.531776, 27.690134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665958, 38.765179, 27.735985>,  <33.719219, 39.154182, 27.812403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665958, 38.765179, 27.735985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772567, -0.018895, 0.634652,
		-0.620815, 0.232100, -0.748812,
		-0.133154, -0.972508, -0.191043,
		33.626011, 38.473427, 27.678673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042465, 39.074203, 27.902967>,  <33.719219, 39.154182, 27.812403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042465, 39.074203, 27.902967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160221, 38.692505, 27.882023>,  <33.230877, 38.463486, 27.869457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160221, 38.692505, 27.882023>,  <33.042465, 39.074203, 27.902967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160221, 38.692505, 27.882023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660097, -0.242653, 0.710909,
		-0.691090, -0.174723, -0.701332,
		0.294392, -0.954249, -0.052361,
		33.248539, 38.406231, 27.866314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367241, 38.780609, 28.159266>,  <33.042465, 39.074203, 27.902967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367241, 38.780609, 28.159266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647022, 38.494957, 28.170494>,  <32.814892, 38.323566, 28.177231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647022, 38.494957, 28.170494>,  <32.367241, 38.780609, 28.159266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647022, 38.494957, 28.170494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470110, -0.430151, 0.770692,
		-0.538298, -0.552259, -0.636589,
		0.699452, -0.714128, 0.028073,
		32.856857, 38.280720, 28.178917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002327, 38.111908, 28.294531>,  <32.367241, 38.780609, 28.159266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002327, 38.111908, 28.294531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380566, 38.111080, 28.424667>,  <32.607510, 38.110584, 28.502750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380566, 38.111080, 28.424667>,  <32.002327, 38.111908, 28.294531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380566, 38.111080, 28.424667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311765, -0.291701, 0.904275,
		0.093034, -0.956508, -0.276475,
		0.945594, -0.002067, 0.325343,
		32.664246, 38.110458, 28.522270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091717, 37.523540, 28.607113>,  <32.002327, 38.111908, 28.294531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091717, 37.523540, 28.607113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386417, 37.745979, 28.760975>,  <32.563236, 37.879440, 28.853292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386417, 37.745979, 28.760975>,  <32.091717, 37.523540, 28.607113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386417, 37.745979, 28.760975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214396, -0.347403, 0.912878,
		0.641278, -0.755029, -0.136724,
		0.736747, 0.556095, 0.384657,
		32.607441, 37.912807, 28.876371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396755, 37.030910, 29.174858>,  <32.091717, 37.523540, 28.607113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396755, 37.030910, 29.174858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504135, 37.408649, 29.250898>,  <32.568562, 37.635292, 29.296522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504135, 37.408649, 29.250898>,  <32.396755, 37.030910, 29.174858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504135, 37.408649, 29.250898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186415, -0.142684, 0.972055,
		0.945085, -0.296383, 0.137738,
		0.268448, 0.944351, 0.190099,
		32.584671, 37.691956, 29.307928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894394, 37.028763, 29.698271>,  <32.396755, 37.030910, 29.174858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894394, 37.028763, 29.698271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737118, 37.396542, 29.700003>,  <32.642754, 37.617210, 29.701042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737118, 37.396542, 29.700003>,  <32.894394, 37.028763, 29.698271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737118, 37.396542, 29.700003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208574, -0.093779, 0.973500,
		0.895489, 0.381866, 0.228646,
		-0.393188, 0.919448, 0.004331,
		32.619160, 37.672375, 29.701302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268536, 37.439995, 30.272036>,  <32.894394, 37.028763, 29.698271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268536, 37.439995, 30.272036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928474, 37.641769, 30.211651>,  <32.724438, 37.762833, 30.175419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928474, 37.641769, 30.211651>,  <33.268536, 37.439995, 30.272036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928474, 37.641769, 30.211651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218120, -0.076439, 0.972924,
		0.479240, 0.860058, 0.175012,
		-0.850149, 0.504438, -0.150963,
		32.673431, 37.793102, 30.166361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124123, 37.947258, 30.865561>,  <33.268536, 37.439995, 30.272036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124123, 37.947258, 30.865561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772533, 37.885952, 30.684937>,  <32.561577, 37.849167, 30.576561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772533, 37.885952, 30.684937>,  <33.124123, 37.947258, 30.865561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772533, 37.885952, 30.684937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396324, -0.291818, 0.870500,
		-0.265190, 0.944115, 0.195759,
		-0.878978, -0.153264, -0.451562,
		32.508839, 37.839973, 30.549467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864281, 37.730293, 31.162001>,  <33.124123, 37.947258, 30.865561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864281, 37.730293, 31.162001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031185, 37.718105, 31.525311>,  <34.131329, 37.710793, 31.743296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031185, 37.718105, 31.525311>,  <33.864281, 37.730293, 31.162001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031185, 37.718105, 31.525311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746267, 0.581852, -0.323316,
		-0.518628, 0.812723, 0.265528,
		0.417265, -0.030474, 0.908274,
		34.156364, 37.708961, 31.797792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923592, 38.391979, 31.369194>,  <33.864281, 37.730293, 31.162001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923592, 38.391979, 31.369194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201935, 38.151402, 31.526192>,  <34.368938, 38.007053, 31.620390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201935, 38.151402, 31.526192>,  <33.923592, 38.391979, 31.369194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201935, 38.151402, 31.526192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716364, 0.542403, -0.438886,
		0.051074, 0.586571, 0.808286,
		0.695855, -0.601443, 0.392496,
		34.410690, 37.970970, 31.643940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433861, 38.866917, 31.592789>,  <33.923592, 38.391979, 31.369194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433861, 38.866917, 31.592789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619663, 38.512688, 31.593353>,  <34.731144, 38.300152, 31.593691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619663, 38.512688, 31.593353>,  <34.433861, 38.866917, 31.592789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619663, 38.512688, 31.593353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788288, 0.412754, -0.456329,
		0.403528, 0.213080, 0.889810,
		0.464507, -0.885568, 0.001411,
		34.759014, 38.247017, 31.593777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153065, 38.967056, 31.782888>,  <34.433861, 38.866917, 31.592789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153065, 38.967056, 31.782888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164803, 38.609402, 31.604155>,  <35.171844, 38.394810, 31.496914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164803, 38.609402, 31.604155>,  <35.153065, 38.967056, 31.782888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164803, 38.609402, 31.604155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912304, 0.206632, -0.353562,
		0.408462, -0.397271, 0.821787,
		0.029348, -0.894136, -0.446833,
		35.173607, 38.341160, 31.470104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865166, 38.634945, 31.867617>,  <35.153065, 38.967056, 31.782888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865166, 38.634945, 31.867617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700493, 38.460636, 31.547461>,  <35.601688, 38.356052, 31.355368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700493, 38.460636, 31.547461>,  <35.865166, 38.634945, 31.867617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700493, 38.460636, 31.547461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869769, 0.074320, -0.487830,
		0.272066, -0.896985, 0.348423,
		-0.411682, -0.435769, -0.800389,
		35.576988, 38.329906, 31.307344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553127, 38.465515, 31.468153>,  <35.865166, 38.634945, 31.867617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553127, 38.465515, 31.468153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244343, 38.408150, 31.220442>,  <36.059071, 38.373730, 31.071815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244343, 38.408150, 31.220442>,  <36.553127, 38.465515, 31.468153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244343, 38.408150, 31.220442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608679, 0.114092, -0.785171,
		0.183255, -0.983065, -0.000784,
		-0.771963, -0.143409, -0.619278,
		36.012753, 38.365128, 31.034658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640491, 37.784409, 31.008327>,  <36.553127, 38.465515, 31.468153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640491, 37.784409, 31.008327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409500, 38.058861, 30.831352>,  <36.270905, 38.223530, 30.725168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409500, 38.058861, 30.831352>,  <36.640491, 37.784409, 31.008327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409500, 38.058861, 30.831352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512928, -0.116700, -0.850462,
		-0.635159, -0.718059, -0.284543,
		-0.577476, 0.686129, -0.442436,
		36.236256, 38.264698, 30.698622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487213, 37.464146, 30.441109>,  <36.640491, 37.784409, 31.008327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487213, 37.464146, 30.441109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407539, 37.847660, 30.360052>,  <36.359734, 38.077766, 30.311419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407539, 37.847660, 30.360052>,  <36.487213, 37.464146, 30.441109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407539, 37.847660, 30.360052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533348, -0.067412, -0.843206,
		-0.822111, -0.276030, -0.497937,
		-0.199183, 0.958782, -0.202640,
		36.347786, 38.135296, 30.299259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383945, 37.368088, 29.793032>,  <36.487213, 37.464146, 30.441109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383945, 37.368088, 29.793032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427750, 37.764568, 29.822788>,  <36.454033, 38.002457, 29.840643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427750, 37.764568, 29.822788>,  <36.383945, 37.368088, 29.793032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427750, 37.764568, 29.822788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409813, 0.023162, -0.911875,
		-0.905573, 0.130342, -0.403670,
		0.109506, 0.991199, 0.074391,
		36.460602, 38.061928, 29.845106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143051, 37.650547, 29.251030>,  <36.383945, 37.368088, 29.793032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143051, 37.650547, 29.251030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383530, 37.940182, 29.386244>,  <36.527817, 38.113964, 29.467373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383530, 37.940182, 29.386244>,  <36.143051, 37.650547, 29.251030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383530, 37.940182, 29.386244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426956, 0.066519, -0.901822,
		-0.675482, 0.686495, -0.269162,
		0.601192, 0.724085, 0.338036,
		36.563889, 38.157406, 29.487654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110779, 38.132259, 28.698208>,  <36.143051, 37.650547, 29.251030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110779, 38.132259, 28.698208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441307, 38.246021, 28.892653>,  <36.639626, 38.314278, 29.009319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441307, 38.246021, 28.892653>,  <36.110779, 38.132259, 28.698208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441307, 38.246021, 28.892653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430046, 0.238704, -0.870679,
		-0.363665, 0.928511, 0.074938,
		0.826322, 0.284409, 0.486110,
		36.689205, 38.331345, 29.038486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263683, 38.810837, 28.522831>,  <36.110779, 38.132259, 28.698208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263683, 38.810837, 28.522831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608185, 38.646782, 28.642851>,  <36.814884, 38.548347, 28.714863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608185, 38.646782, 28.642851>,  <36.263683, 38.810837, 28.522831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608185, 38.646782, 28.642851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414900, 0.226577, -0.881204,
		0.293429, 0.883431, 0.365306,
		0.861253, -0.410137, 0.300052,
		36.866562, 38.523743, 28.732866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798279, 39.290668, 28.212095>,  <36.263683, 38.810837, 28.522831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798279, 39.290668, 28.212095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007233, 38.979042, 28.350756>,  <37.132607, 38.792065, 28.433952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007233, 38.979042, 28.350756>,  <36.798279, 39.290668, 28.212095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007233, 38.979042, 28.350756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769109, 0.254926, -0.586075,
		0.368222, 0.572770, 0.732358,
		0.522383, -0.779068, 0.346653,
		37.163948, 38.745323, 28.454752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475922, 39.497707, 28.353680>,  <36.798279, 39.290668, 28.212095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475922, 39.497707, 28.353680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470684, 39.112514, 28.245985>,  <37.467541, 38.881397, 28.181368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470684, 39.112514, 28.245985>,  <37.475922, 39.497707, 28.353680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470684, 39.112514, 28.245985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733487, 0.173750, -0.657121,
		0.679578, -0.206086, 0.704062,
		-0.013092, -0.962985, -0.269238,
		37.466755, 38.823620, 28.165215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162914, 39.360229, 28.223925>,  <37.475922, 39.497707, 28.353680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162914, 39.360229, 28.223925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947857, 39.092537, 28.018763>,  <37.818825, 38.931919, 27.895666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947857, 39.092537, 28.018763>,  <38.162914, 39.360229, 28.223925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947857, 39.092537, 28.018763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611487, 0.109355, -0.783662,
		0.580542, -0.734961, 0.350434,
		-0.537639, -0.669234, -0.512904,
		37.786564, 38.891766, 27.864891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598064, 39.007656, 28.007402>,  <38.162914, 39.360229, 28.223925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598064, 39.007656, 28.007402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304310, 38.896687, 27.759623>,  <38.128059, 38.830105, 27.610954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304310, 38.896687, 27.759623>,  <38.598064, 39.007656, 28.007402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304310, 38.896687, 27.759623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643125, 0.007303, -0.765726,
		0.216954, -0.960720, 0.173055,
		-0.734385, -0.277424, -0.619447,
		38.083996, 38.813457, 27.573788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919510, 38.404175, 27.576815>,  <38.598064, 39.007656, 28.007402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919510, 38.404175, 27.576815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602337, 38.570667, 27.398823>,  <38.412033, 38.670563, 27.292028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602337, 38.570667, 27.398823>,  <38.919510, 38.404175, 27.576815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602337, 38.570667, 27.398823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515535, 0.069038, -0.854083,
		-0.324777, -0.906633, -0.269325,
		-0.792934, 0.416232, -0.444979,
		38.364456, 38.695538, 27.265329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881008, 37.990234, 26.934509>,  <38.919510, 38.404175, 27.576815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881008, 37.990234, 26.934509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686256, 38.337307, 26.894337>,  <38.569405, 38.545551, 26.870234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686256, 38.337307, 26.894337>,  <38.881008, 37.990234, 26.934509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686256, 38.337307, 26.894337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519076, 0.194944, -0.832200,
		-0.702504, -0.457309, -0.545304,
		-0.486877, 0.867678, -0.100429,
		38.540192, 38.597610, 26.864208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769253, 38.056046, 26.177481>,  <38.881008, 37.990234, 26.934509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769253, 38.056046, 26.177481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670315, 38.414207, 26.325575>,  <38.610954, 38.629105, 26.414433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670315, 38.414207, 26.325575>,  <38.769253, 38.056046, 26.177481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670315, 38.414207, 26.325575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556075, 0.444096, -0.702538,
		-0.793475, 0.032114, -0.607755,
		-0.247340, 0.895404, 0.370237,
		38.596111, 38.682827, 26.436646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636967, 38.429543, 25.538246>,  <38.769253, 38.056046, 26.177481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636967, 38.429543, 25.538246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733936, 38.669403, 25.843309>,  <38.792118, 38.813320, 26.026346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733936, 38.669403, 25.843309>,  <38.636967, 38.429543, 25.538246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733936, 38.669403, 25.843309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663358, 0.471177, -0.581333,
		-0.707946, 0.646843, -0.283563,
		0.242423, 0.599656, 0.762656,
		38.806664, 38.849300, 26.072105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605358, 38.953945, 25.193720>,  <38.636967, 38.429543, 25.538246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605358, 38.953945, 25.193720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825069, 38.994934, 25.525452>,  <38.956898, 39.019527, 25.724491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825069, 38.994934, 25.525452>,  <38.605358, 38.953945, 25.193720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825069, 38.994934, 25.525452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690426, 0.503433, -0.519488,
		-0.470747, 0.857936, 0.205774,
		0.549281, 0.102476, 0.829331,
		38.989853, 39.025677, 25.774250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779148, 39.590282, 25.167809>,  <38.605358, 38.953945, 25.193720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779148, 39.590282, 25.167809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040169, 39.401325, 25.404797>,  <39.196781, 39.287952, 25.546989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040169, 39.401325, 25.404797>,  <38.779148, 39.590282, 25.167809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040169, 39.401325, 25.404797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739088, 0.224386, -0.635138,
		0.167092, 0.852349, 0.495562,
		0.652556, -0.472390, 0.592468,
		39.235935, 39.259609, 25.582537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408562, 40.038383, 25.224430>,  <38.779148, 39.590282, 25.167809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408562, 40.038383, 25.224430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564175, 39.699665, 25.369530>,  <39.657543, 39.496433, 25.456589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564175, 39.699665, 25.369530>,  <39.408562, 40.038383, 25.224430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564175, 39.699665, 25.369530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708140, 0.023024, -0.705696,
		0.589231, 0.531415, 0.608609,
		0.389030, -0.846799, 0.362750,
		39.680885, 39.445625, 25.478355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235123, 40.143314, 25.347712>,  <39.408562, 40.038383, 25.224430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235123, 40.143314, 25.347712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139988, 39.756226, 25.314379>,  <40.082905, 39.523972, 25.294380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139988, 39.756226, 25.314379>,  <40.235123, 40.143314, 25.347712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139988, 39.756226, 25.314379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578789, -0.072305, -0.812266,
		0.780023, -0.241420, 0.577304,
		-0.237839, -0.967723, -0.083331,
		40.068638, 39.465908, 25.289379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855675, 39.761871, 25.264381>,  <40.235123, 40.143314, 25.347712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855675, 39.761871, 25.264381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558495, 39.526611, 25.136570>,  <40.380184, 39.385456, 25.059883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558495, 39.526611, 25.136570>,  <40.855675, 39.761871, 25.264381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558495, 39.526611, 25.136570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496192, -0.163560, -0.852667,
		0.449234, -0.792040, 0.413353,
		-0.742955, -0.588150, -0.319527,
		40.335609, 39.350166, 25.040712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290573, 39.426022, 24.833153>,  <40.855675, 39.761871, 25.264381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290573, 39.426022, 24.833153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923283, 39.303452, 24.732780>,  <40.702908, 39.229908, 24.672556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923283, 39.303452, 24.732780>,  <41.290573, 39.426022, 24.833153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923283, 39.303452, 24.732780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334683, -0.261544, -0.905308,
		0.211779, -0.915259, 0.342712,
		-0.918225, -0.306425, -0.250932,
		40.647816, 39.211525, 24.657501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272358, 38.762379, 24.787073>,  <41.290573, 39.426022, 24.833153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272358, 38.762379, 24.787073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003662, 38.901688, 24.525547>,  <40.842445, 38.985271, 24.368631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003662, 38.901688, 24.525547>,  <41.272358, 38.762379, 24.787073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003662, 38.901688, 24.525547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531561, -0.388114, -0.752868,
		-0.515957, -0.853273, 0.075584,
		-0.671738, 0.348270, -0.653817,
		40.802139, 39.006168, 24.329401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244694, 38.202496, 24.361151>,  <41.272358, 38.762379, 24.787073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244694, 38.202496, 24.361151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070858, 38.505573, 24.166407>,  <40.966557, 38.687420, 24.049561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070858, 38.505573, 24.166407>,  <41.244694, 38.202496, 24.361151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070858, 38.505573, 24.166407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429880, -0.300511, -0.851409,
		-0.791415, -0.579302, -0.195120,
		-0.434588, 0.757695, -0.486859,
		40.940483, 38.732883, 24.020350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896721, 37.887623, 23.760281>,  <41.244694, 38.202496, 24.361151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896721, 37.887623, 23.760281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953308, 38.272213, 23.666006>,  <40.987263, 38.502968, 23.609442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953308, 38.272213, 23.666006>,  <40.896721, 37.887623, 23.760281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953308, 38.272213, 23.666006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522093, -0.274742, -0.807425,
		-0.841074, -0.008821, -0.540848,
		0.141471, 0.961477, -0.235684,
		40.995750, 38.560658, 23.595301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070122, 37.747272, 23.215231>,  <40.896721, 37.887623, 23.760281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070122, 37.747272, 23.215231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142815, 38.140606, 23.217236>,  <41.186428, 38.376606, 23.218437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142815, 38.140606, 23.217236>,  <41.070122, 37.747272, 23.215231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142815, 38.140606, 23.217236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589287, -0.104825, -0.801095,
		-0.787220, 0.148536, -0.598516,
		0.181731, 0.983336, 0.005010,
		41.197334, 38.435608, 23.218739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950150, 37.900627, 22.539701>,  <41.070122, 37.747272, 23.215231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950150, 37.900627, 22.539701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184345, 38.196346, 22.672754>,  <41.324863, 38.373775, 22.752586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184345, 38.196346, 22.672754>,  <40.950150, 37.900627, 22.539701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184345, 38.196346, 22.672754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561703, -0.074096, -0.824015,
		-0.584543, 0.669294, -0.458646,
		0.585492, 0.739294, 0.332632,
		41.359993, 38.418133, 22.772543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085114, 38.390415, 22.033775>,  <40.950150, 37.900627, 22.539701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085114, 38.390415, 22.033775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384968, 38.474380, 22.284849>,  <41.564880, 38.524761, 22.435493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384968, 38.474380, 22.284849>,  <41.085114, 38.390415, 22.033775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384968, 38.474380, 22.284849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645195, -0.020329, -0.763748,
		-0.147563, 0.977508, -0.150676,
		0.749632, 0.209916, 0.627684,
		41.609856, 38.537354, 22.473154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442532, 38.957661, 21.685795>,  <41.085114, 38.390415, 22.033775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442532, 38.957661, 21.685795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700893, 38.810303, 21.953255>,  <41.855911, 38.721889, 22.113729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700893, 38.810303, 21.953255>,  <41.442532, 38.957661, 21.685795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700893, 38.810303, 21.953255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706466, -0.043507, -0.706409,
		0.289327, 0.928651, 0.232157,
		0.645907, -0.368394, 0.668648,
		41.894665, 38.699783, 22.153849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061111, 39.272411, 21.536295>,  <41.442532, 38.957661, 21.685795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061111, 39.272411, 21.536295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192516, 38.959545, 21.748066>,  <42.271358, 38.771824, 21.875130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192516, 38.959545, 21.748066>,  <42.061111, 39.272411, 21.536295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192516, 38.959545, 21.748066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748393, -0.126384, -0.651103,
		0.576181, 0.610119, 0.543847,
		0.328517, -0.782164, 0.529429,
		42.291073, 38.724895, 21.906895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809807, 39.400509, 21.609684>,  <42.061111, 39.272411, 21.536295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809807, 39.400509, 21.609684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742085, 39.012157, 21.677475>,  <42.701450, 38.779144, 21.718149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742085, 39.012157, 21.677475>,  <42.809807, 39.400509, 21.609684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742085, 39.012157, 21.677475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710946, -0.239402, -0.661243,
		0.682564, 0.008542, 0.730776,
		-0.169301, -0.970883, 0.169480,
		42.691296, 38.720894, 21.728319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457947, 39.046135, 21.660715>,  <42.809807, 39.400509, 21.609684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457947, 39.046135, 21.660715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176311, 38.780170, 21.560993>,  <43.007328, 38.620590, 21.501160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176311, 38.780170, 21.560993>,  <43.457947, 39.046135, 21.660715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176311, 38.780170, 21.560993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574400, -0.326856, -0.750486,
		0.417520, -0.671610, 0.612060,
		-0.704090, -0.664910, -0.249303,
		42.965084, 38.580696, 21.486202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789673, 38.478893, 21.523991>,  <43.457947, 39.046135, 21.660715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789673, 38.478893, 21.523991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452702, 38.427761, 21.314619>,  <43.250519, 38.397083, 21.188995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452702, 38.427761, 21.314619>,  <43.789673, 38.478893, 21.523991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452702, 38.427761, 21.314619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529778, -0.373645, -0.761396,
		-0.098249, -0.918722, 0.382489,
		-0.842426, -0.127828, -0.523429,
		43.199974, 38.389412, 21.157591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990646, 37.896137, 21.143568>,  <43.789673, 38.478893, 21.523991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990646, 37.896137, 21.143568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644844, 38.016956, 20.982866>,  <43.437363, 38.089447, 20.886444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644844, 38.016956, 20.982866>,  <43.990646, 37.896137, 21.143568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644844, 38.016956, 20.982866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265858, -0.403560, -0.875476,
		-0.426567, -0.863659, 0.268577,
		-0.864500, 0.302046, -0.401757,
		43.385494, 38.107571, 20.862339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.534702, 37.470551, 21.084488>,  <43.990646, 37.896137, 21.143568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.534702, 37.470551, 21.084488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632812, 37.083420, 21.106964>,  <44.691677, 36.851143, 21.120451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632812, 37.083420, 21.106964>,  <44.534702, 37.470551, 21.084488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632812, 37.083420, 21.106964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641163, -0.118466, 0.758205,
		-0.727152, -0.221996, -0.649590,
		0.245273, -0.967824, 0.056192,
		44.706394, 36.793072, 21.123821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893135, 37.122070, 21.275841>,  <44.534702, 37.470551, 21.084488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893135, 37.122070, 21.275841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.177063, 36.849316, 21.346478>,  <44.347420, 36.685661, 21.388859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.177063, 36.849316, 21.346478>,  <43.893135, 37.122070, 21.275841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177063, 36.849316, 21.346478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559099, -0.392936, 0.730075,
		-0.428443, -0.616952, -0.660157,
		0.709821, -0.681888, 0.176587,
		44.390011, 36.644749, 21.399454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.569817, 36.569984, 21.170908>,  <43.893135, 37.122070, 21.275841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.569817, 36.569984, 21.170908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879467, 36.502533, 21.414972>,  <44.065258, 36.462063, 21.561411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879467, 36.502533, 21.414972>,  <43.569817, 36.569984, 21.170908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879467, 36.502533, 21.414972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609869, -0.457039, 0.647437,
		0.169689, -0.873314, -0.456648,
		0.774122, -0.168633, 0.610162,
		44.111702, 36.451942, 21.598021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346893, 35.936337, 21.545479>,  <43.569817, 36.569984, 21.170908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346893, 35.936337, 21.545479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645576, 36.097095, 21.757481>,  <43.824787, 36.193550, 21.884682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645576, 36.097095, 21.757481>,  <43.346893, 35.936337, 21.545479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645576, 36.097095, 21.757481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434403, -0.308757, 0.846146,
		0.503704, -0.862062, -0.055968,
		0.746711, 0.401895, 0.530004,
		43.869591, 36.217663, 21.916481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738800, 35.464703, 22.042971>,  <43.346893, 35.936337, 21.545479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738800, 35.464703, 22.042971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815449, 35.835560, 22.171770>,  <43.861439, 36.058075, 22.249050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815449, 35.835560, 22.171770>,  <43.738800, 35.464703, 22.042971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815449, 35.835560, 22.171770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308729, -0.254482, 0.916474,
		0.931647, -0.275027, 0.237472,
		0.191623, 0.927145, 0.321997,
		43.872936, 36.113705, 22.268370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128040, 35.407494, 22.651257>,  <43.738800, 35.464703, 22.042971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128040, 35.407494, 22.651257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924896, 35.751987, 22.643723>,  <43.803009, 35.958683, 22.639202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924896, 35.751987, 22.643723>,  <44.128040, 35.407494, 22.651257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924896, 35.751987, 22.643723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374289, -0.200918, 0.905285,
		0.775875, 0.466812, 0.424388,
		-0.507864, 0.861231, -0.018835,
		43.772537, 36.010357, 22.638071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155701, 35.525276, 23.331821>,  <44.128040, 35.407494, 22.651257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155701, 35.525276, 23.331821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875576, 35.790710, 23.226591>,  <43.707500, 35.949970, 23.163452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875576, 35.790710, 23.226591>,  <44.155701, 35.525276, 23.331821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875576, 35.790710, 23.226591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473588, -0.156162, 0.866792,
		0.534109, 0.731618, 0.423630,
		-0.700316, 0.663587, -0.263078,
		43.665482, 35.989788, 23.147667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.099834, 35.976746, 23.901611>,  <44.155701, 35.525276, 23.331821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.099834, 35.976746, 23.901611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775673, 36.053761, 23.680277>,  <43.581177, 36.099972, 23.547476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775673, 36.053761, 23.680277>,  <44.099834, 35.976746, 23.901611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775673, 36.053761, 23.680277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542543, 0.109845, 0.832815,
		0.221131, 0.975122, 0.015442,
		-0.810400, 0.192539, -0.553336,
		43.532555, 36.111523, 23.514277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801697, 36.528114, 24.175085>,  <44.099834, 35.976746, 23.901611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801697, 36.528114, 24.175085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489002, 36.360104, 23.990704>,  <43.301388, 36.259296, 23.880075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489002, 36.360104, 23.990704>,  <43.801697, 36.528114, 24.175085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489002, 36.360104, 23.990704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543547, 0.096577, 0.833804,
		-0.305699, 0.902360, -0.303799,
		-0.781732, -0.420022, -0.460952,
		43.254482, 36.234097, 23.852419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157677, 36.899055, 24.251245>,  <43.801697, 36.528114, 24.175085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157677, 36.899055, 24.251245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028557, 36.528091, 24.175650>,  <42.951084, 36.305515, 24.130293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028557, 36.528091, 24.175650>,  <43.157677, 36.899055, 24.251245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028557, 36.528091, 24.175650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646227, 0.070070, 0.759921,
		-0.691515, 0.367430, -0.621935,
		-0.322796, -0.927408, -0.188989,
		42.931717, 36.249870, 24.118954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418762, 36.957928, 24.263458>,  <43.157677, 36.899055, 24.251245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418762, 36.957928, 24.263458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505444, 36.570816, 24.314745>,  <42.557453, 36.338547, 24.345516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505444, 36.570816, 24.314745>,  <42.418762, 36.957928, 24.263458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505444, 36.570816, 24.314745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435808, 0.021622, 0.899780,
		-0.873562, -0.250863, -0.417081,
		0.216704, -0.967781, 0.128216,
		42.570454, 36.280483, 24.353210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858150, 36.603905, 24.225100>,  <42.418762, 36.957928, 24.263458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858150, 36.603905, 24.225100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116810, 36.400661, 24.452667>,  <42.272007, 36.278717, 24.589209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116810, 36.400661, 24.452667>,  <41.858150, 36.603905, 24.225100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116810, 36.400661, 24.452667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583617, 0.150676, 0.797927,
		-0.491154, -0.848013, -0.199104,
		0.646652, -0.508106, 0.568920,
		42.310806, 36.248230, 24.623343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425625, 36.121719, 24.553202>,  <41.858150, 36.603905, 24.225100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425625, 36.121719, 24.553202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760880, 36.191357, 24.759974>,  <41.962032, 36.233139, 24.884037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760880, 36.191357, 24.759974>,  <41.425625, 36.121719, 24.553202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760880, 36.191357, 24.759974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542530, 0.167977, 0.823071,
		0.056455, -0.970297, 0.235236,
		0.838138, 0.174089, 0.516932,
		42.012321, 36.243584, 24.915052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320675, 35.752216, 25.147539>,  <41.425625, 36.121719, 24.553202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320675, 35.752216, 25.147539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596024, 36.030304, 25.230307>,  <41.761234, 36.197155, 25.279966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596024, 36.030304, 25.230307>,  <41.320675, 35.752216, 25.147539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596024, 36.030304, 25.230307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489988, 0.235350, 0.839358,
		0.534837, -0.679181, 0.502656,
		0.688376, 0.695215, 0.206917,
		41.802536, 36.238869, 25.292381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622902, 35.564354, 25.744677>,  <41.320675, 35.752216, 25.147539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622902, 35.564354, 25.744677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676662, 35.960621, 25.735643>,  <41.708920, 36.198383, 25.730225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676662, 35.960621, 25.735643>,  <41.622902, 35.564354, 25.744677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676662, 35.960621, 25.735643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461921, 0.082796, 0.883048,
		0.876678, -0.108254, 0.468739,
		0.134404, 0.990669, -0.022581,
		41.716984, 36.257820, 25.728868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835537, 35.771927, 26.423187>,  <41.622902, 35.564354, 25.744677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835537, 35.771927, 26.423187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715500, 36.125874, 26.280668>,  <41.643478, 36.338242, 26.195156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715500, 36.125874, 26.280668>,  <41.835537, 35.771927, 26.423187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715500, 36.125874, 26.280668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486463, 0.179331, 0.855099,
		0.820546, 0.429937, 0.376640,
		-0.300096, 0.884870, -0.356298,
		41.625473, 36.391335, 26.173779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880589, 36.288738, 27.027430>,  <41.835537, 35.771927, 26.423187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880589, 36.288738, 27.027430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637936, 36.452278, 26.754711>,  <41.492344, 36.550404, 26.591080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637936, 36.452278, 26.754711>,  <41.880589, 36.288738, 27.027430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637936, 36.452278, 26.754711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576762, 0.363889, 0.731389,
		0.547126, 0.836915, 0.015064,
		-0.606629, 0.408850, -0.681794,
		41.455948, 36.574932, 26.550173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685211, 36.933128, 27.298367>,  <41.880589, 36.288738, 27.027430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685211, 36.933128, 27.298367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404488, 36.859085, 27.023211>,  <41.236053, 36.814659, 26.858116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404488, 36.859085, 27.023211>,  <41.685211, 36.933128, 27.298367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404488, 36.859085, 27.023211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701555, 0.347167, 0.622330,
		0.123614, 0.919353, -0.373510,
		-0.701812, -0.185109, -0.687892,
		41.193943, 36.803551, 26.816843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240017, 37.452774, 27.439318>,  <41.685211, 36.933128, 27.298367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240017, 37.452774, 27.439318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063297, 37.164341, 27.225830>,  <40.957264, 36.991283, 27.097736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063297, 37.164341, 27.225830>,  <41.240017, 37.452774, 27.439318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063297, 37.164341, 27.225830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812968, 0.070239, 0.578057,
		-0.379337, 0.689284, -0.617245,
		-0.441800, -0.721079, -0.533721,
		40.930756, 36.948017, 27.065714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592319, 37.740589, 27.180895>,  <41.240017, 37.452774, 27.439318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592319, 37.740589, 27.180895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554951, 37.342396, 27.187750>,  <40.532532, 37.103481, 27.191862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554951, 37.342396, 27.187750>,  <40.592319, 37.740589, 27.180895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554951, 37.342396, 27.187750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780698, 0.083923, 0.619248,
		-0.617887, 0.044469, -0.785008,
		-0.093418, -0.995479, 0.017138,
		40.526924, 37.043751, 27.192892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935120, 37.540066, 27.069496>,  <40.592319, 37.740589, 27.180895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935120, 37.540066, 27.069496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078766, 37.227718, 27.273960>,  <40.164951, 37.040310, 27.396639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078766, 37.227718, 27.273960>,  <39.935120, 37.540066, 27.069496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078766, 37.227718, 27.273960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783815, 0.044971, 0.619363,
		-0.506628, -0.623076, -0.595906,
		0.359112, -0.780868, 0.511160,
		40.186501, 36.993458, 27.427309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357807, 37.204853, 27.234449>,  <39.935120, 37.540066, 27.069496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357807, 37.204853, 27.234449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634579, 37.058197, 27.483225>,  <39.800644, 36.970203, 27.632490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634579, 37.058197, 27.483225>,  <39.357807, 37.204853, 27.234449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634579, 37.058197, 27.483225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685566, -0.063601, 0.725227,
		-0.226342, -0.928186, -0.295364,
		0.691931, -0.366641, 0.621937,
		39.842159, 36.948204, 27.669806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016624, 36.666893, 27.669331>,  <39.357807, 37.204853, 27.234449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016624, 36.666893, 27.669331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354744, 36.752163, 27.865303>,  <39.557613, 36.803326, 27.982887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354744, 36.752163, 27.865303>,  <39.016624, 36.666893, 27.669331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354744, 36.752163, 27.865303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483209, -0.086291, 0.871242,
		0.228003, -0.973196, 0.030066,
		0.845295, 0.213174, 0.489932,
		39.608334, 36.816116, 28.012283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044144, 36.147579, 28.287085>,  <39.016624, 36.666893, 27.669331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044144, 36.147579, 28.287085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274742, 36.459232, 28.385563>,  <39.413101, 36.646225, 28.444649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274742, 36.459232, 28.385563>,  <39.044144, 36.147579, 28.287085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274742, 36.459232, 28.385563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395700, 0.002590, 0.918376,
		0.714898, -0.626855, 0.309796,
		0.576492, 0.779132, 0.246195,
		39.447689, 36.692970, 28.459421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424992, 36.007397, 28.887857>,  <39.044144, 36.147579, 28.287085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424992, 36.007397, 28.887857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417953, 36.407333, 28.886429>,  <39.413731, 36.647293, 28.885572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417953, 36.407333, 28.886429>,  <39.424992, 36.007397, 28.887857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417953, 36.407333, 28.886429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435048, -0.004439, 0.900396,
		0.900236, 0.017392, 0.435056,
		-0.017591, 0.999839, -0.003570,
		39.412678, 36.707287, 28.885359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639370, 36.230667, 29.563028>,  <39.424992, 36.007397, 28.887857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639370, 36.230667, 29.563028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474335, 36.560677, 29.408571>,  <39.375313, 36.758682, 29.315897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474335, 36.560677, 29.408571>,  <39.639370, 36.230667, 29.563028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474335, 36.560677, 29.408571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463816, 0.174572, 0.868562,
		0.783996, 0.537454, 0.310635,
		-0.412584, 0.825026, -0.386143,
		39.350559, 36.808186, 29.292728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954609, 36.801289, 29.899269>,  <39.639370, 36.230667, 29.563028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954609, 36.801289, 29.899269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604649, 36.934292, 29.758419>,  <39.394672, 37.014095, 29.673908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604649, 36.934292, 29.758419>,  <39.954609, 36.801289, 29.899269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604649, 36.934292, 29.758419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238945, 0.336059, 0.911027,
		0.421258, 0.881194, -0.214566,
		-0.874898, 0.332508, -0.352124,
		39.342178, 37.034042, 29.652782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815231, 37.411148, 30.274702>,  <39.954609, 36.801289, 29.899269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815231, 37.411148, 30.274702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450184, 37.314030, 30.143135>,  <39.231155, 37.255760, 30.064196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450184, 37.314030, 30.143135>,  <39.815231, 37.411148, 30.274702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450184, 37.314030, 30.143135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366488, 0.129338, 0.921389,
		-0.181166, 0.961417, -0.207017,
		-0.912615, -0.242794, -0.328916,
		39.176399, 37.241192, 30.044460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296272, 37.915604, 30.624355>,  <39.815231, 37.411148, 30.274702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296272, 37.915604, 30.624355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095474, 37.585682, 30.520287>,  <38.974995, 37.387730, 30.457846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095474, 37.585682, 30.520287>,  <39.296272, 37.915604, 30.624355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095474, 37.585682, 30.520287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293048, -0.120810, 0.948434,
		-0.813707, 0.552356, -0.181062,
		-0.501999, -0.824808, -0.260171,
		38.944874, 37.338238, 30.442236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660763, 37.873592, 31.047689>,  <39.296272, 37.915604, 30.624355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660763, 37.873592, 31.047689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693291, 37.487232, 30.949362>,  <38.712807, 37.255417, 30.890366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693291, 37.487232, 30.949362>,  <38.660763, 37.873592, 31.047689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693291, 37.487232, 30.949362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296680, -0.258914, 0.919208,
		-0.951508, -0.001822, -0.307618,
		0.081322, -0.965899, -0.245818,
		38.717686, 37.197464, 30.875616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188046, 37.573170, 31.531757>,  <38.660763, 37.873592, 31.047689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188046, 37.573170, 31.531757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387764, 37.255032, 31.394278>,  <38.507595, 37.064148, 31.311790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387764, 37.255032, 31.394278>,  <38.188046, 37.573170, 31.531757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387764, 37.255032, 31.394278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095877, -0.444962, 0.890402,
		-0.861113, -0.411618, -0.298422,
		0.499292, -0.795349, -0.343698,
		38.537552, 37.016426, 31.291168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837769, 37.074081, 31.779869>,  <38.188046, 37.573170, 31.531757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837769, 37.074081, 31.779869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172630, 36.873047, 31.693544>,  <38.373547, 36.752426, 31.641750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172630, 36.873047, 31.693544>,  <37.837769, 37.074081, 31.779869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172630, 36.873047, 31.693544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078946, -0.501459, 0.861572,
		-0.541240, -0.704231, -0.459476,
		0.837154, -0.502591, -0.215813,
		38.423779, 36.722271, 31.628801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656754, 36.391380, 32.179344>,  <37.837769, 37.074081, 31.779869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656754, 36.391380, 32.179344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049923, 36.400219, 32.106277>,  <38.285824, 36.405521, 32.062439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049923, 36.400219, 32.106277>,  <37.656754, 36.391380, 32.179344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049923, 36.400219, 32.106277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163936, -0.555899, 0.814924,
		-0.083538, -0.830956, -0.550030,
		0.982927, 0.022093, -0.182662,
		38.344803, 36.406845, 32.051479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895969, 35.643246, 32.165028>,  <37.656754, 36.391380, 32.179344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895969, 35.643246, 32.165028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180313, 35.904602, 32.269142>,  <38.350922, 36.061417, 32.331612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180313, 35.904602, 32.269142>,  <37.895969, 35.643246, 32.165028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180313, 35.904602, 32.269142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173549, -0.521584, 0.835363,
		0.681582, -0.548657, -0.484171,
		0.710863, 0.653395, 0.260284,
		38.393574, 36.100620, 32.347229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424366, 35.299656, 32.340618>,  <37.895969, 35.643246, 32.165028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424366, 35.299656, 32.340618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457375, 35.649101, 32.532452>,  <38.477180, 35.858768, 32.647552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457375, 35.649101, 32.532452>,  <38.424366, 35.299656, 32.340618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457375, 35.649101, 32.532452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269902, -0.482829, 0.833084,
		0.959345, 0.060692, -0.275633,
		0.082522, 0.873609, 0.479580,
		38.482132, 35.911182, 32.676327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938564, 35.127796, 32.907597>,  <38.424366, 35.299656, 32.340618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938564, 35.127796, 32.907597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786194, 35.487553, 32.993370>,  <38.694771, 35.703407, 33.044834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786194, 35.487553, 32.993370>,  <38.938564, 35.127796, 32.907597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786194, 35.487553, 32.993370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245363, -0.125277, 0.961303,
		0.891455, 0.418800, -0.172957,
		-0.380926, 0.899395, 0.214437,
		38.671917, 35.757370, 33.057701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442875, 35.513912, 33.030682>,  <38.938564, 35.127796, 32.907597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442875, 35.513912, 33.030682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149742, 35.694305, 33.234478>,  <38.973862, 35.802540, 33.356754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149742, 35.694305, 33.234478>,  <39.442875, 35.513912, 33.030682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149742, 35.694305, 33.234478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471709, -0.202900, 0.858092,
		0.490356, 0.869166, -0.064039,
		-0.732831, 0.450979, 0.509486,
		38.929893, 35.829597, 33.387325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709656, 35.823120, 33.627525>,  <39.442875, 35.513912, 33.030682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709656, 35.823120, 33.627525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329681, 35.854359, 33.748531>,  <39.101696, 35.873104, 33.821136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329681, 35.854359, 33.748531>,  <39.709656, 35.823120, 33.627525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329681, 35.854359, 33.748531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301456, -0.025339, 0.953143,
		0.082106, 0.996624, 0.000527,
		-0.949938, 0.078100, 0.302518,
		39.044701, 35.877789, 33.839287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758228, 36.132458, 34.283619>,  <39.709656, 35.823120, 33.627525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758228, 36.132458, 34.283619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396645, 35.963131, 34.307846>,  <39.179695, 35.861534, 34.322384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396645, 35.963131, 34.307846>,  <39.758228, 36.132458, 34.283619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396645, 35.963131, 34.307846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114202, -0.102484, 0.988157,
		-0.412097, 0.900166, 0.140985,
		-0.903955, -0.423317, 0.060567,
		39.125458, 35.836136, 34.326015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348602, 36.615150, 34.608440>,  <39.758228, 36.132458, 34.283619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348602, 36.615150, 34.608440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176781, 36.255558, 34.642654>,  <39.073689, 36.039803, 34.663181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176781, 36.255558, 34.642654>,  <39.348602, 36.615150, 34.608440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176781, 36.255558, 34.642654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200005, -0.002342, 0.979792,
		-0.880616, 0.437977, 0.180807,
		-0.429550, -0.898983, 0.085535,
		39.047916, 35.985863, 34.668316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796268, 36.571545, 35.252407>,  <39.348602, 36.615150, 34.608440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796268, 36.571545, 35.252407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999802, 36.242622, 35.150509>,  <39.121922, 36.045269, 35.089371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999802, 36.242622, 35.150509>,  <38.796268, 36.571545, 35.252407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999802, 36.242622, 35.150509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135703, -0.215596, 0.967007,
		-0.850101, -0.526617, 0.001887,
		0.508835, -0.822310, -0.254742,
		39.152451, 35.995930, 35.074085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557846, 36.014732, 35.721809>,  <38.796268, 36.571545, 35.252407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557846, 36.014732, 35.721809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906723, 35.889839, 35.571186>,  <39.116047, 35.814903, 35.480812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906723, 35.889839, 35.571186>,  <38.557846, 36.014732, 35.721809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906723, 35.889839, 35.571186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276988, -0.319263, 0.906283,
		-0.403195, -0.894752, -0.191972,
		0.872188, -0.312234, -0.376561,
		39.168381, 35.796169, 35.458218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718834, 35.328312, 35.923096>,  <38.557846, 36.014732, 35.721809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718834, 35.328312, 35.923096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062897, 35.522263, 35.859818>,  <39.269333, 35.638634, 35.821850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062897, 35.522263, 35.859818>,  <38.718834, 35.328312, 35.923096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062897, 35.522263, 35.859818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261993, -0.153936, 0.952714,
		0.437601, -0.860926, -0.259444,
		0.860154, 0.484881, -0.158194,
		39.320942, 35.667728, 35.812359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180244, 34.895126, 36.132935>,  <38.718834, 35.328312, 35.923096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180244, 34.895126, 36.132935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365791, 35.248539, 36.158855>,  <39.477119, 35.460587, 36.174408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365791, 35.248539, 36.158855>,  <39.180244, 34.895126, 36.132935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365791, 35.248539, 36.158855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275617, -0.213442, 0.937272,
		0.841941, -0.416908, -0.342525,
		0.463865, 0.883533, 0.064798,
		39.504951, 35.513599, 36.178295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886883, 34.666893, 36.443188>,  <39.180244, 34.895126, 36.132935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886883, 34.666893, 36.443188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822182, 35.060951, 36.466282>,  <39.783360, 35.297386, 36.480141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822182, 35.060951, 36.466282>,  <39.886883, 34.666893, 36.443188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822182, 35.060951, 36.466282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282645, -0.009809, 0.959174,
		0.945488, 0.171468, -0.276859,
		-0.161752, 0.985141, 0.057739,
		39.773655, 35.356495, 36.483604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544308, 34.947624, 36.523922>,  <39.886883, 34.666893, 36.443188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544308, 34.947624, 36.523922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246555, 35.157661, 36.688931>,  <40.067902, 35.283684, 36.787933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246555, 35.157661, 36.688931>,  <40.544308, 34.947624, 36.523922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246555, 35.157661, 36.688931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505091, 0.038675, 0.862199,
		0.436780, 0.850166, -0.294009,
		-0.744383, 0.525093, 0.412519,
		40.023239, 35.315189, 36.812687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957085, 35.267452, 36.978821>,  <40.544308, 34.947624, 36.523922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957085, 35.267452, 36.978821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576473, 35.347027, 37.072647>,  <40.348106, 35.394772, 37.128944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576473, 35.347027, 37.072647>,  <40.957085, 35.267452, 36.978821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576473, 35.347027, 37.072647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213058, -0.123701, 0.969177,
		0.221821, 0.972174, 0.075320,
		-0.951526, 0.198936, 0.234569,
		40.291016, 35.406708, 37.143017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010067, 35.760994, 37.500565>,  <40.957085, 35.267452, 36.978821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010067, 35.760994, 37.500565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637539, 35.617268, 37.524368>,  <40.414024, 35.531033, 37.538651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637539, 35.617268, 37.524368>,  <41.010067, 35.760994, 37.500565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637539, 35.617268, 37.524368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073592, -0.025623, 0.996959,
		-0.356697, 0.932864, 0.050306,
		-0.931317, -0.359315, 0.059512,
		40.358143, 35.509472, 37.542221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672089, 36.149151, 38.037243>,  <41.010067, 35.760994, 37.500565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672089, 36.149151, 38.037243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491413, 35.795006, 37.993229>,  <40.383007, 35.582520, 37.966820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491413, 35.795006, 37.993229>,  <40.672089, 36.149151, 38.037243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491413, 35.795006, 37.993229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094625, -0.170180, 0.980859,
		-0.887143, 0.432633, 0.160646,
		-0.451690, -0.885363, -0.110036,
		40.355907, 35.529396, 37.960217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227089, 36.051140, 38.579300>,  <40.672089, 36.149151, 38.037243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227089, 36.051140, 38.579300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239578, 35.667892, 38.465431>,  <40.247074, 35.437943, 38.397110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239578, 35.667892, 38.465431>,  <40.227089, 36.051140, 38.579300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239578, 35.667892, 38.465431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163898, -0.285861, 0.944151,
		-0.985983, 0.017174, -0.165961,
		0.031227, -0.958117, -0.284669,
		40.248947, 35.380459, 38.380032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657475, 35.657242, 38.880306>,  <40.227089, 36.051140, 38.579300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657475, 35.657242, 38.880306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970650, 35.412453, 38.835583>,  <40.158554, 35.265579, 38.808750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970650, 35.412453, 38.835583>,  <39.657475, 35.657242, 38.880306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970650, 35.412453, 38.835583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144930, -0.354203, 0.923870,
		-0.604989, -0.707125, -0.366010,
		0.782933, -0.611977, -0.111805,
		40.205528, 35.228859, 38.802040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425621, 34.954659, 39.144978>,  <39.657475, 35.657242, 38.880306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425621, 34.954659, 39.144978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815811, 35.041290, 39.160717>,  <40.049923, 35.093269, 39.170158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815811, 35.041290, 39.160717>,  <39.425621, 34.954659, 39.144978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815811, 35.041290, 39.160717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052105, -0.400847, 0.914662,
		0.213871, -0.890177, -0.402299,
		0.975471, 0.216581, 0.039346,
		40.108452, 35.106266, 39.172520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731613, 34.720707, 39.843075>,  <39.425621, 34.954659, 39.144978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731613, 34.720707, 39.843075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077694, 34.820751, 39.669235>,  <40.285343, 34.880779, 39.564930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077694, 34.820751, 39.669235>,  <39.731613, 34.720707, 39.843075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077694, 34.820751, 39.669235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498805, -0.340734, 0.796928,
		0.051237, -0.906281, -0.419558,
		0.865198, 0.250110, -0.434599,
		40.337254, 34.895782, 39.538857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207092, 34.128937, 39.940105>,  <39.731613, 34.720707, 39.843075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207092, 34.128937, 39.940105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387383, 34.484035, 39.902664>,  <40.495556, 34.697094, 39.880199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387383, 34.484035, 39.902664>,  <40.207092, 34.128937, 39.940105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387383, 34.484035, 39.902664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516255, -0.173689, 0.838637,
		0.728237, -0.426315, -0.536588,
		0.450723, 0.887743, -0.093601,
		40.522598, 34.750359, 39.874584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879539, 34.068718, 40.025589>,  <40.207092, 34.128937, 39.940105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879539, 34.068718, 40.025589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843014, 34.458733, 40.106556>,  <40.821098, 34.692741, 40.155136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843014, 34.458733, 40.106556>,  <40.879539, 34.068718, 40.025589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843014, 34.458733, 40.106556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670836, -0.089993, 0.736125,
		0.735962, 0.203009, -0.645869,
		-0.091316, 0.975032, 0.202418,
		40.815620, 34.751244, 40.167282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468922, 34.353260, 40.157238>,  <40.879539, 34.068718, 40.025589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468922, 34.353260, 40.157238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274689, 34.660728, 40.323780>,  <41.158150, 34.845207, 40.423706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274689, 34.660728, 40.323780>,  <41.468922, 34.353260, 40.157238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274689, 34.660728, 40.323780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646986, -0.004297, 0.762490,
		0.587891, 0.639632, -0.495231,
		-0.485585, 0.768669, 0.416359,
		41.129013, 34.891331, 40.448689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010658, 34.828674, 40.386948>,  <41.468922, 34.353260, 40.157238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010658, 34.828674, 40.386948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681446, 34.924450, 40.592976>,  <41.483917, 34.981915, 40.716591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681446, 34.924450, 40.592976>,  <42.010658, 34.828674, 40.386948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681446, 34.924450, 40.592976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551520, 0.120030, 0.825481,
		0.135827, 0.963464, -0.230842,
		-0.823029, 0.239437, 0.515066,
		41.434536, 34.996281, 40.747494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249073, 35.389473, 40.709007>,  <42.010658, 34.828674, 40.386948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249073, 35.389473, 40.709007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927601, 35.288841, 40.924713>,  <41.734718, 35.228462, 41.054138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.927601, 35.288841, 40.924713>,  <42.249073, 35.389473, 40.709007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927601, 35.288841, 40.924713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459204, 0.314155, 0.830926,
		-0.378453, 0.915432, -0.136956,
		-0.803682, -0.251575, 0.539263,
		41.686497, 35.213367, 41.086491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229851, 35.978554, 41.177116>,  <42.249073, 35.389473, 40.709007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229851, 35.978554, 41.177116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001507, 35.688480, 41.331120>,  <41.864502, 35.514435, 41.423523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001507, 35.688480, 41.331120>,  <42.229851, 35.978554, 41.177116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001507, 35.688480, 41.331120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450442, 0.115441, 0.885311,
		-0.686458, 0.678810, 0.260753,
		-0.570856, -0.725183, 0.385011,
		41.830250, 35.470924, 41.446621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033451, 36.275482, 41.866833>,  <42.229851, 35.978554, 41.177116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033451, 36.275482, 41.866833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014004, 35.878056, 41.825916>,  <42.002335, 35.639599, 41.801365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014004, 35.878056, 41.825916>,  <42.033451, 36.275482, 41.866833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014004, 35.878056, 41.825916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421163, -0.113258, 0.899886,
		-0.905681, 0.000669, 0.423959,
		-0.048619, -0.993565, -0.102294,
		41.999416, 35.579987, 41.795227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249741, 36.041161, 42.591351>,  <42.033451, 36.275482, 41.866833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249741, 36.041161, 42.591351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247856, 35.719719, 42.353291>,  <42.246727, 35.526855, 42.210457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247856, 35.719719, 42.353291>,  <42.249741, 36.041161, 42.591351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247856, 35.719719, 42.353291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469430, -0.527275, 0.708249,
		-0.882957, -0.276046, 0.379718,
		-0.004707, -0.803604, -0.595145,
		42.246445, 35.478638, 42.174747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733814, 35.544117, 42.868359>,  <42.249741, 36.041161, 42.591351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733814, 35.544117, 42.868359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068542, 35.399162, 42.704208>,  <42.269379, 35.312187, 42.605717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068542, 35.399162, 42.704208>,  <41.733814, 35.544117, 42.868359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068542, 35.399162, 42.704208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231868, -0.444439, 0.865281,
		-0.495957, -0.819236, -0.287888,
		0.836818, -0.362390, -0.410377,
		42.319588, 35.290447, 42.581097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944500, 34.709183, 42.781826>,  <41.733814, 35.544117, 42.868359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944500, 34.709183, 42.781826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256809, 34.945896, 42.862007>,  <42.444195, 35.087925, 42.910114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256809, 34.945896, 42.862007>,  <41.944500, 34.709183, 42.781826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256809, 34.945896, 42.862007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225458, -0.566047, 0.792944,
		0.582714, -0.573920, -0.575379,
		0.780777, 0.591783, 0.200449,
		42.491043, 35.123432, 42.922142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556248, 34.282436, 42.690319>,  <41.944500, 34.709183, 42.781826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556248, 34.282436, 42.690319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602913, 34.571304, 42.963039>,  <42.630913, 34.744625, 43.126671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.602913, 34.571304, 42.963039>,  <42.556248, 34.282436, 42.690319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602913, 34.571304, 42.963039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219747, -0.688244, 0.691398,
		0.968556, 0.069163, -0.238989,
		0.116664, 0.722175, 0.681802,
		42.637913, 34.787956, 43.167580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610271, 34.663769, 41.968433>,  <42.556248, 34.282436, 42.690319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610271, 34.663769, 41.968433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320297, 34.865700, 42.155884>,  <42.146313, 34.986858, 42.268356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320297, 34.865700, 42.155884>,  <42.610271, 34.663769, 41.968433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320297, 34.865700, 42.155884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667537, -0.347104, -0.658720,
		-0.169876, -0.790360, 0.588620,
		-0.724939, 0.504826, 0.468630,
		42.102818, 35.017147, 42.296471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016586, 34.230175, 41.882008>,  <42.610271, 34.663769, 41.968433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016586, 34.230175, 41.882008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906467, 34.612194, 41.926003>,  <41.840397, 34.841404, 41.952400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906467, 34.612194, 41.926003>,  <42.016586, 34.230175, 41.882008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906467, 34.612194, 41.926003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669259, -0.108262, -0.735099,
		-0.690146, -0.275983, 0.668978,
		-0.275299, 0.955046, 0.109988,
		41.823879, 34.898708, 41.959000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223969, 34.358231, 42.030342>,  <42.016586, 34.230175, 41.882008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223969, 34.358231, 42.030342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397301, 34.678150, 41.864189>,  <41.501301, 34.870102, 41.764496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397301, 34.678150, 41.864189>,  <41.223969, 34.358231, 42.030342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397301, 34.678150, 41.864189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698243, 0.006536, -0.715831,
		-0.569805, 0.600235, 0.561285,
		0.433335, 0.799797, -0.415386,
		41.527302, 34.918091, 41.739574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687366, 34.776207, 41.799911>,  <41.223969, 34.358231, 42.030342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687366, 34.776207, 41.799911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998371, 34.915810, 41.590656>,  <41.184975, 34.999569, 41.465103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998371, 34.915810, 41.590656>,  <40.687366, 34.776207, 41.799911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998371, 34.915810, 41.590656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606706, 0.197382, -0.770032,
		-0.165484, 0.916099, 0.365208,
		0.777511, 0.349002, -0.523139,
		41.231625, 35.020512, 41.433716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320404, 35.219994, 41.407467>,  <40.687366, 34.776207, 41.799911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320404, 35.219994, 41.407467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674282, 35.158085, 41.231575>,  <40.886608, 35.120941, 41.126038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674282, 35.158085, 41.231575>,  <40.320404, 35.219994, 41.407467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674282, 35.158085, 41.231575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422204, 0.133898, -0.896557,
		0.197640, 0.978834, 0.053114,
		0.884693, -0.154771, -0.439732,
		40.939690, 35.111652, 41.099655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505943, 35.758472, 40.932270>,  <40.320404, 35.219994, 41.407467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505943, 35.758472, 40.932270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651711, 35.402596, 40.822250>,  <40.739170, 35.189072, 40.756237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651711, 35.402596, 40.822250>,  <40.505943, 35.758472, 40.932270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651711, 35.402596, 40.822250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347436, 0.144139, -0.926559,
		0.863994, 0.433220, -0.256582,
		0.364421, -0.889688, -0.275051,
		40.761036, 35.135689, 40.739735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785267, 36.005146, 40.319847>,  <40.505943, 35.758472, 40.932270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785267, 36.005146, 40.319847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795525, 35.609188, 40.264065>,  <40.801682, 35.371613, 40.230595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795525, 35.609188, 40.264065>,  <40.785267, 36.005146, 40.319847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795525, 35.609188, 40.264065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122310, 0.135346, -0.983220,
		0.992160, 0.042274, -0.117603,
		0.025648, -0.989896, -0.139455,
		40.803219, 35.312218, 40.222229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155605, 35.919384, 39.727863>,  <40.785267, 36.005146, 40.319847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155605, 35.919384, 39.727863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961201, 35.573322, 39.777355>,  <40.844559, 35.365685, 39.807053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961201, 35.573322, 39.777355>,  <41.155605, 35.919384, 39.727863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961201, 35.573322, 39.777355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141756, -0.061665, -0.987979,
		0.862382, -0.497704, -0.092671,
		-0.486007, -0.865152, 0.123732,
		40.815399, 35.313778, 39.814476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311428, 35.604370, 39.200340>,  <41.155605, 35.919384, 39.727863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311428, 35.604370, 39.200340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035133, 35.337090, 39.310898>,  <40.869358, 35.176720, 39.377232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035133, 35.337090, 39.310898>,  <41.311428, 35.604370, 39.200340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035133, 35.337090, 39.310898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272053, -0.114007, -0.955505,
		0.669980, -0.735193, -0.103038,
		-0.690734, -0.668201, 0.276394,
		40.827911, 35.136631, 39.393818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323616, 34.774445, 38.982151>,  <41.311428, 35.604370, 39.200340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323616, 34.774445, 38.982151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960224, 34.934654, 39.029884>,  <40.742188, 35.030781, 39.058525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960224, 34.934654, 39.029884>,  <41.323616, 34.774445, 38.982151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960224, 34.934654, 39.029884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230461, -0.241918, -0.942530,
		-0.348640, -0.883772, 0.312084,
		-0.908481, 0.400527, 0.119332,
		40.687679, 35.054813, 39.065685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001698, 34.351738, 38.413521>,  <41.323616, 34.774445, 38.982151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001698, 34.351738, 38.413521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771309, 34.660057, 38.522427>,  <40.633076, 34.845051, 38.587772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771309, 34.660057, 38.522427>,  <41.001698, 34.351738, 38.413521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771309, 34.660057, 38.522427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440480, -0.012056, -0.897681,
		-0.688650, -0.636963, 0.346466,
		-0.575967, 0.770800, 0.272267,
		40.598518, 34.891296, 38.604107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349388, 34.182709, 37.972656>,  <41.001698, 34.351738, 38.413521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349388, 34.182709, 37.972656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301594, 34.555679, 38.109066>,  <40.272919, 34.779461, 38.190910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301594, 34.555679, 38.109066>,  <40.349388, 34.182709, 37.972656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301594, 34.555679, 38.109066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355553, 0.280516, -0.891568,
		-0.926987, -0.227782, 0.298010,
		-0.119486, 0.932430, 0.341023,
		40.265747, 34.835407, 38.211372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660442, 34.422718, 37.827717>,  <40.349388, 34.182709, 37.972656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660442, 34.422718, 37.827717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904419, 34.739216, 37.845142>,  <40.050804, 34.929115, 37.855598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904419, 34.739216, 37.845142>,  <39.660442, 34.422718, 37.827717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904419, 34.739216, 37.845142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279657, 0.266360, -0.922412,
		-0.741456, 0.550440, 0.383743,
		0.609946, 0.791245, 0.043560,
		40.087402, 34.976589, 37.858212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069221, 34.606319, 37.292381>,  <39.660442, 34.422718, 37.827717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069221, 34.606319, 37.292381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466824, 34.572319, 37.319893>,  <39.705383, 34.551918, 37.336399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466824, 34.572319, 37.319893>,  <39.069221, 34.606319, 37.292381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466824, 34.572319, 37.319893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108371, -0.682376, 0.722924,
		-0.014515, -0.726043, -0.687496,
		0.994004, -0.084998, 0.068777,
		39.765026, 34.546818, 37.340527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154682, 35.154762, 37.652344>,  <39.069221, 34.606319, 37.292381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154682, 35.154762, 37.652344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536121, 35.272655, 37.627728>,  <39.764984, 35.343391, 37.612957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536121, 35.272655, 37.627728>,  <39.154682, 35.154762, 37.652344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536121, 35.272655, 37.627728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183262, 0.405991, -0.895314,
		-0.238889, 0.865047, 0.441164,
		0.953597, 0.294729, -0.061544,
		39.822201, 35.361073, 37.609264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078278, 35.749001, 37.368347>,  <39.154682, 35.154762, 37.652344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078278, 35.749001, 37.368347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467632, 35.677719, 37.310711>,  <39.701244, 35.634953, 37.276127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467632, 35.677719, 37.310711>,  <39.078278, 35.749001, 37.368347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467632, 35.677719, 37.310711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068298, 0.374617, -0.924661,
		0.218753, 0.909894, 0.352477,
		0.973387, -0.178199, -0.144092,
		39.759647, 35.624260, 37.267483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337063, 36.207260, 36.983715>,  <39.078278, 35.749001, 37.368347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337063, 36.207260, 36.983715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662136, 35.979645, 36.933521>,  <39.857182, 35.843075, 36.903404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662136, 35.979645, 36.933521>,  <39.337063, 36.207260, 36.983715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662136, 35.979645, 36.933521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130319, 0.032411, -0.990942,
		0.567948, 0.821674, -0.047816,
		0.812682, -0.569035, -0.125487,
		39.905941, 35.808933, 36.895874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836369, 36.579849, 36.671261>,  <39.337063, 36.207260, 36.983715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836369, 36.579849, 36.671261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880905, 36.190113, 36.593021>,  <39.907627, 35.956272, 36.546078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880905, 36.190113, 36.593021>,  <39.836369, 36.579849, 36.671261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880905, 36.190113, 36.593021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236547, 0.165182, -0.957476,
		0.965219, 0.152879, -0.212086,
		0.111345, -0.974342, -0.195600,
		39.914310, 35.897812, 36.534340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021309, 36.582916, 36.010223>,  <39.836369, 36.579849, 36.671261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021309, 36.582916, 36.010223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971931, 36.187958, 36.049862>,  <39.942307, 35.950985, 36.073647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971931, 36.187958, 36.049862>,  <40.021309, 36.582916, 36.010223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971931, 36.187958, 36.049862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184083, -0.075342, -0.980019,
		0.975129, -0.139216, -0.172462,
		-0.123441, -0.987392, 0.099095,
		39.934898, 35.891739, 36.079590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445801, 36.212887, 35.481529>,  <40.021309, 36.582916, 36.010223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445801, 36.212887, 35.481529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112514, 36.020641, 35.590904>,  <39.912544, 35.905296, 35.656528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112514, 36.020641, 35.590904>,  <40.445801, 36.212887, 35.481529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112514, 36.020641, 35.590904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319950, 0.015731, -0.947304,
		0.450983, -0.876793, -0.166878,
		-0.833215, -0.480611, 0.273436,
		39.862549, 35.876457, 35.672935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364197, 35.507401, 35.025406>,  <40.445801, 36.212887, 35.481529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364197, 35.507401, 35.025406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997223, 35.596790, 35.157082>,  <39.777039, 35.650425, 35.236088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997223, 35.596790, 35.157082>,  <40.364197, 35.507401, 35.025406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997223, 35.596790, 35.157082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330089, 0.034434, -0.943322,
		-0.222144, -0.974101, 0.042175,
		-0.917439, 0.223475, 0.329189,
		39.721992, 35.663834, 35.255840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902718, 35.015633, 34.731380>,  <40.364197, 35.507401, 35.025406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902718, 35.015633, 34.731380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691338, 35.345161, 34.813412>,  <39.564510, 35.542877, 34.862629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691338, 35.345161, 34.813412>,  <39.902718, 35.015633, 34.731380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691338, 35.345161, 34.813412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427880, -0.049816, -0.902462,
		-0.733250, -0.564657, 0.378822,
		-0.528453, 0.823821, 0.205079,
		39.532803, 35.592308, 34.874935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449497, 34.842003, 34.340679>,  <39.902718, 35.015633, 34.731380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449497, 34.842003, 34.340679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180153, 34.557659, 34.259434>,  <40.018547, 34.387051, 34.210686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180153, 34.557659, 34.259434>,  <40.449497, 34.842003, 34.340679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180153, 34.557659, 34.259434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675781, -0.480388, -0.559059,
		0.299840, -0.513712, 0.803863,
		-0.673362, -0.710864, -0.203118,
		39.978146, 34.344398, 34.198498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604809, 34.238228, 34.603024>,  <40.449497, 34.842003, 34.340679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604809, 34.238228, 34.603024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404797, 34.148949, 34.268322>,  <40.284790, 34.095383, 34.067501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404797, 34.148949, 34.268322>,  <40.604809, 34.238228, 34.603024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404797, 34.148949, 34.268322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742569, -0.607671, -0.281651,
		-0.445607, -0.762180, 0.469592,
		-0.500027, -0.223199, -0.836753,
		40.254787, 34.081989, 34.017296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449986, 33.538624, 34.627804>,  <40.604809, 34.238228, 34.603024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449986, 33.538624, 34.627804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510014, 33.698341, 34.266022>,  <40.546028, 33.794170, 34.048950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510014, 33.698341, 34.266022>,  <40.449986, 33.538624, 34.627804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510014, 33.698341, 34.266022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807988, -0.576735, -0.120551,
		-0.569768, -0.712700, -0.409173,
		0.150068, 0.399293, -0.904458,
		40.555035, 33.818130, 33.994686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528118, 32.950008, 34.129169>,  <40.449986, 33.538624, 34.627804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528118, 32.950008, 34.129169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712887, 33.279411, 33.997429>,  <40.823750, 33.477051, 33.918385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712887, 33.279411, 33.997429>,  <40.528118, 32.950008, 34.129169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712887, 33.279411, 33.997429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878711, -0.475331, 0.043899,
		-0.120400, -0.309682, -0.943187,
		0.461920, 0.823503, -0.329350,
		40.851463, 33.526463, 33.898624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977173, 32.726402, 33.594883>,  <40.528118, 32.950008, 34.129169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977173, 32.726402, 33.594883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135574, 33.031631, 33.799198>,  <41.230614, 33.214767, 33.921787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135574, 33.031631, 33.799198>,  <40.977173, 32.726402, 33.594883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135574, 33.031631, 33.799198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841759, -0.523937, 0.130124,
		0.366914, 0.378432, -0.849802,
		0.396000, 0.763073, 0.510788,
		41.254375, 33.260551, 33.952435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595360, 33.077793, 33.256882>,  <40.977173, 32.726402, 33.594883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595360, 33.077793, 33.256882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622372, 33.054600, 33.655293>,  <41.638580, 33.040684, 33.894341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622372, 33.054600, 33.655293>,  <41.595360, 33.077793, 33.256882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622372, 33.054600, 33.655293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842784, -0.531001, -0.088054,
		0.533999, 0.845385, 0.013007,
		0.067533, -0.057983, 0.996031,
		41.642632, 33.037205, 33.954102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227543, 33.336750, 33.566914>,  <41.595360, 33.077793, 33.256882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227543, 33.336750, 33.566914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110466, 33.046368, 33.815853>,  <42.040218, 32.872139, 33.965218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110466, 33.046368, 33.815853>,  <42.227543, 33.336750, 33.566914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110466, 33.046368, 33.815853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857962, -0.486741, -0.164270,
		0.422177, 0.485874, 0.765306,
		-0.292691, -0.725954, 0.622352,
		42.022659, 32.828583, 34.002560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722290, 33.671543, 33.894646>,  <42.227543, 33.336750, 33.566914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722290, 33.671543, 33.894646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649162, 33.949215, 34.173122>,  <42.605286, 34.115818, 34.340210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.649162, 33.949215, 34.173122>,  <42.722290, 33.671543, 33.894646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649162, 33.949215, 34.173122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972898, 0.229717, 0.026433,
		-0.141579, 0.682158, -0.717367,
		-0.182823, 0.694183, 0.696193,
		42.594315, 34.157471, 34.381981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174274, 34.320892, 33.801872>,  <42.722290, 33.671543, 33.894646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174274, 34.320892, 33.801872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037609, 34.223930, 34.165081>,  <42.955612, 34.165752, 34.383007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037609, 34.223930, 34.165081>,  <43.174274, 34.320892, 33.801872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037609, 34.223930, 34.165081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927492, -0.242967, 0.284123,
		0.151746, 0.939258, 0.307842,
		-0.341661, -0.242406, 0.908024,
		42.935112, 34.151207, 34.437489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254475, 34.738022, 34.384743>,  <43.174274, 34.320892, 33.801872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254475, 34.738022, 34.384743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273037, 34.349434, 34.477776>,  <43.284176, 34.116283, 34.533596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273037, 34.349434, 34.477776>,  <43.254475, 34.738022, 34.384743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273037, 34.349434, 34.477776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986882, 0.080629, 0.139868,
		-0.154630, 0.223045, 0.962466,
		0.046406, -0.971468, 0.232587,
		43.286961, 34.057995, 34.547550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640064, 34.668747, 34.995853>,  <43.254475, 34.738022, 34.384743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640064, 34.668747, 34.995853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680256, 34.328064, 34.790138>,  <43.704372, 34.123653, 34.666710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680256, 34.328064, 34.790138>,  <43.640064, 34.668747, 34.995853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680256, 34.328064, 34.790138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993132, 0.054724, 0.103413,
		-0.059934, -0.521151, 0.851357,
		0.100483, -0.851708, -0.514292,
		43.710400, 34.072552, 34.635849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071476, 34.023750, 35.322254>,  <43.640064, 34.668747, 34.995853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071476, 34.023750, 35.322254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090168, 34.082779, 34.927074>,  <44.101383, 34.118198, 34.689968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090168, 34.082779, 34.927074>,  <44.071476, 34.023750, 35.322254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090168, 34.082779, 34.927074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998477, -0.035938, 0.041861,
		-0.029328, -0.988398, -0.149028,
		0.046732, 0.147574, -0.987946,
		44.104187, 34.127052, 34.630692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.410332, 33.406609, 34.814053>,  <44.071476, 34.023750, 35.322254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.410332, 33.406609, 34.814053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442345, 33.789711, 34.703560>,  <44.461552, 34.019573, 34.637264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442345, 33.789711, 34.703560>,  <44.410332, 33.406609, 34.814053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442345, 33.789711, 34.703560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993064, -0.052666, 0.105115,
		0.086127, -0.282724, -0.955327,
		0.080032, 0.957754, -0.276228,
		44.466354, 34.077038, 34.620693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848381, 33.488556, 34.360283>,  <44.410332, 33.406609, 34.814053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848381, 33.488556, 34.360283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885231, 33.841633, 34.544613>,  <44.907341, 34.053478, 34.655212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885231, 33.841633, 34.544613>,  <44.848381, 33.488556, 34.360283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885231, 33.841633, 34.544613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983252, -0.153729, 0.097894,
		0.157254, 0.444093, -0.882073,
		0.092126, 0.882694, 0.460829,
		44.912868, 34.106441, 34.682861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.252979, 33.948421, 33.903950>,  <44.848381, 33.488556, 34.360283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.252979, 33.948421, 33.903950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.282265, 34.018864, 34.296608>,  <45.299835, 34.061127, 34.532204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.282265, 34.018864, 34.296608>,  <45.252979, 33.948421, 33.903950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.282265, 34.018864, 34.296608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964506, -0.262896, -0.024773,
		0.253708, 0.948617, -0.189098,
		0.073213, 0.176101, 0.981646,
		45.304230, 34.071693, 34.591103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.921734, 34.095425, 33.829056>,  <45.252979, 33.948421, 33.903950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.921734, 34.095425, 33.829056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815815, 34.077362, 34.214355>,  <45.752262, 34.066525, 34.445534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815815, 34.077362, 34.214355>,  <45.921734, 34.095425, 33.829056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815815, 34.077362, 34.214355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937218, -0.247136, 0.246059,
		0.226941, 0.967928, 0.107765,
		-0.264800, -0.045159, 0.963245,
		45.736374, 34.063816, 34.503330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.329193, 34.579273, 34.284969>,  <45.921734, 34.095425, 33.829056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.329193, 34.579273, 34.284969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209007, 34.295044, 34.539467>,  <46.136894, 34.124504, 34.692165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209007, 34.295044, 34.539467>,  <46.329193, 34.579273, 34.284969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.209007, 34.295044, 34.539467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943965, -0.126028, 0.305035,
		-0.136567, 0.692241, 0.708627,
		-0.300464, -0.710577, 0.636240,
		46.118870, 34.081871, 34.730339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661110, 34.598587, 33.594540>,  <46.329193, 34.579273, 34.284969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.661110, 34.598587, 33.594540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751972, 34.910130, 33.828388>,  <46.806492, 35.097054, 33.968697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751972, 34.910130, 33.828388>,  <46.661110, 34.598587, 33.594540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.751972, 34.910130, 33.828388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508132, -0.606914, 0.611111,
		0.830783, 0.158246, -0.533628,
		0.227160, 0.778854, 0.584624,
		46.820122, 35.143787, 34.003777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.344021, 34.593792, 33.793507>,  <46.661110, 34.598587, 33.594540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.344021, 34.593792, 33.793507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.164894, 34.803173, 34.083462>,  <47.057419, 34.928802, 34.257435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.164894, 34.803173, 34.083462>,  <47.344021, 34.593792, 33.793507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.164894, 34.803173, 34.083462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642649, -0.375240, 0.667980,
		0.621663, 0.764978, -0.168359,
		-0.447815, 0.523454, 0.724884,
		47.030548, 34.960209, 34.300926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.808014, 35.050365, 34.180672>,  <47.344021, 34.593792, 33.793507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.808014, 35.050365, 34.180672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513035, 34.941303, 34.427837>,  <47.336048, 34.875866, 34.576138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.513035, 34.941303, 34.427837>,  <47.808014, 35.050365, 34.180672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.513035, 34.941303, 34.427837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668912, -0.421351, 0.612389,
		0.093389, 0.864940, 0.493109,
		-0.737452, -0.272657, 0.617918,
		47.291798, 34.859505, 34.613213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.020832, 35.170128, 34.850266>,  <47.808014, 35.050365, 34.180672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.020832, 35.170128, 34.850266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735847, 34.894428, 34.902935>,  <47.564857, 34.729008, 34.934536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735847, 34.894428, 34.902935>,  <48.020832, 35.170128, 34.850266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.735847, 34.894428, 34.902935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567733, -0.455899, 0.685445,
		-0.412411, 0.563108, 0.716119,
		-0.712458, -0.689249, 0.131677,
		47.522110, 34.687653, 34.942440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.375717, 32.028183, 25.819860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.004925, 32.053154, 25.671913>,  <38.782448, 32.068138, 25.583145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.004925, 32.053154, 25.671913>,  <39.375717, 32.028183, 25.819860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004925, 32.053154, 25.671913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361302, 0.116373, 0.925159,
		0.100799, 0.991242, -0.085320,
		-0.926985, 0.062429, -0.369868,
		38.726830, 32.071884, 25.560953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093155, 32.738556, 25.963100>,  <39.375717, 32.028183, 25.819860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093155, 32.738556, 25.963100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.811100, 32.458309, 25.919428>,  <38.641869, 32.290161, 25.893225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.811100, 32.458309, 25.919428>,  <39.093155, 32.738556, 25.963100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811100, 32.458309, 25.919428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336717, 0.195346, 0.921120,
		-0.624026, 0.686275, -0.373655,
		-0.705134, -0.700618, -0.109179,
		38.599560, 32.248123, 25.886675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604454, 33.077267, 26.178986>,  <39.093155, 32.738556, 25.963100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604454, 33.077267, 26.178986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482128, 32.696568, 26.189165>,  <38.408733, 32.468147, 26.195272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482128, 32.696568, 26.189165>,  <38.604454, 33.077267, 26.178986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482128, 32.696568, 26.189165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455655, 0.169779, 0.873815,
		-0.835975, 0.255631, -0.485591,
		-0.305818, -0.951750, 0.025451,
		38.390385, 32.411041, 26.196800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881817, 33.091930, 26.299604>,  <38.604454, 33.077267, 26.178986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881817, 33.091930, 26.299604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.959564, 32.710190, 26.390320>,  <38.006214, 32.481144, 26.444748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.959564, 32.710190, 26.390320>,  <37.881817, 33.091930, 26.299604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959564, 32.710190, 26.390320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463788, 0.114312, 0.878540,
		-0.864361, -0.275945, -0.420398,
		0.194372, -0.954351, 0.226787,
		38.017876, 32.423885, 26.458357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241276, 32.796864, 26.560904>,  <37.881817, 33.091930, 26.299604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241276, 32.796864, 26.560904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.552422, 32.589085, 26.702381>,  <37.739109, 32.464417, 26.787268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.552422, 32.589085, 26.702381>,  <37.241276, 32.796864, 26.560904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552422, 32.589085, 26.702381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464882, -0.096920, 0.880052,
		-0.422861, -0.848988, -0.316872,
		0.777865, -0.519448, 0.353696,
		37.785782, 32.433250, 26.808491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974930, 32.389130, 26.954039>,  <37.241276, 32.796864, 26.560904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974930, 32.389130, 26.954039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349140, 32.303337, 27.066317>,  <37.573666, 32.251862, 27.133684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.349140, 32.303337, 27.066317>,  <36.974930, 32.389130, 26.954039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349140, 32.303337, 27.066317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330217, -0.248670, 0.910560,
		-0.125496, -0.944543, -0.303462,
		0.935525, -0.214480, 0.280697,
		37.629799, 32.238991, 27.150526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014561, 31.686348, 27.232346>,  <36.974930, 32.389130, 26.954039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014561, 31.686348, 27.232346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327370, 31.882385, 27.386358>,  <37.515057, 32.000008, 27.478765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327370, 31.882385, 27.386358>,  <37.014561, 31.686348, 27.232346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327370, 31.882385, 27.386358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345880, -0.172651, 0.922258,
		0.518468, -0.854401, 0.034497,
		0.782022, 0.490093, 0.385034,
		37.561977, 32.029411, 27.501869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201744, 31.328138, 27.864454>,  <37.014561, 31.686348, 27.232346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201744, 31.328138, 27.864454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368610, 31.683752, 27.939919>,  <37.468731, 31.897120, 27.985197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368610, 31.683752, 27.939919>,  <37.201744, 31.328138, 27.864454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368610, 31.683752, 27.939919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176318, -0.124471, 0.976432,
		0.891562, -0.440600, 0.104827,
		0.417167, 0.889033, 0.188659,
		37.493759, 31.950462, 27.996515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361794, 31.278122, 28.558119>,  <37.201744, 31.328138, 27.864454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361794, 31.278122, 28.558119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.420399, 31.669588, 28.500502>,  <37.455563, 31.904469, 28.465931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.420399, 31.669588, 28.500502>,  <37.361794, 31.278122, 28.558119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420399, 31.669588, 28.500502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195364, 0.171374, 0.965641,
		0.969725, -0.113339, 0.216304,
		0.146514, 0.978665, -0.144044,
		37.464352, 31.963188, 28.457289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917061, 31.573635, 28.956892>,  <37.361794, 31.278122, 28.558119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917061, 31.573635, 28.956892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670666, 31.882851, 28.896278>,  <37.522827, 32.068378, 28.859909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.670666, 31.882851, 28.896278>,  <37.917061, 31.573635, 28.956892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670666, 31.882851, 28.896278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216749, 0.018617, 0.976050,
		0.757347, 0.634084, 0.156088,
		-0.615992, 0.773040, -0.151536,
		37.485867, 32.114761, 28.850817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139126, 32.151012, 29.411165>,  <37.917061, 31.573635, 28.956892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139126, 32.151012, 29.411165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.751789, 32.182545, 29.316423>,  <37.519386, 32.201466, 29.259579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.751789, 32.182545, 29.316423>,  <38.139126, 32.151012, 29.411165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751789, 32.182545, 29.316423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211162, 0.247387, 0.945627,
		0.133138, 0.965705, -0.222910,
		-0.968341, 0.078829, -0.236856,
		37.461288, 32.206192, 29.245367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932220, 32.763245, 29.671131>,  <38.139126, 32.151012, 29.411165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932220, 32.763245, 29.671131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598209, 32.546383, 29.633617>,  <37.397800, 32.416267, 29.611109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598209, 32.546383, 29.633617>,  <37.932220, 32.763245, 29.671131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598209, 32.546383, 29.633617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269960, 0.255191, 0.928439,
		-0.479422, 0.800593, -0.359452,
		-0.835031, -0.542151, -0.093784,
		37.347698, 32.383736, 29.605482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366802, 33.225609, 29.796831>,  <37.932220, 32.763245, 29.671131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366802, 33.225609, 29.796831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.212929, 32.862003, 29.860977>,  <37.120605, 32.643841, 29.899466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.212929, 32.862003, 29.860977>,  <37.366802, 33.225609, 29.796831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212929, 32.862003, 29.860977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260399, 0.273552, 0.925938,
		-0.885555, 0.314438, -0.341938,
		-0.384688, -0.909009, 0.160366,
		37.097523, 32.589302, 29.909086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829586, 33.295853, 30.305580>,  <37.366802, 33.225609, 29.796831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829586, 33.295853, 30.305580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868385, 32.897755, 30.309025>,  <36.891666, 32.658894, 30.311092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868385, 32.897755, 30.309025>,  <36.829586, 33.295853, 30.305580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868385, 32.897755, 30.309025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284726, -0.019454, 0.958412,
		-0.953689, -0.095416, -0.285260,
		0.096997, -0.995248, 0.008614,
		36.897484, 32.599182, 30.311609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148048, 33.003464, 30.517298>,  <36.829586, 33.295853, 30.305580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148048, 33.003464, 30.517298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425503, 32.729530, 30.606634>,  <36.591976, 32.565170, 30.660236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425503, 32.729530, 30.606634>,  <36.148048, 33.003464, 30.517298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425503, 32.729530, 30.606634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133471, 0.182493, 0.974106,
		-0.707854, -0.705482, 0.035179,
		0.693634, -0.684829, 0.223340,
		36.633595, 32.524082, 30.673635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907444, 32.707119, 31.140825>,  <36.148048, 33.003464, 30.517298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907444, 32.707119, 31.140825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.287422, 32.584019, 31.119289>,  <36.515408, 32.510159, 31.106367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.287422, 32.584019, 31.119289>,  <35.907444, 32.707119, 31.140825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287422, 32.584019, 31.119289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101156, 0.139925, 0.984981,
		-0.295595, -0.941122, 0.164052,
		0.949943, -0.307750, -0.053839,
		36.572407, 32.491695, 31.103138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903484, 32.044136, 31.422585>,  <35.907444, 32.707119, 31.140825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903484, 32.044136, 31.422585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257801, 32.226391, 31.457846>,  <36.470390, 32.335743, 31.479002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257801, 32.226391, 31.457846>,  <35.903484, 32.044136, 31.422585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257801, 32.226391, 31.457846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086617, -0.024294, 0.995946,
		0.455934, -0.889833, 0.017947,
		0.885789, 0.455640, 0.088151,
		36.523537, 32.363083, 31.484291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155766, 31.675695, 31.943367>,  <35.903484, 32.044136, 31.422585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155766, 31.675695, 31.943367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.385906, 32.002823, 31.948210>,  <36.523991, 32.199100, 31.951117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.385906, 32.002823, 31.948210>,  <36.155766, 31.675695, 31.943367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385906, 32.002823, 31.948210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108579, 0.061697, 0.992172,
		0.810669, -0.572160, 0.124295,
		0.575349, 0.817818, 0.012109,
		36.558510, 32.248169, 31.951843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769428, 31.577625, 32.399033>,  <36.155766, 31.675695, 31.943367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769428, 31.577625, 32.399033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.728615, 31.973145, 32.355453>,  <36.704124, 32.210457, 32.329308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.728615, 31.973145, 32.355453>,  <36.769428, 31.577625, 32.399033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728615, 31.973145, 32.355453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083113, 0.100664, 0.991443,
		0.991303, 0.110219, 0.071910,
		-0.102037, 0.988797, -0.108949,
		36.698002, 32.269783, 32.322769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181908, 31.809044, 32.879063>,  <36.769428, 31.577625, 32.399033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181908, 31.809044, 32.879063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968323, 32.136189, 32.793285>,  <36.840172, 32.332474, 32.741817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968323, 32.136189, 32.793285>,  <37.181908, 31.809044, 32.879063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968323, 32.136189, 32.793285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093018, 0.195270, 0.976329,
		0.840375, 0.541271, -0.028191,
		-0.533964, 0.817860, -0.214448,
		36.808132, 32.381546, 32.728951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508064, 32.394623, 33.262924>,  <37.181908, 31.809044, 32.879063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508064, 32.394623, 33.262924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.121746, 32.470161, 33.191853>,  <36.889954, 32.515484, 33.149208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.121746, 32.470161, 33.191853>,  <37.508064, 32.394623, 33.262924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121746, 32.470161, 33.191853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093392, 0.385904, 0.917800,
		0.241895, 0.903003, -0.355068,
		-0.965798, 0.188850, -0.177681,
		36.832008, 32.526817, 33.138550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377602, 33.041130, 33.510151>,  <37.508064, 32.394623, 33.262924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377602, 33.041130, 33.510151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005264, 32.896366, 33.489952>,  <36.781860, 32.809509, 33.477833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005264, 32.896366, 33.489952>,  <37.377602, 33.041130, 33.510151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005264, 32.896366, 33.489952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222122, 0.450660, 0.864620,
		-0.290152, 0.816045, -0.499882,
		-0.930846, -0.361906, -0.050502,
		36.726009, 32.787796, 33.474800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735111, 33.175117, 34.272938>,  <37.377602, 33.041130, 33.510151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735111, 33.175117, 34.272938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088966, 33.278683, 34.428051>,  <38.301281, 33.340820, 34.521118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.088966, 33.278683, 34.428051>,  <37.735111, 33.175117, 34.272938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088966, 33.278683, 34.428051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420368, -0.082998, -0.903550,
		-0.201751, 0.962329, -0.182260,
		0.884640, 0.258908, 0.387787,
		38.354359, 33.356354, 34.544388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995949, 33.663795, 33.807156>,  <37.735111, 33.175117, 34.272938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995949, 33.663795, 33.807156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311913, 33.521465, 34.006931>,  <38.501492, 33.436066, 34.126797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311913, 33.521465, 34.006931>,  <37.995949, 33.663795, 33.807156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311913, 33.521465, 34.006931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454958, -0.206032, -0.866351,
		0.411170, 0.911558, -0.000860,
		0.789906, -0.355827, 0.499435,
		38.548885, 33.414719, 34.156761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605164, 33.980793, 33.649849>,  <37.995949, 33.663795, 33.807156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605164, 33.980793, 33.649849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752354, 33.640285, 33.799480>,  <38.840668, 33.435982, 33.889259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.752354, 33.640285, 33.799480>,  <38.605164, 33.980793, 33.649849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752354, 33.640285, 33.799480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542834, -0.129963, -0.829724,
		0.754935, 0.508381, 0.414274,
		0.367975, -0.851269, 0.374079,
		38.862747, 33.384903, 33.911705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288494, 34.032257, 33.644131>,  <38.605164, 33.980793, 33.649849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288494, 34.032257, 33.644131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.238373, 33.635540, 33.654278>,  <39.208302, 33.397511, 33.660366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.238373, 33.635540, 33.654278>,  <39.288494, 34.032257, 33.644131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238373, 33.635540, 33.654278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697040, -0.106199, -0.709124,
		0.705999, -0.071172, 0.704627,
		-0.125300, -0.991794, 0.025367,
		39.200783, 33.338001, 33.661888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010773, 33.717079, 33.490921>,  <39.288494, 34.032257, 33.644131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010773, 33.717079, 33.490921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732082, 33.439747, 33.417309>,  <39.564869, 33.273346, 33.373142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732082, 33.439747, 33.417309>,  <40.010773, 33.717079, 33.490921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732082, 33.439747, 33.417309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474551, -0.253103, -0.843054,
		0.537938, -0.674708, 0.505364,
		-0.696724, -0.693331, -0.184030,
		39.523064, 33.231747, 33.362099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362869, 33.189297, 33.293663>,  <40.010773, 33.717079, 33.490921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362869, 33.189297, 33.293663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.999294, 33.109127, 33.147427>,  <39.781147, 33.061024, 33.059685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.999294, 33.109127, 33.147427>,  <40.362869, 33.189297, 33.293663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999294, 33.109127, 33.147427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403806, -0.204951, -0.891592,
		0.103770, -0.958032, 0.267221,
		-0.908940, -0.200426, -0.365591,
		39.726612, 33.049000, 33.037750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426754, 32.529541, 32.984341>,  <40.362869, 33.189297, 33.293663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426754, 32.529541, 32.984341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.117420, 32.721790, 32.818954>,  <39.931820, 32.837139, 32.719723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.117420, 32.721790, 32.818954>,  <40.426754, 32.529541, 32.984341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117420, 32.721790, 32.818954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233307, -0.390660, -0.890479,
		-0.589507, -0.785104, 0.189979,
		-0.773336, 0.480620, -0.413467,
		39.885418, 32.865974, 32.694916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109982, 32.102692, 32.401371>,  <40.426754, 32.529541, 32.984341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109982, 32.102692, 32.401371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959476, 32.466446, 32.330433>,  <39.869175, 32.684696, 32.287868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959476, 32.466446, 32.330433>,  <40.109982, 32.102692, 32.401371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959476, 32.466446, 32.330433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051033, -0.170782, -0.983986,
		-0.925107, -0.379286, 0.017850,
		-0.376260, 0.909382, -0.177348,
		39.846600, 32.739262, 32.277229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549698, 32.014153, 31.921883>,  <40.109982, 32.102692, 32.401371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549698, 32.014153, 31.921883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.665680, 32.396549, 31.903997>,  <39.735271, 32.625988, 31.893267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.665680, 32.396549, 31.903997>,  <39.549698, 32.014153, 31.921883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665680, 32.396549, 31.903997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059107, -0.028741, -0.997838,
		-0.955212, 0.291974, 0.048172,
		0.289958, 0.955994, -0.044711,
		39.752666, 32.683346, 31.890585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275944, 32.230232, 31.344845>,  <39.549698, 32.014153, 31.921883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275944, 32.230232, 31.344845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525532, 32.535107, 31.413807>,  <39.675285, 32.718033, 31.455185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525532, 32.535107, 31.413807>,  <39.275944, 32.230232, 31.344845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525532, 32.535107, 31.413807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119257, 0.125164, -0.984943,
		-0.772293, 0.635137, -0.012798,
		0.623972, 0.762191, 0.172408,
		39.712723, 32.763763, 31.465528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031395, 32.855583, 31.058609>,  <39.275944, 32.230232, 31.344845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031395, 32.855583, 31.058609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.426517, 32.915337, 31.076111>,  <39.663593, 32.951187, 31.086613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.426517, 32.915337, 31.076111>,  <39.031395, 32.855583, 31.058609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426517, 32.915337, 31.076111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004081, 0.256145, -0.966630,
		-0.155607, 0.955026, 0.252413,
		0.987811, 0.149384, 0.043755,
		39.722862, 32.960152, 31.089237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077389, 33.529163, 30.779415>,  <39.031395, 32.855583, 31.058609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077389, 33.529163, 30.779415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.432137, 33.348392, 30.740984>,  <39.644985, 33.239929, 30.717926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.432137, 33.348392, 30.740984>,  <39.077389, 33.529163, 30.779415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432137, 33.348392, 30.740984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103853, 0.397620, -0.911654,
		0.450201, 0.798538, 0.399570,
		0.886867, -0.451924, -0.096078,
		39.698196, 33.212814, 30.712160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519958, 33.981926, 30.352501>,  <39.077389, 33.529163, 30.779415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519958, 33.981926, 30.352501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724770, 33.638496, 30.342104>,  <39.847656, 33.432438, 30.335867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724770, 33.638496, 30.342104>,  <39.519958, 33.981926, 30.352501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724770, 33.638496, 30.342104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328689, 0.223794, -0.917540,
		0.793597, 0.461259, 0.396793,
		0.512023, -0.858578, -0.025991,
		39.878376, 33.380924, 30.334307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158916, 34.125404, 29.954943>,  <39.519958, 33.981926, 30.352501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158916, 34.125404, 29.954943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.110806, 33.728619, 29.939293>,  <40.081940, 33.490547, 29.929903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.110806, 33.728619, 29.939293>,  <40.158916, 34.125404, 29.954943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110806, 33.728619, 29.939293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347505, -0.005155, -0.937664,
		0.929931, -0.126379, 0.345334,
		-0.120281, -0.991969, -0.039124,
		40.074722, 33.431026, 29.927555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666405, 33.887814, 29.523329>,  <40.158916, 34.125404, 29.954943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666405, 33.887814, 29.523329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.435108, 33.561584, 29.531998>,  <40.296329, 33.365845, 29.537199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.435108, 33.561584, 29.531998>,  <40.666405, 33.887814, 29.523329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435108, 33.561584, 29.531998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388686, -0.298737, -0.871596,
		0.717326, -0.495572, 0.489746,
		-0.578244, -0.815576, 0.021670,
		40.261635, 33.316910, 29.538498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026012, 33.371010, 29.119398>,  <40.666405, 33.887814, 29.523329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026012, 33.371010, 29.119398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.656166, 33.219975, 29.139421>,  <40.434258, 33.129353, 29.151436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.656166, 33.219975, 29.139421>,  <41.026012, 33.371010, 29.119398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656166, 33.219975, 29.139421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059000, -0.271819, -0.960538,
		0.376296, -0.885178, 0.273607,
		-0.924619, -0.377589, 0.050059,
		40.378780, 33.106697, 29.154440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046757, 32.714710, 28.927853>,  <41.026012, 33.371010, 29.119398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046757, 32.714710, 28.927853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.660564, 32.810196, 28.886175>,  <40.428848, 32.867489, 28.861168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.660564, 32.810196, 28.886175>,  <41.046757, 32.714710, 28.927853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660564, 32.810196, 28.886175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026543, -0.307774, -0.951089,
		-0.259103, -0.921028, 0.290815,
		-0.965485, 0.238711, -0.104192,
		40.370918, 32.881809, 28.854918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618031, 32.136856, 28.652260>,  <41.046757, 32.714710, 28.927853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618031, 32.136856, 28.652260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.419189, 32.471596, 28.560549>,  <40.299885, 32.672440, 28.505522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.419189, 32.471596, 28.560549>,  <40.618031, 32.136856, 28.652260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419189, 32.471596, 28.560549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115396, -0.198131, -0.973359,
		-0.859986, -0.510314, 0.001921,
		-0.497099, 0.836853, -0.229278,
		40.270061, 32.722652, 28.491766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.249580, 31.972723, 27.988836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.251263, 32.372719, 27.988049>,  <40.252274, 32.612717, 27.987576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.251263, 32.372719, 27.988049>,  <40.249580, 31.972723, 27.988836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251263, 32.372719, 27.988049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174979, -0.002678, -0.984569,
		-0.984563, 0.003800, -0.174989,
		0.004210, 0.999989, -0.001972,
		40.252525, 32.672714, 27.987457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836800, 32.179340, 27.434324>,  <40.249580, 31.972723, 27.988836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836800, 32.179340, 27.434324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.073536, 32.492428, 27.511347>,  <40.215576, 32.680279, 27.557560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.073536, 32.492428, 27.511347>,  <39.836800, 32.179340, 27.434324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073536, 32.492428, 27.511347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237084, 0.059283, -0.969679,
		-0.770400, 0.619547, -0.150484,
		0.591841, 0.782718, 0.192556,
		40.251087, 32.727242, 27.569113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562153, 32.691677, 26.971581>,  <39.836800, 32.179340, 27.434324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562153, 32.691677, 26.971581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.937443, 32.800888, 27.056616>,  <40.162617, 32.866413, 27.107637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.937443, 32.800888, 27.056616>,  <39.562153, 32.691677, 26.971581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937443, 32.800888, 27.056616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127800, 0.297514, -0.946125,
		-0.321568, 0.914845, 0.244242,
		0.938223, 0.273029, 0.212588,
		40.218910, 32.882797, 27.120392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658993, 33.283207, 26.643332>,  <39.562153, 32.691677, 26.971581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658993, 33.283207, 26.643332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.031368, 33.159206, 26.720535>,  <40.254795, 33.084805, 26.766857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.031368, 33.159206, 26.720535>,  <39.658993, 33.283207, 26.643332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031368, 33.159206, 26.720535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269203, 0.225451, -0.936323,
		0.246750, 0.923617, 0.293335,
		0.930937, -0.310005, 0.193010,
		40.310650, 33.066204, 26.778439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064602, 33.766647, 26.357809>,  <39.658993, 33.283207, 26.643332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064602, 33.766647, 26.357809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.301662, 33.446796, 26.396505>,  <40.443897, 33.254887, 26.419724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.301662, 33.446796, 26.396505>,  <40.064602, 33.766647, 26.357809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301662, 33.446796, 26.396505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381760, 0.173105, -0.907906,
		0.709243, 0.575002, 0.407857,
		0.592650, -0.799630, 0.096739,
		40.479458, 33.206909, 26.425528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714172, 33.947876, 26.211630>,  <40.064602, 33.766647, 26.357809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714172, 33.947876, 26.211630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.724922, 33.554516, 26.139841>,  <40.731373, 33.318501, 26.096767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.724922, 33.554516, 26.139841>,  <40.714172, 33.947876, 26.211630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724922, 33.554516, 26.139841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515875, 0.167427, -0.840144,
		0.856242, -0.070008, 0.511809,
		0.026874, -0.983396, -0.179474,
		40.732983, 33.259499, 26.085999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333351, 33.879005, 25.960123>,  <40.714172, 33.947876, 26.211630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333351, 33.879005, 25.960123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.133907, 33.556442, 25.832933>,  <41.014240, 33.362904, 25.756620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.133907, 33.556442, 25.832933>,  <41.333351, 33.879005, 25.960123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133907, 33.556442, 25.832933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542778, -0.004439, -0.839864,
		0.675858, -0.591349, 0.439912,
		-0.498606, -0.806403, -0.317972,
		40.984325, 33.314522, 25.737541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879745, 33.486843, 25.739134>,  <41.333351, 33.879005, 25.960123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879745, 33.486843, 25.739134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.541325, 33.370815, 25.560225>,  <41.338272, 33.301197, 25.452879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.541325, 33.370815, 25.560225>,  <41.879745, 33.486843, 25.739134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541325, 33.370815, 25.560225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513711, -0.219412, -0.829433,
		0.142455, -0.931514, 0.334646,
		-0.846054, -0.290069, -0.447273,
		41.287510, 33.283794, 25.426043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944702, 32.775898, 25.465097>,  <41.879745, 33.486843, 25.739134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944702, 32.775898, 25.465097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.653790, 32.952625, 25.255007>,  <41.479244, 33.058662, 25.128952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.653790, 32.952625, 25.255007>,  <41.944702, 32.775898, 25.465097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653790, 32.952625, 25.255007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483369, -0.213563, -0.848967,
		-0.487256, -0.871315, -0.058240,
		-0.727280, 0.441816, -0.525226,
		41.435604, 33.085171, 25.097439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914688, 32.333073, 24.825191>,  <41.944702, 32.775898, 25.465097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914688, 32.333073, 24.825191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.704597, 32.663265, 24.742510>,  <41.578545, 32.861382, 24.692902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.704597, 32.663265, 24.742510>,  <41.914688, 32.333073, 24.825191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704597, 32.663265, 24.742510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217039, -0.104926, -0.970508,
		-0.822820, -0.554597, -0.124051,
		-0.525225, 0.825477, -0.206704,
		41.547031, 32.910908, 24.680498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669083, 32.181477, 24.144852>,  <41.914688, 32.333073, 24.825191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669083, 32.181477, 24.144852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.647728, 32.579742, 24.175295>,  <41.634914, 32.818703, 24.193562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.647728, 32.579742, 24.175295>,  <41.669083, 32.181477, 24.144852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647728, 32.579742, 24.175295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348715, 0.090010, -0.932897,
		-0.935707, -0.023265, -0.352010,
		-0.053388, 0.995669, 0.076110,
		41.631710, 32.878445, 24.198128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327145, 32.462517, 23.556625>,  <41.669083, 32.181477, 24.144852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327145, 32.462517, 23.556625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.540108, 32.771008, 23.696194>,  <41.667885, 32.956104, 23.779934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.540108, 32.771008, 23.696194>,  <41.327145, 32.462517, 23.556625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540108, 32.771008, 23.696194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275653, 0.231767, -0.932898,
		-0.800348, 0.592864, -0.089197,
		0.532409, 0.771231, 0.348919,
		41.699829, 33.002377, 23.800869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190636, 32.926933, 23.062868>,  <41.327145, 32.462517, 23.556625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190636, 32.926933, 23.062868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516960, 33.072456, 23.242689>,  <41.712753, 33.159771, 23.350582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.516960, 33.072456, 23.242689>,  <41.190636, 32.926933, 23.062868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516960, 33.072456, 23.242689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462546, 0.056133, -0.884816,
		-0.347138, 0.929781, -0.122484,
		0.815810, 0.363808, 0.449553,
		41.761703, 33.181599, 23.377556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377399, 33.494137, 22.671171>,  <41.190636, 32.926933, 23.062868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377399, 33.494137, 22.671171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.703346, 33.386097, 22.876320>,  <41.898914, 33.321274, 22.999409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.703346, 33.386097, 22.876320>,  <41.377399, 33.494137, 22.671171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703346, 33.386097, 22.876320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555871, 0.113310, -0.823510,
		0.164319, 0.956141, 0.242474,
		0.814866, -0.270102, 0.512872,
		41.947807, 33.305065, 23.030182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877975, 34.018600, 22.421839>,  <41.377399, 33.494137, 22.671171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877975, 34.018600, 22.421839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.098148, 33.738605, 22.603842>,  <42.230251, 33.570606, 22.713043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.098148, 33.738605, 22.603842>,  <41.877975, 34.018600, 22.421839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098148, 33.738605, 22.603842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677908, 0.056632, -0.732962,
		0.487299, 0.711903, 0.505701,
		0.550437, -0.699991, 0.455008,
		42.263279, 33.528606, 22.740345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506779, 34.270451, 22.450977>,  <41.877975, 34.018600, 22.421839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506779, 34.270451, 22.450977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.580078, 33.881416, 22.508245>,  <42.624058, 33.647995, 22.542606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.580078, 33.881416, 22.508245>,  <42.506779, 34.270451, 22.450977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580078, 33.881416, 22.508245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821360, 0.071452, -0.565918,
		0.540173, 0.221301, 0.811935,
		0.183252, -0.972584, 0.143172,
		42.635056, 33.589642, 22.551197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217278, 34.264015, 22.628597>,  <42.506779, 34.270451, 22.450977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217278, 34.264015, 22.628597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.093044, 33.907139, 22.497431>,  <43.018505, 33.693012, 22.418732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.093044, 33.907139, 22.497431>,  <43.217278, 34.264015, 22.628597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093044, 33.907139, 22.497431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659092, 0.046450, -0.750627,
		0.684937, -0.449256, 0.573612,
		-0.310579, -0.892195, -0.327916,
		42.999870, 33.639481, 22.399055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872005, 33.886997, 22.484825>,  <43.217278, 34.264015, 22.628597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872005, 33.886997, 22.484825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.578732, 33.731472, 22.261663>,  <43.402767, 33.638157, 22.127766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.578732, 33.731472, 22.261663>,  <43.872005, 33.886997, 22.484825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578732, 33.731472, 22.261663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518308, 0.211586, -0.828606,
		0.440219, -0.896691, 0.046393,
		-0.733188, -0.388813, -0.557906,
		43.358776, 33.614830, 22.094292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290058, 33.479130, 21.936089>,  <43.872005, 33.886997, 22.484825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290058, 33.479130, 21.936089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.918034, 33.485622, 21.789268>,  <43.694820, 33.489517, 21.701176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.918034, 33.485622, 21.789268>,  <44.290058, 33.479130, 21.936089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918034, 33.485622, 21.789268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361609, 0.217241, -0.906667,
		0.065020, -0.975983, -0.207917,
		-0.930060, 0.016233, -0.367050,
		43.639015, 33.490494, 21.679153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285263, 32.989620, 21.394156>,  <44.290058, 33.479130, 21.936089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285263, 32.989620, 21.394156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.000233, 33.263145, 21.331366>,  <43.829216, 33.427261, 21.293692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.000233, 33.263145, 21.331366>,  <44.285263, 32.989620, 21.394156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000233, 33.263145, 21.331366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375343, 0.182522, -0.908737,
		-0.592756, -0.706459, -0.386725,
		-0.712571, 0.683814, -0.156973,
		43.786461, 33.468288, 21.284273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833771, 32.815960, 20.821316>,  <44.285263, 32.989620, 21.394156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833771, 32.815960, 20.821316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.793926, 33.212162, 20.859198>,  <43.770020, 33.449883, 20.881926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.793926, 33.212162, 20.859198>,  <43.833771, 32.815960, 20.821316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793926, 33.212162, 20.859198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402284, 0.127141, -0.906643,
		-0.910079, -0.052216, -0.411131,
		-0.099613, 0.990509, 0.094703,
		43.764042, 33.509315, 20.887608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684052, 33.064137, 20.172468>,  <43.833771, 32.815960, 20.821316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684052, 33.064137, 20.172468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.800674, 33.404057, 20.348116>,  <43.870647, 33.608009, 20.453505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.800674, 33.404057, 20.348116>,  <43.684052, 33.064137, 20.172468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800674, 33.404057, 20.348116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428323, 0.294488, -0.854293,
		-0.855297, 0.437163, -0.278129,
		0.291559, 0.849803, 0.439122,
		43.888142, 33.658997, 20.479853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403568, 33.621624, 19.787365>,  <43.684052, 33.064137, 20.172468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403568, 33.621624, 19.787365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.725735, 33.737091, 19.994431>,  <43.919037, 33.806370, 20.118670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.725735, 33.737091, 19.994431>,  <43.403568, 33.621624, 19.787365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725735, 33.737091, 19.994431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492591, 0.159725, -0.855478,
		-0.329629, 0.944013, -0.013548,
		0.805418, 0.288664, 0.517663,
		43.967361, 33.823689, 20.149729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105316, 33.564560, 19.022575>,  <43.403568, 33.621624, 19.787365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105316, 33.564560, 19.022575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.820576, 33.445442, 18.768148>,  <42.649731, 33.373970, 18.615492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.820576, 33.445442, 18.768148>,  <43.105316, 33.564560, 19.022575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820576, 33.445442, 18.768148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689673, 0.125259, 0.713205,
		-0.132717, 0.946376, -0.294548,
		-0.711854, -0.297796, -0.636066,
		42.607018, 33.356102, 18.577328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630497, 33.604652, 19.418402>,  <43.105316, 33.564560, 19.022575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630497, 33.604652, 19.418402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.410992, 33.468365, 19.113045>,  <42.279289, 33.386593, 18.929831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.410992, 33.468365, 19.113045>,  <42.630497, 33.604652, 19.418402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410992, 33.468365, 19.113045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826123, 0.081200, 0.557609,
		-0.128002, 0.936651, -0.326039,
		-0.548759, -0.340723, -0.763395,
		42.246365, 33.366146, 18.884026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194382, 34.069702, 19.425043>,  <42.630497, 33.604652, 19.418402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194382, 34.069702, 19.425043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.046810, 33.767834, 19.208023>,  <41.958267, 33.586712, 19.077810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.046810, 33.767834, 19.208023>,  <42.194382, 34.069702, 19.425043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046810, 33.767834, 19.208023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826105, -0.001271, 0.563515,
		-0.425958, 0.656104, -0.622967,
		-0.368932, -0.754670, -0.542552,
		41.936131, 33.541431, 19.045258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565620, 34.337013, 19.193705>,  <42.194382, 34.069702, 19.425043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565620, 34.337013, 19.193705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.580799, 33.937428, 19.203749>,  <41.589905, 33.697678, 19.209776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.580799, 33.937428, 19.203749>,  <41.565620, 34.337013, 19.193705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580799, 33.937428, 19.203749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772829, -0.013407, 0.634473,
		-0.633479, -0.043484, -0.772537,
		0.037947, -0.998964, 0.025112,
		41.592182, 33.637737, 19.211283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888638, 34.050030, 19.039093>,  <41.565620, 34.337013, 19.193705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888638, 34.050030, 19.039093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.056042, 33.732780, 19.216089>,  <41.156487, 33.542431, 19.322287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.056042, 33.732780, 19.216089>,  <40.888638, 34.050030, 19.039093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056042, 33.732780, 19.216089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812001, -0.108525, 0.573477,
		-0.406818, -0.599312, -0.689438,
		0.418513, -0.793125, 0.442492,
		41.181595, 33.494843, 19.348837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330482, 33.583122, 19.093027>,  <40.888638, 34.050030, 19.039093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330482, 33.583122, 19.093027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.599983, 33.537128, 19.385012>,  <40.761684, 33.509533, 19.560202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.599983, 33.537128, 19.385012>,  <40.330482, 33.583122, 19.093027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599983, 33.537128, 19.385012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734213, -0.215952, 0.643659,
		0.083626, -0.969610, -0.229920,
		0.673749, -0.114984, 0.729959,
		40.802109, 33.502632, 19.604000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956070, 33.247601, 19.624445>,  <40.330482, 33.583122, 19.093027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956070, 33.247601, 19.624445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.303902, 33.297577, 19.815536>,  <40.512600, 33.327564, 19.930191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.303902, 33.297577, 19.815536>,  <39.956070, 33.247601, 19.624445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303902, 33.297577, 19.815536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429788, -0.284869, 0.856815,
		0.243143, -0.950389, -0.194016,
		0.869577, 0.124943, 0.477729,
		40.564774, 33.335060, 19.958855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069736, 32.596294, 19.991064>,  <39.956070, 33.247601, 19.624445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069736, 32.596294, 19.991064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.278461, 32.889450, 20.165688>,  <40.403694, 33.065346, 20.270462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.278461, 32.889450, 20.165688>,  <40.069736, 32.596294, 19.991064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278461, 32.889450, 20.165688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397846, -0.243615, 0.884517,
		0.754609, -0.635231, 0.164459,
		0.521808, 0.732894, 0.436559,
		40.435005, 33.109318, 20.296656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334980, 32.279697, 20.607805>,  <40.069736, 32.596294, 19.991064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334980, 32.279697, 20.607805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.346680, 32.674713, 20.669645>,  <40.353699, 32.911724, 20.706749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.346680, 32.674713, 20.669645>,  <40.334980, 32.279697, 20.607805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346680, 32.674713, 20.669645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439247, -0.126234, 0.889453,
		0.897890, -0.093925, 0.430083,
		0.029251, 0.987544, 0.154600,
		40.355453, 32.970978, 20.716024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722687, 32.324627, 21.224216>,  <40.334980, 32.279697, 20.607805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722687, 32.324627, 21.224216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.517433, 32.664543, 21.175959>,  <40.394279, 32.868492, 21.147003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.517433, 32.664543, 21.175959>,  <40.722687, 32.324627, 21.224216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517433, 32.664543, 21.175959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296652, -0.043692, 0.953985,
		0.805414, 0.525311, 0.274511,
		-0.513133, 0.849788, -0.120644,
		40.363495, 32.919479, 21.139765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793709, 32.666378, 21.871506>,  <40.722687, 32.324627, 21.224216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793709, 32.666378, 21.871506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490574, 32.858482, 21.694859>,  <40.308693, 32.973743, 21.588871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490574, 32.858482, 21.694859>,  <40.793709, 32.666378, 21.871506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490574, 32.858482, 21.694859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510609, -0.015224, 0.859678,
		0.406146, 0.876994, 0.256763,
		-0.757841, 0.480261, -0.441618,
		40.263222, 33.002560, 21.562374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641403, 33.291534, 22.300138>,  <40.793709, 32.666378, 21.871506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641403, 33.291534, 22.300138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.303200, 33.191639, 22.111359>,  <40.100277, 33.131702, 21.998091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.303200, 33.191639, 22.111359>,  <40.641403, 33.291534, 22.300138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303200, 33.191639, 22.111359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506624, 0.096062, 0.856799,
		-0.168641, 0.963536, -0.207746,
		-0.845513, -0.249740, -0.471951,
		40.049545, 33.116718, 21.969774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080627, 33.687737, 22.651403>,  <40.641403, 33.291534, 22.300138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080627, 33.687737, 22.651403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.869701, 33.407307, 22.459391>,  <39.743145, 33.239048, 22.344183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.869701, 33.407307, 22.459391>,  <40.080627, 33.687737, 22.651403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869701, 33.407307, 22.459391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522308, -0.178151, 0.833940,
		-0.670174, 0.690474, -0.272236,
		-0.527315, -0.701076, -0.480032,
		39.711506, 33.196983, 22.315380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457485, 33.909321, 22.855524>,  <40.080627, 33.687737, 22.651403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457485, 33.909321, 22.855524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.427101, 33.539360, 22.706507>,  <39.408871, 33.317383, 22.617096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.427101, 33.539360, 22.706507>,  <39.457485, 33.909321, 22.855524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427101, 33.539360, 22.706507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458507, -0.299381, 0.836745,
		-0.885439, 0.234371, -0.401333,
		-0.075958, -0.924900, -0.372545,
		39.404312, 33.261890, 22.594744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820778, 33.759331, 22.976446>,  <39.457485, 33.909321, 22.855524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820778, 33.759331, 22.976446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017101, 33.413658, 22.932070>,  <39.134895, 33.206257, 22.905445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017101, 33.413658, 22.932070>,  <38.820778, 33.759331, 22.976446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017101, 33.413658, 22.932070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355316, -0.314789, 0.880147,
		-0.795526, -0.392562, -0.461556,
		0.490805, -0.864177, -0.110939,
		39.164341, 33.154404, 22.898788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413910, 33.199738, 23.170391>,  <38.820778, 33.759331, 22.976446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413910, 33.199738, 23.170391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.780529, 33.043644, 23.205391>,  <39.000500, 32.949989, 23.226391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.780529, 33.043644, 23.205391>,  <38.413910, 33.199738, 23.170391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780529, 33.043644, 23.205391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294039, -0.509253, 0.808828,
		-0.271071, -0.767059, -0.581499,
		0.916549, -0.390233, 0.087501,
		39.055492, 32.926575, 23.231642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346226, 32.456558, 23.314125>,  <38.413910, 33.199738, 23.170391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346226, 32.456558, 23.314125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.720196, 32.540466, 23.428610>,  <38.944576, 32.590813, 23.497301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.720196, 32.540466, 23.428610>,  <38.346226, 32.456558, 23.314125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720196, 32.540466, 23.428610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114407, -0.585307, 0.802700,
		0.335905, -0.783206, -0.523217,
		0.934922, 0.209771, 0.286212,
		39.000671, 32.603397, 23.514473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725361, 31.805288, 23.400459>,  <38.346226, 32.456558, 23.314125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725361, 31.805288, 23.400459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.883213, 32.087170, 23.636309>,  <38.977924, 32.256298, 23.777819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.883213, 32.087170, 23.636309>,  <38.725361, 31.805288, 23.400459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883213, 32.087170, 23.636309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103396, -0.603573, 0.790575,
		0.913003, -0.372951, -0.165325,
		0.394632, 0.704704, 0.589625,
		39.001602, 32.298580, 23.813196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951782, 31.421793, 23.864084>,  <38.725361, 31.805288, 23.400459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951782, 31.421793, 23.864084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.914169, 31.775478, 24.047094>,  <38.891602, 31.987690, 24.156900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.914169, 31.775478, 24.047094>,  <38.951782, 31.421793, 23.864084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914169, 31.775478, 24.047094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209849, -0.466838, 0.859085,
		0.973202, -0.015232, 0.229447,
		-0.094029, 0.884212, 0.457524,
		38.885960, 32.040741, 24.184351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230816, 31.242516, 24.575310>,  <38.951782, 31.421793, 23.864084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230816, 31.242516, 24.575310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051693, 31.597414, 24.619604>,  <38.944218, 31.810352, 24.646181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051693, 31.597414, 24.619604>,  <39.230816, 31.242516, 24.575310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051693, 31.597414, 24.619604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184259, -0.212763, 0.959573,
		0.874936, 0.409304, 0.258761,
		-0.447812, 0.887244, 0.110736,
		38.917351, 31.863586, 24.652824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492424, 31.515507, 25.224216>,  <39.230816, 31.242516, 24.575310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492424, 31.515507, 25.224216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.163136, 31.732508, 25.157284>,  <38.965565, 31.862709, 25.117125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.163136, 31.732508, 25.157284>,  <39.492424, 31.515507, 25.224216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163136, 31.732508, 25.157284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207832, -0.013690, 0.978069,
		0.528315, 0.839942, 0.124020,
		-0.823219, 0.542503, -0.167334,
		38.916168, 31.895258, 25.107084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.890213, 32.676445, 30.801268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.532608, 32.855198, 30.788393>,  <40.318047, 32.962448, 30.780668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.532608, 32.855198, 30.788393>,  <40.890213, 32.676445, 30.801268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532608, 32.855198, 30.788393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103307, -0.135704, 0.985349,
		0.435967, 0.884240, 0.167487,
		-0.894014, 0.446882, -0.032186,
		40.264404, 32.989262, 30.778738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922546, 33.324940, 31.288748>,  <40.890213, 32.676445, 30.801268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922546, 33.324940, 31.288748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.544884, 33.210659, 31.223093>,  <40.318287, 33.142090, 31.183701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.544884, 33.210659, 31.223093>,  <40.922546, 33.324940, 31.288748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544884, 33.210659, 31.223093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214845, 0.156121, 0.964089,
		-0.249816, 0.945516, -0.208785,
		-0.944158, -0.285702, -0.164138,
		40.261635, 33.124950, 31.173851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570541, 33.645607, 31.794319>,  <40.922546, 33.324940, 31.288748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570541, 33.645607, 31.794319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.319527, 33.362759, 31.663977>,  <40.168919, 33.193050, 31.585772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.319527, 33.362759, 31.663977>,  <40.570541, 33.645607, 31.794319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319527, 33.362759, 31.663977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498037, 0.042870, 0.866096,
		-0.598461, 0.705797, -0.379073,
		-0.627538, -0.707116, -0.325856,
		40.131264, 33.150623, 31.566219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976608, 33.974052, 31.777708>,  <40.570541, 33.645607, 31.794319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976608, 33.974052, 31.777708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.933899, 33.579208, 31.825386>,  <39.908272, 33.342300, 31.853992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.933899, 33.579208, 31.825386>,  <39.976608, 33.974052, 31.777708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933899, 33.579208, 31.825386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483175, 0.156287, 0.861461,
		-0.868989, 0.034390, -0.493636,
		-0.106774, -0.987113, 0.119196,
		39.901867, 33.283073, 31.861145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362572, 33.938030, 32.076305>,  <39.976608, 33.974052, 31.777708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362572, 33.938030, 32.076305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.502144, 33.567451, 32.132790>,  <39.585888, 33.345104, 32.166679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.502144, 33.567451, 32.132790>,  <39.362572, 33.938030, 32.076305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502144, 33.567451, 32.132790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447723, -0.032425, 0.893584,
		-0.823279, -0.375027, -0.426106,
		0.348934, -0.926446, 0.141214,
		39.606823, 33.289516, 32.175156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803867, 33.460377, 32.168427>,  <39.362572, 33.938030, 32.076305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803867, 33.460377, 32.168427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.120853, 33.284374, 32.337372>,  <39.311047, 33.178772, 32.438740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.120853, 33.284374, 32.337372>,  <38.803867, 33.460377, 32.168427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120853, 33.284374, 32.337372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494626, -0.058460, 0.867137,
		-0.356854, -0.896090, -0.263966,
		0.792465, -0.440006, 0.422368,
		39.358593, 33.152374, 32.464081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562023, 32.828773, 32.493961>,  <38.803867, 33.460377, 32.168427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562023, 32.828773, 32.493961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.919071, 32.873222, 32.668720>,  <39.133301, 32.899891, 32.773575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.919071, 32.873222, 32.668720>,  <38.562023, 32.828773, 32.493961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919071, 32.873222, 32.668720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432788, -0.060071, 0.899492,
		0.126197, -0.991990, -0.005528,
		0.892619, 0.111121, 0.436902,
		39.186855, 32.906559, 32.799789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619602, 32.298603, 33.128162>,  <38.562023, 32.828773, 32.493961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619602, 32.298603, 33.128162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.887230, 32.587341, 33.198921>,  <39.047806, 32.760582, 33.241375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.887230, 32.587341, 33.198921>,  <38.619602, 32.298603, 33.128162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887230, 32.587341, 33.198921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211313, -0.043428, 0.976453,
		0.712528, -0.690693, 0.123479,
		0.669067, 0.721843, 0.176896,
		39.087952, 32.803894, 33.251991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951538, 32.100098, 33.812595>,  <38.619602, 32.298603, 33.128162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951538, 32.100098, 33.812595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.064026, 32.481678, 33.770851>,  <39.131519, 32.710625, 33.745804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.064026, 32.481678, 33.770851>,  <38.951538, 32.100098, 33.812595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064026, 32.481678, 33.770851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120118, 0.142890, 0.982423,
		0.952095, -0.263745, 0.154771,
		0.281224, 0.953950, -0.104365,
		39.148392, 32.767864, 33.739540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321758, 32.279671, 34.378353>,  <38.951538, 32.100098, 33.812595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321758, 32.279671, 34.378353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.198898, 32.631603, 34.233265>,  <39.125183, 32.842762, 34.146214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.198898, 32.631603, 34.233265>,  <39.321758, 32.279671, 34.378353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198898, 32.631603, 34.233265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230937, 0.300840, 0.925291,
		0.923217, 0.367965, 0.110783,
		-0.307146, 0.879828, -0.362717,
		39.106754, 32.895550, 34.124451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558418, 32.873436, 34.757252>,  <39.321758, 32.279671, 34.378353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558418, 32.873436, 34.757252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.242428, 33.037590, 34.575039>,  <39.052834, 33.136082, 34.465710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.242428, 33.037590, 34.575039>,  <39.558418, 32.873436, 34.757252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242428, 33.037590, 34.575039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346009, 0.314961, 0.883786,
		0.506170, 0.855794, -0.106815,
		-0.789981, 0.410387, -0.455536,
		39.005432, 33.160706, 34.438377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529301, 33.558140, 35.028687>,  <39.558418, 32.873436, 34.757252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529301, 33.558140, 35.028687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.174263, 33.453045, 34.877346>,  <38.961239, 33.389988, 34.786541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.174263, 33.453045, 34.877346>,  <39.529301, 33.558140, 35.028687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174263, 33.453045, 34.877346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453943, 0.359533, 0.815274,
		-0.078171, 0.895381, -0.438386,
		-0.887595, -0.262733, -0.378346,
		38.907986, 33.374226, 34.763844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132549, 34.080803, 35.171196>,  <39.529301, 33.558140, 35.028687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132549, 34.080803, 35.171196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.881760, 33.769962, 35.149220>,  <38.731285, 33.583458, 35.136036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.881760, 33.769962, 35.149220>,  <39.132549, 34.080803, 35.171196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881760, 33.769962, 35.149220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475851, 0.326174, 0.816809,
		-0.616826, 0.538257, -0.574287,
		-0.626970, -0.777104, -0.054937,
		38.693668, 33.536831, 35.132740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208504, 34.750591, 34.929646>,  <39.132549, 34.080803, 35.171196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208504, 34.750591, 34.929646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.087223, 35.124866, 35.001812>,  <39.014454, 35.349434, 35.045113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.087223, 35.124866, 35.001812>,  <39.208504, 34.750591, 34.929646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087223, 35.124866, 35.001812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401533, 0.046249, -0.914676,
		-0.864200, -0.349771, 0.361689,
		-0.303200, 0.935693, 0.180413,
		38.996262, 35.405575, 35.055935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455235, 34.798351, 34.811409>,  <39.208504, 34.750591, 34.929646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455235, 34.798351, 34.811409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.612514, 35.162010, 34.756485>,  <38.706882, 35.380203, 34.723530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.612514, 35.162010, 34.756485>,  <38.455235, 34.798351, 34.811409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612514, 35.162010, 34.756485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483880, 0.077620, -0.871685,
		-0.781829, 0.409186, 0.470437,
		0.393197, 0.909144, -0.137311,
		38.730473, 35.434753, 34.715290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977383, 35.188564, 34.396641>,  <38.455235, 34.798351, 34.811409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977383, 35.188564, 34.396641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.303349, 35.420376, 34.393593>,  <38.498928, 35.559464, 34.391762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.303349, 35.420376, 34.393593>,  <37.977383, 35.188564, 34.396641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303349, 35.420376, 34.393593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196899, 0.264455, -0.944084,
		-0.545104, 0.770853, 0.329618,
		0.814918, 0.579526, -0.007624,
		38.547825, 35.594234, 34.391304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788372, 35.954224, 34.248394>,  <37.977383, 35.188564, 34.396641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788372, 35.954224, 34.248394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.165104, 35.901417, 34.124767>,  <38.391144, 35.869732, 34.050591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.165104, 35.901417, 34.124767>,  <37.788372, 35.954224, 34.248394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165104, 35.901417, 34.124767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222111, 0.445657, -0.867212,
		0.252229, 0.885415, 0.390411,
		0.941832, -0.132022, -0.309068,
		38.447655, 35.861809, 34.032047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827263, 36.382938, 33.759987>,  <37.788372, 35.954224, 34.248394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827263, 36.382938, 33.759987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.184071, 36.229237, 33.664783>,  <38.398155, 36.137016, 33.607662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.184071, 36.229237, 33.664783>,  <37.827263, 36.382938, 33.759987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184071, 36.229237, 33.664783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047839, 0.443353, -0.895069,
		0.449461, 0.809804, 0.377097,
		0.892018, -0.384259, -0.238011,
		38.451675, 36.113960, 33.593380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238132, 36.908585, 33.487030>,  <37.827263, 36.382938, 33.759987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238132, 36.908585, 33.487030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.355255, 36.557838, 33.334522>,  <38.425529, 36.347389, 33.243015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.355255, 36.557838, 33.334522>,  <38.238132, 36.908585, 33.487030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355255, 36.557838, 33.334522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163772, 0.438850, -0.883510,
		0.942041, 0.196257, 0.272105,
		0.292808, -0.876866, -0.381273,
		38.443096, 36.294777, 33.220139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862755, 37.017757, 33.234104>,  <38.238132, 36.908585, 33.487030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862755, 37.017757, 33.234104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.742172, 36.684879, 33.047951>,  <38.669823, 36.485153, 32.936260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.742172, 36.684879, 33.047951>,  <38.862755, 37.017757, 33.234104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742172, 36.684879, 33.047951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269763, 0.393705, -0.878763,
		0.914524, -0.390447, 0.105811,
		-0.301452, -0.832194, -0.465381,
		38.651737, 36.435223, 32.908337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362019, 36.938049, 32.615658>,  <38.862755, 37.017757, 33.234104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362019, 36.938049, 32.615658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.049343, 36.695332, 32.558014>,  <38.861740, 36.549702, 32.523430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.049343, 36.695332, 32.558014>,  <39.362019, 36.938049, 32.615658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049343, 36.695332, 32.558014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023919, 0.201724, -0.979150,
		0.623213, -0.768835, -0.143171,
		-0.781686, -0.606795, -0.144107,
		38.814838, 36.513294, 32.514782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589863, 36.627483, 31.933519>,  <39.362019, 36.938049, 32.615658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589863, 36.627483, 31.933519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202766, 36.536514, 31.976902>,  <38.970509, 36.481934, 32.002934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202766, 36.536514, 31.976902>,  <39.589863, 36.627483, 31.933519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202766, 36.536514, 31.976902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118814, 0.032308, -0.992391,
		0.222189, -0.973260, -0.058287,
		-0.967737, -0.227423, 0.108458,
		38.912445, 36.468288, 32.009438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503559, 36.027275, 31.469372>,  <39.589863, 36.627483, 31.933519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503559, 36.027275, 31.469372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.178833, 36.254707, 31.522530>,  <38.983997, 36.391167, 31.554424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.178833, 36.254707, 31.522530>,  <39.503559, 36.027275, 31.469372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178833, 36.254707, 31.522530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077010, 0.329868, -0.940881,
		-0.578808, -0.753591, -0.311580,
		-0.811820, 0.568584, 0.132896,
		38.935287, 36.425282, 31.562399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220463, 36.018181, 30.798904>,  <39.503559, 36.027275, 31.469372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220463, 36.018181, 30.798904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.989105, 36.306618, 30.951469>,  <38.850288, 36.479679, 31.043009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.989105, 36.306618, 30.951469>,  <39.220463, 36.018181, 30.798904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989105, 36.306618, 30.951469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195608, 0.331318, -0.923020,
		-0.791955, -0.608481, -0.050582,
		-0.578399, 0.721096, 0.381412,
		38.815586, 36.522945, 31.065893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639950, 36.001530, 30.503174>,  <39.220463, 36.018181, 30.798904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639950, 36.001530, 30.503174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.668121, 36.386131, 30.609413>,  <38.685024, 36.616894, 30.673157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.668121, 36.386131, 30.609413>,  <38.639950, 36.001530, 30.503174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668121, 36.386131, 30.609413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087193, 0.259308, -0.961851,
		-0.993699, 0.090901, -0.065573,
		0.070430, 0.961507, 0.265600,
		38.689251, 36.674583, 30.689093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356850, 36.294086, 29.973381>,  <38.639950, 36.001530, 30.503174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356850, 36.294086, 29.973381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.529518, 36.619781, 30.128649>,  <38.633121, 36.815197, 30.221809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.529518, 36.619781, 30.128649>,  <38.356850, 36.294086, 29.973381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529518, 36.619781, 30.128649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105589, 0.381760, -0.918210,
		-0.895828, 0.437355, 0.078822,
		0.431675, 0.814236, 0.388171,
		38.659019, 36.864052, 30.245100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955685, 36.886131, 29.631912>,  <38.356850, 36.294086, 29.973381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955685, 36.886131, 29.631912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.328655, 36.966354, 29.752150>,  <38.552437, 37.014488, 29.824291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.328655, 36.966354, 29.752150>,  <37.955685, 36.886131, 29.631912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328655, 36.966354, 29.752150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263310, 0.192608, -0.945288,
		-0.247483, 0.960562, 0.126783,
		0.932427, 0.200559, 0.300592,
		38.608383, 37.026524, 29.842327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229820, 37.373478, 29.197027>,  <37.955685, 36.886131, 29.631912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229820, 37.373478, 29.197027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.578812, 37.264881, 29.359543>,  <38.788208, 37.199722, 29.457052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.578812, 37.264881, 29.359543>,  <38.229820, 37.373478, 29.197027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578812, 37.264881, 29.359543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467052, 0.218860, -0.856716,
		0.143668, 0.937227, 0.317750,
		0.872481, -0.271488, 0.406291,
		38.840557, 37.183434, 29.481430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917084, 37.975479, 29.249321>,  <38.229820, 37.373478, 29.197027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917084, 37.975479, 29.249321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.626339, 38.205986, 29.099873>,  <37.451893, 38.344292, 29.010202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.626339, 38.205986, 29.099873>,  <37.917084, 37.975479, 29.249321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626339, 38.205986, 29.099873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361996, 0.140846, 0.921478,
		0.583642, 0.805033, 0.106232,
		-0.726857, 0.576268, -0.373622,
		37.408283, 38.378868, 28.987785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795784, 38.600586, 29.719824>,  <37.917084, 37.975479, 29.249321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795784, 38.600586, 29.719824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.453487, 38.553070, 29.518393>,  <37.248108, 38.524563, 29.397533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.453487, 38.553070, 29.518393>,  <37.795784, 38.600586, 29.719824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453487, 38.553070, 29.518393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517362, 0.207780, 0.830159,
		0.006021, 0.970936, -0.239263,
		-0.855746, -0.118787, -0.503576,
		37.196762, 38.517433, 29.367319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377243, 39.150173, 29.853151>,  <37.795784, 38.600586, 29.719824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377243, 39.150173, 29.853151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.133541, 38.850620, 29.748854>,  <36.987320, 38.670891, 29.686275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.133541, 38.850620, 29.748854>,  <37.377243, 39.150173, 29.853151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133541, 38.850620, 29.748854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545421, 0.157067, 0.823314,
		-0.575609, 0.643823, -0.504149,
		-0.609253, -0.748881, -0.260745,
		36.950764, 38.625957, 29.670630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701435, 39.373756, 30.030960>,  <37.377243, 39.150173, 29.853151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701435, 39.373756, 30.030960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.607529, 38.989902, 29.969002>,  <36.551186, 38.759590, 29.931828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.607529, 38.989902, 29.969002>,  <36.701435, 39.373756, 30.030960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607529, 38.989902, 29.969002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732475, 0.069890, 0.677197,
		-0.639033, 0.272443, -0.719314,
		-0.234770, -0.959630, -0.154895,
		36.537098, 38.702015, 29.922533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001873, 39.281254, 29.800686>,  <36.701435, 39.373756, 30.030960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001873, 39.281254, 29.800686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.115524, 38.939079, 29.973890>,  <36.183716, 38.733772, 30.077812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.115524, 38.939079, 29.973890>,  <36.001873, 39.281254, 29.800686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115524, 38.939079, 29.973890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815186, 0.022208, 0.578773,
		-0.504721, -0.517428, -0.691032,
		0.284127, -0.855439, 0.433009,
		36.200764, 38.682449, 30.103792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409035, 39.036304, 30.031500>,  <36.001873, 39.281254, 29.800686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409035, 39.036304, 30.031500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.649403, 38.778896, 30.221144>,  <35.793625, 38.624451, 30.334930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.649403, 38.778896, 30.221144>,  <35.409035, 39.036304, 30.031500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649403, 38.778896, 30.221144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756831, -0.267287, 0.596459,
		-0.257087, -0.717269, -0.647635,
		0.600926, -0.643493, 0.474136,
		35.829678, 38.585842, 30.363377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006821, 38.404667, 30.159489>,  <35.409035, 39.036304, 30.031500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006821, 38.404667, 30.159489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.298286, 38.399418, 30.433386>,  <35.473167, 38.396271, 30.597725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.298286, 38.399418, 30.433386>,  <35.006821, 38.404667, 30.159489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298286, 38.399418, 30.433386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637190, -0.379513, 0.670789,
		0.251071, -0.925093, -0.284896,
		0.728665, -0.013118, 0.684745,
		35.516888, 38.395481, 30.638809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907257, 37.721272, 30.351194>,  <35.006821, 38.404667, 30.159489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907257, 37.721272, 30.351194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.090446, 37.928669, 30.640032>,  <35.200359, 38.053108, 30.813334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.090446, 37.928669, 30.640032>,  <34.907257, 37.721272, 30.351194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090446, 37.928669, 30.640032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589186, -0.431212, 0.683312,
		0.665671, -0.738388, 0.108007,
		0.457975, 0.518497, 0.722094,
		35.227840, 38.084217, 30.856661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184261, 37.180168, 30.831495>,  <34.907257, 37.721272, 30.351194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184261, 37.180168, 30.831495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.191776, 37.532497, 31.020721>,  <35.196285, 37.743896, 31.134256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.191776, 37.532497, 31.020721>,  <35.184261, 37.180168, 30.831495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191776, 37.532497, 31.020721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619280, -0.361209, 0.697151,
		0.784945, -0.306059, 0.538692,
		0.018789, 0.880827, 0.473066,
		35.197414, 37.796745, 31.162642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314499, 37.053738, 31.564285>,  <35.184261, 37.180168, 30.831495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314499, 37.053738, 31.564285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.132229, 37.408936, 31.539553>,  <35.022865, 37.622055, 31.524714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.132229, 37.408936, 31.539553>,  <35.314499, 37.053738, 31.564285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132229, 37.408936, 31.539553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547798, -0.224997, 0.805788,
		0.701623, 0.401052, 0.588968,
		-0.455679, 0.887994, -0.061832,
		34.995525, 37.675335, 31.521004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277496, 37.197865, 32.291378>,  <35.314499, 37.053738, 31.564285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277496, 37.197865, 32.291378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.012653, 37.422733, 32.093151>,  <34.853748, 37.557655, 31.974216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.012653, 37.422733, 32.093151>,  <35.277496, 37.197865, 32.291378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012653, 37.422733, 32.093151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726003, -0.317171, 0.610182,
		0.185847, 0.763785, 0.618137,
		-0.662103, 0.562170, -0.495565,
		34.814022, 37.591385, 31.944481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057125, 37.702175, 32.709595>,  <35.277496, 37.197865, 32.291378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057125, 37.702175, 32.709595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.793270, 37.580482, 32.434692>,  <34.634956, 37.507469, 32.269749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.793270, 37.580482, 32.434692>,  <35.057125, 37.702175, 32.709595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793270, 37.580482, 32.434692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591856, -0.353328, 0.724476,
		-0.463235, 0.884649, 0.053009,
		-0.659637, -0.304229, -0.687258,
		34.595379, 37.489212, 32.228516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.650898, 39.191940, 26.836073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450226, 39.135315, 26.494717>,  <39.329823, 39.101341, 26.289904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450226, 39.135315, 26.494717>,  <39.650898, 39.191940, 26.836073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450226, 39.135315, 26.494717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862453, 0.005419, 0.506109,
		-0.067023, 0.989914, -0.124811,
		-0.501681, -0.141564, -0.853391,
		39.299721, 39.092846, 26.238699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132233, 39.617912, 27.014242>,  <39.650898, 39.191940, 26.836073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132233, 39.617912, 27.014242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009113, 39.374481, 26.721697>,  <38.935242, 39.228424, 26.546169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009113, 39.374481, 26.721697>,  <39.132233, 39.617912, 27.014242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009113, 39.374481, 26.721697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850325, -0.168906, 0.498415,
		-0.426857, 0.775308, -0.465501,
		-0.307799, -0.608579, -0.731363,
		38.916775, 39.191906, 26.502289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514458, 39.892666, 26.834654>,  <39.132233, 39.617912, 27.014242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514458, 39.892666, 26.834654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527287, 39.509926, 26.719133>,  <38.534985, 39.280281, 26.649820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527287, 39.509926, 26.719133>,  <38.514458, 39.892666, 26.834654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527287, 39.509926, 26.719133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813963, -0.192688, 0.548029,
		-0.580031, 0.217501, -0.785020,
		0.032068, -0.956851, -0.288803,
		38.536907, 39.222870, 26.632492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769321, 39.710926, 26.663914>,  <38.514458, 39.892666, 26.834654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769321, 39.710926, 26.663914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989239, 39.383533, 26.730621>,  <38.121189, 39.187099, 26.770645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989239, 39.383533, 26.730621>,  <37.769321, 39.710926, 26.663914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989239, 39.383533, 26.730621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704000, -0.346593, 0.619884,
		-0.449564, -0.458214, -0.766767,
		0.549797, -0.818482, 0.166767,
		38.154179, 39.137989, 26.780651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361591, 39.181541, 26.523636>,  <37.769321, 39.710926, 26.663914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361591, 39.181541, 26.523636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658043, 39.038437, 26.750874>,  <37.835915, 38.952572, 26.887217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658043, 39.038437, 26.750874>,  <37.361591, 39.181541, 26.523636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658043, 39.038437, 26.750874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670897, -0.363141, 0.646549,
		-0.025015, -0.860310, -0.509158,
		0.741129, -0.357766, 0.568095,
		37.880383, 38.931107, 26.921303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089020, 38.523125, 26.806520>,  <37.361591, 39.181541, 26.523636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089020, 38.523125, 26.806520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394688, 38.617928, 27.046476>,  <37.578091, 38.674809, 27.190449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394688, 38.617928, 27.046476>,  <37.089020, 38.523125, 26.806520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394688, 38.617928, 27.046476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525621, -0.310230, 0.792137,
		0.373848, -0.920643, -0.112491,
		0.764173, 0.237011, 0.599888,
		37.623940, 38.689030, 27.226442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190384, 37.928734, 27.222895>,  <37.089020, 38.523125, 26.806520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190384, 37.928734, 27.222895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366257, 38.232384, 27.414902>,  <37.471779, 38.414574, 27.530106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366257, 38.232384, 27.414902>,  <37.190384, 37.928734, 27.222895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366257, 38.232384, 27.414902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438391, -0.285069, 0.852378,
		0.783895, -0.585211, 0.207452,
		0.439683, 0.759121, 0.480015,
		37.498161, 38.460121, 27.558907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593536, 37.612427, 27.838610>,  <37.190384, 37.928734, 27.222895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593536, 37.612427, 27.838610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518566, 37.995979, 27.923847>,  <37.473583, 38.226112, 27.974989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518566, 37.995979, 27.923847>,  <37.593536, 37.612427, 27.838610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518566, 37.995979, 27.923847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480096, -0.278686, 0.831770,
		0.856958, 0.053594, 0.512591,
		-0.187430, 0.958886, 0.213092,
		37.462337, 38.283646, 27.987776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969162, 37.939564, 28.486393>,  <37.593536, 37.612427, 27.838610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969162, 37.939564, 28.486393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595779, 38.053043, 28.398605>,  <37.371750, 38.121132, 28.345932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595779, 38.053043, 28.398605>,  <37.969162, 37.939564, 28.486393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595779, 38.053043, 28.398605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291221, -0.242267, 0.925471,
		0.209386, 0.927804, 0.308766,
		-0.933460, 0.283700, -0.219468,
		37.315742, 38.138153, 28.332766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708179, 37.834114, 28.834604>,  <37.969162, 37.939564, 28.486393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708179, 37.834114, 28.834604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923294, 37.526535, 28.972885>,  <39.052361, 37.341988, 29.055853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923294, 37.526535, 28.972885>,  <38.708179, 37.834114, 28.834604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923294, 37.526535, 28.972885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593668, 0.054239, -0.802880,
		0.598622, 0.637007, 0.485668,
		0.537783, -0.768947, 0.345702,
		39.084629, 37.295853, 29.076595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492195, 37.982456, 28.796995>,  <38.708179, 37.834114, 28.834604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492195, 37.982456, 28.796995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452904, 37.585125, 28.821177>,  <39.429329, 37.346725, 28.835686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452904, 37.585125, 28.821177>,  <39.492195, 37.982456, 28.796995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452904, 37.585125, 28.821177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703595, -0.112282, -0.701675,
		0.703779, -0.026392, 0.709928,
		-0.098230, -0.993326, 0.060452,
		39.423435, 37.287128, 28.839312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231487, 37.693413, 28.762215>,  <39.492195, 37.982456, 28.796995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231487, 37.693413, 28.762215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972897, 37.404026, 28.665333>,  <39.817741, 37.230392, 28.607204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972897, 37.404026, 28.665333>,  <40.231487, 37.693413, 28.762215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972897, 37.404026, 28.665333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663731, -0.376778, -0.646142,
		0.376206, -0.578474, 0.723766,
		-0.646475, -0.723469, -0.242205,
		39.778954, 37.186985, 28.592670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605980, 37.054451, 28.752609>,  <40.231487, 37.693413, 28.762215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605980, 37.054451, 28.752609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291885, 36.988422, 28.513895>,  <40.103428, 36.948803, 28.370667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291885, 36.988422, 28.513895>,  <40.605980, 37.054451, 28.752609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291885, 36.988422, 28.513895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615658, -0.311007, -0.724044,
		-0.066083, -0.935962, 0.345843,
		-0.785238, -0.165074, -0.596785,
		40.056313, 36.938900, 28.334860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708412, 36.383869, 28.473545>,  <40.605980, 37.054451, 28.752609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708412, 36.383869, 28.473545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451290, 36.563736, 28.225481>,  <40.297016, 36.671658, 28.076643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451290, 36.563736, 28.225481>,  <40.708412, 36.383869, 28.473545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451290, 36.563736, 28.225481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532880, -0.319104, -0.783716,
		-0.550310, -0.834248, -0.034499,
		-0.642804, 0.449671, -0.620160,
		40.258450, 36.698639, 28.039433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454430, 35.894554, 27.928730>,  <40.708412, 36.383869, 28.473545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454430, 35.894554, 27.928730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397247, 36.258629, 27.773232>,  <40.362938, 36.477074, 27.679934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397247, 36.258629, 27.773232>,  <40.454430, 35.894554, 27.928730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397247, 36.258629, 27.773232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340696, -0.323520, -0.882758,
		-0.929242, -0.258637, -0.263849,
		-0.142953, 0.910188, -0.388744,
		40.354362, 36.531685, 27.656609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303051, 35.729790, 27.254311>,  <40.454430, 35.894554, 27.928730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303051, 35.729790, 27.254311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387234, 36.120773, 27.247667>,  <40.437744, 36.355366, 27.243681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387234, 36.120773, 27.247667>,  <40.303051, 35.729790, 27.254311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387234, 36.120773, 27.247667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524609, -0.127258, -0.841778,
		-0.824920, 0.168445, -0.539568,
		0.210458, 0.977462, -0.016610,
		40.450371, 36.414013, 27.242683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339203, 35.949745, 26.530422>,  <40.303051, 35.729790, 27.254311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339203, 35.949745, 26.530422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542690, 36.246323, 26.705454>,  <40.664783, 36.424267, 26.810472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542690, 36.246323, 26.705454>,  <40.339203, 35.949745, 26.530422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542690, 36.246323, 26.705454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545964, 0.115162, -0.829856,
		-0.665682, 0.661061, -0.346216,
		0.508715, 0.741441, 0.437577,
		40.695305, 36.468754, 26.836727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221237, 36.479572, 26.074083>,  <40.339203, 35.949745, 26.530422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221237, 36.479572, 26.074083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542061, 36.549320, 26.302574>,  <40.734554, 36.591167, 26.439669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542061, 36.549320, 26.302574>,  <40.221237, 36.479572, 26.074083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542061, 36.549320, 26.302574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556472, 0.129160, -0.820766,
		-0.216897, 0.976172, 0.006562,
		0.802057, 0.174370, 0.571227,
		40.782677, 36.601631, 26.473942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620842, 37.080730, 25.749544>,  <40.221237, 36.479572, 26.074083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620842, 37.080730, 25.749544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876396, 36.899086, 25.997932>,  <41.029728, 36.790100, 26.146965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876396, 36.899086, 25.997932>,  <40.620842, 37.080730, 25.749544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876396, 36.899086, 25.997932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707477, 0.029788, -0.706108,
		0.302153, 0.890448, 0.340304,
		0.638889, -0.454110, 0.620971,
		41.068062, 36.762852, 26.184223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235382, 37.458817, 25.563213>,  <40.620842, 37.080730, 25.749544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235382, 37.458817, 25.563213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352608, 37.131435, 25.760897>,  <41.422943, 36.935005, 25.879507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352608, 37.131435, 25.760897>,  <41.235382, 37.458817, 25.563213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352608, 37.131435, 25.760897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758719, -0.115446, -0.641107,
		0.581772, 0.562851, 0.587146,
		0.293064, -0.818457, 0.494209,
		41.440525, 36.885899, 25.909159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952587, 37.507027, 25.682732>,  <41.235382, 37.458817, 25.563213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952587, 37.507027, 25.682732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867149, 37.116295, 25.688101>,  <41.815887, 36.881855, 25.691322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867149, 37.116295, 25.688101>,  <41.952587, 37.507027, 25.682732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867149, 37.116295, 25.688101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667560, -0.155974, -0.728035,
		0.713261, -0.146541, 0.685408,
		-0.213593, -0.976830, 0.013425,
		41.803070, 36.823246, 25.692129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584015, 37.230377, 25.668657>,  <41.952587, 37.507027, 25.682732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584015, 37.230377, 25.668657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349697, 36.932617, 25.540461>,  <42.209106, 36.753963, 25.463543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349697, 36.932617, 25.540461>,  <42.584015, 37.230377, 25.668657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349697, 36.932617, 25.540461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723536, -0.302175, -0.620634,
		0.365153, -0.595454, 0.715610,
		-0.585799, -0.744396, -0.320492,
		42.173958, 36.709297, 25.444313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996071, 36.587196, 25.708164>,  <42.584015, 37.230377, 25.668657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996071, 36.587196, 25.708164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702957, 36.510513, 25.447006>,  <42.527088, 36.464504, 25.290312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702957, 36.510513, 25.447006>,  <42.996071, 36.587196, 25.708164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702957, 36.510513, 25.447006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670008, -0.370792, -0.643119,
		-0.118793, -0.908713, 0.400161,
		-0.732787, -0.191713, -0.652893,
		42.483120, 36.452999, 25.251139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.526890, 33.002769, 23.054895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765244, 33.320377, 23.102991>,  <36.908257, 33.510941, 23.131847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765244, 33.320377, 23.102991>,  <36.526890, 33.002769, 23.054895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765244, 33.320377, 23.102991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189514, -0.006457, 0.981857,
		0.780386, -0.607862, 0.146630,
		0.595887, 0.794016, 0.120238,
		36.944008, 33.558582, 23.139063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977081, 32.807907, 23.591345>,  <36.526890, 33.002769, 23.054895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977081, 32.807907, 23.591345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.939651, 33.205803, 23.574699>,  <36.917194, 33.444542, 23.564713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.939651, 33.205803, 23.574699>,  <36.977081, 32.807907, 23.591345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939651, 33.205803, 23.574699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063810, 0.035717, 0.997323,
		0.993566, 0.095978, 0.060132,
		-0.093573, 0.994743, -0.041612,
		36.911579, 33.504227, 23.562216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303455, 33.054661, 24.132689>,  <36.977081, 32.807907, 23.591345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303455, 33.054661, 24.132689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.116104, 33.401764, 24.066221>,  <37.003693, 33.610027, 24.026340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.116104, 33.401764, 24.066221>,  <37.303455, 33.054661, 24.132689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116104, 33.401764, 24.066221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008067, 0.183867, 0.982918,
		0.883492, 0.461717, -0.079119,
		-0.468377, 0.867762, -0.166170,
		36.975590, 33.662094, 24.016371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540833, 33.571056, 24.586304>,  <37.303455, 33.054661, 24.132689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540833, 33.571056, 24.586304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.182743, 33.710297, 24.475025>,  <36.967888, 33.793842, 24.408258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.182743, 33.710297, 24.475025>,  <37.540833, 33.571056, 24.586304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182743, 33.710297, 24.475025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265751, 0.084068, 0.960369,
		0.357697, 0.933679, 0.017249,
		-0.895226, 0.348105, -0.278197,
		36.914177, 33.814728, 24.391565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447582, 34.103550, 25.048090>,  <37.540833, 33.571056, 24.586304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447582, 34.103550, 25.048090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.081913, 34.024879, 24.906330>,  <36.862511, 33.977676, 24.821274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.081913, 34.024879, 24.906330>,  <37.447582, 34.103550, 25.048090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081913, 34.024879, 24.906330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386854, 0.162518, 0.907707,
		-0.120928, 0.966906, -0.224655,
		-0.914177, -0.196676, -0.354399,
		36.807659, 33.965878, 24.800011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984783, 34.454681, 25.406549>,  <37.447582, 34.103550, 25.048090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984783, 34.454681, 25.406549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.720875, 34.196434, 25.252735>,  <36.562531, 34.041485, 25.160446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.720875, 34.196434, 25.252735>,  <36.984783, 34.454681, 25.406549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720875, 34.196434, 25.252735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482237, -0.028686, 0.875571,
		-0.576320, 0.763117, -0.292417,
		-0.659775, -0.645623, -0.384535,
		36.522942, 34.002747, 25.137375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279747, 34.712231, 25.683088>,  <36.984783, 34.454681, 25.406549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279747, 34.712231, 25.683088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.238998, 34.333313, 25.561588>,  <36.214550, 34.105965, 25.488688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.238998, 34.333313, 25.561588>,  <36.279747, 34.712231, 25.683088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238998, 34.333313, 25.561588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679262, -0.156843, 0.716941,
		-0.726792, 0.279362, -0.627480,
		-0.101870, -0.947290, -0.303752,
		36.208439, 34.049126, 25.470463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781662, 34.516483, 26.084429>,  <36.279747, 34.712231, 25.683088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781662, 34.516483, 26.084429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.856834, 34.151783, 25.938335>,  <35.901939, 33.932964, 25.850679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.856834, 34.151783, 25.938335>,  <35.781662, 34.516483, 26.084429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856834, 34.151783, 25.938335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461228, -0.410232, 0.786752,
		-0.867150, 0.020599, -0.497620,
		0.187933, -0.911748, -0.365234,
		35.913216, 33.878258, 25.828766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155270, 34.210289, 25.942039>,  <35.781662, 34.516483, 26.084429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155270, 34.210289, 25.942039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.431984, 33.928940, 26.007387>,  <35.598015, 33.760128, 26.046595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.431984, 33.928940, 26.007387>,  <35.155270, 34.210289, 25.942039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431984, 33.928940, 26.007387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467998, -0.264434, 0.843239,
		-0.549916, -0.659799, -0.512112,
		0.691788, -0.703377, 0.163368,
		35.639519, 33.717926, 26.056398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791763, 33.675220, 26.127645>,  <35.155270, 34.210289, 25.942039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791763, 33.675220, 26.127645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.160362, 33.555660, 26.226841>,  <35.381523, 33.483925, 26.286358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.160362, 33.555660, 26.226841>,  <34.791763, 33.675220, 26.127645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160362, 33.555660, 26.226841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325307, -0.245189, 0.913267,
		-0.212178, -0.922245, -0.323178,
		0.921497, -0.298907, 0.247989,
		35.436813, 33.465988, 26.301239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707890, 32.943485, 26.459476>,  <34.791763, 33.675220, 26.127645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707890, 32.943485, 26.459476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.049728, 33.113476, 26.578852>,  <35.254829, 33.215469, 26.650476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.049728, 33.113476, 26.578852>,  <34.707890, 32.943485, 26.459476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049728, 33.113476, 26.578852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180638, -0.295534, 0.938099,
		0.486866, -0.855604, -0.175795,
		0.854595, 0.424973, 0.298440,
		35.306107, 33.240967, 26.668385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132805, 32.411999, 26.829781>,  <34.707890, 32.943485, 26.459476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132805, 32.411999, 26.829781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.275501, 32.770859, 26.933973>,  <35.361118, 32.986176, 26.996489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.275501, 32.770859, 26.933973>,  <35.132805, 32.411999, 26.829781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275501, 32.770859, 26.933973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149674, -0.220335, 0.963872,
		0.922136, -0.382839, 0.055678,
		0.356740, 0.897155, 0.260480,
		35.382523, 33.040005, 27.012117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671349, 32.251194, 27.447279>,  <35.132805, 32.411999, 26.829781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671349, 32.251194, 27.447279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.550529, 32.629768, 27.492941>,  <35.478039, 32.856911, 27.520338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.550529, 32.629768, 27.492941>,  <35.671349, 32.251194, 27.447279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550529, 32.629768, 27.492941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233827, -0.189645, 0.953604,
		0.924172, 0.261339, 0.278583,
		-0.302045, 0.946434, 0.114156,
		35.459915, 32.913700, 27.527187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981140, 32.529530, 28.067175>,  <35.671349, 32.251194, 27.447279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981140, 32.529530, 28.067175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.674618, 32.779541, 28.007702>,  <35.490704, 32.929550, 27.972017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.674618, 32.779541, 28.007702>,  <35.981140, 32.529530, 28.067175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674618, 32.779541, 28.007702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300848, -0.144612, 0.942644,
		0.567683, 0.767086, 0.298857,
		-0.766308, 0.625033, -0.148682,
		35.444725, 32.967052, 27.963097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542286, 32.831467, 28.475973>,  <35.981140, 32.529530, 28.067175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542286, 32.831467, 28.475973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.845982, 32.615494, 28.621317>,  <37.028198, 32.485912, 28.708523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.845982, 32.615494, 28.621317>,  <36.542286, 32.831467, 28.475973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845982, 32.615494, 28.621317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476199, 0.080327, -0.875661,
		0.443606, 0.837870, 0.318101,
		0.759242, -0.539927, 0.363359,
		37.073753, 32.453514, 28.730324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206524, 33.182240, 28.284103>,  <36.542286, 32.831467, 28.475973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206524, 33.182240, 28.284103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.324093, 32.812290, 28.380621>,  <37.394634, 32.590321, 28.438532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.324093, 32.812290, 28.380621>,  <37.206524, 33.182240, 28.284103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324093, 32.812290, 28.380621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517971, -0.058045, -0.853426,
		0.803317, 0.375821, 0.461997,
		0.293919, -0.924873, 0.241293,
		37.412270, 32.534828, 28.453009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013458, 33.101120, 28.196119>,  <37.206524, 33.182240, 28.284103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013458, 33.101120, 28.196119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862911, 32.736916, 28.127625>,  <37.772583, 32.518394, 28.086529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862911, 32.736916, 28.127625>,  <38.013458, 33.101120, 28.196119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862911, 32.736916, 28.127625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575073, -0.084681, -0.813707,
		0.726387, -0.404726, 0.555480,
		-0.376367, -0.910509, -0.171236,
		37.750000, 32.463764, 28.076254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556828, 32.729454, 28.011511>,  <38.013458, 33.101120, 28.196119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556828, 32.729454, 28.011511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.251350, 32.527100, 27.851084>,  <38.068066, 32.405685, 27.754827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.251350, 32.527100, 27.851084>,  <38.556828, 32.729454, 28.011511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251350, 32.527100, 27.851084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590713, -0.296941, -0.750256,
		0.260451, -0.809880, 0.525604,
		-0.763691, -0.505886, -0.401068,
		38.022243, 32.375336, 27.730762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827404, 32.115044, 27.765259>,  <38.556828, 32.729454, 28.011511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827404, 32.115044, 27.765259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.482548, 32.172874, 27.571018>,  <38.275635, 32.207573, 27.454473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.482548, 32.172874, 27.571018>,  <38.827404, 32.115044, 27.765259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482548, 32.172874, 27.571018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470457, -0.127383, -0.873180,
		-0.188103, -0.981259, 0.041802,
		-0.862141, 0.144582, -0.485601,
		38.223904, 32.216248, 27.425339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756393, 31.590069, 27.241671>,  <38.827404, 32.115044, 27.765259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756393, 31.590069, 27.241671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.482014, 31.859470, 27.131495>,  <38.317387, 32.021111, 27.065388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.482014, 31.859470, 27.131495>,  <38.756393, 31.590069, 27.241671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482014, 31.859470, 27.131495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186175, -0.203491, -0.961213,
		-0.703430, -0.710623, 0.014194,
		-0.685948, 0.673503, -0.275442,
		38.276230, 32.061520, 27.048862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253273, 31.215654, 26.844168>,  <38.756393, 31.590069, 27.241671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253273, 31.215654, 26.844168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.180820, 31.593204, 26.733685>,  <38.137348, 31.819735, 26.667395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.180820, 31.593204, 26.733685>,  <38.253273, 31.215654, 26.844168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180820, 31.593204, 26.733685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126307, -0.256203, -0.958335,
		-0.975314, -0.208475, -0.072810,
		-0.181135, 0.943874, -0.276210,
		38.126480, 31.876368, 26.650822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874397, 31.190987, 26.208628>,  <38.253273, 31.215654, 26.844168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874397, 31.190987, 26.208628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072205, 31.538343, 26.223314>,  <38.190887, 31.746758, 26.232126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072205, 31.538343, 26.223314>,  <37.874397, 31.190987, 26.208628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072205, 31.538343, 26.223314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162779, -0.051035, -0.985342,
		-0.853789, 0.493245, -0.166594,
		0.494517, 0.868392, 0.036717,
		38.220558, 31.798861, 26.234329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676723, 31.355423, 25.595211>,  <37.874397, 31.190987, 26.208628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676723, 31.355423, 25.595211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.947186, 31.634855, 25.688843>,  <38.109463, 31.802515, 25.745022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.947186, 31.634855, 25.688843>,  <37.676723, 31.355423, 25.595211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947186, 31.634855, 25.688843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254556, 0.076636, -0.964017,
		-0.691382, 0.711415, -0.126010,
		0.676159, 0.698581, 0.234080,
		38.150032, 31.844429, 25.759068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598354, 31.793348, 25.014994>,  <37.676723, 31.355423, 25.595211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598354, 31.793348, 25.014994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936466, 31.923971, 25.184164>,  <38.139332, 32.002346, 25.285666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936466, 31.923971, 25.184164>,  <37.598354, 31.793348, 25.014994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936466, 31.923971, 25.184164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366990, 0.220474, -0.903720,
		-0.388362, 0.919103, 0.066518,
		0.845277, 0.326559, 0.422925,
		38.190048, 32.021938, 25.311041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784000, 32.449116, 24.672152>,  <37.598354, 31.793348, 25.014994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784000, 32.449116, 24.672152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.113804, 32.280075, 24.822670>,  <38.311687, 32.178650, 24.912981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.113804, 32.280075, 24.822670>,  <37.784000, 32.449116, 24.672152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113804, 32.280075, 24.822670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513865, 0.280771, -0.810624,
		0.236915, 0.861731, 0.448656,
		0.824509, -0.422597, 0.376294,
		38.361156, 32.153297, 24.935558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295830, 33.033844, 24.863756>,  <37.784000, 32.449116, 24.672152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295830, 33.033844, 24.863756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503242, 32.698490, 24.796547>,  <38.627689, 32.497276, 24.756222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503242, 32.698490, 24.796547>,  <38.295830, 33.033844, 24.863756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503242, 32.698490, 24.796547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422932, 0.422258, -0.801764,
		0.743140, 0.344676, 0.573535,
		0.518529, -0.838389, -0.168022,
		38.658802, 32.446972, 24.746140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914635, 33.207516, 24.790310>,  <38.295830, 33.033844, 24.863756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914635, 33.207516, 24.790310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.925346, 32.852497, 24.606333>,  <38.931774, 32.639484, 24.495947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.925346, 32.852497, 24.606333>,  <38.914635, 33.207516, 24.790310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925346, 32.852497, 24.606333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460874, 0.419252, -0.782191,
		0.887061, -0.191028, 0.420274,
		0.026780, -0.887545, -0.459942,
		38.933380, 32.586235, 24.468349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672245, 33.110653, 24.573952>,  <38.914635, 33.207516, 24.790310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672245, 33.110653, 24.573952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.462059, 32.860668, 24.343018>,  <39.335949, 32.710678, 24.204458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.462059, 32.860668, 24.343018>,  <39.672245, 33.110653, 24.573952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462059, 32.860668, 24.343018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414774, 0.404308, -0.815167,
		0.742868, -0.667802, 0.046770,
		-0.525461, -0.624960, -0.577334,
		39.304420, 32.673180, 24.169817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214630, 32.729015, 24.863735>,  <39.672245, 33.110653, 24.573952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214630, 32.729015, 24.863735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.535069, 32.901939, 25.029312>,  <40.727333, 33.005695, 25.128658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.535069, 32.901939, 25.029312>,  <40.214630, 32.729015, 24.863735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535069, 32.901939, 25.029312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265613, -0.362991, 0.893133,
		0.536373, -0.825434, -0.175963,
		0.801096, 0.432314, 0.413944,
		40.775398, 33.031635, 25.153496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441448, 32.254890, 25.284904>,  <40.214630, 32.729015, 24.863735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441448, 32.254890, 25.284904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.590866, 32.594646, 25.434038>,  <40.680515, 32.798500, 25.523520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.590866, 32.594646, 25.434038>,  <40.441448, 32.254890, 25.284904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590866, 32.594646, 25.434038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306042, -0.266578, 0.913934,
		0.875675, -0.455494, 0.160371,
		0.373540, 0.849389, 0.372836,
		40.702927, 32.849464, 25.545889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674736, 31.972281, 25.975994>,  <40.441448, 32.254890, 25.284904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674736, 31.972281, 25.975994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.630154, 32.369427, 25.992950>,  <40.603405, 32.607716, 26.003124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.630154, 32.369427, 25.992950>,  <40.674736, 31.972281, 25.975994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630154, 32.369427, 25.992950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258685, -0.070170, 0.963410,
		0.959510, 0.096410, 0.264660,
		-0.111453, 0.992865, 0.042389,
		40.596718, 32.667286, 26.005667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103348, 32.107174, 26.583605>,  <40.674736, 31.972281, 25.975994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103348, 32.107174, 26.583605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.926010, 32.459721, 26.518311>,  <40.819607, 32.671249, 26.479134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.926010, 32.459721, 26.518311>,  <41.103348, 32.107174, 26.583605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926010, 32.459721, 26.518311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131928, 0.115965, 0.984453,
		0.886591, 0.457984, 0.064864,
		-0.443342, 0.881364, -0.163234,
		40.793007, 32.724129, 26.469341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535801, 32.589977, 26.929750>,  <41.103348, 32.107174, 26.583605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535801, 32.589977, 26.929750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.175274, 32.758377, 26.888996>,  <40.958958, 32.859417, 26.864544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.175274, 32.758377, 26.888996>,  <41.535801, 32.589977, 26.929750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175274, 32.758377, 26.888996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109181, 0.006809, 0.993999,
		0.419164, 0.907036, 0.039828,
		-0.901322, 0.420997, -0.101886,
		40.904877, 32.884678, 26.858431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450397, 33.170673, 27.403414>,  <41.535801, 32.589977, 26.929750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450397, 33.170673, 27.403414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.062809, 33.125595, 27.315413>,  <40.830257, 33.098549, 27.262611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.062809, 33.125595, 27.315413>,  <41.450397, 33.170673, 27.403414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062809, 33.125595, 27.315413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226065, 0.044031, 0.973117,
		-0.099982, 0.992653, -0.068142,
		-0.968968, -0.112698, -0.220001,
		40.772118, 33.091785, 27.249413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140999, 33.623257, 27.857079>,  <41.450397, 33.170673, 27.403414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140999, 33.623257, 27.857079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.852524, 33.360413, 27.769350>,  <40.679440, 33.202705, 27.716713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.852524, 33.360413, 27.769350>,  <41.140999, 33.623257, 27.857079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852524, 33.360413, 27.769350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321337, 0.036847, 0.946248,
		-0.613704, 0.752897, -0.237725,
		-0.721187, -0.657106, -0.219321,
		40.636169, 33.163280, 27.703554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401615, 33.896721, 28.120520>,  <41.140999, 33.623257, 27.857079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401615, 33.896721, 28.120520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.363754, 33.502090, 28.067297>,  <40.341038, 33.265312, 28.035364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.363754, 33.502090, 28.067297>,  <40.401615, 33.896721, 28.120520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363754, 33.502090, 28.067297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493074, -0.069651, 0.867195,
		-0.864823, 0.147686, -0.479864,
		-0.094649, -0.986579, -0.133056,
		40.335361, 33.206116, 28.027380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646618, 33.790665, 28.258762>,  <40.401615, 33.896721, 28.120520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646618, 33.790665, 28.258762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.852085, 33.453686, 28.323784>,  <39.975365, 33.251499, 28.362797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.852085, 33.453686, 28.323784>,  <39.646618, 33.790665, 28.258762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852085, 33.453686, 28.323784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257612, 0.029284, 0.965805,
		-0.818402, -0.537979, -0.201983,
		0.513668, -0.842450, 0.162555,
		40.006184, 33.200951, 28.372551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199306, 33.348248, 28.621748>,  <39.646618, 33.790665, 28.258762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199306, 33.348248, 28.621748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.560024, 33.190346, 28.692095>,  <39.776455, 33.095604, 28.734303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.560024, 33.190346, 28.692095>,  <39.199306, 33.348248, 28.621748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560024, 33.190346, 28.692095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208393, -0.040707, 0.977198,
		-0.378597, -0.917883, -0.118974,
		0.901796, -0.394758, 0.175869,
		39.830563, 33.071918, 28.744856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137009, 32.746655, 29.175249>,  <39.199306, 33.348248, 28.621748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137009, 32.746655, 29.175249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.517590, 32.869698, 29.179735>,  <39.745937, 32.943523, 29.182426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.517590, 32.869698, 29.179735>,  <39.137009, 32.746655, 29.175249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517590, 32.869698, 29.179735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008795, -0.009260, 0.999918,
		0.307685, -0.951469, -0.006105,
		0.951448, 0.307606, 0.011217,
		39.803024, 32.961979, 29.183100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459290, 32.287575, 29.587803>,  <39.137009, 32.746655, 29.175249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459290, 32.287575, 29.587803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.692226, 32.612156, 29.568148>,  <39.831989, 32.806904, 29.556355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.692226, 32.612156, 29.568148>,  <39.459290, 32.287575, 29.587803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692226, 32.612156, 29.568148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060402, 0.017086, 0.998028,
		0.810695, -0.584164, -0.039064,
		0.582345, 0.811456, -0.049136,
		39.866928, 32.855591, 29.553408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051445, 32.157829, 29.908926>,  <39.459290, 32.287575, 29.587803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051445, 32.157829, 29.908926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.044693, 32.557690, 29.917105>,  <40.040642, 32.797604, 29.922012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.044693, 32.557690, 29.917105>,  <40.051445, 32.157829, 29.908926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044693, 32.557690, 29.917105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010155, -0.020620, 0.999736,
		0.999806, 0.016665, 0.010500,
		-0.016877, 0.999649, 0.020446,
		40.039631, 32.857586, 29.923239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556511, 32.288555, 30.296272>,  <40.051445, 32.157829, 29.908926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556511, 32.288555, 30.296272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.346107, 32.628746, 30.296644>,  <40.219864, 32.832863, 30.296867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.346107, 32.628746, 30.296644>,  <40.556511, 32.288555, 30.296272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346107, 32.628746, 30.296644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109111, 0.066399, 0.991810,
		0.843452, 0.521801, -0.127723,
		-0.526007, 0.850479, 0.000929,
		40.188305, 32.883888, 30.296923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.100750, 35.051140, 25.045748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.005451, 34.918400, 25.410849>,  <42.948273, 34.838757, 25.629910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.005451, 34.918400, 25.410849>,  <43.100750, 35.051140, 25.045748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005451, 34.918400, 25.410849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222565, -0.896146, -0.383910,
		0.945359, -0.294611, 0.139644,
		-0.238246, -0.331853, 0.912750,
		42.933979, 34.818844, 25.684673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692215, 35.023846, 24.405338>,  <43.100750, 35.051140, 25.045748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692215, 35.023846, 24.405338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.654739, 35.422085, 24.406429>,  <42.632256, 35.661030, 24.407084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.654739, 35.422085, 24.406429>,  <42.692215, 35.023846, 24.405338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654739, 35.422085, 24.406429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251895, 0.026353, -0.967396,
		-0.963209, -0.089949, -0.253256,
		-0.093690, 0.995598, 0.002726,
		42.626633, 35.720764, 24.407248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478222, 35.112255, 23.753502>,  <42.692215, 35.023846, 24.405338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478222, 35.112255, 23.753502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.605000, 35.469830, 23.880264>,  <42.681068, 35.684372, 23.956322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.605000, 35.469830, 23.880264>,  <42.478222, 35.112255, 23.753502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605000, 35.469830, 23.880264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288406, 0.227471, -0.930096,
		-0.903530, 0.386189, -0.185719,
		0.316947, 0.893932, 0.316906,
		42.700085, 35.738010, 23.975336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461948, 35.469143, 23.170485>,  <42.478222, 35.112255, 23.753502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461948, 35.469143, 23.170485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.697807, 35.711052, 23.384611>,  <42.839321, 35.856197, 23.513088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.697807, 35.711052, 23.384611>,  <42.461948, 35.469143, 23.170485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697807, 35.711052, 23.384611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544120, 0.192361, -0.816658,
		-0.596869, 0.772815, -0.215647,
		0.589644, 0.604776, 0.535319,
		42.874699, 35.892487, 23.545206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437431, 36.156021, 22.837723>,  <42.461948, 35.469143, 23.170485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437431, 36.156021, 22.837723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.766068, 36.129047, 23.064152>,  <42.963249, 36.112862, 23.200008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.766068, 36.129047, 23.064152>,  <42.437431, 36.156021, 22.837723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766068, 36.129047, 23.064152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556045, 0.313739, -0.769664,
		-0.125694, 0.947111, 0.295265,
		0.821593, -0.067439, 0.566071,
		43.012547, 36.108814, 23.233973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722538, 36.830421, 22.838097>,  <42.437431, 36.156021, 22.837723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722538, 36.830421, 22.838097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.022114, 36.579975, 22.924881>,  <43.201859, 36.429707, 22.976952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.022114, 36.579975, 22.924881>,  <42.722538, 36.830421, 22.838097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022114, 36.579975, 22.924881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490316, 0.303379, -0.817038,
		0.445738, 0.718290, 0.534206,
		0.748938, -0.626115, 0.216961,
		43.246796, 36.392139, 22.989969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364765, 37.195358, 22.728281>,  <42.722538, 36.830421, 22.838097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364765, 37.195358, 22.728281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.469048, 36.810760, 22.693521>,  <43.531616, 36.580002, 22.672667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.469048, 36.810760, 22.693521>,  <43.364765, 37.195358, 22.728281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469048, 36.810760, 22.693521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614268, 0.234649, -0.753402,
		0.744786, 0.143041, 0.651793,
		0.260709, -0.961498, -0.086898,
		43.547260, 36.522312, 22.667452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018467, 37.300510, 22.527540>,  <43.364765, 37.195358, 22.728281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018467, 37.300510, 22.527540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.963436, 36.907082, 22.480806>,  <43.930416, 36.671024, 22.452766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.963436, 36.907082, 22.480806>,  <44.018467, 37.300510, 22.527540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963436, 36.907082, 22.480806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674234, -0.006585, -0.738488,
		0.725590, -0.180372, 0.664067,
		-0.137576, -0.983576, -0.116835,
		43.922165, 36.612007, 22.445755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670330, 36.915092, 22.648218>,  <44.018467, 37.300510, 22.527540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670330, 36.915092, 22.648218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.428211, 36.687054, 22.426008>,  <44.282940, 36.550232, 22.292683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.428211, 36.687054, 22.426008>,  <44.670330, 36.915092, 22.648218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428211, 36.687054, 22.426008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669167, 0.013518, -0.742989,
		0.431085, -0.821467, 0.373307,
		-0.605294, -0.570096, -0.555526,
		44.246624, 36.516026, 22.259350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150696, 36.324856, 22.352510>,  <44.670330, 36.915092, 22.648218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150696, 36.324856, 22.352510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.826447, 36.370255, 22.122726>,  <44.631897, 36.397491, 21.984856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.826447, 36.370255, 22.122726>,  <45.150696, 36.324856, 22.352510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.826447, 36.370255, 22.122726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581933, 0.047040, -0.811875,
		-0.065120, -0.992425, -0.104178,
		-0.810625, 0.113494, -0.574462,
		44.583260, 36.404301, 21.950388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353806, 35.943310, 21.855959>,  <45.150696, 36.324856, 22.352510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353806, 35.943310, 21.855959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.057140, 36.168049, 21.709391>,  <44.879143, 36.302891, 21.621450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.057140, 36.168049, 21.709391>,  <45.353806, 35.943310, 21.855959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057140, 36.168049, 21.709391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410578, -0.051724, -0.910357,
		-0.530434, -0.825623, -0.192320,
		-0.741664, 0.561847, -0.366419,
		44.834641, 36.336601, 21.599464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.067257, 35.567989, 21.239927>,  <45.353806, 35.943310, 21.855959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.067257, 35.567989, 21.239927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.988064, 35.958298, 21.202686>,  <44.940548, 36.192482, 21.180342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.988064, 35.958298, 21.202686>,  <45.067257, 35.567989, 21.239927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988064, 35.958298, 21.202686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439992, 0.003596, -0.897995,
		-0.875905, -0.218754, -0.430044,
		-0.197986, 0.975773, -0.093100,
		44.928669, 36.251030, 21.174757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007412, 34.861145, 21.427717>,  <45.067257, 35.567989, 21.239927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007412, 34.861145, 21.427717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.688789, 34.625347, 21.374058>,  <44.497616, 34.483868, 21.341862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.688789, 34.625347, 21.374058>,  <45.007412, 34.861145, 21.427717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688789, 34.625347, 21.374058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332105, -0.241248, -0.911869,
		0.505175, -0.770908, 0.387941,
		-0.796558, -0.589491, -0.134150,
		44.449821, 34.448502, 21.333813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.711323, 34.481743, 20.749060>,  <45.007412, 34.861145, 21.427717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.711323, 34.481743, 20.749060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.424927, 34.341377, 20.507658>,  <44.253090, 34.257160, 20.362818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.424927, 34.341377, 20.507658>,  <44.711323, 34.481743, 20.749060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424927, 34.341377, 20.507658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633512, -0.036584, 0.772868,
		-0.293287, 0.935694, -0.196113,
		-0.715993, -0.350912, -0.603502,
		44.210129, 34.236103, 20.326607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.107693, 34.780605, 21.064045>,  <44.711323, 34.481743, 20.749060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.107693, 34.780605, 21.064045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.999367, 34.463257, 20.845976>,  <43.934372, 34.272846, 20.715134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.999367, 34.463257, 20.845976>,  <44.107693, 34.780605, 21.064045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999367, 34.463257, 20.845976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627223, -0.284185, 0.725141,
		-0.730240, 0.538325, -0.420661,
		-0.270816, -0.793375, -0.545173,
		43.918121, 34.225243, 20.682425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414028, 34.764484, 20.960936>,  <44.107693, 34.780605, 21.064045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414028, 34.764484, 20.960936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.531052, 34.382637, 20.938654>,  <43.601265, 34.153526, 20.925285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.531052, 34.382637, 20.938654>,  <43.414028, 34.764484, 20.960936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531052, 34.382637, 20.938654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521814, -0.208192, 0.827264,
		-0.801323, -0.212958, -0.559044,
		0.292561, -0.954623, -0.055704,
		43.618820, 34.096249, 20.921942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798725, 34.433857, 21.206644>,  <43.414028, 34.764484, 20.960936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798725, 34.433857, 21.206644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.081070, 34.150658, 21.215567>,  <43.250477, 33.980740, 21.220921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.081070, 34.150658, 21.215567>,  <42.798725, 34.433857, 21.206644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081070, 34.150658, 21.215567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480166, -0.455093, 0.749887,
		-0.520768, -0.540027, -0.661190,
		0.705862, -0.707998, 0.022304,
		43.292828, 33.938259, 21.222258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458031, 33.742348, 21.260094>,  <42.798725, 34.433857, 21.206644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458031, 33.742348, 21.260094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.824326, 33.695480, 21.413815>,  <43.044102, 33.667358, 21.506048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.824326, 33.695480, 21.413815>,  <42.458031, 33.742348, 21.260094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824326, 33.695480, 21.413815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385044, -0.529073, 0.756190,
		0.114721, -0.840448, -0.529610,
		0.915741, -0.117172, 0.384305,
		43.099049, 33.660328, 21.529106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415123, 33.073368, 21.394329>,  <42.458031, 33.742348, 21.260094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415123, 33.073368, 21.394329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.690456, 33.261635, 21.615118>,  <42.855656, 33.374596, 21.747591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.690456, 33.261635, 21.615118>,  <42.415123, 33.073368, 21.394329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690456, 33.261635, 21.615118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430468, -0.347425, 0.833062,
		0.583867, -0.811027, -0.036534,
		0.688329, 0.470671, 0.551972,
		42.896954, 33.402836, 21.780710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570213, 32.546982, 21.891726>,  <42.415123, 33.073368, 21.394329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570213, 32.546982, 21.891726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.713066, 32.880741, 22.059647>,  <42.798779, 33.080997, 22.160400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.713066, 32.880741, 22.059647>,  <42.570213, 32.546982, 21.891726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713066, 32.880741, 22.059647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446260, -0.242406, 0.861447,
		0.820552, -0.494996, 0.285786,
		0.357137, 0.834397, 0.419804,
		42.820206, 33.131062, 22.185587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715340, 32.358540, 22.597979>,  <42.570213, 32.546982, 21.891726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715340, 32.358540, 22.597979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.706894, 32.758408, 22.592005>,  <42.701824, 32.998329, 22.588421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.706894, 32.758408, 22.592005>,  <42.715340, 32.358540, 22.597979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706894, 32.758408, 22.592005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410324, 0.004957, 0.911926,
		0.911695, 0.025385, 0.410082,
		-0.021117, 0.999665, -0.014936,
		42.700558, 33.058308, 22.587524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936573, 32.530354, 23.309181>,  <42.715340, 32.358540, 22.597979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936573, 32.530354, 23.309181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.733246, 32.831280, 23.141544>,  <42.611248, 33.011833, 23.040962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.733246, 32.831280, 23.141544>,  <42.936573, 32.530354, 23.309181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733246, 32.831280, 23.141544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602375, 0.037173, 0.797347,
		0.615434, 0.657756, 0.434279,
		-0.508316, 0.752313, -0.419093,
		42.580750, 33.056973, 23.015816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978981, 33.038815, 23.759052>,  <42.936573, 32.530354, 23.309181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978981, 33.038815, 23.759052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.662964, 33.121510, 23.528196>,  <42.473354, 33.171127, 23.389683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.662964, 33.121510, 23.528196>,  <42.978981, 33.038815, 23.759052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662964, 33.121510, 23.528196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568999, 0.103145, 0.815844,
		0.228193, 0.972945, 0.036142,
		-0.790043, 0.206735, -0.577141,
		42.425949, 33.183529, 23.355053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799484, 33.620865, 24.065536>,  <42.978981, 33.038815, 23.759052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799484, 33.620865, 24.065536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.479149, 33.476879, 23.874084>,  <42.286949, 33.390488, 23.759212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.479149, 33.476879, 23.874084>,  <42.799484, 33.620865, 24.065536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479149, 33.476879, 23.874084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525465, 0.038921, 0.849924,
		-0.287317, 0.932153, -0.220320,
		-0.800834, -0.359968, -0.478631,
		42.238899, 33.368889, 23.730495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281982, 34.089859, 24.167236>,  <42.799484, 33.620865, 24.065536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281982, 34.089859, 24.167236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.104053, 33.743370, 24.076195>,  <41.997295, 33.535477, 24.021570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.104053, 33.743370, 24.076195>,  <42.281982, 34.089859, 24.167236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104053, 33.743370, 24.076195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560225, 0.070833, 0.825307,
		-0.698773, 0.494620, -0.516785,
		-0.444819, -0.866218, -0.227602,
		41.970608, 33.483505, 24.007914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583378, 34.177177, 24.286495>,  <42.281982, 34.089859, 24.167236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583378, 34.177177, 24.286495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.584396, 33.777405, 24.273100>,  <41.585007, 33.537540, 24.265062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.584396, 33.777405, 24.273100>,  <41.583378, 34.177177, 24.286495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584396, 33.777405, 24.273100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653897, -0.027004, 0.756102,
		-0.756579, 0.019971, -0.653597,
		0.002550, -0.999436, -0.033490,
		41.585163, 33.477573, 24.263052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950420, 34.043781, 24.404680>,  <41.583378, 34.177177, 24.286495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950420, 34.043781, 24.404680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.127304, 33.694386, 24.486137>,  <41.233433, 33.484749, 24.535011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.127304, 33.694386, 24.486137>,  <40.950420, 34.043781, 24.404680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127304, 33.694386, 24.486137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623042, -0.135829, 0.770305,
		-0.645193, -0.467509, -0.604285,
		0.442204, -0.873490, 0.203642,
		41.259964, 33.432339, 24.547230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376045, 33.484989, 24.447315>,  <40.950420, 34.043781, 24.404680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376045, 33.484989, 24.447315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.697323, 33.390312, 24.665987>,  <40.890091, 33.333508, 24.797190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.697323, 33.390312, 24.665987>,  <40.376045, 33.484989, 24.447315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697323, 33.390312, 24.665987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594778, -0.267087, 0.758224,
		-0.033453, -0.934153, -0.355301,
		0.803194, -0.236690, 0.546679,
		40.938282, 33.319305, 24.829990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178265, 33.017181, 23.965899>,  <40.376045, 33.484989, 24.447315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178265, 33.017181, 23.965899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.821693, 32.884594, 23.842295>,  <39.607750, 32.805042, 23.768133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.821693, 32.884594, 23.842295>,  <40.178265, 33.017181, 23.965899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821693, 32.884594, 23.842295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248560, 0.212525, -0.945014,
		0.378915, -0.919218, -0.107061,
		-0.891427, -0.331468, -0.309010,
		39.554264, 32.785152, 23.749592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262989, 32.546650, 23.463507>,  <40.178265, 33.017181, 23.965899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262989, 32.546650, 23.463507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.887348, 32.663074, 23.390442>,  <39.661964, 32.732929, 23.346603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.887348, 32.663074, 23.390442>,  <40.262989, 32.546650, 23.463507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887348, 32.663074, 23.390442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226282, 0.123761, -0.966167,
		-0.258610, -0.948665, -0.182087,
		-0.939104, 0.291063, -0.182661,
		39.605618, 32.750393, 23.335644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913250, 32.109898, 22.878548>,  <40.262989, 32.546650, 23.463507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913250, 32.109898, 22.878548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.702961, 32.450134, 22.882692>,  <39.576790, 32.654278, 22.885180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.702961, 32.450134, 22.882692>,  <39.913250, 32.109898, 22.878548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702961, 32.450134, 22.882692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073389, 0.057489, -0.995645,
		-0.847487, -0.522668, -0.092647,
		-0.525718, 0.850596, 0.010363,
		39.545246, 32.705315, 22.885801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361584, 31.996449, 22.367319>,  <39.913250, 32.109898, 22.878548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361584, 31.996449, 22.367319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.430336, 32.387272, 22.417616>,  <39.471588, 32.621765, 22.447794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.430336, 32.387272, 22.417616>,  <39.361584, 31.996449, 22.367319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430336, 32.387272, 22.417616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272155, 0.075575, -0.959281,
		-0.946777, 0.199106, -0.252921,
		0.171884, 0.977059, 0.125740,
		39.481899, 32.680389, 22.455338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063705, 32.264114, 21.728754>,  <39.361584, 31.996449, 22.367319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063705, 32.264114, 21.728754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.272411, 32.552853, 21.910608>,  <39.397636, 32.726097, 22.019722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.272411, 32.552853, 21.910608>,  <39.063705, 32.264114, 21.728754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272411, 32.552853, 21.910608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255469, 0.376262, -0.890597,
		-0.813939, 0.580828, 0.011910,
		0.521765, 0.721849, 0.454638,
		39.428940, 32.769409, 22.046999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938225, 32.845501, 21.412735>,  <39.063705, 32.264114, 21.728754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938225, 32.845501, 21.412735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.288086, 32.939457, 21.582350>,  <39.498001, 32.995831, 21.684118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.288086, 32.939457, 21.582350>,  <38.938225, 32.845501, 21.412735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288086, 32.939457, 21.582350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313032, 0.394220, -0.864061,
		-0.370126, 0.888491, 0.271276,
		0.874653, 0.234893, 0.424037,
		39.550484, 33.009926, 21.709560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185390, 33.526695, 21.243607>,  <38.938225, 32.845501, 21.412735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185390, 33.526695, 21.243607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.528549, 33.330063, 21.303413>,  <39.734444, 33.212082, 21.339298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.528549, 33.330063, 21.303413>,  <39.185390, 33.526695, 21.243607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528549, 33.330063, 21.303413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339833, 0.324592, -0.882697,
		0.385384, 0.808077, 0.445522,
		0.857900, -0.491580, 0.149519,
		39.785919, 33.182590, 21.348269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988438, 34.289162, 21.208864>,  <39.185390, 33.526695, 21.243607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988438, 34.289162, 21.208864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.664135, 34.382545, 20.994137>,  <38.469555, 34.438576, 20.865301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.664135, 34.382545, 20.994137>,  <38.988438, 34.289162, 21.208864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664135, 34.382545, 20.994137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574700, -0.143007, 0.805772,
		0.111350, 0.961792, 0.250115,
		-0.810754, 0.233463, -0.536818,
		38.420910, 34.452583, 20.833092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663319, 34.733131, 21.560905>,  <38.988438, 34.289162, 21.208864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663319, 34.733131, 21.560905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.361565, 34.609241, 21.329397>,  <38.180511, 34.534908, 21.190493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.361565, 34.609241, 21.329397>,  <38.663319, 34.733131, 21.560905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361565, 34.609241, 21.329397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536125, -0.218054, 0.815489,
		-0.378777, 0.925486, -0.001552,
		-0.754386, -0.309721, -0.578770,
		38.135250, 34.516327, 21.155766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123512, 35.129402, 21.727821>,  <38.663319, 34.733131, 21.560905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123512, 35.129402, 21.727821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.970402, 34.803192, 21.554205>,  <37.878532, 34.607464, 21.450035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.970402, 34.803192, 21.554205>,  <38.123512, 35.129402, 21.727821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970402, 34.803192, 21.554205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674564, -0.074283, 0.734469,
		-0.631222, 0.573930, -0.521692,
		-0.382781, -0.815528, -0.434042,
		37.855568, 34.558533, 21.423992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426231, 35.233784, 21.842150>,  <38.123512, 35.129402, 21.727821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426231, 35.233784, 21.842150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.489464, 34.843952, 21.778635>,  <37.527401, 34.610054, 21.740526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.489464, 34.843952, 21.778635>,  <37.426231, 35.233784, 21.842150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489464, 34.843952, 21.778635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647451, -0.223718, 0.728531,
		-0.745533, -0.012358, -0.666355,
		0.158079, -0.974575, -0.158788,
		37.536888, 34.551579, 21.730999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758488, 34.918198, 21.904600>,  <37.426231, 35.233784, 21.842150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758488, 34.918198, 21.904600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.995255, 34.596859, 21.930727>,  <37.137314, 34.404057, 21.946404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.995255, 34.596859, 21.930727>,  <36.758488, 34.918198, 21.904600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995255, 34.596859, 21.930727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480309, -0.286497, 0.828989,
		-0.647252, -0.522067, -0.555437,
		0.591919, -0.803346, 0.065317,
		37.172829, 34.355854, 21.950323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330090, 34.382732, 21.988386>,  <36.758488, 34.918198, 21.904600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330090, 34.382732, 21.988386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.680939, 34.266403, 22.141270>,  <36.891449, 34.196606, 22.233000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.680939, 34.266403, 22.141270>,  <36.330090, 34.382732, 21.988386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680939, 34.266403, 22.141270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458919, -0.272855, 0.845543,
		-0.141619, -0.917044, -0.372792,
		0.877119, -0.290827, 0.382207,
		36.944073, 34.179153, 22.255932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231350, 33.630932, 22.269018>,  <36.330090, 34.382732, 21.988386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231350, 33.630932, 22.269018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559635, 33.745239, 22.466915>,  <36.756607, 33.813824, 22.585653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.559635, 33.745239, 22.466915>,  <36.231350, 33.630932, 22.269018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559635, 33.745239, 22.466915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388540, -0.355714, 0.850002,
		0.418889, -0.889834, -0.180908,
		0.820712, 0.285766, 0.494741,
		36.805847, 33.830971, 22.615337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.513802, 38.622593, 20.110331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.771717, 38.422928, 20.341877>,  <42.926464, 38.303127, 20.480804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.771717, 38.422928, 20.341877>,  <42.513802, 38.622593, 20.110331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771717, 38.422928, 20.341877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553669, 0.217110, 0.803936,
		-0.526976, -0.838866, -0.136384,
		0.644784, -0.499167, 0.578866,
		42.965153, 38.273178, 20.515537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109066, 38.137543, 20.520287>,  <42.513802, 38.622593, 20.110331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109066, 38.137543, 20.520287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.448025, 38.208458, 20.720484>,  <42.651398, 38.251007, 20.840603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.448025, 38.208458, 20.720484>,  <42.109066, 38.137543, 20.520287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448025, 38.208458, 20.720484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529429, 0.210490, 0.821826,
		0.040351, -0.961386, 0.272229,
		0.847394, 0.177287, 0.500492,
		42.702244, 38.261642, 20.870632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073982, 37.744732, 21.190865>,  <42.109066, 38.137543, 20.520287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073982, 37.744732, 21.190865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.371696, 37.989155, 21.298674>,  <42.550327, 38.135807, 21.363359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.371696, 37.989155, 21.298674>,  <42.073982, 37.744732, 21.190865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371696, 37.989155, 21.298674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521847, 0.280256, 0.805688,
		0.416785, -0.740315, 0.527469,
		0.744289, 0.611057, 0.269525,
		42.594982, 38.172470, 21.379532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291046, 37.464050, 21.861197>,  <42.073982, 37.744732, 21.190865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291046, 37.464050, 21.861197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.416218, 37.842178, 21.824442>,  <42.491322, 38.069054, 21.802389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.416218, 37.842178, 21.824442>,  <42.291046, 37.464050, 21.861197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416218, 37.842178, 21.824442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528269, 0.253637, 0.810308,
		0.789308, -0.205027, 0.578755,
		0.312929, 0.945321, -0.091889,
		42.510098, 38.125774, 21.796875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591869, 37.667606, 22.511284>,  <42.291046, 37.464050, 21.861197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591869, 37.667606, 22.511284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.495453, 38.004993, 22.319262>,  <42.437603, 38.207428, 22.204048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.495453, 38.004993, 22.319262>,  <42.591869, 37.667606, 22.511284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495453, 38.004993, 22.319262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452063, 0.340126, 0.824593,
		0.858801, 0.415776, 0.299318,
		-0.241040, 0.843472, -0.480057,
		42.423141, 38.258034, 22.175243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567532, 38.101765, 23.065041>,  <42.591869, 37.667606, 22.511284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567532, 38.101765, 23.065041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.377319, 38.291348, 22.768600>,  <42.263191, 38.405098, 22.590736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.377319, 38.291348, 22.768600>,  <42.567532, 38.101765, 23.065041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377319, 38.291348, 22.768600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593898, 0.448512, 0.667923,
		0.648962, 0.757758, 0.068202,
		-0.475534, 0.473961, -0.741099,
		42.234657, 38.433537, 22.546270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534660, 38.882095, 23.243076>,  <42.567532, 38.101765, 23.065041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534660, 38.882095, 23.243076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.242393, 38.753098, 23.002369>,  <42.067032, 38.675697, 22.857944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.242393, 38.753098, 23.002369>,  <42.534660, 38.882095, 23.243076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242393, 38.753098, 23.002369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668756, 0.515508, 0.535739,
		0.137443, 0.793882, -0.592335,
		-0.730667, -0.322494, -0.601766,
		42.023193, 38.656349, 22.821838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100021, 39.358444, 23.255299>,  <42.534660, 38.882095, 23.243076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100021, 39.358444, 23.255299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.867455, 39.066444, 23.111601>,  <41.727913, 38.891247, 23.025381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.867455, 39.066444, 23.111601>,  <42.100021, 39.358444, 23.255299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867455, 39.066444, 23.111601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782895, 0.381810, 0.491219,
		-0.221425, 0.566855, -0.793503,
		-0.581417, -0.729997, -0.359246,
		41.693027, 38.847446, 23.003826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521057, 39.688190, 23.098021>,  <42.100021, 39.358444, 23.255299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521057, 39.688190, 23.098021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.417393, 39.303337, 23.131813>,  <41.355194, 39.072426, 23.152088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.417393, 39.303337, 23.131813>,  <41.521057, 39.688190, 23.098021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417393, 39.303337, 23.131813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767059, 0.258186, 0.587333,
		-0.586904, 0.087414, -0.804924,
		-0.259161, -0.962133, 0.084479,
		41.339645, 39.014698, 23.157156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872494, 39.821873, 23.223768>,  <41.521057, 39.688190, 23.098021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872494, 39.821873, 23.223768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.945625, 39.444344, 23.333870>,  <40.989506, 39.217827, 23.399931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.945625, 39.444344, 23.333870>,  <40.872494, 39.821873, 23.223768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945625, 39.444344, 23.333870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671917, 0.084427, 0.735799,
		-0.717706, -0.319472, -0.618737,
		0.182829, -0.943827, 0.275252,
		41.000473, 39.161194, 23.416445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255363, 39.653961, 23.407433>,  <40.872494, 39.821873, 23.223768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255363, 39.653961, 23.407433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.482353, 39.385452, 23.598162>,  <40.618549, 39.224346, 23.712599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.482353, 39.385452, 23.598162>,  <40.255363, 39.653961, 23.407433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482353, 39.385452, 23.598162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659373, -0.023647, 0.751444,
		-0.493149, -0.740833, -0.456039,
		0.567478, -0.671274, 0.476824,
		40.652596, 39.184071, 23.741209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818386, 39.161083, 23.561314>,  <40.255363, 39.653961, 23.407433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818386, 39.161083, 23.561314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.122105, 39.148544, 23.821308>,  <40.304337, 39.141022, 23.977304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.122105, 39.148544, 23.821308>,  <39.818386, 39.161083, 23.561314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122105, 39.148544, 23.821308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650733, -0.031156, 0.758668,
		-0.003531, -0.999023, -0.044056,
		0.759299, -0.031347, 0.649987,
		40.349895, 39.139137, 24.016304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341797, 38.647400, 23.156736>,  <39.818386, 39.161083, 23.561314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341797, 38.647400, 23.156736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.040283, 38.767765, 22.923065>,  <38.859375, 38.839985, 22.782862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.040283, 38.767765, 22.923065>,  <39.341797, 38.647400, 23.156736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040283, 38.767765, 22.923065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540946, -0.220576, -0.811618,
		-0.373084, -0.927791, 0.003487,
		-0.753781, 0.300915, -0.584178,
		38.814148, 38.858040, 22.747812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117744, 38.100208, 22.721006>,  <39.341797, 38.647400, 23.156736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117744, 38.100208, 22.721006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.058342, 38.443344, 22.524206>,  <39.022701, 38.649223, 22.406126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.058342, 38.443344, 22.524206>,  <39.117744, 38.100208, 22.721006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058342, 38.443344, 22.524206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614565, -0.309723, -0.725522,
		-0.774762, -0.410110, -0.481200,
		-0.148505, 0.857835, -0.492001,
		39.013790, 38.700695, 22.376606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916325, 37.961823, 22.028639>,  <39.117744, 38.100208, 22.721006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916325, 37.961823, 22.028639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.059189, 38.335232, 22.016188>,  <39.144905, 38.559277, 22.008717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.059189, 38.335232, 22.016188>,  <38.916325, 37.961823, 22.028639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059189, 38.335232, 22.016188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486552, -0.214392, -0.846937,
		-0.797311, 0.287345, -0.530781,
		0.357159, 0.933525, -0.031128,
		39.166336, 38.615288, 22.006849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864822, 38.166161, 21.275120>,  <38.916325, 37.961823, 22.028639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864822, 38.166161, 21.275120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.104416, 38.457527, 21.408165>,  <39.248173, 38.632347, 21.487991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.104416, 38.457527, 21.408165>,  <38.864822, 38.166161, 21.275120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104416, 38.457527, 21.408165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436059, 0.051672, -0.898433,
		-0.671619, 0.683185, -0.286681,
		0.598983, 0.728415, 0.332613,
		39.284111, 38.676052, 21.507950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772091, 38.808300, 20.898273>,  <38.864822, 38.166161, 21.275120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772091, 38.808300, 20.898273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.153286, 38.781357, 21.016441>,  <39.382004, 38.765190, 21.087341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.153286, 38.781357, 21.016441>,  <38.772091, 38.808300, 20.898273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153286, 38.781357, 21.016441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299895, 0.070469, -0.951366,
		0.043260, 0.995237, 0.087355,
		0.952991, -0.067354, 0.295418,
		39.439182, 38.761150, 21.105066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145519, 39.387913, 20.475660>,  <38.772091, 38.808300, 20.898273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145519, 39.387913, 20.475660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.401405, 39.127205, 20.638615>,  <39.554935, 38.970779, 20.736387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.401405, 39.127205, 20.638615>,  <39.145519, 39.387913, 20.475660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401405, 39.127205, 20.638615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410591, -0.158280, -0.897977,
		0.649754, 0.741718, 0.166356,
		0.639715, -0.651769, 0.407385,
		39.593319, 38.931675, 20.760830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678070, 39.539661, 20.134096>,  <39.145519, 39.387913, 20.475660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678070, 39.539661, 20.134096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.808056, 39.201950, 20.304546>,  <39.886047, 38.999321, 20.406816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.808056, 39.201950, 20.304546>,  <39.678070, 39.539661, 20.134096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808056, 39.201950, 20.304546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562096, -0.189931, -0.804968,
		0.760555, 0.501114, 0.412846,
		0.324968, -0.844281, 0.426127,
		39.905548, 38.948666, 20.432384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315472, 39.504833, 19.904421>,  <39.678070, 39.539661, 20.134096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315472, 39.504833, 19.904421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.269806, 39.135853, 20.051956>,  <40.242405, 38.914463, 20.140478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.269806, 39.135853, 20.051956>,  <40.315472, 39.504833, 19.904421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269806, 39.135853, 20.051956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447781, -0.379195, -0.809755,
		0.886825, 0.072716, 0.456348,
		-0.114163, -0.922455, 0.368841,
		40.235558, 38.859116, 20.162609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926212, 39.147251, 19.735540>,  <40.315472, 39.504833, 19.904421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926212, 39.147251, 19.735540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.646309, 38.870846, 19.808016>,  <40.478367, 38.705002, 19.851501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.646309, 38.870846, 19.808016>,  <40.926212, 39.147251, 19.735540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646309, 38.870846, 19.808016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387242, -0.580051, -0.716648,
		0.600316, -0.431317, 0.673488,
		-0.699760, -0.691018, 0.181190,
		40.436382, 38.663540, 19.862373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288525, 38.531021, 19.715462>,  <40.926212, 39.147251, 19.735540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288525, 38.531021, 19.715462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.911232, 38.409191, 19.662477>,  <40.684856, 38.336094, 19.630688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.911232, 38.409191, 19.662477>,  <41.288525, 38.531021, 19.715462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911232, 38.409191, 19.662477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301318, -0.616954, -0.727032,
		0.139715, -0.725672, 0.673706,
		-0.943233, -0.304577, -0.132460,
		40.628262, 38.317818, 19.622740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266357, 37.715553, 19.606443>,  <41.288525, 38.531021, 19.715462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266357, 37.715553, 19.606443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.939125, 37.886021, 19.451979>,  <40.742786, 37.988300, 19.359299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.939125, 37.886021, 19.451979>,  <41.266357, 37.715553, 19.606443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939125, 37.886021, 19.451979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044041, -0.623076, -0.780921,
		-0.573409, -0.655867, 0.490960,
		-0.818085, 0.426164, -0.386162,
		40.693699, 38.013870, 19.336130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759247, 37.125351, 19.443674>,  <41.266357, 37.715553, 19.606443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759247, 37.125351, 19.443674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.654896, 37.427402, 19.203098>,  <40.592285, 37.608631, 19.058752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.654896, 37.427402, 19.203098>,  <40.759247, 37.125351, 19.443674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654896, 37.427402, 19.203098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048126, -0.632412, -0.773136,
		-0.964171, -0.172749, 0.201324,
		-0.260878, 0.755124, -0.601440,
		40.576633, 37.653938, 19.022667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326485, 36.857124, 18.949198>,  <40.759247, 37.125351, 19.443674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326485, 36.857124, 18.949198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.469303, 37.196487, 18.792877>,  <40.554993, 37.400105, 18.699085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.469303, 37.196487, 18.792877>,  <40.326485, 36.857124, 18.949198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469303, 37.196487, 18.792877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040479, -0.403934, -0.913892,
		-0.933209, 0.342122, -0.109881,
		0.357048, 0.848404, -0.390803,
		40.576416, 37.451008, 18.675636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097729, 36.332333, 19.332800>,  <40.326485, 36.857124, 18.949198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097729, 36.332333, 19.332800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.958847, 36.177284, 18.991228>,  <39.875519, 36.084255, 18.786285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.958847, 36.177284, 18.991228>,  <40.097729, 36.332333, 19.332800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958847, 36.177284, 18.991228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802600, -0.348162, 0.484373,
		-0.485060, 0.853541, -0.190222,
		-0.347204, -0.387622, -0.853931,
		39.854687, 36.060997, 18.735048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433891, 36.543064, 19.235689>,  <40.097729, 36.332333, 19.332800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433891, 36.543064, 19.235689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.543114, 36.190418, 19.081701>,  <39.608646, 35.978832, 18.989309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.543114, 36.190418, 19.081701>,  <39.433891, 36.543064, 19.235689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543114, 36.190418, 19.081701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699869, -0.456611, 0.549262,
		-0.660017, 0.119448, -0.741694,
		0.273058, -0.881611, -0.384969,
		39.625031, 35.925934, 18.966211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784119, 36.231213, 19.094515>,  <39.433891, 36.543064, 19.235689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784119, 36.231213, 19.094515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.046223, 35.929050, 19.094885>,  <39.203484, 35.747753, 19.095108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.046223, 35.929050, 19.094885>,  <38.784119, 36.231213, 19.094515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046223, 35.929050, 19.094885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633281, -0.548658, 0.545829,
		-0.411812, -0.358247, -0.837896,
		0.655261, -0.755403, 0.000927,
		39.242802, 35.702431, 19.095163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409229, 35.696907, 18.837547>,  <38.784119, 36.231213, 19.094515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409229, 35.696907, 18.837547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.729702, 35.580956, 19.046955>,  <38.921986, 35.511383, 19.172600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.729702, 35.580956, 19.046955>,  <38.409229, 35.696907, 18.837547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729702, 35.580956, 19.046955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564912, -0.654992, 0.501856,
		0.197423, -0.697822, -0.688527,
		0.801186, -0.289879, 0.523518,
		38.970058, 35.493992, 19.204010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387539, 34.962818, 18.907211>,  <38.409229, 35.696907, 18.837547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387539, 34.962818, 18.907211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.640125, 35.059898, 19.201790>,  <38.791676, 35.118149, 19.378536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.640125, 35.059898, 19.201790>,  <38.387539, 34.962818, 18.907211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640125, 35.059898, 19.201790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489118, -0.612291, 0.621179,
		0.601681, -0.752459, -0.267927,
		0.631461, 0.242704, 0.736445,
		38.829563, 35.132710, 19.422724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679504, 34.275883, 19.220181>,  <38.387539, 34.962818, 18.907211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679504, 34.275883, 19.220181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.713104, 34.582970, 19.474283>,  <38.733265, 34.767223, 19.626745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.713104, 34.582970, 19.474283>,  <38.679504, 34.275883, 19.220181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713104, 34.582970, 19.474283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394182, -0.559905, 0.728784,
		0.915185, -0.311627, 0.255588,
		0.084004, 0.767721, 0.635255,
		38.738304, 34.813286, 19.664860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943657, 33.980324, 19.820049>,  <38.679504, 34.275883, 19.220181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943657, 33.980324, 19.820049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.798656, 34.333599, 19.939089>,  <38.711655, 34.545567, 20.010513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.798656, 34.333599, 19.939089>,  <38.943657, 33.980324, 19.820049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798656, 34.333599, 19.939089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353402, -0.425732, 0.832982,
		0.862381, 0.196785, 0.466450,
		-0.362501, 0.883192, 0.297599,
		38.689907, 34.598557, 20.028368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167103, 34.064022, 20.499088>,  <38.943657, 33.980324, 19.820049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167103, 34.064022, 20.499088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.857502, 34.313553, 20.455700>,  <38.671741, 34.463272, 20.429667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.857502, 34.313553, 20.455700>,  <39.167103, 34.064022, 20.499088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857502, 34.313553, 20.455700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394440, -0.341025, 0.853299,
		0.495319, 0.703238, 0.510015,
		-0.774000, 0.623826, -0.108469,
		38.625301, 34.500702, 20.423159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776260, 34.074017, 21.060886>,  <39.167103, 34.064022, 20.499088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776260, 34.074017, 21.060886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.927177, 33.703659, 21.068600>,  <40.017727, 33.481445, 21.073229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.927177, 33.703659, 21.068600>,  <39.776260, 34.074017, 21.060886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927177, 33.703659, 21.068600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546929, 0.205964, -0.811448,
		0.747344, 0.316698, 0.584106,
		0.377288, -0.925895, 0.019285,
		40.040363, 33.425892, 21.074385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492035, 34.235989, 20.937662>,  <39.776260, 34.074017, 21.060886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492035, 34.235989, 20.937662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.438808, 33.847675, 20.857788>,  <40.406872, 33.614689, 20.809864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.438808, 33.847675, 20.857788>,  <40.492035, 34.235989, 20.937662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438808, 33.847675, 20.857788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555761, 0.093733, -0.826041,
		0.820624, -0.220894, 0.527051,
		-0.133065, -0.970783, -0.199684,
		40.398888, 33.556442, 20.797882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142509, 33.965031, 21.023277>,  <40.492035, 34.235989, 20.937662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142509, 33.965031, 21.023277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.944237, 33.692005, 20.808462>,  <40.825272, 33.528191, 20.679573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.944237, 33.692005, 20.808462>,  <41.142509, 33.965031, 21.023277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944237, 33.692005, 20.808462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668041, 0.095499, -0.737971,
		0.554996, -0.724563, 0.408641,
		-0.495682, -0.682560, -0.537039,
		40.795532, 33.487236, 20.647350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641346, 33.508335, 20.720230>,  <41.142509, 33.965031, 21.023277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641346, 33.508335, 20.720230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.317085, 33.463718, 20.490307>,  <41.122528, 33.436947, 20.352352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.317085, 33.463718, 20.490307>,  <41.641346, 33.508335, 20.720230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317085, 33.463718, 20.490307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577738, 0.007243, -0.816190,
		0.095206, -0.993733, 0.058572,
		-0.810651, -0.111546, -0.574807,
		41.073891, 33.430256, 20.317865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641640, 32.887806, 20.382048>,  <41.641346, 33.508335, 20.720230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641640, 32.887806, 20.382048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.375065, 33.083302, 20.156839>,  <41.215118, 33.200600, 20.021713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.375065, 33.083302, 20.156839>,  <41.641640, 32.887806, 20.382048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375065, 33.083302, 20.156839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518778, -0.238386, -0.821000,
		-0.535470, -0.839230, -0.094676,
		-0.666439, 0.488738, -0.563023,
		41.175133, 33.229923, 19.987932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816750, 32.541969, 19.851109>,  <41.641640, 32.887806, 20.382048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816750, 32.541969, 19.851109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.586895, 32.831871, 19.699047>,  <41.448982, 33.005814, 19.607811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.586895, 32.831871, 19.699047>,  <41.816750, 32.541969, 19.851109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586895, 32.831871, 19.699047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603857, 0.061949, -0.794682,
		-0.552401, -0.686213, -0.473248,
		-0.574639, 0.724757, -0.380154,
		41.414505, 33.049297, 19.585001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596897, 32.317081, 19.139704>,  <41.816750, 32.541969, 19.851109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596897, 32.317081, 19.139704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.623047, 32.713398, 19.187134>,  <41.638737, 32.951187, 19.215591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.623047, 32.713398, 19.187134>,  <41.596897, 32.317081, 19.139704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623047, 32.713398, 19.187134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587004, 0.057908, -0.807510,
		-0.806940, 0.122396, -0.577813,
		0.065376, 0.990791, 0.118575,
		41.642658, 33.010635, 19.222706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335606, 32.605370, 18.462141>,  <41.596897, 32.317081, 19.139704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335606, 32.605370, 18.462141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.563602, 32.872311, 18.653873>,  <41.700401, 33.032475, 18.768913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.563602, 32.872311, 18.653873>,  <41.335606, 32.605370, 18.462141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563602, 32.872311, 18.653873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596262, 0.065421, -0.800120,
		-0.565318, 0.741866, -0.360625,
		0.569989, 0.667349, 0.479330,
		41.734600, 33.072514, 18.797672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621784, 32.869392, 17.876701>,  <41.335606, 32.605370, 18.462141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621784, 32.869392, 17.876701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.800846, 33.062710, 18.177643>,  <41.908283, 33.178699, 18.358208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.800846, 33.062710, 18.177643>,  <41.621784, 32.869392, 17.876701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800846, 33.062710, 18.177643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817183, 0.120512, -0.563639,
		-0.363071, 0.867124, -0.340992,
		0.447651, 0.483294, 0.752353,
		41.935143, 33.207699, 18.403349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.530735, 32.256073, 33.307365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.896484, 32.412621, 33.348850>,  <36.115932, 32.506550, 33.373741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.896484, 32.412621, 33.348850>,  <35.530735, 32.256073, 33.307365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896484, 32.412621, 33.348850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125897, -0.031382, -0.991547,
		-0.384809, 0.919697, -0.077967,
		0.914370, 0.391372, 0.103711,
		36.170795, 32.530033, 33.379963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549129, 32.818745, 32.850792>,  <35.530735, 32.256073, 33.307365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549129, 32.818745, 32.850792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927567, 32.715046, 32.928459>,  <36.154629, 32.652828, 32.975060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.927567, 32.715046, 32.928459>,  <35.549129, 32.818745, 32.850792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927567, 32.715046, 32.928459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187037, -0.052129, -0.980969,
		0.264432, 0.964404, -0.000831,
		0.946094, -0.259244, 0.194164,
		36.211395, 32.637272, 32.986710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968422, 33.374672, 32.482990>,  <35.549129, 32.818745, 32.850792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968422, 33.374672, 32.482990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222408, 33.075733, 32.561260>,  <36.374802, 32.896370, 32.608223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222408, 33.075733, 32.561260>,  <35.968422, 33.374672, 32.482990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222408, 33.075733, 32.561260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264584, -0.027594, -0.963968,
		0.725818, 0.663861, 0.180215,
		0.634967, -0.747347, 0.195675,
		36.412899, 32.851528, 32.619965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640835, 33.552830, 32.134010>,  <35.968422, 33.374672, 32.482990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640835, 33.552830, 32.134010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660744, 33.158401, 32.197483>,  <36.672688, 32.921745, 32.235565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660744, 33.158401, 32.197483>,  <36.640835, 33.552830, 32.134010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660744, 33.158401, 32.197483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186583, -0.146900, -0.971394,
		0.981177, 0.077957, 0.176673,
		0.049774, -0.986075, 0.158680,
		36.675674, 32.862579, 32.245087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344116, 33.318932, 31.970280>,  <36.640835, 33.552830, 32.134010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344116, 33.318932, 31.970280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107361, 32.996658, 31.961037>,  <36.965305, 32.803295, 31.955490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107361, 32.996658, 31.961037>,  <37.344116, 33.318932, 31.970280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107361, 32.996658, 31.961037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326923, -0.213767, -0.920557,
		0.736740, -0.552425, 0.389925,
		-0.591892, -0.805686, -0.023110,
		36.929794, 32.754951, 31.954103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721027, 32.926334, 31.604725>,  <37.344116, 33.318932, 31.970280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721027, 32.926334, 31.604725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.357803, 32.761547, 31.574520>,  <37.139870, 32.662674, 31.556398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.357803, 32.761547, 31.574520>,  <37.721027, 32.926334, 31.604725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357803, 32.761547, 31.574520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197318, -0.261766, -0.944745,
		0.369440, -0.872789, 0.318990,
		-0.908064, -0.411969, -0.075510,
		37.085384, 32.637955, 31.551867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800728, 32.249325, 31.202223>,  <37.721027, 32.926334, 31.604725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800728, 32.249325, 31.202223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403183, 32.261551, 31.159712>,  <37.164654, 32.268887, 31.134205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403183, 32.261551, 31.159712>,  <37.800728, 32.249325, 31.202223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403183, 32.261551, 31.159712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086855, -0.379139, -0.921255,
		-0.068451, -0.924835, 0.374159,
		-0.993867, 0.030564, -0.106279,
		37.105022, 32.270721, 31.127829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476589, 31.529070, 30.919092>,  <37.800728, 32.249325, 31.202223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476589, 31.529070, 30.919092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.217220, 31.826654, 30.854504>,  <37.061600, 32.005203, 30.815750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.217220, 31.826654, 30.854504>,  <37.476589, 31.529070, 30.919092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217220, 31.826654, 30.854504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089864, -0.285424, -0.954179,
		-0.755959, -0.604199, 0.251930,
		-0.648421, 0.743960, -0.161473,
		37.022694, 32.049843, 30.806061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003185, 31.275373, 30.420031>,  <37.476589, 31.529070, 30.919092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003185, 31.275373, 30.420031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.972927, 31.672680, 30.384926>,  <36.954773, 31.911064, 30.363863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.972927, 31.672680, 30.384926>,  <37.003185, 31.275373, 30.420031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972927, 31.672680, 30.384926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325130, -0.107775, -0.939508,
		-0.942639, -0.042538, 0.331094,
		-0.075649, 0.993265, -0.087763,
		36.950233, 31.970659, 30.358597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543392, 31.360176, 29.959206>,  <37.003185, 31.275373, 30.420031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543392, 31.360176, 29.959206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.734257, 31.711411, 29.944859>,  <36.848774, 31.922152, 29.936251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.734257, 31.711411, 29.944859>,  <36.543392, 31.360176, 29.959206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734257, 31.711411, 29.944859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220066, 0.079874, -0.972209,
		-0.850818, 0.471791, 0.231349,
		0.477158, 0.878085, -0.035867,
		36.877403, 31.974836, 29.934099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218243, 31.748888, 29.381203>,  <36.543392, 31.360176, 29.959206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218243, 31.748888, 29.381203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.558685, 31.944841, 29.456705>,  <36.762951, 32.062412, 29.502007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.558685, 31.944841, 29.456705>,  <36.218243, 31.748888, 29.381203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558685, 31.944841, 29.456705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136796, 0.140177, -0.980631,
		-0.506855, 0.860444, 0.052292,
		0.851108, 0.489884, 0.188754,
		36.814018, 32.091808, 29.513330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188019, 32.351303, 28.951674>,  <36.218243, 31.748888, 29.381203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188019, 32.351303, 28.951674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578175, 32.318695, 29.033621>,  <36.812267, 32.299129, 29.082790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.578175, 32.318695, 29.033621>,  <36.188019, 32.351303, 28.951674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578175, 32.318695, 29.033621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214791, 0.141328, -0.966380,
		0.049829, 0.986600, 0.155360,
		0.975388, -0.081524, 0.204870,
		36.870792, 32.294239, 29.095081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763046, 32.936440, 28.860382>,  <36.188019, 32.351303, 28.951674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763046, 32.936440, 28.860382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.454498, 32.992588, 28.612097>,  <35.269371, 33.026276, 28.463125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.454498, 32.992588, 28.612097>,  <35.763046, 32.936440, 28.860382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454498, 32.992588, 28.612097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581587, 0.240481, 0.777127,
		0.258358, 0.960450, -0.103861,
		-0.771368, 0.140373, -0.620715,
		35.223087, 33.034698, 28.425882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413357, 33.560879, 29.080217>,  <35.763046, 32.936440, 28.860382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413357, 33.560879, 29.080217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.155239, 33.351063, 28.858067>,  <35.000366, 33.225174, 28.724775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.155239, 33.351063, 28.858067>,  <35.413357, 33.560879, 29.080217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155239, 33.351063, 28.858067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742439, 0.259390, 0.617657,
		-0.179928, 0.810908, -0.556825,
		-0.645298, -0.524543, -0.555378,
		34.961651, 33.193699, 28.691454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804756, 33.976063, 29.046112>,  <35.413357, 33.560879, 29.080217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804756, 33.976063, 29.046112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.662342, 33.617859, 28.939306>,  <34.576893, 33.402935, 28.875223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.662342, 33.617859, 28.939306>,  <34.804756, 33.976063, 29.046112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662342, 33.617859, 28.939306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827542, 0.169425, 0.535227,
		-0.434063, 0.411527, -0.801395,
		-0.356037, -0.895511, -0.267015,
		34.555531, 33.349205, 28.859201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129818, 34.059238, 28.804941>,  <34.804756, 33.976063, 29.046112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129818, 34.059238, 28.804941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139759, 33.671124, 28.901217>,  <34.145725, 33.438255, 28.958982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139759, 33.671124, 28.901217>,  <34.129818, 34.059238, 28.804941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139759, 33.671124, 28.901217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690918, 0.157336, 0.705605,
		-0.722506, -0.183833, -0.666476,
		0.024853, -0.970284, 0.240690,
		34.147217, 33.380039, 28.973423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464542, 33.885311, 28.718889>,  <34.129818, 34.059238, 28.804941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464542, 33.885311, 28.718889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645687, 33.622963, 28.960466>,  <33.754375, 33.465553, 29.105413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645687, 33.622963, 28.960466>,  <33.464542, 33.885311, 28.718889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645687, 33.622963, 28.960466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658893, 0.210149, 0.722287,
		-0.600643, -0.725034, -0.336977,
		0.452866, -0.655868, 0.603944,
		33.781548, 33.426201, 29.141649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026337, 33.362125, 28.883570>,  <33.464542, 33.885311, 28.718889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026337, 33.362125, 28.883570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275620, 33.394115, 29.194754>,  <33.425190, 33.413311, 29.381464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275620, 33.394115, 29.194754>,  <33.026337, 33.362125, 28.883570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275620, 33.394115, 29.194754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768994, 0.243735, 0.590967,
		-0.142354, -0.966539, 0.213395,
		0.623205, 0.079973, 0.777959,
		33.462582, 33.418106, 29.428141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542377, 33.371624, 29.371904>,  <33.026337, 33.362125, 28.883570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542377, 33.371624, 29.371904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.880913, 33.438404, 29.574228>,  <33.084034, 33.478474, 29.695623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.880913, 33.438404, 29.574228>,  <32.542377, 33.371624, 29.371904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880913, 33.438404, 29.574228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522983, 0.440569, 0.729649,
		-0.101026, -0.882057, 0.460183,
		0.846335, 0.166954, 0.505810,
		33.134811, 33.488491, 29.725971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310123, 33.235020, 30.018324>,  <32.542377, 33.371624, 29.371904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310123, 33.235020, 30.018324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638435, 33.462639, 30.038387>,  <32.835423, 33.599209, 30.050425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.638435, 33.462639, 30.038387>,  <32.310123, 33.235020, 30.018324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638435, 33.462639, 30.038387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415315, 0.534137, 0.736349,
		0.392223, -0.625210, 0.674740,
		0.820776, 0.569043, 0.050158,
		32.884666, 33.633350, 30.053434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433712, 33.351627, 30.814695>,  <32.310123, 33.235020, 30.018324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433712, 33.351627, 30.814695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630417, 33.637333, 30.615501>,  <32.748440, 33.808758, 30.495985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630417, 33.637333, 30.615501>,  <32.433712, 33.351627, 30.814695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630417, 33.637333, 30.615501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193963, 0.647409, 0.737048,
		0.848849, -0.265864, 0.456915,
		0.491766, 0.714267, -0.497985,
		32.777946, 33.851612, 30.466106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845760, 33.704525, 31.314085>,  <32.433712, 33.351627, 30.814695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845760, 33.704525, 31.314085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802483, 33.954948, 31.005192>,  <32.776516, 34.105202, 30.819857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.802483, 33.954948, 31.005192>,  <32.845760, 33.704525, 31.314085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802483, 33.954948, 31.005192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293040, 0.722194, 0.626549,
		0.949959, 0.294083, 0.105324,
		-0.108193, 0.626060, -0.772233,
		32.770023, 34.142765, 30.773521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138554, 34.403728, 31.540096>,  <32.845760, 33.704525, 31.314085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138554, 34.403728, 31.540096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899673, 34.502510, 31.234846>,  <32.756344, 34.561779, 31.051695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.899673, 34.502510, 31.234846>,  <33.138554, 34.403728, 31.540096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899673, 34.502510, 31.234846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313297, 0.804021, 0.505367,
		0.738374, 0.540891, -0.402792,
		-0.597201, 0.246956, -0.763127,
		32.720512, 34.576595, 31.005907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140324, 35.131615, 31.477766>,  <33.138554, 34.403728, 31.540096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140324, 35.131615, 31.477766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.824837, 35.026562, 31.255432>,  <32.635544, 34.963531, 31.122032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.824837, 35.026562, 31.255432>,  <33.140324, 35.131615, 31.477766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824837, 35.026562, 31.255432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464374, 0.847004, 0.258729,
		0.402843, 0.462178, -0.790005,
		-0.788717, -0.262630, -0.555833,
		32.588223, 34.947773, 31.088682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929317, 35.788948, 31.178932>,  <33.140324, 35.131615, 31.477766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929317, 35.788948, 31.178932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.616566, 35.551208, 31.103655>,  <32.428913, 35.408566, 31.058489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.616566, 35.551208, 31.103655>,  <32.929317, 35.788948, 31.178932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616566, 35.551208, 31.103655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623324, 0.750777, 0.218633,
		0.011346, 0.288250, -0.957488,
		-0.781881, -0.594345, -0.188191,
		32.382000, 35.372906, 31.047197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464367, 36.119061, 30.716709>,  <32.929317, 35.788948, 31.178932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464367, 36.119061, 30.716709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252720, 35.869072, 30.946299>,  <32.125732, 35.719078, 31.084053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252720, 35.869072, 30.946299>,  <32.464367, 36.119061, 30.716709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252720, 35.869072, 30.946299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482566, 0.778008, 0.402284,
		-0.697973, -0.064126, -0.713247,
		-0.529115, -0.624973, 0.573974,
		32.093987, 35.681580, 31.118490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981913, 36.740658, 30.730633>,  <32.464367, 36.119061, 30.716709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981913, 36.740658, 30.730633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.845932, 37.099583, 30.843254>,  <31.764343, 37.314938, 30.910826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.845932, 37.099583, 30.843254>,  <31.981913, 36.740658, 30.730633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845932, 37.099583, 30.843254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254901, 0.376091, -0.890832,
		-0.905240, -0.231070, -0.356577,
		-0.339950, 0.897308, 0.281552,
		31.743946, 37.368774, 30.927719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658520, 37.099575, 30.127237>,  <31.981913, 36.740658, 30.730633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658520, 37.099575, 30.127237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.766502, 37.392643, 30.377142>,  <31.831291, 37.568481, 30.527084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.766502, 37.392643, 30.377142>,  <31.658520, 37.099575, 30.127237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766502, 37.392643, 30.377142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251668, 0.572606, -0.780247,
		-0.929402, 0.367864, -0.029811,
		0.269955, 0.732665, 0.624761,
		31.847488, 37.612442, 30.564569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384632, 37.736416, 29.926617>,  <31.658520, 37.099575, 30.127237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384632, 37.736416, 29.926617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.727961, 37.789059, 30.124996>,  <31.933958, 37.820644, 30.244024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.727961, 37.789059, 30.124996>,  <31.384632, 37.736416, 29.926617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727961, 37.789059, 30.124996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401176, 0.430499, -0.808535,
		-0.319912, 0.892945, 0.316709,
		0.858320, 0.131604, 0.495950,
		31.985456, 37.828541, 30.273781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626072, 38.481850, 29.898027>,  <31.384632, 37.736416, 29.926617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626072, 38.481850, 29.898027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.947767, 38.254215, 29.966543>,  <32.140785, 38.117634, 30.007652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.947767, 38.254215, 29.966543>,  <31.626072, 38.481850, 29.898027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947767, 38.254215, 29.966543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484144, 0.460204, -0.744188,
		0.344679, 0.681434, 0.645634,
		0.804239, -0.569086, 0.171290,
		32.189037, 38.083488, 30.017931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315060, 38.904655, 29.752783>,  <31.626072, 38.481850, 29.898027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315060, 38.904655, 29.752783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.397724, 38.513531, 29.739037>,  <32.447323, 38.278858, 29.730789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.397724, 38.513531, 29.739037>,  <32.315060, 38.904655, 29.752783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397724, 38.513531, 29.739037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588699, 0.152322, -0.793871,
		0.781488, 0.143833, 0.607114,
		0.206661, -0.977809, -0.034364,
		32.459724, 38.220188, 29.728727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015648, 38.877480, 29.610844>,  <32.315060, 38.904655, 29.752783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015648, 38.877480, 29.610844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862503, 38.523205, 29.505796>,  <32.770615, 38.310638, 29.442768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862503, 38.523205, 29.505796>,  <33.015648, 38.877480, 29.610844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862503, 38.523205, 29.505796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543438, 0.013957, -0.839333,
		0.747054, -0.464069, 0.475973,
		-0.382865, -0.885689, -0.262619,
		32.747643, 38.257500, 29.427011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601704, 38.603603, 29.336315>,  <33.015648, 38.877480, 29.610844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601704, 38.603603, 29.336315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292976, 38.392544, 29.194393>,  <33.107742, 38.265907, 29.109240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292976, 38.392544, 29.194393>,  <33.601704, 38.603603, 29.336315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292976, 38.392544, 29.194393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441276, -0.042741, -0.896353,
		0.457796, -0.848385, 0.265828,
		-0.771815, -0.527651, -0.354805,
		33.061432, 38.234249, 29.087952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839706, 37.931011, 28.999664>,  <33.601704, 38.603603, 29.336315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839706, 37.931011, 28.999664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472233, 37.976528, 28.848370>,  <33.251747, 38.003838, 28.757593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472233, 37.976528, 28.848370>,  <33.839706, 37.931011, 28.999664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472233, 37.976528, 28.848370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337376, -0.271894, -0.901250,
		-0.205394, -0.955576, 0.211396,
		-0.918690, 0.113791, -0.378234,
		33.196625, 38.010666, 28.734900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702507, 37.381405, 28.595976>,  <33.839706, 37.931011, 28.999664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702507, 37.381405, 28.595976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451836, 37.649548, 28.437035>,  <33.301434, 37.810432, 28.341671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451836, 37.649548, 28.437035>,  <33.702507, 37.381405, 28.595976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451836, 37.649548, 28.437035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396843, -0.164299, -0.903062,
		-0.670662, -0.723617, -0.163065,
		-0.626680, 0.670361, -0.397352,
		33.263832, 37.850655, 28.317829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424953, 37.119011, 27.944582>,  <33.702507, 37.381405, 28.595976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424953, 37.119011, 27.944582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.385468, 37.516678, 27.927229>,  <33.361774, 37.755280, 27.916817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.385468, 37.516678, 27.927229>,  <33.424953, 37.119011, 27.944582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385468, 37.516678, 27.927229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530567, 0.015701, -0.847498,
		-0.841875, -0.106681, -0.529023,
		-0.098718, 0.994169, -0.043383,
		33.355850, 37.814930, 27.914213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273556, 37.265881, 27.268480>,  <33.424953, 37.119011, 27.944582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273556, 37.265881, 27.268480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391399, 37.638126, 27.355350>,  <33.462105, 37.861473, 27.407473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391399, 37.638126, 27.355350>,  <33.273556, 37.265881, 27.268480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391399, 37.638126, 27.355350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537565, 0.026501, -0.842806,
		-0.790081, 0.365047, -0.492457,
		0.294613, 0.930612, 0.217175,
		33.479782, 37.917309, 27.420504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284935, 37.680988, 26.656294>,  <33.273556, 37.265881, 27.268480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284935, 37.680988, 26.656294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.512253, 37.895378, 26.906019>,  <33.648643, 38.024014, 27.055855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.512253, 37.895378, 26.906019>,  <33.284935, 37.680988, 26.656294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512253, 37.895378, 26.906019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597081, 0.253447, -0.761090,
		-0.566156, 0.805292, -0.175987,
		0.568297, 0.535974, 0.624316,
		33.682743, 38.056171, 27.093313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455620, 38.252708, 26.292250>,  <33.284935, 37.680988, 26.656294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455620, 38.252708, 26.292250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721092, 38.298714, 26.587896>,  <33.880375, 38.326317, 26.765284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721092, 38.298714, 26.587896>,  <33.455620, 38.252708, 26.292250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721092, 38.298714, 26.587896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675843, 0.331249, -0.658415,
		-0.320559, 0.936507, 0.142113,
		0.663685, 0.115015, 0.739117,
		33.920197, 38.333218, 26.809631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753811, 38.939632, 26.137648>,  <33.455620, 38.252708, 26.292250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753811, 38.939632, 26.137648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016666, 38.773281, 26.389111>,  <34.174381, 38.673470, 26.539988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016666, 38.773281, 26.389111>,  <33.753811, 38.939632, 26.137648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016666, 38.773281, 26.389111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733581, 0.161136, -0.660223,
		0.173275, 0.895030, 0.410971,
		0.657142, -0.415881, 0.628656,
		34.213810, 38.648518, 26.577707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343811, 39.416584, 26.274130>,  <33.753811, 38.939632, 26.137648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343811, 39.416584, 26.274130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.484070, 39.054462, 26.370028>,  <34.568226, 38.837189, 26.427567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.484070, 39.054462, 26.370028>,  <34.343811, 39.416584, 26.274130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484070, 39.054462, 26.370028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824447, 0.176977, -0.537556,
		0.444220, 0.386149, 0.808429,
		0.350650, -0.905300, 0.239743,
		34.589264, 38.782871, 26.441950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999290, 39.567387, 26.467049>,  <34.343811, 39.416584, 26.274130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999290, 39.567387, 26.467049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970863, 39.187778, 26.344212>,  <34.953808, 38.960014, 26.270510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970863, 39.187778, 26.344212>,  <34.999290, 39.567387, 26.467049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970863, 39.187778, 26.344212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803043, 0.128184, -0.581971,
		0.591668, -0.287968, 0.752996,
		-0.071067, -0.949022, -0.307094,
		34.949543, 38.903072, 26.252083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660702, 39.437031, 26.342110>,  <34.999290, 39.567387, 26.467049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660702, 39.437031, 26.342110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476826, 39.149769, 26.133137>,  <35.366501, 38.977409, 26.007753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476826, 39.149769, 26.133137>,  <35.660702, 39.437031, 26.342110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476826, 39.149769, 26.133137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790295, -0.062452, -0.609536,
		0.405117, -0.693071, 0.596265,
		-0.459690, -0.718159, -0.522430,
		35.338921, 38.934322, 25.976408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126881, 38.984406, 26.251509>,  <35.660702, 39.437031, 26.342110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126881, 38.984406, 26.251509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.867489, 38.877541, 25.966385>,  <35.711853, 38.813423, 25.795311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.867489, 38.877541, 25.966385>,  <36.126881, 38.984406, 26.251509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867489, 38.877541, 25.966385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760668, -0.191393, -0.620285,
		0.029288, -0.944455, 0.327334,
		-0.648481, -0.267159, -0.712811,
		35.672943, 38.797394, 25.752542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306526, 38.346527, 25.859745>,  <36.126881, 38.984406, 26.251509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306526, 38.346527, 25.859745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057274, 38.544643, 25.617622>,  <35.907722, 38.663513, 25.472349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057274, 38.544643, 25.617622>,  <36.306526, 38.346527, 25.859745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057274, 38.544643, 25.617622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649949, -0.102576, -0.753023,
		-0.435054, -0.862651, -0.257994,
		-0.623133, 0.495289, -0.605305,
		35.870335, 38.693230, 25.436031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331005, 37.931728, 25.356697>,  <36.306526, 38.346527, 25.859745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331005, 37.931728, 25.356697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200638, 38.283096, 25.216892>,  <36.122417, 38.493916, 25.133009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200638, 38.283096, 25.216892>,  <36.331005, 37.931728, 25.356697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200638, 38.283096, 25.216892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640903, -0.066488, -0.764737,
		-0.694997, -0.473244, -0.541312,
		-0.325916, 0.878419, -0.349513,
		36.102863, 38.546623, 25.112038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214123, 37.857159, 24.625902>,  <36.331005, 37.931728, 25.356697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214123, 37.857159, 24.625902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.255920, 38.250046, 24.688290>,  <36.280998, 38.485779, 24.725723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.255920, 38.250046, 24.688290>,  <36.214123, 37.857159, 24.625902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255920, 38.250046, 24.688290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667511, 0.046988, -0.743115,
		-0.737231, 0.181764, -0.650732,
		0.104495, 0.982219, 0.155971,
		36.287270, 38.544712, 24.735081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293938, 38.057297, 23.947697>,  <36.214123, 37.857159, 24.625902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293938, 38.057297, 23.947697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433990, 38.364746, 24.161846>,  <36.518021, 38.549217, 24.290337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433990, 38.364746, 24.161846>,  <36.293938, 38.057297, 23.947697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433990, 38.364746, 24.161846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678883, 0.185576, -0.710408,
		-0.645390, 0.612192, -0.456829,
		0.350130, 0.768624, 0.535375,
		36.539028, 38.595333, 24.322458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338844, 38.723946, 23.492033>,  <36.293938, 38.057297, 23.947697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338844, 38.723946, 23.492033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612904, 38.736595, 23.783121>,  <36.777340, 38.744186, 23.957773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612904, 38.736595, 23.783121>,  <36.338844, 38.723946, 23.492033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612904, 38.736595, 23.783121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690314, 0.290660, -0.662558,
		-0.232474, 0.956304, 0.177312,
		0.685144, 0.031626, 0.727721,
		36.818447, 38.746082, 24.001438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688107, 39.275494, 23.208746>,  <36.338844, 38.723946, 23.492033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688107, 39.275494, 23.208746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927387, 39.148186, 23.502918>,  <37.070957, 39.071800, 23.679420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927387, 39.148186, 23.502918>,  <36.688107, 39.275494, 23.208746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927387, 39.148186, 23.502918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801074, 0.213744, -0.559101,
		0.020751, 0.923590, 0.382819,
		0.598206, -0.318268, 0.735428,
		37.106850, 39.052704, 23.723547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200119, 39.758476, 23.242504>,  <36.688107, 39.275494, 23.208746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200119, 39.758476, 23.242504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.373047, 39.453083, 23.434420>,  <37.476803, 39.269848, 23.549568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.373047, 39.453083, 23.434420>,  <37.200119, 39.758476, 23.242504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373047, 39.453083, 23.434420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834563, 0.137288, -0.533532,
		0.341472, 0.631070, 0.696525,
		0.432321, -0.763480, 0.479788,
		37.502743, 39.224037, 23.578356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878590, 39.973301, 23.424307>,  <37.200119, 39.758476, 23.242504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878590, 39.973301, 23.424307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.883945, 39.574112, 23.399446>,  <37.887161, 39.334599, 23.384531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.883945, 39.574112, 23.399446>,  <37.878590, 39.973301, 23.424307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883945, 39.574112, 23.399446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807500, 0.047452, -0.587956,
		0.589716, -0.042312, 0.806502,
		0.013392, -0.997977, -0.062150,
		37.887962, 39.274719, 23.380802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587994, 39.708965, 23.621735>,  <37.878590, 39.973301, 23.424307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587994, 39.708965, 23.621735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.417595, 39.435642, 23.384544>,  <38.315357, 39.271648, 23.242229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.417595, 39.435642, 23.384544>,  <38.587994, 39.708965, 23.621735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417595, 39.435642, 23.384544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778499, 0.057078, -0.625045,
		0.460944, -0.727895, 0.507640,
		-0.425992, -0.683308, -0.592976,
		38.289799, 39.230648, 23.206652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082981, 39.265789, 23.453396>,  <38.587994, 39.708965, 23.621735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082981, 39.265789, 23.453396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.791348, 39.218910, 23.183668>,  <38.616367, 39.190784, 23.021832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.791348, 39.218910, 23.183668>,  <39.082981, 39.265789, 23.453396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791348, 39.218910, 23.183668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678086, 0.010122, -0.734913,
		0.092954, -0.993057, 0.072089,
		-0.729081, -0.117196, -0.674319,
		38.572624, 39.183750, 22.981373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445789, 39.105625, 24.161060>,  <39.082981, 39.265789, 23.453396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445789, 39.105625, 24.161060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.820053, 39.092979, 24.301657>,  <40.044609, 39.085392, 24.386015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.820053, 39.092979, 24.301657>,  <39.445789, 39.105625, 24.161060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820053, 39.092979, 24.301657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352467, -0.133593, 0.926240,
		0.017677, -0.990532, -0.136140,
		0.935658, -0.031612, 0.351491,
		40.100750, 39.083496, 24.407104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496132, 38.496937, 24.501648>,  <39.445789, 39.105625, 24.161060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496132, 38.496937, 24.501648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.750240, 38.759426, 24.664526>,  <39.902706, 38.916920, 24.762253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.750240, 38.759426, 24.664526>,  <39.496132, 38.496937, 24.501648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750240, 38.759426, 24.664526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382526, -0.190667, 0.904057,
		0.670900, -0.730082, 0.129897,
		0.635269, 0.656221, 0.407194,
		39.940823, 38.956291, 24.786684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842045, 38.183571, 25.050093>,  <39.496132, 38.496937, 24.501648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842045, 38.183571, 25.050093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.854145, 38.577969, 25.115692>,  <39.861404, 38.814610, 25.155052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.854145, 38.577969, 25.115692>,  <39.842045, 38.183571, 25.050093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854145, 38.577969, 25.115692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373388, -0.141052, 0.916889,
		0.927182, -0.088968, 0.363893,
		0.030246, 0.985996, 0.164000,
		39.863220, 38.873768, 25.164892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019131, 38.228668, 25.708033>,  <39.842045, 38.183571, 25.050093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019131, 38.228668, 25.708033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.903904, 38.603054, 25.627050>,  <39.834766, 38.827686, 25.578461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.903904, 38.603054, 25.627050>,  <40.019131, 38.228668, 25.708033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903904, 38.603054, 25.627050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485835, 0.039344, 0.873164,
		0.825216, 0.349889, 0.443391,
		-0.288066, 0.935965, -0.202456,
		39.817486, 38.883842, 25.566313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007877, 38.535553, 26.328379>,  <40.019131, 38.228668, 25.708033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007877, 38.535553, 26.328379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.770123, 38.754333, 26.092566>,  <39.627468, 38.885601, 25.951078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.770123, 38.754333, 26.092566>,  <40.007877, 38.535553, 26.328379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770123, 38.754333, 26.092566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665060, 0.077806, 0.742726,
		0.452103, 0.833542, 0.317508,
		-0.594389, 0.546950, -0.589531,
		39.591805, 38.918419, 25.915707>
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
