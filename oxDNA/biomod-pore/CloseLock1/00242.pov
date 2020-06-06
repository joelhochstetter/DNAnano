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
	<24.389221, 35.601185, 34.891567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.278433, 35.286900, 35.112816>,  <24.211960, 35.098328, 35.245567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.278433, 35.286900, 35.112816>,  <24.389221, 35.601185, 34.891567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.278433, 35.286900, 35.112816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909155, -0.400606, -0.113807,
		0.311004, 0.471354, 0.825289,
		-0.276972, -0.785710, 0.553124,
		24.195341, 35.051186, 35.278751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707861, 35.537170, 35.597107>,  <24.389221, 35.601185, 34.891567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707861, 35.537170, 35.597107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641783, 35.175350, 35.439884>,  <24.602137, 34.958260, 35.345551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641783, 35.175350, 35.439884>,  <24.707861, 35.537170, 35.597107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.641783, 35.175350, 35.439884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968326, -0.224412, 0.109472,
		-0.187231, -0.362526, 0.912973,
		-0.165196, -0.904552, -0.393060,
		24.592224, 34.903984, 35.321964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.924728, 35.107628, 36.059479>,  <24.707861, 35.537170, 35.597107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.924728, 35.107628, 36.059479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980459, 34.967945, 35.688828>,  <25.013899, 34.884136, 35.466438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980459, 34.967945, 35.688828>,  <24.924728, 35.107628, 36.059479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.980459, 34.967945, 35.688828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913263, -0.316425, 0.256566,
		-0.382803, -0.882003, 0.274832,
		0.139329, -0.349208, -0.926629,
		25.022257, 34.863182, 35.410839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.350683, 34.517498, 36.139774>,  <24.924728, 35.107628, 36.059479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.350683, 34.517498, 36.139774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355034, 34.614449, 35.751724>,  <25.357645, 34.672619, 35.518894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355034, 34.614449, 35.751724>,  <25.350683, 34.517498, 36.139774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.355034, 34.614449, 35.751724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910464, -0.403539, -0.090615,
		-0.413445, -0.882274, -0.225067,
		0.010876, 0.242380, -0.970121,
		25.358297, 34.687164, 35.460690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085453, 34.775726, 36.223721>,  <25.350683, 34.517498, 36.139774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085453, 34.775726, 36.223721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238914, 35.115028, 36.077690>,  <26.330992, 35.318607, 35.990074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238914, 35.115028, 36.077690>,  <26.085453, 34.775726, 36.223721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238914, 35.115028, 36.077690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579210, -0.528927, -0.620283,
		-0.719254, 0.026518, -0.694241,
		0.383652, 0.848253, -0.365074,
		26.354010, 35.369503, 35.968166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687517, 34.561481, 35.778645>,  <26.085453, 34.775726, 36.223721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687517, 34.561481, 35.778645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081978, 34.565609, 35.712433>,  <27.318655, 34.568085, 35.672707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081978, 34.565609, 35.712433>,  <26.687517, 34.561481, 35.778645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081978, 34.565609, 35.712433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153504, 0.434644, -0.887424,
		0.062791, 0.900543, 0.430208,
		0.986151, 0.010316, -0.165529,
		27.377823, 34.568703, 35.662773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885532, 35.129036, 35.616192>,  <26.687517, 34.561481, 35.778645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885532, 35.129036, 35.616192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185843, 34.926414, 35.446609>,  <27.366028, 34.804844, 35.344860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185843, 34.926414, 35.446609>,  <26.885532, 35.129036, 35.616192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185843, 34.926414, 35.446609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172630, 0.469054, -0.866133,
		0.637601, 0.723460, 0.264708,
		0.750775, -0.506551, -0.423960,
		27.411076, 34.774448, 35.319420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137136, 35.580154, 35.184689>,  <26.885532, 35.129036, 35.616192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137136, 35.580154, 35.184689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271963, 35.221958, 35.068424>,  <27.352859, 35.007042, 34.998665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271963, 35.221958, 35.068424>,  <27.137136, 35.580154, 35.184689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271963, 35.221958, 35.068424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167801, 0.246645, -0.954468,
		0.926406, 0.370493, -0.067128,
		0.337067, -0.895489, -0.290663,
		27.373083, 34.953312, 34.981224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694174, 35.697685, 34.750443>,  <27.137136, 35.580154, 35.184689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694174, 35.697685, 34.750443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557207, 35.331184, 34.667267>,  <27.475027, 35.111286, 34.617359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557207, 35.331184, 34.667267>,  <27.694174, 35.697685, 34.750443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557207, 35.331184, 34.667267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051296, 0.239222, -0.969609,
		0.938147, -0.321344, -0.128913,
		-0.342417, -0.916248, -0.207942,
		27.454481, 35.056309, 34.604885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100214, 35.513142, 34.193542>,  <27.694174, 35.697685, 34.750443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100214, 35.513142, 34.193542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757010, 35.307701, 34.195744>,  <27.551086, 35.184437, 34.197063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757010, 35.307701, 34.195744>,  <28.100214, 35.513142, 34.193542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757010, 35.307701, 34.195744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104300, 0.163738, -0.980975,
		0.502926, -0.842263, -0.194058,
		-0.858014, -0.513598, 0.005500,
		27.499605, 35.153622, 34.197395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085417, 35.054699, 33.592632>,  <28.100214, 35.513142, 34.193542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085417, 35.054699, 33.592632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699270, 35.087643, 33.691650>,  <27.467583, 35.107410, 33.751060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699270, 35.087643, 33.691650>,  <28.085417, 35.054699, 33.592632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699270, 35.087643, 33.691650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253952, -0.079291, -0.963961,
		-0.059744, -0.993445, 0.097456,
		-0.965370, 0.082340, 0.247550,
		27.409660, 35.112350, 33.765915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754091, 34.643982, 33.048943>,  <28.085417, 35.054699, 33.592632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754091, 34.643982, 33.048943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457487, 34.838787, 33.233543>,  <27.279524, 34.955669, 33.344303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457487, 34.838787, 33.233543>,  <27.754091, 34.643982, 33.048943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457487, 34.838787, 33.233543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513467, 0.030847, -0.857555,
		-0.431873, -0.872852, 0.227190,
		-0.741510, 0.487010, 0.461502,
		27.235033, 34.984890, 33.371994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231379, 34.313446, 32.768917>,  <27.754091, 34.643982, 33.048943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231379, 34.313446, 32.768917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092049, 34.668625, 32.889061>,  <27.008451, 34.881733, 32.961147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092049, 34.668625, 32.889061>,  <27.231379, 34.313446, 32.768917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092049, 34.668625, 32.889061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573012, 0.051889, -0.817903,
		-0.741841, -0.457006, 0.490732,
		-0.348323, 0.887949, 0.300363,
		26.987553, 34.935009, 32.979172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522665, 34.306389, 32.625465>,  <27.231379, 34.313446, 32.768917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522665, 34.306389, 32.625465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613720, 34.694115, 32.662586>,  <26.668352, 34.926750, 32.684860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613720, 34.694115, 32.662586>,  <26.522665, 34.306389, 32.625465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613720, 34.694115, 32.662586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463643, 0.191705, -0.865034,
		-0.856281, 0.153885, 0.493055,
		0.227636, 0.969313, 0.092806,
		26.682011, 34.984909, 32.690430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006861, 34.557716, 32.206722>,  <26.522665, 34.306389, 32.625465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006861, 34.557716, 32.206722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280491, 34.845493, 32.254807>,  <26.444668, 35.018158, 32.283657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280491, 34.845493, 32.254807>,  <26.006861, 34.557716, 32.206722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280491, 34.845493, 32.254807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049762, 0.210447, -0.976338,
		-0.727714, 0.661905, 0.179761,
		0.684074, 0.719440, 0.120207,
		26.485712, 35.061325, 32.290867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.715544, 35.113888, 31.962591>,  <26.006861, 34.557716, 32.206722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.715544, 35.113888, 31.962591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099579, 35.224731, 31.947388>,  <26.330000, 35.291237, 31.938265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099579, 35.224731, 31.947388>,  <25.715544, 35.113888, 31.962591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099579, 35.224731, 31.947388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103552, 0.225902, -0.968631,
		-0.259832, 0.933904, 0.245581,
		0.960086, 0.277112, -0.038011,
		26.387604, 35.307865, 31.935984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819389, 35.860134, 31.631567>,  <25.715544, 35.113888, 31.962591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819389, 35.860134, 31.631567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157480, 35.649994, 31.592375>,  <26.360334, 35.523911, 31.568859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157480, 35.649994, 31.592375>,  <25.819389, 35.860134, 31.631567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157480, 35.649994, 31.592375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055188, 0.096558, -0.993796,
		0.531552, 0.845390, 0.052620,
		0.845226, -0.525351, -0.097981,
		26.411049, 35.492390, 31.562981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316067, 36.287628, 31.288076>,  <25.819389, 35.860134, 31.631567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316067, 36.287628, 31.288076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447041, 35.911728, 31.248762>,  <26.525625, 35.686188, 31.225174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447041, 35.911728, 31.248762>,  <26.316067, 36.287628, 31.288076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447041, 35.911728, 31.248762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050590, 0.086432, -0.994972,
		0.943519, 0.330759, -0.019241,
		0.327433, -0.939749, -0.098284,
		26.545271, 35.629803, 31.219276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778515, 36.385551, 30.782434>,  <26.316067, 36.287628, 31.288076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778515, 36.385551, 30.782434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677418, 35.998623, 30.774416>,  <26.616760, 35.766464, 30.769606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677418, 35.998623, 30.774416>,  <26.778515, 36.385551, 30.782434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677418, 35.998623, 30.774416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098127, 0.046240, -0.994099,
		0.962545, -0.249283, -0.106608,
		-0.252742, -0.967326, -0.020047,
		26.601595, 35.708424, 30.768402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258396, 35.965343, 30.271997>,  <26.778515, 36.385551, 30.782434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258396, 35.965343, 30.271997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922100, 35.760921, 30.343529>,  <26.720322, 35.638268, 30.386448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922100, 35.760921, 30.343529>,  <27.258396, 35.965343, 30.271997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922100, 35.760921, 30.343529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205893, -0.003702, -0.978567,
		0.500763, -0.859540, -0.102110,
		-0.840740, -0.511054, 0.178828,
		26.669878, 35.607605, 30.397177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203640, 35.664001, 29.653156>,  <27.258396, 35.965343, 30.271997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203640, 35.664001, 29.653156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842768, 35.612247, 29.817757>,  <26.626245, 35.581196, 29.916517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842768, 35.612247, 29.817757>,  <27.203640, 35.664001, 29.653156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842768, 35.612247, 29.817757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416937, 0.016913, -0.908778,
		0.110626, -0.991450, -0.069206,
		-0.902179, -0.129389, 0.411501,
		26.572115, 35.573429, 29.941206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907091, 35.203114, 29.188396>,  <27.203640, 35.664001, 29.653156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907091, 35.203114, 29.188396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606934, 35.381962, 29.383123>,  <26.426840, 35.489269, 29.499960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606934, 35.381962, 29.383123>,  <26.907091, 35.203114, 29.188396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606934, 35.381962, 29.383123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438456, 0.214437, -0.872796,
		-0.494637, -0.868389, 0.035131,
		-0.750393, 0.447121, 0.486819,
		26.381815, 35.516098, 29.529169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419401, 34.874504, 28.971872>,  <26.907091, 35.203114, 29.188396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419401, 34.874504, 28.971872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256584, 35.214203, 29.106396>,  <26.158894, 35.418022, 29.187109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256584, 35.214203, 29.106396>,  <26.419401, 34.874504, 28.971872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256584, 35.214203, 29.106396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342976, 0.199146, -0.917991,
		-0.846572, -0.489007, 0.210209,
		-0.407042, 0.849242, 0.336309,
		26.134472, 35.468975, 29.207289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678226, 34.870300, 28.820250>,  <26.419401, 34.874504, 28.971872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678226, 34.870300, 28.820250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761887, 35.260754, 28.843645>,  <25.812082, 35.495026, 28.857683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761887, 35.260754, 28.843645>,  <25.678226, 34.870300, 28.820250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.761887, 35.260754, 28.843645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467840, 0.152404, -0.870574,
		-0.858709, 0.154718, 0.488549,
		0.209150, 0.976133, 0.058488,
		25.824631, 35.553593, 28.861191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.054375, 35.107628, 28.856474>,  <25.678226, 34.870300, 28.820250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.054375, 35.107628, 28.856474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302572, 35.394978, 28.730667>,  <25.451490, 35.567387, 28.655182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302572, 35.394978, 28.730667>,  <25.054375, 35.107628, 28.856474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302572, 35.394978, 28.730667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465212, 0.014320, -0.885084,
		-0.631319, 0.695507, 0.343082,
		0.620495, 0.718376, -0.314518,
		25.488720, 35.610489, 28.636312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.646908, 35.609341, 28.400280>,  <25.054375, 35.107628, 28.856474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.646908, 35.609341, 28.400280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037024, 35.619728, 28.312517>,  <25.271093, 35.625961, 28.259859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037024, 35.619728, 28.312517>,  <24.646908, 35.609341, 28.400280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.037024, 35.619728, 28.312517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220933, 0.108866, -0.969194,
		-0.001283, 0.993717, 0.111913,
		0.975288, 0.025969, -0.219405,
		25.329611, 35.627518, 28.246696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.750435, 36.339298, 28.082756>,  <24.646908, 35.609341, 28.400280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.750435, 36.339298, 28.082756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995155, 36.037868, 27.986565>,  <25.141989, 35.857010, 27.928850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.995155, 36.037868, 27.986565>,  <24.750435, 36.339298, 28.082756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.995155, 36.037868, 27.986565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139312, 0.196612, -0.970534,
		0.778646, 0.627277, 0.015307,
		0.611803, -0.753570, -0.240478,
		25.178696, 35.811798, 27.914421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.744415, 36.906090, 27.655563>,  <24.750435, 36.339298, 28.082756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.744415, 36.906090, 27.655563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542305, 37.070934, 27.958841>,  <24.421040, 37.169842, 28.140808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542305, 37.070934, 27.958841>,  <24.744415, 36.906090, 27.655563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542305, 37.070934, 27.958841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099588, 0.900577, -0.423135,
		-0.857194, -0.138291, -0.496079,
		-0.505273, 0.412112, 0.758197,
		24.390722, 37.194569, 28.186300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.043730, 37.243931, 27.286633>,  <24.744415, 36.906090, 27.655563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.043730, 37.243931, 27.286633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227413, 37.344627, 27.627398>,  <24.337624, 37.405045, 27.831856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227413, 37.344627, 27.627398>,  <24.043730, 37.243931, 27.286633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.227413, 37.344627, 27.627398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087977, 0.941403, -0.325607,
		-0.883962, 0.224470, 0.410152,
		0.459207, 0.251741, 0.851913,
		24.365175, 37.420151, 27.882971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.760269, 37.803284, 27.630749>,  <24.043730, 37.243931, 27.286633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.760269, 37.803284, 27.630749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.151346, 37.784916, 27.712736>,  <24.385992, 37.773895, 27.761929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.151346, 37.784916, 27.712736>,  <23.760269, 37.803284, 27.630749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.151346, 37.784916, 27.712736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080754, 0.982986, -0.164978,
		-0.193907, 0.177850, 0.964764,
		0.977690, -0.045918, 0.204970,
		24.444653, 37.771141, 27.774227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.023867, 38.372482, 28.178654>,  <23.760269, 37.803284, 27.630749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.023867, 38.372482, 28.178654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.277874, 38.274723, 27.885527>,  <24.430279, 38.216068, 27.709650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.277874, 38.274723, 27.885527>,  <24.023867, 38.372482, 28.178654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.277874, 38.274723, 27.885527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011055, 0.945661, -0.324966,
		0.772418, 0.214460, 0.597810,
		0.635018, -0.244401, -0.732817,
		24.468380, 38.201405, 27.665682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.463243, 38.918430, 28.048264>,  <24.023867, 38.372482, 28.178654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.463243, 38.918430, 28.048264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.550426, 38.699589, 27.724987>,  <24.602736, 38.568283, 27.531021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.550426, 38.699589, 27.724987>,  <24.463243, 38.918430, 28.048264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.550426, 38.699589, 27.724987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290780, 0.826896, -0.481342,
		0.931634, -0.130094, 0.339314,
		0.217958, -0.547100, -0.808193,
		24.615814, 38.535458, 27.482529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027967, 39.206432, 28.388819>,  <24.463243, 38.918430, 28.048264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027967, 39.206432, 28.388819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359924, 39.025909, 28.520027>,  <25.559099, 38.917595, 28.598751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359924, 39.025909, 28.520027>,  <25.027967, 39.206432, 28.388819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359924, 39.025909, 28.520027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530475, -0.456147, 0.714511,
		-0.172841, -0.766974, -0.617962,
		0.829893, -0.451311, 0.328020,
		25.608892, 38.890514, 28.618433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168037, 39.481586, 29.113722>,  <25.027967, 39.206432, 28.388819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168037, 39.481586, 29.113722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.892105, 39.769371, 29.081438>,  <24.726545, 39.942039, 29.062067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.892105, 39.769371, 29.081438>,  <25.168037, 39.481586, 29.113722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.892105, 39.769371, 29.081438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205572, 0.301551, 0.931025,
		0.694172, 0.625657, -0.355920,
		-0.689830, 0.719459, -0.080711,
		24.685156, 39.985210, 29.057224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.417849, 40.078594, 29.208515>,  <25.168037, 39.481586, 29.113722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.417849, 40.078594, 29.208515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033398, 40.086369, 29.318686>,  <24.802727, 40.091034, 29.384787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.033398, 40.086369, 29.318686>,  <25.417849, 40.078594, 29.208515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.033398, 40.086369, 29.318686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276006, 0.095054, 0.956444,
		-0.007588, 0.995282, -0.096724,
		-0.961126, 0.019439, 0.275425,
		24.745060, 40.092201, 29.401314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.183397, 40.715069, 29.671968>,  <25.417849, 40.078594, 29.208515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.183397, 40.715069, 29.671968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031231, 40.349998, 29.731710>,  <24.939932, 40.130955, 29.767555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.031231, 40.349998, 29.731710>,  <25.183397, 40.715069, 29.671968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.031231, 40.349998, 29.731710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436801, -0.034969, 0.898878,
		-0.815161, 0.407185, 0.411961,
		-0.380416, -0.912676, 0.149354,
		24.917107, 40.076195, 29.776516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.984581, 40.737381, 30.354895>,  <25.183397, 40.715069, 29.671968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.984581, 40.737381, 30.354895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.053827, 40.363457, 30.230856>,  <25.095375, 40.139103, 30.156433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.053827, 40.363457, 30.230856>,  <24.984581, 40.737381, 30.354895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.053827, 40.363457, 30.230856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439712, -0.208372, 0.873632,
		-0.881297, -0.287591, 0.374976,
		0.173114, -0.934811, -0.310095,
		25.105762, 40.083012, 30.137827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.789986, 40.353378, 30.888557>,  <24.984581, 40.737381, 30.354895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.789986, 40.353378, 30.888557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.058493, 40.134403, 30.688671>,  <25.219597, 40.003017, 30.568739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.058493, 40.134403, 30.688671>,  <24.789986, 40.353378, 30.888557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.058493, 40.134403, 30.688671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468988, -0.208382, 0.858270,
		-0.573978, -0.810489, 0.116860,
		0.671267, -0.547434, -0.499716,
		25.259872, 39.970173, 30.538755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.853445, 39.678055, 31.258457>,  <24.789986, 40.353378, 30.888557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.853445, 39.678055, 31.258457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186615, 39.699894, 31.038181>,  <25.386517, 39.712997, 30.906015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186615, 39.699894, 31.038181>,  <24.853445, 39.678055, 31.258457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186615, 39.699894, 31.038181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505445, -0.480219, 0.716879,
		-0.225311, -0.875448, -0.427581,
		0.832922, 0.054598, -0.550690,
		25.436491, 39.716274, 30.872974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.107307, 39.052433, 31.382469>,  <24.853445, 39.678055, 31.258457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.107307, 39.052433, 31.382469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423058, 39.211437, 31.195335>,  <25.612509, 39.306839, 31.083055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423058, 39.211437, 31.195335>,  <25.107307, 39.052433, 31.382469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.423058, 39.211437, 31.195335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610518, -0.588303, 0.530252,
		-0.064444, -0.704189, -0.707082,
		0.789376, 0.397515, -0.467832,
		25.659870, 39.330692, 31.054985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657927, 38.476330, 31.456347>,  <25.107307, 39.052433, 31.382469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657927, 38.476330, 31.456347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844707, 38.817505, 31.363001>,  <25.956776, 39.022209, 31.306993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844707, 38.817505, 31.363001>,  <25.657927, 38.476330, 31.456347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844707, 38.817505, 31.363001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805641, -0.301548, 0.509913,
		0.364551, -0.426114, -0.827967,
		0.466953, 0.852934, -0.233365,
		25.984793, 39.073383, 31.292992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286642, 38.288307, 31.204838>,  <25.657927, 38.476330, 31.456347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286642, 38.288307, 31.204838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308283, 38.658909, 31.353788>,  <26.321268, 38.881271, 31.443159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308283, 38.658909, 31.353788>,  <26.286642, 38.288307, 31.204838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308283, 38.658909, 31.353788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820969, -0.253555, 0.511585,
		0.568403, 0.278031, -0.774349,
		0.054103, 0.926503, 0.372377,
		26.324514, 38.936859, 31.465502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949142, 38.400021, 31.203520>,  <26.286642, 38.288307, 31.204838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949142, 38.400021, 31.203520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824347, 38.683022, 31.457167>,  <26.749470, 38.852821, 31.609356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824347, 38.683022, 31.457167>,  <26.949142, 38.400021, 31.203520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824347, 38.683022, 31.457167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858589, -0.075823, 0.507026,
		0.406802, 0.702634, -0.583797,
		-0.311988, 0.707501, 0.634119,
		26.730751, 38.895271, 31.647402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466282, 38.757408, 31.203878>,  <26.949142, 38.400021, 31.203520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466282, 38.757408, 31.203878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262079, 38.832664, 31.539494>,  <27.139557, 38.877819, 31.740864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262079, 38.832664, 31.539494>,  <27.466282, 38.757408, 31.203878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262079, 38.832664, 31.539494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827771, -0.156605, 0.538767,
		0.232759, 0.969577, -0.075786,
		-0.510507, 0.188136, 0.839039,
		27.108927, 38.889107, 31.791204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021793, 38.893864, 31.720974>,  <27.466282, 38.757408, 31.203878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021793, 38.893864, 31.720974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704861, 38.830002, 31.956507>,  <27.514702, 38.791683, 32.097828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704861, 38.830002, 31.956507>,  <28.021793, 38.893864, 31.720974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704861, 38.830002, 31.956507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587940, -0.457535, 0.667074,
		0.162907, 0.874741, 0.456388,
		-0.792331, -0.159658, 0.588831,
		27.467161, 38.782104, 32.133156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328041, 38.875427, 32.290043>,  <28.021793, 38.893864, 31.720974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328041, 38.875427, 32.290043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985489, 38.682533, 32.363865>,  <27.779957, 38.566795, 32.408157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.985489, 38.682533, 32.363865>,  <28.328041, 38.875427, 32.290043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985489, 38.682533, 32.363865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453892, -0.532672, 0.714313,
		-0.246162, 0.695491, 0.675053,
		-0.856380, -0.482238, 0.184554,
		27.728575, 38.537861, 32.419231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199606, 38.911743, 33.043816>,  <28.328041, 38.875427, 32.290043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199606, 38.911743, 33.043816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022327, 38.588104, 32.889450>,  <27.915960, 38.393921, 32.796829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022327, 38.588104, 32.889450>,  <28.199606, 38.911743, 33.043816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022327, 38.588104, 32.889450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355310, -0.553802, 0.753032,
		-0.823001, 0.196621, 0.532925,
		-0.443197, -0.809100, -0.385919,
		27.889368, 38.345375, 32.773674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691029, 38.581612, 33.580692>,  <28.199606, 38.911743, 33.043816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691029, 38.581612, 33.580692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776449, 38.273674, 33.340115>,  <27.827702, 38.088913, 33.195766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776449, 38.273674, 33.340115>,  <27.691029, 38.581612, 33.580692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776449, 38.273674, 33.340115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291403, -0.537426, 0.791364,
		-0.932459, -0.344260, 0.109567,
		0.213552, -0.769843, -0.601446,
		27.840515, 38.042721, 33.159679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366161, 38.070351, 33.871979>,  <27.691029, 38.581612, 33.580692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366161, 38.070351, 33.871979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653080, 37.921242, 33.636513>,  <27.825232, 37.831776, 33.495232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653080, 37.921242, 33.636513>,  <27.366161, 38.070351, 33.871979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653080, 37.921242, 33.636513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279377, -0.620092, 0.733099,
		-0.638307, -0.690308, -0.340644,
		0.717295, -0.372774, -0.588666,
		27.868269, 37.809410, 33.459911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307129, 37.438683, 33.871452>,  <27.366161, 38.070351, 33.871979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307129, 37.438683, 33.871452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688528, 37.450523, 33.751476>,  <27.917368, 37.457630, 33.679489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688528, 37.450523, 33.751476>,  <27.307129, 37.438683, 33.871452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688528, 37.450523, 33.751476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209118, -0.781645, 0.587622,
		-0.217054, -0.623020, -0.751488,
		0.953497, 0.029604, -0.299943,
		27.974577, 37.459404, 33.661491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562399, 36.747375, 33.905228>,  <27.307129, 37.438683, 33.871452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562399, 36.747375, 33.905228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914270, 36.937531, 33.899994>,  <28.125393, 37.051624, 33.896854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914270, 36.937531, 33.899994>,  <27.562399, 36.747375, 33.905228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914270, 36.937531, 33.899994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387846, -0.701223, 0.598216,
		0.275209, -0.531313, -0.801228,
		0.879679, 0.475387, -0.013084,
		28.178175, 37.080147, 33.896069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072695, 36.210144, 33.808559>,  <27.562399, 36.747375, 33.905228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072695, 36.210144, 33.808559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290730, 36.517910, 33.941750>,  <28.421551, 36.702572, 34.021664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290730, 36.517910, 33.941750>,  <28.072695, 36.210144, 33.808559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290730, 36.517910, 33.941750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499485, -0.617025, 0.608108,
		0.673347, -0.165153, -0.720645,
		0.545087, 0.769419, 0.332980,
		28.454256, 36.748737, 34.041645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762794, 35.935463, 33.843449>,  <28.072695, 36.210144, 33.808559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762794, 35.935463, 33.843449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767670, 36.257942, 34.080055>,  <28.770596, 36.451431, 34.222019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767670, 36.257942, 34.080055>,  <28.762794, 35.935463, 33.843449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767670, 36.257942, 34.080055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665779, -0.447913, 0.596752,
		0.746050, 0.386547, -0.542210,
		0.012190, 0.806198, 0.591520,
		28.771326, 36.499802, 34.257511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472002, 36.117035, 33.938202>,  <28.762794, 35.935463, 33.843449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472002, 36.117035, 33.938202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241888, 36.263531, 34.230755>,  <29.103821, 36.351429, 34.406284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241888, 36.263531, 34.230755>,  <29.472002, 36.117035, 33.938202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241888, 36.263531, 34.230755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715750, -0.207402, 0.666848,
		0.395918, 0.907111, -0.142824,
		-0.575284, 0.366243, 0.731379,
		29.069304, 36.373405, 34.450169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913347, 36.479656, 34.333447>,  <29.472002, 36.117035, 33.938202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913347, 36.479656, 34.333447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607235, 36.384995, 34.572891>,  <29.423567, 36.328197, 34.716560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607235, 36.384995, 34.572891>,  <29.913347, 36.479656, 34.333447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607235, 36.384995, 34.572891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643462, -0.306380, 0.701490,
		0.017391, 0.922022, 0.386747,
		-0.765281, -0.236657, 0.598615,
		29.377651, 36.313999, 34.752476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156828, 36.597633, 35.061363>,  <29.913347, 36.479656, 34.333447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156828, 36.597633, 35.061363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851900, 36.342999, 35.108059>,  <29.668943, 36.190220, 35.136078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851900, 36.342999, 35.108059>,  <30.156828, 36.597633, 35.061363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851900, 36.342999, 35.108059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569186, -0.573573, 0.589103,
		-0.308053, 0.515533, 0.799581,
		-0.762319, -0.636585, 0.116744,
		29.623205, 36.152023, 35.143082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988602, 36.576218, 35.725544>,  <30.156828, 36.597633, 35.061363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988602, 36.576218, 35.725544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884842, 36.244587, 35.527412>,  <29.822586, 36.045609, 35.408535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884842, 36.244587, 35.527412>,  <29.988602, 36.576218, 35.725544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884842, 36.244587, 35.527412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471545, -0.556320, 0.684218,
		-0.842826, -0.056081, 0.535256,
		-0.259402, -0.829074, -0.495325,
		29.807022, 35.995865, 35.378815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571997, 36.291344, 36.236126>,  <29.988602, 36.576218, 35.725544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571997, 36.291344, 36.236126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718115, 35.949574, 36.383923>,  <29.805786, 35.744511, 36.472599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718115, 35.949574, 36.383923>,  <29.571997, 36.291344, 36.236126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718115, 35.949574, 36.383923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887488, 0.439441, 0.138764,
		-0.280932, 0.277227, 0.918816,
		0.365296, -0.854422, 0.369489,
		29.827703, 35.693249, 36.494770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834169, 36.308037, 36.935024>,  <29.571997, 36.291344, 36.236126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834169, 36.308037, 36.935024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028351, 36.063084, 36.685444>,  <30.144859, 35.916111, 36.535694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028351, 36.063084, 36.685444>,  <29.834169, 36.308037, 36.935024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028351, 36.063084, 36.685444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845612, 0.510109, 0.157257,
		0.221982, -0.603962, 0.765476,
		0.485454, -0.612387, -0.623952,
		30.173986, 35.879368, 36.498257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200392, 35.897358, 37.378242>,  <29.834169, 36.308037, 36.935024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200392, 35.897358, 37.378242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340673, 35.962311, 37.009323>,  <30.424843, 36.001282, 36.787971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340673, 35.962311, 37.009323>,  <30.200392, 35.897358, 37.378242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340673, 35.962311, 37.009323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857812, 0.339423, 0.385942,
		0.375719, -0.926512, -0.020253,
		0.350706, 0.162379, -0.922301,
		30.445885, 36.011024, 36.732632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885349, 35.559727, 37.360130>,  <30.200392, 35.897358, 37.378242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885349, 35.559727, 37.360130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852648, 35.841209, 37.077824>,  <30.833027, 36.010101, 36.908440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852648, 35.841209, 37.077824>,  <30.885349, 35.559727, 37.360130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852648, 35.841209, 37.077824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873888, 0.391096, 0.288728,
		0.479204, -0.593158, -0.646937,
		-0.081754, 0.703710, -0.705768,
		30.828121, 36.052322, 36.866093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537476, 35.613930, 36.872837>,  <30.885349, 35.559727, 37.360130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537476, 35.613930, 36.872837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330067, 35.941792, 36.970242>,  <31.205622, 36.138508, 37.028687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330067, 35.941792, 36.970242>,  <31.537476, 35.613930, 36.872837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330067, 35.941792, 36.970242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769235, 0.322800, 0.551432,
		0.373378, 0.473250, -0.797887,
		-0.518523, 0.819655, 0.243514,
		31.174509, 36.187687, 37.043297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923761, 36.261608, 36.807655>,  <31.537476, 35.613930, 36.872837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923761, 36.261608, 36.807655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648624, 36.326092, 37.090748>,  <31.483541, 36.364780, 37.260605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648624, 36.326092, 37.090748>,  <31.923761, 36.261608, 36.807655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648624, 36.326092, 37.090748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716131, 0.309812, 0.625438,
		-0.118437, 0.937032, -0.328549,
		-0.687844, 0.161209, 0.707731,
		31.442272, 36.374454, 37.303066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053909, 36.884411, 36.993858>,  <31.923761, 36.261608, 36.807655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053909, 36.884411, 36.993858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861372, 36.700024, 37.292072>,  <31.745850, 36.589390, 37.471001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861372, 36.700024, 37.292072>,  <32.053909, 36.884411, 36.993858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861372, 36.700024, 37.292072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660308, 0.368676, 0.654271,
		-0.576459, 0.807209, 0.126923,
		-0.481340, -0.460969, 0.745533,
		31.716970, 36.561733, 37.515732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732193, 37.281670, 37.537487>,  <32.053909, 36.884411, 36.993858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732193, 37.281670, 37.537487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790915, 36.932991, 37.724503>,  <31.826147, 36.723785, 37.836712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790915, 36.932991, 37.724503>,  <31.732193, 37.281670, 37.537487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790915, 36.932991, 37.724503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472728, 0.477018, 0.740933,
		-0.868894, 0.112246, 0.482104,
		0.146805, -0.871696, 0.467540,
		31.834955, 36.671482, 37.864765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587202, 37.410397, 38.260075>,  <31.732193, 37.281670, 37.537487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587202, 37.410397, 38.260075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852943, 37.111832, 38.244537>,  <32.012386, 36.932693, 38.235214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852943, 37.111832, 38.244537>,  <31.587202, 37.410397, 38.260075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852943, 37.111832, 38.244537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441771, 0.350221, 0.825944,
		-0.602887, -0.565879, 0.562412,
		0.664353, -0.746409, -0.038846,
		32.052250, 36.887909, 38.232883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515501, 36.968834, 38.800323>,  <31.587202, 37.410397, 38.260075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515501, 36.968834, 38.800323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895704, 36.960022, 38.676357>,  <32.123825, 36.954735, 38.601978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895704, 36.960022, 38.676357>,  <31.515501, 36.968834, 38.800323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895704, 36.960022, 38.676357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309636, 0.149688, 0.938999,
		0.025706, -0.988488, 0.149100,
		0.950508, -0.022029, -0.309919,
		32.180855, 36.953415, 38.583382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883131, 36.651661, 39.397186>,  <31.515501, 36.968834, 38.800323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883131, 36.651661, 39.397186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171036, 36.816032, 39.173374>,  <32.343781, 36.914654, 39.039085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171036, 36.816032, 39.173374>,  <31.883131, 36.651661, 39.397186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171036, 36.816032, 39.173374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512661, 0.228842, 0.827532,
		0.468102, -0.882478, -0.045955,
		0.719763, 0.410929, -0.559534,
		32.386963, 36.939312, 39.005512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525360, 36.408588, 39.671185>,  <31.883131, 36.651661, 39.397186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525360, 36.408588, 39.671185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635689, 36.728264, 39.457561>,  <32.701885, 36.920071, 39.329388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635689, 36.728264, 39.457561>,  <32.525360, 36.408588, 39.671185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635689, 36.728264, 39.457561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541005, 0.330173, 0.773498,
		0.794503, -0.502277, -0.341296,
		0.275823, 0.799189, -0.534058,
		32.718437, 36.968021, 39.297344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251053, 36.437962, 39.790588>,  <32.525360, 36.408588, 39.671185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251053, 36.437962, 39.790588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096882, 36.791515, 39.684605>,  <33.004379, 37.003647, 39.621014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096882, 36.791515, 39.684605>,  <33.251053, 36.437962, 39.790588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096882, 36.791515, 39.684605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432888, 0.426787, 0.794016,
		0.814896, 0.191335, -0.547115,
		-0.385425, 0.883880, -0.264960,
		32.981255, 37.056679, 39.605118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839088, 36.921036, 39.796684>,  <33.251053, 36.437962, 39.790588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839088, 36.921036, 39.796684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529423, 37.173119, 39.820362>,  <33.343624, 37.324368, 39.834568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529423, 37.173119, 39.820362>,  <33.839088, 36.921036, 39.796684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529423, 37.173119, 39.820362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317895, 0.306230, 0.897310,
		0.547364, 0.713486, -0.437413,
		-0.774167, 0.630207, 0.059194,
		33.297173, 37.362179, 39.838120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030869, 37.602837, 39.993015>,  <33.839088, 36.921036, 39.796684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030869, 37.602837, 39.993015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649387, 37.573235, 40.109612>,  <33.420498, 37.555473, 40.179569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649387, 37.573235, 40.109612>,  <34.030869, 37.602837, 39.993015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649387, 37.573235, 40.109612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246509, 0.362852, 0.898650,
		-0.172270, 0.928904, -0.327812,
		-0.953707, -0.074002, 0.291491,
		33.363274, 37.551033, 40.197060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043087, 38.036961, 40.574646>,  <34.030869, 37.602837, 39.993015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043087, 38.036961, 40.574646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684444, 37.860825, 40.593353>,  <33.469257, 37.755142, 40.604580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684444, 37.860825, 40.593353>,  <34.043087, 38.036961, 40.574646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684444, 37.860825, 40.593353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082766, 0.270406, 0.959182,
		-0.435015, 0.856142, -0.278895,
		-0.896611, -0.440342, 0.046771,
		33.415462, 37.728722, 40.607384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573864, 38.495201, 41.040249>,  <34.043087, 38.036961, 40.574646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573864, 38.495201, 41.040249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480053, 38.106430, 41.032791>,  <33.423767, 37.873165, 41.028316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480053, 38.106430, 41.032791>,  <33.573864, 38.495201, 41.040249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480053, 38.106430, 41.032791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018830, -0.014638, 0.999715,
		-0.971927, 0.234813, -0.014869,
		-0.234529, -0.971930, -0.018649,
		33.409695, 37.814850, 41.027195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036518, 38.479889, 41.602310>,  <33.573864, 38.495201, 41.040249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036518, 38.479889, 41.602310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223991, 38.131870, 41.541180>,  <33.336475, 37.923061, 41.504501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223991, 38.131870, 41.541180>,  <33.036518, 38.479889, 41.602310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223991, 38.131870, 41.541180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175156, -0.078044, 0.981442,
		-0.865826, -0.486757, 0.115816,
		0.468685, -0.870044, -0.152831,
		33.364597, 37.870857, 41.495331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755520, 38.083321, 42.181221>,  <33.036518, 38.479889, 41.602310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755520, 38.083321, 42.181221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072956, 37.887947, 42.036087>,  <33.263416, 37.770721, 41.949009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072956, 37.887947, 42.036087>,  <32.755520, 38.083321, 42.181221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072956, 37.887947, 42.036087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361448, -0.101261, 0.926877,
		-0.489460, -0.866705, 0.096184,
		0.793590, -0.488435, -0.362832,
		33.311031, 37.741417, 41.927238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813782, 37.485374, 42.607899>,  <32.755520, 38.083321, 42.181221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813782, 37.485374, 42.607899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172321, 37.522118, 42.434406>,  <33.387444, 37.544163, 42.330311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172321, 37.522118, 42.434406>,  <32.813782, 37.485374, 42.607899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172321, 37.522118, 42.434406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442675, -0.131539, 0.886981,
		0.024420, -0.987046, -0.158567,
		0.896350, 0.091854, -0.433729,
		33.441227, 37.549675, 42.304287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227158, 36.842216, 42.778679>,  <32.813782, 37.485374, 42.607899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227158, 36.842216, 42.778679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450581, 37.165142, 42.702507>,  <33.584633, 37.358898, 42.656803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450581, 37.165142, 42.702507>,  <33.227158, 36.842216, 42.778679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450581, 37.165142, 42.702507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410102, -0.069224, 0.909409,
		0.720994, -0.586050, -0.369745,
		0.558555, 0.807312, -0.190430,
		33.618149, 37.407337, 42.645378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825798, 36.682293, 43.021568>,  <33.227158, 36.842216, 42.778679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825798, 36.682293, 43.021568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848030, 37.081184, 43.001751>,  <33.861370, 37.320518, 42.989861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848030, 37.081184, 43.001751>,  <33.825798, 36.682293, 43.021568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848030, 37.081184, 43.001751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479434, 0.016864, 0.877416,
		0.875816, -0.072521, -0.477166,
		0.055584, 0.997224, -0.049539,
		33.864704, 37.380352, 42.986889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401665, 36.846218, 43.351269>,  <33.825798, 36.682293, 43.021568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401665, 36.846218, 43.351269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262283, 37.220562, 43.330322>,  <34.178654, 37.445168, 43.317757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262283, 37.220562, 43.330322>,  <34.401665, 36.846218, 43.351269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262283, 37.220562, 43.330322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498833, 0.232451, 0.834944,
		0.793565, 0.264819, -0.547838,
		-0.348455, 0.935862, -0.052364,
		34.157745, 37.501320, 43.314613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991127, 37.303543, 43.533821>,  <34.401665, 36.846218, 43.351269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991127, 37.303543, 43.533821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639919, 37.483383, 43.599483>,  <34.429195, 37.591286, 43.638882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639919, 37.483383, 43.599483>,  <34.991127, 37.303543, 43.533821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639919, 37.483383, 43.599483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314909, 0.284358, 0.905524,
		0.360444, 0.846758, -0.391254,
		-0.878016, 0.449600, 0.164156,
		34.376514, 37.618263, 43.648731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086964, 37.963211, 43.743515>,  <34.991127, 37.303543, 43.533821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086964, 37.963211, 43.743515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732307, 37.860992, 43.897690>,  <34.519512, 37.799664, 43.990196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732307, 37.860992, 43.897690>,  <35.086964, 37.963211, 43.743515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732307, 37.860992, 43.897690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317061, 0.270841, 0.908910,
		-0.336658, 0.928086, -0.159117,
		-0.886642, -0.255542, 0.385441,
		34.466316, 37.784328, 44.013321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892593, 38.543182, 44.357319>,  <35.086964, 37.963211, 43.743515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892593, 38.543182, 44.357319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674843, 38.214844, 44.426437>,  <34.544193, 38.017838, 44.467907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674843, 38.214844, 44.426437>,  <34.892593, 38.543182, 44.357319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674843, 38.214844, 44.426437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000108, 0.206059, 0.978539,
		-0.838841, 0.532675, -0.112263,
		-0.544376, -0.820851, 0.172794,
		34.511532, 37.968590, 44.478275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397388, 38.776821, 44.755249>,  <34.892593, 38.543182, 44.357319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397388, 38.776821, 44.755249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422680, 38.382164, 44.815289>,  <34.437855, 38.145370, 44.851311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422680, 38.382164, 44.815289>,  <34.397388, 38.776821, 44.755249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422680, 38.382164, 44.815289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030285, 0.148433, 0.988459,
		-0.997539, -0.067043, -0.020495,
		0.063227, -0.986647, 0.150098,
		34.441647, 38.086170, 44.860317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986732, 38.661068, 45.327995>,  <34.397388, 38.776821, 44.755249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986732, 38.661068, 45.327995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183853, 38.313995, 45.301842>,  <34.302124, 38.105751, 45.286148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183853, 38.313995, 45.301842>,  <33.986732, 38.661068, 45.327995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183853, 38.313995, 45.301842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088730, -0.024641, 0.995751,
		-0.865605, -0.496510, 0.064846,
		0.492803, -0.867681, -0.065385,
		34.331696, 38.053692, 45.282227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672054, 38.205032, 45.775398>,  <33.986732, 38.661068, 45.327995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672054, 38.205032, 45.775398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050041, 38.075466, 45.757000>,  <34.276833, 37.997726, 45.745960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050041, 38.075466, 45.757000>,  <33.672054, 38.205032, 45.775398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050041, 38.075466, 45.757000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093007, 0.131176, 0.986987,
		-0.313670, -0.936947, 0.154084,
		0.944966, -0.323919, -0.045997,
		34.333530, 37.978291, 45.743202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696198, 37.726711, 46.376972>,  <33.672054, 38.205032, 45.775398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696198, 37.726711, 46.376972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069721, 37.812183, 46.262196>,  <34.293835, 37.863464, 46.193329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069721, 37.812183, 46.262196>,  <33.696198, 37.726711, 46.376972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069721, 37.812183, 46.262196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271912, 0.097359, 0.957384,
		0.232510, -0.972040, 0.032814,
		0.933811, 0.213679, -0.286946,
		34.349865, 37.876286, 46.176113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140556, 37.186741, 46.660213>,  <33.696198, 37.726711, 46.376972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140556, 37.186741, 46.660213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386074, 37.498272, 46.608559>,  <34.533386, 37.685192, 46.577568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386074, 37.498272, 46.608559>,  <34.140556, 37.186741, 46.660213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386074, 37.498272, 46.608559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420510, -0.184102, 0.888413,
		0.668150, -0.599608, -0.440507,
		0.613798, 0.778831, -0.129133,
		34.570213, 37.731922, 46.569820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778652, 37.014046, 46.936123>,  <34.140556, 37.186741, 46.660213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778652, 37.014046, 46.936123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804161, 37.413200, 46.931183>,  <34.819466, 37.652695, 46.928219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804161, 37.413200, 46.931183>,  <34.778652, 37.014046, 46.936123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804161, 37.413200, 46.931183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341065, -0.010162, 0.939985,
		0.937875, -0.064154, -0.340992,
		0.063769, 0.997888, -0.012351,
		34.823292, 37.712566, 46.927479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464676, 37.121590, 47.233883>,  <34.778652, 37.014046, 46.936123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464676, 37.121590, 47.233883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276005, 37.472797, 47.266399>,  <35.162804, 37.683521, 47.285908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276005, 37.472797, 47.266399>,  <35.464676, 37.121590, 47.233883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276005, 37.472797, 47.266399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511681, 0.197464, 0.836176,
		0.718124, 0.436000, -0.542404,
		-0.471678, 0.878016, 0.081289,
		35.134502, 37.736202, 47.290787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009357, 37.679974, 47.196415>,  <35.464676, 37.121590, 47.233883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009357, 37.679974, 47.196415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676109, 37.821129, 47.366776>,  <35.476162, 37.905823, 47.468990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676109, 37.821129, 47.366776>,  <36.009357, 37.679974, 47.196415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676109, 37.821129, 47.366776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487833, 0.105947, 0.866484,
		0.260646, 0.929649, -0.260415,
		-0.833116, 0.352885, 0.425899,
		35.426174, 37.926994, 47.494545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215324, 38.203396, 47.659225>,  <36.009357, 37.679974, 47.196415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215324, 38.203396, 47.659225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852039, 38.129280, 47.809326>,  <35.634068, 38.084812, 47.899387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852039, 38.129280, 47.809326>,  <36.215324, 38.203396, 47.659225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852039, 38.129280, 47.809326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302462, 0.329098, 0.894545,
		-0.289241, 0.925939, -0.242850,
		-0.908216, -0.185286, 0.375250,
		35.579575, 38.073696, 47.921902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012424, 38.825512, 48.052284>,  <36.215324, 38.203396, 47.659225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012424, 38.825512, 48.052284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823334, 38.495319, 48.175640>,  <35.709877, 38.297203, 48.249653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823334, 38.495319, 48.175640>,  <36.012424, 38.825512, 48.052284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823334, 38.495319, 48.175640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383329, 0.122480, 0.915455,
		-0.793464, 0.550978, 0.258531,
		-0.472730, -0.825483, 0.308389,
		35.681515, 38.247673, 48.268158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894157, 38.947926, 48.728664>,  <36.012424, 38.825512, 48.052284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894157, 38.947926, 48.728664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793545, 38.560787, 48.727295>,  <35.733177, 38.328506, 48.726475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793545, 38.560787, 48.727295>,  <35.894157, 38.947926, 48.728664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793545, 38.560787, 48.727295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380966, -0.102260, 0.918917,
		-0.889717, 0.229834, 0.394437,
		-0.251533, -0.967843, -0.003423,
		35.718086, 38.270435, 48.726269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739101, 38.979362, 49.320446>,  <35.894157, 38.947926, 48.728664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739101, 38.979362, 49.320446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742668, 38.585865, 49.248707>,  <35.744808, 38.349766, 49.205666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742668, 38.585865, 49.248707>,  <35.739101, 38.979362, 49.320446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742668, 38.585865, 49.248707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345150, -0.165304, 0.923876,
		-0.938505, -0.070136, 0.338066,
		0.008914, -0.983746, -0.179346,
		35.745342, 38.290741, 49.194904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203888, 38.500389, 49.812672>,  <35.739101, 38.979362, 49.320446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203888, 38.500389, 49.812672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518196, 38.295654, 49.673767>,  <35.706779, 38.172813, 49.590424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518196, 38.295654, 49.673767>,  <35.203888, 38.500389, 49.812672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518196, 38.295654, 49.673767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335383, -0.119151, 0.934517,
		-0.519697, -0.850779, 0.078036,
		0.785769, -0.511838, -0.347259,
		35.753925, 38.142101, 49.569588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202003, 37.915104, 50.205605>,  <35.203888, 38.500389, 49.812672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202003, 37.915104, 50.205605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577572, 37.901287, 50.068649>,  <35.802914, 37.892998, 49.986477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577572, 37.901287, 50.068649>,  <35.202003, 37.915104, 50.205605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577572, 37.901287, 50.068649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333442, -0.154659, 0.929998,
		-0.085076, -0.987364, -0.133696,
		0.938924, -0.034541, -0.342387,
		35.859249, 37.890923, 49.965935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604855, 37.727486, 50.807930>,  <35.202003, 37.915104, 50.205605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604855, 37.727486, 50.807930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903481, 37.714474, 50.542122>,  <36.082657, 37.706665, 50.382637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903481, 37.714474, 50.542122>,  <35.604855, 37.727486, 50.807930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903481, 37.714474, 50.542122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611760, -0.359044, 0.704867,
		-0.261520, -0.932754, -0.248149,
		0.746563, -0.032529, -0.664519,
		36.127449, 37.704716, 50.342766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832325, 37.015606, 50.620617>,  <35.604855, 37.727486, 50.807930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832325, 37.015606, 50.620617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159351, 37.242760, 50.582466>,  <36.355568, 37.379051, 50.559574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159351, 37.242760, 50.582466>,  <35.832325, 37.015606, 50.620617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159351, 37.242760, 50.582466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442454, -0.513495, 0.735226,
		0.368547, -0.643295, -0.671077,
		0.817562, 0.567887, -0.095381,
		36.404621, 37.413124, 50.553852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336964, 36.634102, 50.789188>,  <35.832325, 37.015606, 50.620617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336964, 36.634102, 50.789188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501694, 36.996925, 50.824181>,  <36.600533, 37.214619, 50.845177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501694, 36.996925, 50.824181>,  <36.336964, 36.634102, 50.789188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501694, 36.996925, 50.824181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515922, -0.311213, 0.798105,
		0.751149, -0.283547, -0.596135,
		0.411825, 0.907054, 0.087479,
		36.625240, 37.269043, 50.850426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065186, 36.537369, 51.073059>,  <36.336964, 36.634102, 50.789188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065186, 36.537369, 51.073059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969864, 36.921059, 51.133846>,  <36.912670, 37.151272, 51.170319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969864, 36.921059, 51.133846>,  <37.065186, 36.537369, 51.073059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969864, 36.921059, 51.133846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130379, -0.123461, 0.983747,
		0.962399, 0.254244, -0.095642,
		-0.238303, 0.959228, 0.151967,
		36.898373, 37.208828, 51.179436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653839, 36.755821, 51.422638>,  <37.065186, 36.537369, 51.073059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653839, 36.755821, 51.422638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357216, 37.005802, 51.520233>,  <37.179241, 37.155792, 51.578789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357216, 37.005802, 51.520233>,  <37.653839, 36.755821, 51.422638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357216, 37.005802, 51.520233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214669, -0.123521, 0.968845,
		0.635622, 0.770826, -0.042561,
		-0.741553, 0.624956, 0.243985,
		37.134750, 37.193291, 51.593430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972263, 37.206001, 51.996052>,  <37.653839, 36.755821, 51.422638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972263, 37.206001, 51.996052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573032, 37.224174, 52.012913>,  <37.333492, 37.235077, 52.023029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573032, 37.224174, 52.012913>,  <37.972263, 37.206001, 51.996052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573032, 37.224174, 52.012913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031910, -0.206399, 0.977947,
		0.053129, 0.977413, 0.204552,
		-0.998078, 0.045430, 0.042155,
		37.273609, 37.237804, 52.025558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934448, 37.558231, 52.541618>,  <37.972263, 37.206001, 51.996052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934448, 37.558231, 52.541618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566845, 37.403664, 52.510353>,  <37.346283, 37.310925, 52.491596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566845, 37.403664, 52.510353>,  <37.934448, 37.558231, 52.541618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566845, 37.403664, 52.510353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024455, -0.253747, 0.966962,
		-0.393483, 0.886733, 0.242645,
		-0.919007, -0.386416, -0.078160,
		37.291142, 37.287739, 52.486904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316750, 37.832397, 53.071003>,  <37.934448, 37.558231, 52.541618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316750, 37.832397, 53.071003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280407, 37.457714, 52.935760>,  <37.258602, 37.232903, 52.854614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280407, 37.457714, 52.935760>,  <37.316750, 37.832397, 53.071003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280407, 37.457714, 52.935760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149209, -0.348485, 0.925362,
		-0.984622, 0.033630, 0.171429,
		-0.090860, -0.936711, -0.338108,
		37.253151, 37.176701, 52.834328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723801, 37.395302, 53.382446>,  <37.316750, 37.832397, 53.071003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723801, 37.395302, 53.382446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027840, 37.156200, 53.280502>,  <37.210262, 37.012741, 53.219337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027840, 37.156200, 53.280502>,  <36.723801, 37.395302, 53.382446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027840, 37.156200, 53.280502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008325, -0.383207, 0.923625,
		-0.649761, -0.704162, -0.286297,
		0.760093, -0.597752, -0.254855,
		37.255867, 36.976875, 53.204044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656689, 36.709805, 53.654785>,  <36.723801, 37.395302, 53.382446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656689, 36.709805, 53.654785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052940, 36.746048, 53.613888>,  <37.290691, 36.767792, 53.589352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052940, 36.746048, 53.613888>,  <36.656689, 36.709805, 53.654785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052940, 36.746048, 53.613888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128705, -0.368119, 0.920828,
		0.045795, -0.925354, -0.376329,
		0.990625, 0.090605, -0.102240,
		37.350128, 36.773228, 53.583218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976154, 35.912891, 53.685028>,  <36.656689, 36.709805, 53.654785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976154, 35.912891, 53.685028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220036, 36.214573, 53.782547>,  <37.366364, 36.395580, 53.841061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220036, 36.214573, 53.782547>,  <36.976154, 35.912891, 53.685028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220036, 36.214573, 53.782547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037476, -0.334671, 0.941590,
		0.791740, -0.564957, -0.232316,
		0.609707, 0.754201, 0.243800,
		37.402946, 36.440834, 53.855686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763733, 35.691788, 53.936623>,  <36.976154, 35.912891, 53.685028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763733, 35.691788, 53.936623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613728, 36.032494, 54.082973>,  <37.523724, 36.236916, 54.170784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613728, 36.032494, 54.082973>,  <37.763733, 35.691788, 53.936623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613728, 36.032494, 54.082973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211120, -0.305837, 0.928381,
		0.902658, 0.425402, -0.065130,
		-0.375016, 0.851761, 0.365877,
		37.501225, 36.288021, 54.192738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442589, 35.787601, 54.262424>,  <37.763733, 35.691788, 53.936623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442589, 35.787601, 54.262424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195107, 35.945419, 54.534172>,  <38.046619, 36.040112, 54.697220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195107, 35.945419, 54.534172>,  <38.442589, 35.787601, 54.262424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195107, 35.945419, 54.534172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290085, -0.688908, 0.664272,
		0.730108, 0.608061, 0.311777,
		-0.618703, 0.394548, 0.679366,
		38.009495, 36.063786, 54.737984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161850, 35.865204, 54.639713>,  <38.442589, 35.787601, 54.262424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161850, 35.865204, 54.639713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857098, 35.778595, 54.883896>,  <38.674248, 35.726627, 55.030407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857098, 35.778595, 54.883896>,  <39.161850, 35.865204, 54.639713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857098, 35.778595, 54.883896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614058, 0.541322, -0.574373,
		-0.206087, -0.812458, -0.545381,
		-0.761880, -0.216525, 0.610455,
		38.628532, 35.713638, 55.067032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651142, 35.637867, 54.110397>,  <39.161850, 35.865204, 54.639713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651142, 35.637867, 54.110397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831558, 35.960644, 53.957870>,  <39.939808, 36.154308, 53.866356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831558, 35.960644, 53.957870>,  <39.651142, 35.637867, 54.110397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831558, 35.960644, 53.957870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425239, -0.569935, -0.703097,
		-0.784685, 0.154976, -0.600209,
		0.451044, 0.806943, -0.381318,
		39.966873, 36.202728, 53.843475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522198, 35.570751, 53.385487>,  <39.651142, 35.637867, 54.110397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522198, 35.570751, 53.385487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864719, 35.757641, 53.473518>,  <40.070232, 35.869774, 53.526337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864719, 35.757641, 53.473518>,  <39.522198, 35.570751, 53.385487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864719, 35.757641, 53.473518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495005, -0.620911, -0.607816,
		-0.147337, 0.629419, -0.762970,
		0.856307, 0.467227, 0.220082,
		40.121613, 35.897808, 53.539543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825596, 35.162479, 53.076817>,  <39.522198, 35.570751, 53.385487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825596, 35.162479, 53.076817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570778, 35.447823, 52.959988>,  <38.417889, 35.619026, 52.889893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570778, 35.447823, 52.959988>,  <38.825596, 35.162479, 53.076817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570778, 35.447823, 52.959988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577618, -0.190870, 0.793679,
		0.510427, 0.674311, 0.533638,
		-0.637042, 0.713354, -0.292069,
		38.379665, 35.661827, 52.872368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304184, 34.660038, 53.083824>,  <38.825596, 35.162479, 53.076817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304184, 34.660038, 53.083824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935333, 34.717579, 53.227482>,  <37.714024, 34.752102, 53.313675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935333, 34.717579, 53.227482>,  <38.304184, 34.660038, 53.083824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935333, 34.717579, 53.227482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347968, 0.097353, -0.932438,
		-0.169096, -0.984799, -0.039717,
		-0.922131, 0.143851, 0.359140,
		37.658695, 34.760735, 53.335224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798656, 34.118092, 52.929245>,  <38.304184, 34.660038, 53.083824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798656, 34.118092, 52.929245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613995, 34.472908, 52.931942>,  <37.503197, 34.685799, 52.933559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613995, 34.472908, 52.931942>,  <37.798656, 34.118092, 52.929245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613995, 34.472908, 52.931942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386973, -0.194547, -0.901334,
		-0.798205, -0.418710, 0.433072,
		-0.461650, 0.887037, 0.006742,
		37.475498, 34.739017, 52.933964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006908, 34.110352, 52.710052>,  <37.798656, 34.118092, 52.929245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006908, 34.110352, 52.710052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153034, 34.475357, 52.636448>,  <37.240711, 34.694359, 52.592285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153034, 34.475357, 52.636448>,  <37.006908, 34.110352, 52.710052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153034, 34.475357, 52.636448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300116, -0.071663, -0.951207,
		-0.881177, 0.402717, 0.247680,
		0.365318, 0.912515, -0.184010,
		37.262630, 34.749111, 52.581245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487690, 34.504025, 52.438736>,  <37.006908, 34.110352, 52.710052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487690, 34.504025, 52.438736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819885, 34.675507, 52.296474>,  <37.019203, 34.778397, 52.211117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819885, 34.675507, 52.296474>,  <36.487690, 34.504025, 52.438736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819885, 34.675507, 52.296474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342583, -0.110354, -0.932984,
		-0.439227, 0.896677, 0.055221,
		0.830492, 0.428709, -0.355656,
		37.069035, 34.804119, 52.189777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247063, 34.908169, 51.949661>,  <36.487690, 34.504025, 52.438736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247063, 34.908169, 51.949661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631512, 34.876198, 51.843933>,  <36.862179, 34.857018, 51.780495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631512, 34.876198, 51.843933>,  <36.247063, 34.908169, 51.949661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631512, 34.876198, 51.843933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254708, 0.113130, -0.960378,
		0.106659, 0.990361, 0.088374,
		0.961118, -0.079923, -0.264319,
		36.919846, 34.852222, 51.764637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266209, 35.304787, 51.302658>,  <36.247063, 34.908169, 51.949661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266209, 35.304787, 51.302658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601910, 35.087887, 51.318771>,  <36.803329, 34.957745, 51.328438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601910, 35.087887, 51.318771>,  <36.266209, 35.304787, 51.302658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601910, 35.087887, 51.318771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010451, -0.090150, -0.995873,
		0.543646, 0.835365, -0.081325,
		0.839249, -0.542253, 0.040279,
		36.853683, 34.925209, 51.330856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746952, 35.617874, 50.810310>,  <36.266209, 35.304787, 51.302658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746952, 35.617874, 50.810310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825867, 35.232185, 50.881138>,  <36.873215, 35.000771, 50.923634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825867, 35.232185, 50.881138>,  <36.746952, 35.617874, 50.810310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825867, 35.232185, 50.881138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003681, -0.181348, -0.983412,
		0.980340, 0.193358, -0.039326,
		0.197282, -0.964223, 0.177071,
		36.885052, 34.942917, 50.934258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324440, 35.428833, 50.303364>,  <36.746952, 35.617874, 50.810310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324440, 35.428833, 50.303364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101948, 35.112465, 50.405384>,  <36.968452, 34.922646, 50.466599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101948, 35.112465, 50.405384>,  <37.324440, 35.428833, 50.303364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101948, 35.112465, 50.405384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099104, -0.241594, -0.965303,
		0.825095, -0.562212, 0.056000,
		-0.556234, -0.790917, 0.255055,
		36.935078, 34.875191, 50.481899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544521, 35.017471, 49.775684>,  <37.324440, 35.428833, 50.303364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544521, 35.017471, 49.775684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227448, 34.824200, 49.924381>,  <37.037205, 34.708237, 50.013599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227448, 34.824200, 49.924381>,  <37.544521, 35.017471, 49.775684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227448, 34.824200, 49.924381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166036, -0.415616, -0.894257,
		0.586589, -0.770584, 0.249226,
		-0.792683, -0.483180, 0.371741,
		36.989643, 34.679245, 50.035904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619511, 34.312511, 49.555214>,  <37.544521, 35.017471, 49.775684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619511, 34.312511, 49.555214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229748, 34.368523, 49.625553>,  <36.995892, 34.402130, 49.667755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229748, 34.368523, 49.625553>,  <37.619511, 34.312511, 49.555214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229748, 34.368523, 49.625553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212422, -0.317726, -0.924082,
		-0.073523, -0.937786, 0.339339,
		-0.974408, 0.140025, 0.175846,
		36.937424, 34.410530, 49.678307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347198, 33.674877, 49.327759>,  <37.619511, 34.312511, 49.555214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347198, 33.674877, 49.327759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042583, 33.933868, 49.339275>,  <36.859814, 34.089264, 49.346184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042583, 33.933868, 49.339275>,  <37.347198, 33.674877, 49.327759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042583, 33.933868, 49.339275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261927, -0.266830, -0.927468,
		-0.592831, -0.713847, 0.372793,
		-0.761542, 0.647476, 0.028791,
		36.814121, 34.128113, 49.347912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850094, 33.356754, 49.021137>,  <37.347198, 33.674877, 49.327759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850094, 33.356754, 49.021137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727787, 33.736115, 48.987591>,  <36.654404, 33.963730, 48.967464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727787, 33.736115, 48.987591>,  <36.850094, 33.356754, 49.021137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727787, 33.736115, 48.987591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237174, -0.161182, -0.958003,
		-0.922091, -0.273038, 0.274222,
		-0.305771, 0.948404, -0.083867,
		36.636055, 34.020638, 48.962429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241570, 33.303062, 48.760941>,  <36.850094, 33.356754, 49.021137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241570, 33.303062, 48.760941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369705, 33.672363, 48.676102>,  <36.446587, 33.893944, 48.625198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369705, 33.672363, 48.676102>,  <36.241570, 33.303062, 48.760941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369705, 33.672363, 48.676102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369419, -0.084421, -0.925421,
		-0.872302, 0.374804, 0.314023,
		0.320341, 0.923252, -0.212100,
		36.465809, 33.949341, 48.612473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673489, 33.629078, 48.434727>,  <36.241570, 33.303062, 48.760941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673489, 33.629078, 48.434727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977955, 33.851707, 48.301552>,  <36.160637, 33.985287, 48.221645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977955, 33.851707, 48.301552>,  <35.673489, 33.629078, 48.434727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977955, 33.851707, 48.301552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489688, 0.156614, -0.857717,
		-0.425240, 0.815903, 0.391757,
		0.761168, 0.556574, -0.332940,
		36.206306, 34.018681, 48.201672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367188, 34.094330, 48.012852>,  <35.673489, 33.629078, 48.434727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367188, 34.094330, 48.012852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752056, 34.129501, 47.909710>,  <35.982979, 34.150604, 47.847824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752056, 34.129501, 47.909710>,  <35.367188, 34.094330, 48.012852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752056, 34.129501, 47.909710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255631, -0.035888, -0.966108,
		-0.094206, 0.995480, -0.012052,
		0.962174, 0.087932, -0.257856,
		36.040707, 34.155880, 47.832352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459412, 34.595047, 47.443260>,  <35.367188, 34.094330, 48.012852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459412, 34.595047, 47.443260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777702, 34.353062, 47.431694>,  <35.968678, 34.207870, 47.424755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777702, 34.353062, 47.431694>,  <35.459412, 34.595047, 47.443260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777702, 34.353062, 47.431694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105034, -0.090816, -0.990313,
		0.596474, 0.791060, -0.135807,
		0.795730, -0.604960, -0.028919,
		36.016422, 34.171574, 47.423019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944828, 34.933998, 46.966984>,  <35.459412, 34.595047, 47.443260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944828, 34.933998, 46.966984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951416, 34.536011, 47.006519>,  <35.955368, 34.297218, 47.030239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951416, 34.536011, 47.006519>,  <35.944828, 34.933998, 46.966984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951416, 34.536011, 47.006519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426730, -0.096392, -0.899228,
		0.904229, -0.027370, -0.426170,
		0.016467, -0.994967, 0.098840,
		35.956356, 34.237522, 47.036171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159370, 34.675320, 46.296455>,  <35.944828, 34.933998, 46.966984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159370, 34.675320, 46.296455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042091, 34.328846, 46.458324>,  <35.971722, 34.120960, 46.555447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042091, 34.328846, 46.458324>,  <36.159370, 34.675320, 46.296455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042091, 34.328846, 46.458324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343281, -0.299665, -0.890146,
		0.892296, -0.399907, -0.209482,
		-0.293201, -0.866184, 0.404670,
		35.954132, 34.068989, 46.579727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479591, 34.207390, 45.993660>,  <36.159370, 34.675320, 46.296455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479591, 34.207390, 45.993660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159065, 34.008125, 46.126167>,  <35.966751, 33.888569, 46.205669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159065, 34.008125, 46.126167>,  <36.479591, 34.207390, 45.993660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159065, 34.008125, 46.126167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068614, -0.473546, -0.878093,
		0.594300, -0.726355, 0.345277,
		-0.801311, -0.498159, 0.331266,
		35.918671, 33.858677, 46.225548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639648, 33.448490, 46.034210>,  <36.479591, 34.207390, 45.993660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639648, 33.448490, 46.034210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242512, 33.489464, 46.009621>,  <36.004230, 33.514046, 45.994869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242512, 33.489464, 46.009621>,  <36.639648, 33.448490, 46.034210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242512, 33.489464, 46.009621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010271, -0.439476, -0.898195,
		-0.119017, -0.892395, 0.435277,
		-0.992839, 0.102430, -0.061471,
		35.944660, 33.520191, 45.991180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395550, 32.854149, 45.692951>,  <36.639648, 33.448490, 46.034210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395550, 32.854149, 45.692951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067337, 33.079975, 45.657204>,  <35.870407, 33.215473, 45.635754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067337, 33.079975, 45.657204>,  <36.395550, 32.854149, 45.692951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067337, 33.079975, 45.657204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190413, -0.417396, -0.888551,
		-0.538952, -0.712068, 0.449989,
		-0.820532, 0.564570, -0.089369,
		35.821178, 33.249348, 45.630394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960766, 32.462070, 45.345119>,  <36.395550, 32.854149, 45.692951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960766, 32.462070, 45.345119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805851, 32.824516, 45.277039>,  <35.712902, 33.041985, 45.236191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805851, 32.824516, 45.277039>,  <35.960766, 32.462070, 45.345119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805851, 32.824516, 45.277039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244204, -0.278831, -0.928772,
		-0.889030, -0.318137, 0.329264,
		-0.387286, 0.906114, -0.170199,
		35.689667, 33.096352, 45.225979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271698, 32.331230, 45.050156>,  <35.960766, 32.462070, 45.345119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271698, 32.331230, 45.050156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376644, 32.706375, 44.959320>,  <35.439613, 32.931461, 44.904819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376644, 32.706375, 44.959320>,  <35.271698, 32.331230, 45.050156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376644, 32.706375, 44.959320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456799, -0.086583, -0.885347,
		-0.849999, 0.336020, 0.405700,
		0.262367, 0.937867, -0.227089,
		35.455353, 32.987736, 44.891193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729488, 32.570538, 44.623829>,  <35.271698, 32.331230, 45.050156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729488, 32.570538, 44.623829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019951, 32.839821, 44.567989>,  <35.194229, 33.001392, 44.534485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019951, 32.839821, 44.567989>,  <34.729488, 32.570538, 44.623829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019951, 32.839821, 44.567989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421190, 0.275102, -0.864244,
		-0.543417, 0.686370, 0.483316,
		0.726152, 0.673213, -0.139597,
		35.237797, 33.041786, 44.526112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412674, 33.222965, 44.623062>,  <34.729488, 32.570538, 44.623829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412674, 33.222965, 44.623062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751377, 33.199242, 44.411598>,  <34.954601, 33.185009, 44.284721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751377, 33.199242, 44.411598>,  <34.412674, 33.222965, 44.623062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751377, 33.199242, 44.411598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516611, 0.145409, -0.843783,
		0.126914, 0.987593, 0.092487,
		0.846762, -0.059308, -0.528655,
		35.005405, 33.181450, 44.253002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366493, 33.868023, 44.020523>,  <34.412674, 33.222965, 44.623062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366493, 33.868023, 44.020523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676846, 33.649055, 43.895081>,  <34.863056, 33.517673, 43.819817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676846, 33.649055, 43.895081>,  <34.366493, 33.868023, 44.020523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676846, 33.649055, 43.895081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278766, 0.148448, -0.948816,
		0.565956, 0.823586, -0.037425,
		0.775876, -0.547421, -0.313603,
		34.909607, 33.484829, 43.800999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757805, 34.295658, 43.535427>,  <34.366493, 33.868023, 44.020523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757805, 34.295658, 43.535427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844799, 33.913403, 43.455967>,  <34.896996, 33.684052, 43.408291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844799, 33.913403, 43.455967>,  <34.757805, 34.295658, 43.535427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844799, 33.913403, 43.455967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162198, 0.165308, -0.972813,
		0.962493, 0.243791, -0.119050,
		0.217483, -0.955636, -0.198650,
		34.910046, 33.626713, 43.396374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194073, 34.279354, 42.885448>,  <34.757805, 34.295658, 43.535427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194073, 34.279354, 42.885448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039677, 33.911831, 42.918446>,  <34.947037, 33.691319, 42.938244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039677, 33.911831, 42.918446>,  <35.194073, 34.279354, 42.885448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039677, 33.911831, 42.918446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211279, 0.001004, -0.977425,
		0.897981, -0.394708, -0.194512,
		-0.385993, -0.918806, 0.082492,
		34.923878, 33.636189, 42.943192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477493, 34.039173, 42.340733>,  <35.194073, 34.279354, 42.885448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477493, 34.039173, 42.340733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160019, 33.812084, 42.428135>,  <34.969532, 33.675831, 42.480576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160019, 33.812084, 42.428135>,  <35.477493, 34.039173, 42.340733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160019, 33.812084, 42.428135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325058, 0.092183, -0.941191,
		0.514194, -0.818041, -0.257708,
		-0.793689, -0.567725, 0.218510,
		34.921913, 33.641766, 42.493687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460247, 33.414665, 41.882980>,  <35.477493, 34.039173, 42.340733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460247, 33.414665, 41.882980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084888, 33.472321, 42.008602>,  <34.859673, 33.506912, 42.083977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084888, 33.472321, 42.008602>,  <35.460247, 33.414665, 41.882980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084888, 33.472321, 42.008602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310129, 0.049562, -0.949402,
		-0.152410, -0.988316, -0.001807,
		-0.938398, 0.144138, 0.314059,
		34.803368, 33.515560, 42.102821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029465, 33.078308, 41.357830>,  <35.460247, 33.414665, 41.882980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029465, 33.078308, 41.357830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778667, 33.319149, 41.555561>,  <34.628189, 33.463654, 41.674198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778667, 33.319149, 41.555561>,  <35.029465, 33.078308, 41.357830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778667, 33.319149, 41.555561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431528, 0.259863, -0.863860,
		-0.648586, -0.754949, 0.096890,
		-0.626992, 0.602099, 0.494325,
		34.590569, 33.499779, 41.703857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317818, 32.940453, 41.131596>,  <35.029465, 33.078308, 41.357830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317818, 32.940453, 41.131596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268734, 33.299854, 41.300186>,  <34.239285, 33.515495, 41.401340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268734, 33.299854, 41.300186>,  <34.317818, 32.940453, 41.131596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268734, 33.299854, 41.300186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545618, 0.293669, -0.784894,
		-0.829002, -0.326277, 0.454202,
		-0.122708, 0.898500, 0.421474,
		34.231922, 33.569405, 41.426628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536335, 33.196365, 41.084133>,  <34.317818, 32.940453, 41.131596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536335, 33.196365, 41.084133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704525, 33.552425, 41.154377>,  <33.805439, 33.766060, 41.196522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704525, 33.552425, 41.154377>,  <33.536335, 33.196365, 41.084133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704525, 33.552425, 41.154377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654322, 0.431584, -0.620966,
		-0.628539, 0.146200, 0.763914,
		0.420478, 0.890147, 0.175606,
		33.830669, 33.819469, 41.207058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923019, 33.641407, 41.211014>,  <33.536335, 33.196365, 41.084133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923019, 33.641407, 41.211014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233200, 33.878132, 41.122990>,  <33.419308, 34.020168, 41.070175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233200, 33.878132, 41.122990>,  <32.923019, 33.641407, 41.211014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233200, 33.878132, 41.122990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549376, 0.460619, -0.697148,
		-0.311220, 0.661502, 0.682318,
		0.775454, 0.591815, -0.220059,
		33.465836, 34.055676, 41.056973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560894, 34.261639, 41.110157>,  <32.923019, 33.641407, 41.211014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560894, 34.261639, 41.110157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932339, 34.293255, 40.965145>,  <33.155205, 34.312225, 40.878139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932339, 34.293255, 40.965145>,  <32.560894, 34.261639, 41.110157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932339, 34.293255, 40.965145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356632, 0.459784, -0.813273,
		0.102406, 0.884507, 0.455149,
		0.928616, 0.079037, -0.362528,
		33.210922, 34.316967, 40.856388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519608, 34.853207, 40.850677>,  <32.560894, 34.261639, 41.110157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519608, 34.853207, 40.850677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837349, 34.687401, 40.673058>,  <33.027996, 34.587917, 40.566486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837349, 34.687401, 40.673058>,  <32.519608, 34.853207, 40.850677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837349, 34.687401, 40.673058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278013, 0.401866, -0.872475,
		0.540100, 0.816506, 0.203985,
		0.794355, -0.414513, -0.444048,
		33.075657, 34.563046, 40.539845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864952, 35.400600, 40.351925>,  <32.519608, 34.853207, 40.850677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864952, 35.400600, 40.351925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965134, 35.022312, 40.269089>,  <33.025242, 34.795338, 40.219387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965134, 35.022312, 40.269089>,  <32.864952, 35.400600, 40.351925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965134, 35.022312, 40.269089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400482, 0.093537, -0.911518,
		0.881412, 0.311229, -0.355317,
		0.250455, -0.945721, -0.207086,
		33.040272, 34.738594, 40.206963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959370, 35.347061, 39.638664>,  <32.864952, 35.400600, 40.351925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959370, 35.347061, 39.638664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917480, 34.960262, 39.731564>,  <32.892345, 34.728184, 39.787304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917480, 34.960262, 39.731564>,  <32.959370, 35.347061, 39.638664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917480, 34.960262, 39.731564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140225, -0.216844, -0.966083,
		0.984566, -0.133740, -0.112889,
		-0.104725, -0.967001, 0.232251,
		32.886063, 34.670162, 39.801239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370110, 34.990818, 39.153641>,  <32.959370, 35.347061, 39.638664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370110, 34.990818, 39.153641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099625, 34.732372, 39.295216>,  <32.937332, 34.577305, 39.380161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099625, 34.732372, 39.295216>,  <33.370110, 34.990818, 39.153641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099625, 34.732372, 39.295216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167336, -0.333163, -0.927902,
		0.717452, -0.686684, 0.117169,
		-0.676211, -0.646118, 0.353935,
		32.896763, 34.538536, 39.401398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383770, 34.358688, 38.692287>,  <33.370110, 34.990818, 39.153641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383770, 34.358688, 38.692287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035942, 34.308731, 38.883389>,  <32.827244, 34.278755, 38.998047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035942, 34.308731, 38.883389>,  <33.383770, 34.358688, 38.692287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035942, 34.308731, 38.883389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411476, -0.351619, -0.840864,
		0.273004, -0.927775, 0.254368,
		-0.869573, -0.124893, 0.477750,
		32.775070, 34.271263, 39.026714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102238, 33.743820, 38.483677>,  <33.383770, 34.358688, 38.692287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102238, 33.743820, 38.483677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791485, 33.957436, 38.617092>,  <32.605034, 34.085606, 38.697144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791485, 33.957436, 38.617092>,  <33.102238, 33.743820, 38.483677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791485, 33.957436, 38.617092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528364, -0.264814, -0.806663,
		-0.342466, -0.802915, 0.487899,
		-0.776883, 0.534043, 0.333542,
		32.558418, 34.117649, 38.717155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728352, 33.444935, 38.702061>,  <33.102238, 33.743820, 38.483677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728352, 33.444935, 38.702061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983776, 33.400272, 38.397488>,  <34.137032, 33.373474, 38.214745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983776, 33.400272, 38.397488>,  <33.728352, 33.444935, 38.702061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983776, 33.400272, 38.397488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605745, -0.537352, 0.586793,
		-0.474676, -0.835934, -0.275495,
		0.638557, -0.111657, -0.761431,
		34.175343, 33.366776, 38.169060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956520, 32.761223, 38.778660>,  <33.728352, 33.444935, 38.702061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956520, 32.761223, 38.778660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234112, 32.960060, 38.570320>,  <34.400669, 33.079361, 38.445316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234112, 32.960060, 38.570320>,  <33.956520, 32.761223, 38.778660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234112, 32.960060, 38.570320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719956, -0.471769, 0.509017,
		0.007306, -0.728240, -0.685283,
		0.693982, 0.497092, -0.520854,
		34.442307, 33.109188, 38.414062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566223, 32.283775, 38.660061>,  <33.956520, 32.761223, 38.778660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566223, 32.283775, 38.660061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721748, 32.648125, 38.604736>,  <34.815063, 32.866734, 38.571541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721748, 32.648125, 38.604736>,  <34.566223, 32.283775, 38.660061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721748, 32.648125, 38.604736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761409, -0.233156, 0.604892,
		0.518733, -0.340503, -0.784203,
		0.388809, 0.910877, -0.138316,
		34.838390, 32.921387, 38.563240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275414, 32.219509, 38.343224>,  <34.566223, 32.283775, 38.660061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275414, 32.219509, 38.343224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197868, 32.548615, 38.556942>,  <35.151340, 32.746078, 38.685173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197868, 32.548615, 38.556942>,  <35.275414, 32.219509, 38.343224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197868, 32.548615, 38.556942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649694, -0.300398, 0.698326,
		0.735060, 0.482510, -0.476309,
		-0.193867, 0.822767, 0.534294,
		35.139709, 32.795444, 38.717232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856567, 32.329853, 38.530769>,  <35.275414, 32.219509, 38.343224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856567, 32.329853, 38.530769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653488, 32.557610, 38.789391>,  <35.531643, 32.694263, 38.944565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653488, 32.557610, 38.789391>,  <35.856567, 32.329853, 38.530769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653488, 32.557610, 38.789391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597669, -0.307747, 0.740327,
		0.620513, 0.762288, -0.184067,
		-0.507696, 0.569393, 0.646557,
		35.501179, 32.728428, 38.983356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331997, 32.616238, 38.945595>,  <35.856567, 32.329853, 38.530769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331997, 32.616238, 38.945595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002289, 32.673580, 39.164692>,  <35.804462, 32.707985, 39.296150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002289, 32.673580, 39.164692>,  <36.331997, 32.616238, 38.945595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002289, 32.673580, 39.164692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547992, -0.041340, 0.835462,
		0.142414, 0.988807, -0.044484,
		-0.824271, 0.143359, 0.547745,
		35.755009, 32.716587, 39.329014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544678, 33.006409, 39.509121>,  <36.331997, 32.616238, 38.945595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544678, 33.006409, 39.509121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189865, 32.878513, 39.642353>,  <35.976978, 32.801777, 39.722294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189865, 32.878513, 39.642353>,  <36.544678, 33.006409, 39.509121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189865, 32.878513, 39.642353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355455, -0.012511, 0.934610,
		-0.294661, 0.947424, 0.124750,
		-0.887033, -0.319736, 0.333080,
		35.923756, 32.782593, 39.742275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502644, 33.342567, 40.121323>,  <36.544678, 33.006409, 39.509121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502644, 33.342567, 40.121323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276115, 33.012894, 40.121086>,  <36.140198, 32.815090, 40.120945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276115, 33.012894, 40.121086>,  <36.502644, 33.342567, 40.121323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276115, 33.012894, 40.121086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276578, -0.190715, 0.941877,
		-0.776394, 0.533240, 0.335957,
		-0.566319, -0.824186, -0.000587,
		36.106220, 32.765636, 40.120911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138821, 33.389973, 40.715080>,  <36.502644, 33.342567, 40.121323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138821, 33.389973, 40.715080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141506, 33.006561, 40.601116>,  <36.143116, 32.776512, 40.532738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141506, 33.006561, 40.601116>,  <36.138821, 33.389973, 40.715080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141506, 33.006561, 40.601116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475728, -0.247548, 0.844040,
		-0.879567, -0.141203, 0.454339,
		0.006710, -0.958531, -0.284909,
		36.143520, 32.719002, 40.515644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822739, 33.007420, 41.252243>,  <36.138821, 33.389973, 40.715080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822739, 33.007420, 41.252243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028378, 32.729553, 41.050991>,  <36.151760, 32.562832, 40.930241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028378, 32.729553, 41.050991>,  <35.822739, 33.007420, 41.252243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028378, 32.729553, 41.050991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407488, -0.318356, 0.855922,
		-0.754755, -0.645049, 0.119400,
		0.514100, -0.694665, -0.503131,
		36.182610, 32.521152, 40.900051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596329, 32.310520, 41.558720>,  <35.822739, 33.007420, 41.252243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596329, 32.310520, 41.558720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949287, 32.260952, 41.377159>,  <36.161060, 32.231209, 41.268223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949287, 32.260952, 41.377159>,  <35.596329, 32.310520, 41.558720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949287, 32.260952, 41.377159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340124, -0.498583, 0.797327,
		-0.325114, -0.857938, -0.397797,
		0.882393, -0.123922, -0.453902,
		36.214005, 32.223774, 41.240990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898666, 31.641092, 41.823616>,  <35.596329, 32.310520, 41.558720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898666, 31.641092, 41.823616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229591, 31.798977, 41.663734>,  <36.428146, 31.893707, 41.567806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229591, 31.798977, 41.663734>,  <35.898666, 31.641092, 41.823616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229591, 31.798977, 41.663734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533855, -0.331044, 0.778081,
		0.174798, -0.857097, -0.484594,
		0.827312, 0.394709, -0.399699,
		36.477783, 31.917389, 41.543823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498032, 31.154745, 41.821087>,  <35.898666, 31.641092, 41.823616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498032, 31.154745, 41.821087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628052, 31.533018, 41.823223>,  <36.706062, 31.759981, 41.824505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628052, 31.533018, 41.823223>,  <36.498032, 31.154745, 41.821087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628052, 31.533018, 41.823223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611733, -0.214566, 0.761410,
		0.721197, -0.244228, -0.648249,
		0.325050, 0.945682, 0.005342,
		36.725567, 31.816723, 41.824825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155457, 31.091610, 42.228153>,  <36.498032, 31.154745, 41.821087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155457, 31.091610, 42.228153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118126, 31.487579, 42.185547>,  <37.095726, 31.725161, 42.159985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118126, 31.487579, 42.185547>,  <37.155457, 31.091610, 42.228153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118126, 31.487579, 42.185547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538795, 0.140177, 0.830693,
		0.837251, 0.020140, -0.546448,
		-0.093330, 0.989922, -0.106512,
		37.090126, 31.784555, 42.153595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908192, 31.336243, 42.236912>,  <37.155457, 31.091610, 42.228153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908192, 31.336243, 42.236912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668018, 31.639069, 42.339935>,  <37.523914, 31.820765, 42.401749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668018, 31.639069, 42.339935>,  <37.908192, 31.336243, 42.236912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668018, 31.639069, 42.339935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480685, 0.084286, 0.872833,
		0.639083, 0.647880, -0.414517,
		-0.600429, 0.757065, 0.257561,
		37.487888, 31.866188, 42.417202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282131, 31.936647, 42.471737>,  <37.908192, 31.336243, 42.236912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282131, 31.936647, 42.471737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925293, 31.982576, 42.646542>,  <37.711189, 32.010136, 42.751423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925293, 31.982576, 42.646542>,  <38.282131, 31.936647, 42.471737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925293, 31.982576, 42.646542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451222, 0.175604, 0.874964,
		0.023724, 0.977742, -0.208467,
		-0.892096, 0.114823, 0.437013,
		37.657665, 32.017025, 42.777645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330753, 32.533955, 42.851597>,  <38.282131, 31.936647, 42.471737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330753, 32.533955, 42.851597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998375, 32.378605, 43.010941>,  <37.798946, 32.285393, 43.106548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998375, 32.378605, 43.010941>,  <38.330753, 32.533955, 42.851597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998375, 32.378605, 43.010941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324167, 0.243934, 0.914009,
		-0.452155, 0.888627, -0.076797,
		-0.830946, -0.388379, 0.398360,
		37.749092, 32.262093, 43.130447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297855, 32.909447, 43.553425>,  <38.330753, 32.533955, 42.851597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297855, 32.909447, 43.553425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017921, 32.630600, 43.615723>,  <37.849960, 32.463291, 43.653103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017921, 32.630600, 43.615723>,  <38.297855, 32.909447, 43.553425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017921, 32.630600, 43.615723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002916, 0.220830, 0.975308,
		-0.714297, 0.682102, -0.156578,
		-0.699836, -0.697116, 0.155749,
		37.807972, 32.421467, 43.662449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791473, 33.223843, 43.993118>,  <38.297855, 32.909447, 43.553425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791473, 33.223843, 43.993118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769176, 32.827953, 44.045803>,  <37.755798, 32.590420, 44.077415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769176, 32.827953, 44.045803>,  <37.791473, 33.223843, 43.993118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769176, 32.827953, 44.045803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162749, 0.139160, 0.976805,
		-0.985092, 0.033009, -0.168832,
		-0.055738, -0.989720, 0.131713,
		37.752457, 32.531036, 44.085316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332428, 33.163010, 44.499325>,  <37.791473, 33.223843, 43.993118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332428, 33.163010, 44.499325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513157, 32.806988, 44.523525>,  <37.621593, 32.593376, 44.538044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513157, 32.806988, 44.523525>,  <37.332428, 33.163010, 44.499325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513157, 32.806988, 44.523525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013324, 0.061079, 0.998044,
		-0.892009, -0.451743, 0.015738,
		0.451820, -0.890055, 0.060502,
		37.648705, 32.539970, 44.541676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015598, 32.902603, 44.925968>,  <37.332428, 33.163010, 44.499325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015598, 32.902603, 44.925968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346706, 32.678349, 44.934757>,  <37.545372, 32.543797, 44.940033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346706, 32.678349, 44.934757>,  <37.015598, 32.902603, 44.925968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346706, 32.678349, 44.934757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052779, -0.038814, 0.997852,
		-0.558583, -0.827149, -0.061719,
		0.827768, -0.560640, 0.021975,
		37.595036, 32.510155, 44.941349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909519, 32.326069, 45.456264>,  <37.015598, 32.902603, 44.925968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909519, 32.326069, 45.456264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290291, 32.432789, 45.396076>,  <37.518753, 32.496822, 45.359962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290291, 32.432789, 45.396076>,  <36.909519, 32.326069, 45.456264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290291, 32.432789, 45.396076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144891, 0.040584, 0.988615,
		0.269873, -0.962896, -0.000025,
		0.951932, 0.266804, -0.150467,
		37.575871, 32.512829, 45.350937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415604, 32.007389, 45.968895>,  <36.909519, 32.326069, 45.456264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415604, 32.007389, 45.968895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670361, 32.284290, 45.833160>,  <37.823215, 32.450432, 45.751720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670361, 32.284290, 45.833160>,  <37.415604, 32.007389, 45.968895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670361, 32.284290, 45.833160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209864, 0.267860, 0.940323,
		0.741837, -0.670103, 0.025319,
		0.636895, 0.692253, -0.339339,
		37.861427, 32.491966, 45.731358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972984, 31.922430, 46.455173>,  <37.415604, 32.007389, 45.968895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972984, 31.922430, 46.455173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018826, 32.276993, 46.275776>,  <38.046329, 32.489731, 46.168137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018826, 32.276993, 46.275776>,  <37.972984, 31.922430, 46.455173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018826, 32.276993, 46.275776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363796, 0.382654, 0.849252,
		0.924401, -0.260490, -0.278617,
		0.114607, 0.886409, -0.448491,
		38.053207, 32.542915, 46.141228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696663, 32.082127, 46.505352>,  <37.972984, 31.922430, 46.455173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696663, 32.082127, 46.505352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523830, 32.439102, 46.453411>,  <38.420132, 32.653286, 46.422245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523830, 32.439102, 46.453411>,  <38.696663, 32.082127, 46.505352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523830, 32.439102, 46.453411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376790, 0.309467, 0.873075,
		0.819349, 0.328313, -0.469977,
		-0.432084, 0.892435, -0.129856,
		38.394207, 32.706833, 46.414455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265785, 32.568977, 46.592941>,  <38.696663, 32.082127, 46.505352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265785, 32.568977, 46.592941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931713, 32.786903, 46.623001>,  <38.731270, 32.917660, 46.641037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931713, 32.786903, 46.623001>,  <39.265785, 32.568977, 46.592941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931713, 32.786903, 46.623001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365726, 0.448129, 0.815736,
		0.410753, 0.708769, -0.573523,
		-0.835181, 0.544818, 0.075145,
		38.681160, 32.950348, 46.645546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468296, 33.244282, 46.593903>,  <39.265785, 32.568977, 46.592941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468296, 33.244282, 46.593903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105465, 33.244286, 46.762291>,  <38.887768, 33.244289, 46.863323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105465, 33.244286, 46.762291>,  <39.468296, 33.244282, 46.593903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105465, 33.244286, 46.762291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347888, 0.563117, 0.749582,
		-0.237048, 0.826377, -0.510793,
		-0.907074, 0.000012, 0.420972,
		38.833344, 33.244289, 46.888584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458412, 33.869469, 46.903793>,  <39.468296, 33.244282, 46.593903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458412, 33.869469, 46.903793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180634, 33.653873, 47.094475>,  <39.013966, 33.524517, 47.208881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180634, 33.653873, 47.094475>,  <39.458412, 33.869469, 46.903793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180634, 33.653873, 47.094475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237787, 0.453379, 0.859014,
		-0.679121, 0.709890, -0.186683,
		-0.694444, -0.538984, 0.476702,
		38.972301, 33.492180, 47.237484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260010, 34.307381, 47.386116>,  <39.458412, 33.869469, 46.903793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260010, 34.307381, 47.386116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123005, 33.957581, 47.523483>,  <39.040802, 33.747700, 47.605904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123005, 33.957581, 47.523483>,  <39.260010, 34.307381, 47.386116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123005, 33.957581, 47.523483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194097, 0.291774, 0.936586,
		-0.919246, 0.387446, 0.069803,
		-0.342510, -0.874502, 0.343414,
		39.020252, 33.695229, 47.626507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868626, 34.507809, 47.970329>,  <39.260010, 34.307381, 47.386116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868626, 34.507809, 47.970329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927681, 34.116650, 48.029545>,  <38.963112, 33.881954, 48.065075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927681, 34.116650, 48.029545>,  <38.868626, 34.507809, 47.970329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927681, 34.116650, 48.029545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350503, 0.191699, 0.916733,
		-0.924852, -0.083453, 0.371058,
		0.147636, -0.977899, 0.148043,
		38.971973, 33.823280, 48.073959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567631, 34.253468, 48.637478>,  <38.868626, 34.507809, 47.970329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567631, 34.253468, 48.637478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857910, 33.990677, 48.555756>,  <39.032078, 33.833000, 48.506721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857910, 33.990677, 48.555756>,  <38.567631, 34.253468, 48.637478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857910, 33.990677, 48.555756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411197, 0.176079, 0.894379,
		-0.551615, -0.733058, 0.397928,
		0.725698, -0.656980, -0.204304,
		39.075619, 33.793583, 48.494465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654240, 33.855247, 49.247799>,  <38.567631, 34.253468, 48.637478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654240, 33.855247, 49.247799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973206, 33.746578, 49.032272>,  <39.164585, 33.681377, 48.902954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973206, 33.746578, 49.032272>,  <38.654240, 33.855247, 49.247799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973206, 33.746578, 49.032272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472033, -0.275438, 0.837448,
		-0.375922, -0.922133, -0.091400,
		0.797413, -0.271671, -0.538821,
		39.212429, 33.665077, 48.870625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732952, 33.157688, 49.350727>,  <38.654240, 33.855247, 49.247799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732952, 33.157688, 49.350727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089989, 33.310673, 49.255222>,  <39.304211, 33.402462, 49.197918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089989, 33.310673, 49.255222>,  <38.732952, 33.157688, 49.350727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089989, 33.310673, 49.255222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396458, -0.413586, 0.819614,
		0.214720, -0.826239, -0.520792,
		0.892590, 0.382460, -0.238764,
		39.357765, 33.425411, 49.183594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132999, 32.647919, 49.579037>,  <38.732952, 33.157688, 49.350727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132999, 32.647919, 49.579037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400982, 32.942822, 49.544128>,  <39.561771, 33.119762, 49.523186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400982, 32.942822, 49.544128>,  <39.132999, 32.647919, 49.579037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400982, 32.942822, 49.544128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399599, -0.259034, 0.879330,
		0.625687, -0.623982, -0.468148,
		0.669952, 0.737257, -0.087269,
		39.601967, 33.163998, 49.517948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870461, 32.384872, 49.668404>,  <39.132999, 32.647919, 49.579037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870461, 32.384872, 49.668404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857342, 32.773216, 49.763359>,  <39.849472, 33.006222, 49.820332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857342, 32.773216, 49.763359>,  <39.870461, 32.384872, 49.668404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857342, 32.773216, 49.763359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371388, -0.208673, 0.904725,
		0.927898, 0.117834, -0.353723,
		-0.032795, 0.970861, 0.237389,
		39.847504, 33.064476, 49.834576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540123, 32.578995, 49.905933>,  <39.870461, 32.384872, 49.668404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540123, 32.578995, 49.905933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328339, 32.867302, 50.084892>,  <40.201267, 33.040287, 50.192268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328339, 32.867302, 50.084892>,  <40.540123, 32.578995, 49.905933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328339, 32.867302, 50.084892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687914, 0.056163, 0.723616,
		0.496430, 0.690901, -0.525560,
		-0.529464, 0.720765, 0.447400,
		40.169498, 33.083530, 50.219112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072056, 33.061665, 50.078735>,  <40.540123, 32.578995, 49.905933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072056, 33.061665, 50.078735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755604, 33.176159, 50.294952>,  <40.565735, 33.244854, 50.424683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755604, 33.176159, 50.294952>,  <41.072056, 33.061665, 50.078735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755604, 33.176159, 50.294952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600947, 0.199129, 0.774087,
		0.113935, 0.937238, -0.329550,
		-0.791127, 0.286237, 0.540543,
		40.518265, 33.262032, 50.457115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346889, 33.648109, 50.514389>,  <41.072056, 33.061665, 50.078735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346889, 33.648109, 50.514389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019989, 33.515812, 50.703156>,  <40.823849, 33.436432, 50.816414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019989, 33.515812, 50.703156>,  <41.346889, 33.648109, 50.514389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019989, 33.515812, 50.703156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472953, 0.082929, 0.877176,
		-0.329258, 0.940069, 0.088653,
		-0.817254, -0.330746, 0.471913,
		40.774811, 33.416588, 50.844730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935726, 34.128178, 50.456356>,  <41.346889, 33.648109, 50.514389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935726, 34.128178, 50.456356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277866, 34.335396, 50.455780>,  <42.483150, 34.459724, 50.455437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277866, 34.335396, 50.455780>,  <41.935726, 34.128178, 50.456356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277866, 34.335396, 50.455780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173227, 0.283403, -0.943226,
		-0.488224, 0.807041, 0.332149,
		0.855354, 0.518042, -0.001437,
		42.534473, 34.490810, 50.455349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748756, 34.713993, 50.111366>,  <41.935726, 34.128178, 50.456356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748756, 34.713993, 50.111366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145859, 34.756348, 50.088665>,  <42.384121, 34.781761, 50.075043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145859, 34.756348, 50.088665>,  <41.748756, 34.713993, 50.111366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145859, 34.756348, 50.088665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085432, 0.290094, -0.953177,
		-0.084460, 0.951123, 0.297039,
		0.992758, 0.105882, -0.056755,
		42.443687, 34.788113, 50.071640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876606, 35.349693, 49.888855>,  <41.748756, 34.713993, 50.111366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876606, 35.349693, 49.888855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209568, 35.154289, 49.784195>,  <42.409344, 35.037045, 49.721397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209568, 35.154289, 49.784195>,  <41.876606, 35.349693, 49.888855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209568, 35.154289, 49.784195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194925, 0.183875, -0.963428,
		0.518758, 0.852963, 0.057834,
		0.832403, -0.488513, -0.261650,
		42.459290, 35.007736, 49.705700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239567, 35.731258, 49.336155>,  <41.876606, 35.349693, 49.888855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239567, 35.731258, 49.336155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370510, 35.355831, 49.292465>,  <42.449078, 35.130577, 49.266251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370510, 35.355831, 49.292465>,  <42.239567, 35.731258, 49.336155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370510, 35.355831, 49.292465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279911, 0.014077, -0.959923,
		0.902488, 0.344815, -0.258106,
		0.327363, -0.938565, -0.109222,
		42.468719, 35.074261, 49.259697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742157, 35.760136, 48.705944>,  <42.239567, 35.731258, 49.336155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742157, 35.760136, 48.705944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600334, 35.390923, 48.765678>,  <42.515240, 35.169395, 48.801521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600334, 35.390923, 48.765678>,  <42.742157, 35.760136, 48.705944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600334, 35.390923, 48.765678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209500, -0.077234, -0.974754,
		0.911263, -0.376891, -0.165991,
		-0.354556, -0.923032, 0.149339,
		42.493969, 35.114014, 48.810482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811741, 35.469997, 48.150021>,  <42.742157, 35.760136, 48.705944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811741, 35.469997, 48.150021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581635, 35.178600, 48.298817>,  <42.443569, 35.003761, 48.388092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581635, 35.178600, 48.298817>,  <42.811741, 35.469997, 48.150021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581635, 35.178600, 48.298817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184426, -0.327544, -0.926662,
		0.796905, -0.601680, 0.054072,
		-0.575265, -0.728489, 0.371987,
		42.409054, 34.960052, 48.410412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829647, 34.925819, 47.687523>,  <42.811741, 35.469997, 48.150021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829647, 34.925819, 47.687523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510822, 34.849689, 47.916771>,  <42.319527, 34.804012, 48.054321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510822, 34.849689, 47.916771>,  <42.829647, 34.925819, 47.687523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510822, 34.849689, 47.916771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446138, -0.454033, -0.771242,
		0.407000, -0.870420, 0.276983,
		-0.797064, -0.190323, 0.573119,
		42.271702, 34.792591, 48.088707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516575, 34.283150, 47.421127>,  <42.829647, 34.925819, 47.687523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516575, 34.283150, 47.421127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215096, 34.452126, 47.622517>,  <42.034206, 34.553513, 47.743351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215096, 34.452126, 47.622517>,  <42.516575, 34.283150, 47.421127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215096, 34.452126, 47.622517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643787, -0.320439, -0.694880,
		-0.132209, -0.847860, 0.513473,
		-0.753697, 0.422437, 0.503476,
		41.988987, 34.578857, 47.773560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083309, 33.767288, 47.280304>,  <42.516575, 34.283150, 47.421127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083309, 33.767288, 47.280304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848541, 34.070400, 47.394356>,  <41.707680, 34.252270, 47.462788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848541, 34.070400, 47.394356>,  <42.083309, 33.767288, 47.280304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848541, 34.070400, 47.394356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660398, -0.244322, -0.710057,
		-0.468406, -0.605039, 0.643835,
		-0.586915, 0.757783, 0.285125,
		41.672466, 34.297733, 47.479893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433594, 33.484081, 47.405785>,  <42.083309, 33.767288, 47.280304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433594, 33.484081, 47.405785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370586, 33.871563, 47.329056>,  <41.332783, 34.104053, 47.283020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370586, 33.871563, 47.329056>,  <41.433594, 33.484081, 47.405785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370586, 33.871563, 47.329056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570950, -0.247824, -0.782687,
		-0.805732, -0.013766, 0.592120,
		-0.157516, 0.968707, -0.191820,
		41.323330, 34.162174, 47.271511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768578, 33.459759, 47.075634>,  <41.433594, 33.484081, 47.405785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768578, 33.459759, 47.075634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928852, 33.811199, 46.971706>,  <41.025017, 34.022064, 46.909348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928852, 33.811199, 46.971706>,  <40.768578, 33.459759, 47.075634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928852, 33.811199, 46.971706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456508, -0.054427, -0.888053,
		-0.794387, 0.474442, 0.379281,
		0.400686, 0.878603, -0.259822,
		41.049057, 34.074780, 46.893761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177502, 33.818840, 46.863548>,  <40.768578, 33.459759, 47.075634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177502, 33.818840, 46.863548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476929, 34.033566, 46.707867>,  <40.656586, 34.162403, 46.614456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476929, 34.033566, 46.707867>,  <40.177502, 33.818840, 46.863548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476929, 34.033566, 46.707867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439458, -0.037883, -0.897464,
		-0.496517, 0.842849, 0.207550,
		0.748564, 0.536815, -0.389206,
		40.701496, 34.194611, 46.591106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882286, 34.271564, 46.424725>,  <40.177502, 33.818840, 46.863548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882286, 34.271564, 46.424725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257805, 34.242794, 46.289967>,  <40.483116, 34.225533, 46.209114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257805, 34.242794, 46.289967>,  <39.882286, 34.271564, 46.424725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257805, 34.242794, 46.289967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324404, 0.144411, -0.934830,
		0.115892, 0.986900, 0.112238,
		0.938792, -0.071929, -0.336890,
		40.539444, 34.221214, 46.188900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051140, 34.923271, 45.982471>,  <39.882286, 34.271564, 46.424725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051140, 34.923271, 45.982471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275257, 34.620277, 45.848431>,  <40.409725, 34.438480, 45.768005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275257, 34.620277, 45.848431>,  <40.051140, 34.923271, 45.982471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275257, 34.620277, 45.848431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191195, 0.275368, -0.942134,
		0.805928, 0.591937, 0.009458,
		0.560289, -0.757484, -0.335103,
		40.443344, 34.393032, 45.747898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276871, 35.141914, 45.383400>,  <40.051140, 34.923271, 45.982471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276871, 35.141914, 45.383400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367542, 34.754688, 45.340580>,  <40.421944, 34.522350, 45.314888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367542, 34.754688, 45.340580>,  <40.276871, 35.141914, 45.383400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367542, 34.754688, 45.340580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184247, 0.065307, -0.980708,
		0.956384, 0.242026, -0.163561,
		0.226675, -0.968069, -0.107051,
		40.435543, 34.464268, 45.308464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593987, 35.089008, 44.698536>,  <40.276871, 35.141914, 45.383400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593987, 35.089008, 44.698536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522636, 34.697865, 44.742290>,  <40.479824, 34.463177, 44.768543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522636, 34.697865, 44.742290>,  <40.593987, 35.089008, 44.698536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522636, 34.697865, 44.742290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420941, -0.024647, -0.906753,
		0.889376, -0.207792, -0.407226,
		-0.178379, -0.977862, 0.109389,
		40.469124, 34.404507, 44.775108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753574, 34.855881, 44.031452>,  <40.593987, 35.089008, 44.698536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753574, 34.855881, 44.031452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530510, 34.567581, 44.196152>,  <40.396671, 34.394600, 44.294971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530510, 34.567581, 44.196152>,  <40.753574, 34.855881, 44.031452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530510, 34.567581, 44.196152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315844, -0.274487, -0.908240,
		0.767634, -0.636535, -0.074576,
		-0.557656, -0.720750, 0.411751,
		40.363213, 34.351357, 44.319675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846802, 34.211517, 43.764206>,  <40.753574, 34.855881, 44.031452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846802, 34.211517, 43.764206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469910, 34.182949, 43.895115>,  <40.243774, 34.165810, 43.973660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469910, 34.182949, 43.895115>,  <40.846802, 34.211517, 43.764206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469910, 34.182949, 43.895115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304412, -0.225154, -0.925548,
		0.139787, -0.971702, 0.190406,
		-0.942227, -0.071418, 0.327271,
		40.187241, 34.161526, 43.993298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585865, 33.633400, 43.428459>,  <40.846802, 34.211517, 43.764206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585865, 33.633400, 43.428459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274574, 33.844501, 43.564606>,  <40.087799, 33.971161, 43.646294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274574, 33.844501, 43.564606>,  <40.585865, 33.633400, 43.428459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274574, 33.844501, 43.564606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483145, -0.156929, -0.861362,
		-0.401172, -0.834777, 0.377106,
		-0.778224, 0.527751, 0.340362,
		40.041107, 34.002827, 43.666714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075996, 33.189514, 43.357380>,  <40.585865, 33.633400, 43.428459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075996, 33.189514, 43.357380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922268, 33.558792, 43.356197>,  <39.830032, 33.780361, 43.355488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922268, 33.558792, 43.356197>,  <40.075996, 33.189514, 43.357380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922268, 33.558792, 43.356197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424144, -0.179411, -0.887645,
		-0.820002, -0.339882, 0.460519,
		-0.384317, 0.923197, -0.002958,
		39.806973, 33.835751, 43.355309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344009, 33.184963, 43.195381>,  <40.075996, 33.189514, 43.357380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344009, 33.184963, 43.195381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425709, 33.564362, 43.098515>,  <39.474728, 33.792000, 43.040394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425709, 33.564362, 43.098515>,  <39.344009, 33.184963, 43.195381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425709, 33.564362, 43.098515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643596, -0.056294, -0.763292,
		-0.737609, 0.311759, 0.598948,
		0.204246, 0.948492, -0.242170,
		39.486984, 33.848907, 43.025864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737633, 33.412251, 43.060108>,  <39.344009, 33.184963, 43.195381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737633, 33.412251, 43.060108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959736, 33.699715, 42.892677>,  <39.092999, 33.872192, 42.792217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959736, 33.699715, 42.892677>,  <38.737633, 33.412251, 43.060108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959736, 33.699715, 42.892677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620712, 0.023122, -0.783698,
		-0.553537, 0.694973, 0.458922,
		0.555260, 0.718664, -0.418579,
		39.126312, 33.915314, 42.767105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291630, 34.002144, 43.000782>,  <38.737633, 33.412251, 43.060108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291630, 34.002144, 43.000782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598015, 34.029572, 42.745094>,  <38.781845, 34.046028, 42.591682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598015, 34.029572, 42.745094>,  <38.291630, 34.002144, 43.000782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598015, 34.029572, 42.745094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642181, 0.128325, -0.755736,
		0.030206, 0.989359, 0.142327,
		0.765958, 0.068572, -0.639223,
		38.827801, 34.050144, 42.553326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224995, 34.748276, 42.581081>,  <38.291630, 34.002144, 43.000782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224995, 34.748276, 42.581081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449249, 34.483086, 42.382626>,  <38.583801, 34.323971, 42.263554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449249, 34.483086, 42.382626>,  <38.224995, 34.748276, 42.581081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449249, 34.483086, 42.382626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569370, 0.126410, -0.812304,
		0.601256, 0.737890, -0.306610,
		0.560632, -0.662978, -0.496137,
		38.617439, 34.284191, 42.233784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168625, 34.982170, 41.921646>,  <38.224995, 34.748276, 42.581081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168625, 34.982170, 41.921646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326637, 34.616974, 41.880844>,  <38.421444, 34.397858, 41.856361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326637, 34.616974, 41.880844>,  <38.168625, 34.982170, 41.921646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326637, 34.616974, 41.880844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217365, 0.014995, -0.975975,
		0.892584, 0.407709, -0.192529,
		0.395027, -0.912989, -0.102006,
		38.445145, 34.343079, 41.850243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614033, 35.015762, 41.404991>,  <38.168625, 34.982170, 41.921646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614033, 35.015762, 41.404991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512753, 34.629234, 41.423351>,  <38.451984, 34.397316, 41.434368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512753, 34.629234, 41.423351>,  <38.614033, 35.015762, 41.404991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512753, 34.629234, 41.423351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102040, -0.073858, -0.992035,
		0.962018, -0.246499, 0.117304,
		-0.253200, -0.966324, 0.045900,
		38.436794, 34.339336, 41.437122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176601, 34.804214, 41.209217>,  <38.614033, 35.015762, 41.404991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176601, 34.804214, 41.209217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898678, 34.520157, 41.163723>,  <38.731922, 34.349724, 41.136425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898678, 34.520157, 41.163723>,  <39.176601, 34.804214, 41.209217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898678, 34.520157, 41.163723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421711, -0.274182, -0.864282,
		0.582581, -0.648474, 0.489980,
		-0.694808, -0.710145, -0.113735,
		38.690235, 34.307114, 41.129604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489201, 34.368435, 40.884552>,  <39.176601, 34.804214, 41.209217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489201, 34.368435, 40.884552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117382, 34.237823, 40.816051>,  <38.894291, 34.159454, 40.774952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117382, 34.237823, 40.816051>,  <39.489201, 34.368435, 40.884552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117382, 34.237823, 40.816051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288490, -0.354861, -0.889296,
		0.229615, -0.876042, 0.424060,
		-0.929543, -0.326533, -0.171248,
		38.838520, 34.139862, 40.764679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512135, 33.584961, 40.729633>,  <39.489201, 34.368435, 40.884552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512135, 33.584961, 40.729633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186901, 33.758327, 40.574173>,  <38.991760, 33.862347, 40.480896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186901, 33.758327, 40.574173>,  <39.512135, 33.584961, 40.729633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186901, 33.758327, 40.574173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267665, -0.314526, -0.910730,
		-0.516962, -0.844528, 0.139726,
		-0.813084, 0.433413, -0.388648,
		38.942974, 33.888351, 40.457577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220245, 33.044373, 40.269676>,  <39.512135, 33.584961, 40.729633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220245, 33.044373, 40.269676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051929, 33.386044, 40.147480>,  <38.950939, 33.591045, 40.074162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051929, 33.386044, 40.147480>,  <39.220245, 33.044373, 40.269676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051929, 33.386044, 40.147480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282550, -0.196602, -0.938889,
		-0.862035, -0.481388, -0.158620,
		-0.420785, 0.854174, -0.305494,
		38.925694, 33.642296, 40.055832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656467, 32.958042, 39.720497>,  <39.220245, 33.044373, 40.269676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656467, 32.958042, 39.720497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863655, 33.298649, 39.687920>,  <38.987968, 33.503014, 39.668373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863655, 33.298649, 39.687920>,  <38.656467, 32.958042, 39.720497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863655, 33.298649, 39.687920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220462, -0.224882, -0.949118,
		-0.826504, 0.473654, -0.304208,
		0.517965, 0.851516, -0.081444,
		39.019043, 33.554104, 39.663486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634739, 32.999432, 38.945194>,  <38.656467, 32.958042, 39.720497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634739, 32.999432, 38.945194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888119, 33.280884, 39.073971>,  <39.040146, 33.449757, 39.151237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888119, 33.280884, 39.073971>,  <38.634739, 32.999432, 38.945194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888119, 33.280884, 39.073971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450525, 0.002884, -0.892759,
		-0.629101, 0.710560, -0.315176,
		0.633450, 0.703630, 0.321940,
		39.078156, 33.491974, 39.170551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615643, 33.495247, 38.468052>,  <38.634739, 32.999432, 38.945194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615643, 33.495247, 38.468052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963062, 33.587749, 38.643387>,  <39.171513, 33.643253, 38.748589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963062, 33.587749, 38.643387>,  <38.615643, 33.495247, 38.468052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963062, 33.587749, 38.643387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455963, -0.026274, -0.889611,
		-0.194214, 0.972537, -0.128267,
		0.868550, 0.231260, 0.438338,
		39.223629, 33.657127, 38.774887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857521, 34.020218, 38.053097>,  <38.615643, 33.495247, 38.468052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857521, 34.020218, 38.053097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175468, 33.885334, 38.254879>,  <39.366238, 33.804405, 38.375950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175468, 33.885334, 38.254879>,  <38.857521, 34.020218, 38.053097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175468, 33.885334, 38.254879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574929, 0.152702, -0.803828,
		0.194025, 0.928963, 0.315248,
		0.794866, -0.337208, 0.504460,
		39.413929, 33.784172, 38.406216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292297, 34.499195, 37.990086>,  <38.857521, 34.020218, 38.053097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292297, 34.499195, 37.990086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536938, 34.195702, 38.079765>,  <39.683723, 34.013603, 38.133572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536938, 34.195702, 38.079765>,  <39.292297, 34.499195, 37.990086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536938, 34.195702, 38.079765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685375, 0.366538, -0.629215,
		0.395231, 0.538489, 0.744193,
		0.611600, -0.758736, 0.224200,
		39.720417, 33.968082, 38.147026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943848, 34.865150, 38.055885>,  <39.292297, 34.499195, 37.990086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943848, 34.865150, 38.055885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019196, 34.475487, 38.006023>,  <40.064404, 34.241688, 37.976109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019196, 34.475487, 38.006023>,  <39.943848, 34.865150, 38.055885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019196, 34.475487, 38.006023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795433, 0.225778, -0.562415,
		0.576023, 0.006789, 0.817405,
		0.188370, -0.974155, -0.124653,
		40.075706, 34.183239, 37.968628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621620, 34.761993, 38.288986>,  <39.943848, 34.865150, 38.055885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621620, 34.761993, 38.288986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534367, 34.461227, 38.040138>,  <40.482014, 34.280766, 37.890827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534367, 34.461227, 38.040138>,  <40.621620, 34.761993, 38.288986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534367, 34.461227, 38.040138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890383, 0.107650, -0.442302,
		0.399546, -0.650407, 0.646013,
		-0.218133, -0.751919, -0.622122,
		40.468925, 34.235653, 37.853500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230705, 34.504318, 38.285149>,  <40.621620, 34.761993, 38.288986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230705, 34.504318, 38.285149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047741, 34.334358, 37.972679>,  <40.937962, 34.232380, 37.785198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047741, 34.334358, 37.972679>,  <41.230705, 34.504318, 38.285149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047741, 34.334358, 37.972679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863118, -0.000727, -0.505001,
		0.214009, -0.905238, 0.367075,
		-0.457413, -0.424904, -0.781172,
		40.910519, 34.206886, 37.738327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611626, 33.944035, 38.153534>,  <41.230705, 34.504318, 38.285149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611626, 33.944035, 38.153534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420517, 34.010010, 37.808392>,  <41.305851, 34.049595, 37.601307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420517, 34.010010, 37.808392>,  <41.611626, 33.944035, 38.153534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420517, 34.010010, 37.808392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876938, 0.031334, -0.479582,
		-0.052064, -0.985806, -0.159611,
		-0.477776, 0.164938, -0.862859,
		41.277184, 34.059490, 37.549534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793011, 33.501953, 37.523285>,  <41.611626, 33.944035, 38.153534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793011, 33.501953, 37.523285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662598, 33.853024, 37.382782>,  <41.584351, 34.063667, 37.298481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662598, 33.853024, 37.382782>,  <41.793011, 33.501953, 37.523285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662598, 33.853024, 37.382782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883446, 0.150616, -0.443664,
		-0.336488, -0.454969, -0.824487,
		-0.326034, 0.877678, -0.351260,
		41.564789, 34.116325, 37.277405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823986, 33.542202, 36.746181>,  <41.793011, 33.501953, 37.523285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823986, 33.542202, 36.746181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859383, 33.886181, 36.947239>,  <41.880619, 34.092567, 37.067875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859383, 33.886181, 36.947239>,  <41.823986, 33.542202, 36.746181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859383, 33.886181, 36.947239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943625, 0.089219, -0.318767,
		-0.318969, 0.502518, -0.803576,
		0.088492, 0.859951, 0.502646,
		41.885929, 34.144165, 37.098034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088093, 34.127071, 36.316448>,  <41.823986, 33.542202, 36.746181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088093, 34.127071, 36.316448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202152, 34.193497, 36.694042>,  <42.270588, 34.233353, 36.920601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202152, 34.193497, 36.694042>,  <42.088093, 34.127071, 36.316448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202152, 34.193497, 36.694042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943916, 0.122396, -0.306663,
		-0.166466, 0.978490, -0.121848,
		0.285153, 0.166063, 0.943987,
		42.287697, 34.243317, 36.977238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422550, 34.807270, 36.387947>,  <42.088093, 34.127071, 36.316448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422550, 34.807270, 36.387947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582096, 34.530811, 36.629017>,  <42.677826, 34.364937, 36.773659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582096, 34.530811, 36.629017>,  <42.422550, 34.807270, 36.387947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582096, 34.530811, 36.629017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883498, 0.113597, -0.454453,
		0.245632, 0.713729, 0.655939,
		0.398869, -0.691149, 0.602675,
		42.701756, 34.323467, 36.809818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056648, 35.085358, 36.476856>,  <42.422550, 34.807270, 36.387947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056648, 35.085358, 36.476856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059978, 34.688839, 36.529396>,  <43.061977, 34.450928, 36.560921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059978, 34.688839, 36.529396>,  <43.056648, 35.085358, 36.476856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059978, 34.688839, 36.529396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881139, -0.054832, -0.469667,
		0.472784, 0.119652, 0.873017,
		0.008327, -0.991300, 0.131354,
		43.062477, 34.391449, 36.568802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760235, 34.859798, 36.633495>,  <43.056648, 35.085358, 36.476856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760235, 34.859798, 36.633495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594707, 34.523884, 36.492916>,  <43.495392, 34.322334, 36.408569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594707, 34.523884, 36.492916>,  <43.760235, 34.859798, 36.633495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594707, 34.523884, 36.492916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860667, -0.235100, -0.451642,
		0.296655, -0.489381, 0.820062,
		-0.413822, -0.839782, -0.351450,
		43.470562, 34.271950, 36.387482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137775, 34.204456, 36.792801>,  <43.760235, 34.859798, 36.633495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137775, 34.204456, 36.792801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940319, 34.226368, 36.445625>,  <43.821846, 34.239517, 36.237320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940319, 34.226368, 36.445625>,  <44.137775, 34.204456, 36.792801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940319, 34.226368, 36.445625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867500, -0.039396, -0.495875,
		-0.061359, -0.997721, -0.028078,
		-0.493639, 0.054784, -0.867940,
		43.792229, 34.242802, 36.185242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384678, 33.825829, 37.364590>,  <44.137775, 34.204456, 36.792801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384678, 33.825829, 37.364590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346424, 34.167858, 37.568436>,  <44.323471, 34.373077, 37.690742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346424, 34.167858, 37.568436>,  <44.384678, 33.825829, 37.364590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346424, 34.167858, 37.568436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389124, 0.439108, -0.809794,
		-0.916208, -0.275743, 0.290737,
		-0.095630, 0.855073, 0.509612,
		44.317734, 34.424381, 37.721321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892506, 33.835831, 37.917465>,  <44.384678, 33.825829, 37.364590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892506, 33.835831, 37.917465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254276, 33.987423, 37.839096>,  <45.471340, 34.078381, 37.792076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254276, 33.987423, 37.839096>,  <44.892506, 33.835831, 37.917465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254276, 33.987423, 37.839096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200693, 0.027309, 0.979274,
		0.376479, -0.925001, -0.051360,
		0.904426, 0.378983, -0.195922,
		45.525604, 34.101116, 37.780319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274647, 33.641590, 38.410744>,  <44.892506, 33.835831, 37.917465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274647, 33.641590, 38.410744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541191, 33.913277, 38.287693>,  <45.701118, 34.076290, 38.213863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541191, 33.913277, 38.287693>,  <45.274647, 33.641590, 38.410744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.541191, 33.913277, 38.287693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291421, 0.142518, 0.945919,
		0.686326, -0.719968, -0.102970,
		0.666356, 0.679217, -0.307627,
		45.741096, 34.117043, 38.195404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.992306, 33.430157, 38.614799>,  <45.274647, 33.641590, 38.410744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.992306, 33.430157, 38.614799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.970989, 33.827877, 38.577862>,  <45.958199, 34.066509, 38.555698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.970989, 33.827877, 38.577862>,  <45.992306, 33.430157, 38.614799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.970989, 33.827877, 38.577862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546841, 0.106439, 0.830443,
		0.835539, -0.006241, -0.549396,
		-0.053294, 0.994300, -0.092347,
		45.955002, 34.126167, 38.550159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.703453, 33.661247, 38.700188>,  <45.992306, 33.430157, 38.614799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.703453, 33.661247, 38.700188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.463181, 33.970814, 38.780430>,  <46.319019, 34.156555, 38.828575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.463181, 33.970814, 38.780430>,  <46.703453, 33.661247, 38.700188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.463181, 33.970814, 38.780430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411228, 0.083907, 0.907662,
		0.685622, 0.627706, -0.368657,
		-0.600678, 0.773915, 0.200602,
		46.282978, 34.202988, 38.840611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.060715, 33.850468, 39.243782>,  <46.703453, 33.661247, 38.700188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.060715, 33.850468, 39.243782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744640, 34.095478, 39.235558>,  <46.554996, 34.242485, 39.230621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744640, 34.095478, 39.235558>,  <47.060715, 33.850468, 39.243782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.744640, 34.095478, 39.235558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178855, 0.262560, 0.948195,
		0.586194, 0.745569, -0.317023,
		-0.790182, 0.612527, -0.020562,
		46.507587, 34.279236, 39.229389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.251099, 34.525562, 39.627274>,  <47.060715, 33.850468, 39.243782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.251099, 34.525562, 39.627274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853073, 34.485966, 39.629772>,  <46.614258, 34.462208, 39.631271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.853073, 34.485966, 39.629772>,  <47.251099, 34.525562, 39.627274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.853073, 34.485966, 39.629772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002589, 0.088859, 0.996041,
		-0.099157, 0.991113, -0.088677,
		-0.995068, -0.098994, 0.006245,
		46.554554, 34.456268, 39.631645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.938309, 35.028221, 40.111416>,  <47.251099, 34.525562, 39.627274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.938309, 35.028221, 40.111416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.677902, 34.725819, 40.084190>,  <46.521656, 34.544376, 40.067856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.677902, 34.725819, 40.084190>,  <46.938309, 35.028221, 40.111416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.677902, 34.725819, 40.084190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013336, -0.078259, 0.996844,
		-0.758944, 0.649872, 0.040866,
		-0.651019, -0.756004, -0.068061,
		46.482597, 34.499016, 40.063770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.458374, 35.137970, 40.634289>,  <46.938309, 35.028221, 40.111416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.458374, 35.137970, 40.634289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.412476, 34.749466, 40.550869>,  <46.384937, 34.516365, 40.500816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.412476, 34.749466, 40.550869>,  <46.458374, 35.137970, 40.634289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.412476, 34.749466, 40.550869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218100, -0.180186, 0.959148,
		-0.969157, 0.155547, -0.191155,
		-0.114749, -0.971256, -0.208554,
		46.378052, 34.458088, 40.488304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801506, 34.909523, 40.972118>,  <46.458374, 35.137970, 40.634289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801506, 34.909523, 40.972118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.008293, 34.570835, 40.921814>,  <46.132366, 34.367622, 40.891632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.008293, 34.570835, 40.921814>,  <45.801506, 34.909523, 40.972118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.008293, 34.570835, 40.921814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155474, -0.237352, 0.958902,
		-0.841768, -0.476168, -0.254345,
		0.516968, -0.846716, -0.125764,
		46.163383, 34.316822, 40.884087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.398460, 34.325047, 41.354385>,  <45.801506, 34.909523, 40.972118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.398460, 34.325047, 41.354385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780354, 34.214039, 41.311565>,  <46.009491, 34.147434, 41.285873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.780354, 34.214039, 41.311565>,  <45.398460, 34.325047, 41.354385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.780354, 34.214039, 41.311565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007793, -0.383116, 0.923667,
		-0.297349, -0.881025, -0.367938,
		0.954737, -0.277519, -0.107053,
		46.066776, 34.130783, 41.279449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410313, 33.601353, 41.698513>,  <45.398460, 34.325047, 41.354385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410313, 33.601353, 41.698513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795757, 33.702389, 41.663502>,  <46.027023, 33.763008, 41.642494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795757, 33.702389, 41.663502>,  <45.410313, 33.601353, 41.698513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.795757, 33.702389, 41.663502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157542, -0.272066, 0.949295,
		0.215967, -0.928536, -0.301958,
		0.963607, 0.252588, -0.087526,
		46.084839, 33.778164, 41.637245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.784462, 33.025307, 41.943569>,  <45.410313, 33.601353, 41.698513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.784462, 33.025307, 41.943569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.048092, 33.324757, 41.972347>,  <46.206268, 33.504429, 41.989613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.048092, 33.324757, 41.972347>,  <45.784462, 33.025307, 41.943569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.048092, 33.324757, 41.972347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118747, -0.198044, 0.972974,
		0.742644, -0.632719, -0.219423,
		0.659074, 0.748629, 0.071942,
		46.245815, 33.549347, 41.993931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176357, 32.723454, 42.364063>,  <45.784462, 33.025307, 41.943569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176357, 32.723454, 42.364063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331993, 33.091850, 42.356319>,  <46.425373, 33.312889, 42.351673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331993, 33.091850, 42.356319>,  <46.176357, 32.723454, 42.364063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331993, 33.091850, 42.356319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446539, -0.170180, 0.878431,
		0.805737, -0.350435, -0.477476,
		0.389090, 0.920996, -0.019362,
		46.448719, 33.368149, 42.350510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.861710, 32.652782, 42.369087>,  <46.176357, 32.723454, 42.364063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.861710, 32.652782, 42.369087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.771011, 33.009769, 42.525082>,  <46.716591, 33.223961, 42.618679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.771011, 33.009769, 42.525082>,  <46.861710, 32.652782, 42.369087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.771011, 33.009769, 42.525082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445566, -0.261008, 0.856356,
		0.866058, 0.367943, -0.338470,
		-0.226747, 0.892465, 0.389991,
		46.702988, 33.277508, 42.642078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.553661, 32.888004, 42.736805>,  <46.861710, 32.652782, 42.369087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.553661, 32.888004, 42.736805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.231514, 33.071815, 42.886585>,  <47.038227, 33.182102, 42.976452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.231514, 33.071815, 42.886585>,  <47.553661, 32.888004, 42.736805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.231514, 33.071815, 42.886585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370655, -0.102578, 0.923089,
		0.462597, 0.882219, -0.087714,
		-0.805369, 0.459529, 0.374451,
		46.989902, 33.209675, 42.998920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.730133, 33.259624, 43.310394>,  <47.553661, 32.888004, 42.736805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.730133, 33.259624, 43.310394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336178, 33.231915, 43.373882>,  <47.099804, 33.215290, 43.411976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336178, 33.231915, 43.373882>,  <47.730133, 33.259624, 43.310394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.336178, 33.231915, 43.373882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170828, -0.238127, 0.956093,
		-0.028436, 0.968760, 0.246363,
		-0.984890, -0.069273, 0.158720,
		47.040710, 33.211132, 43.421497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.533470, 33.517685, 44.021915>,  <47.730133, 33.259624, 43.310394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.533470, 33.517685, 44.021915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.199551, 33.312012, 43.943192>,  <46.999199, 33.188606, 43.895958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.199551, 33.312012, 43.943192>,  <47.533470, 33.517685, 44.021915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.199551, 33.312012, 43.943192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101974, -0.495688, 0.862493,
		-0.541036, 0.699935, 0.466231,
		-0.834794, -0.514183, -0.196810,
		46.949112, 33.157757, 43.884148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.245178, 33.648483, 44.570820>,  <47.533470, 33.517685, 44.021915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.245178, 33.648483, 44.570820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.045601, 33.340904, 44.410934>,  <46.925854, 33.156357, 44.315002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.045601, 33.340904, 44.410934>,  <47.245178, 33.648483, 44.570820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.045601, 33.340904, 44.410934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121103, -0.518560, 0.846421,
		-0.858130, 0.373913, 0.351856,
		-0.498946, -0.768950, -0.399710,
		46.895916, 33.110218, 44.291023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.621819, 33.567738, 44.973606>,  <47.245178, 33.648483, 44.570820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.621819, 33.567738, 44.973606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.729633, 33.222908, 44.801945>,  <46.794323, 33.016010, 44.698948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.729633, 33.222908, 44.801945>,  <46.621819, 33.567738, 44.973606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.729633, 33.222908, 44.801945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213958, -0.380897, 0.899522,
		-0.938920, -0.334275, 0.081783,
		0.269537, -0.862077, -0.429153,
		46.810493, 32.964283, 44.673199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.364872, 33.090073, 45.419487>,  <46.621819, 33.567738, 44.973606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.364872, 33.090073, 45.419487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.635647, 32.889175, 45.204262>,  <46.798111, 32.768639, 45.075127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.635647, 32.889175, 45.204262>,  <46.364872, 33.090073, 45.419487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.635647, 32.889175, 45.204262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240146, -0.540314, 0.806468,
		-0.695763, -0.675142, -0.245148,
		0.676937, -0.502239, -0.538063,
		46.838730, 32.738503, 45.042843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.299881, 32.489582, 45.830006>,  <46.364872, 33.090073, 45.419487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.299881, 32.489582, 45.830006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.636204, 32.441917, 45.618782>,  <46.837997, 32.413319, 45.492046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.636204, 32.441917, 45.618782>,  <46.299881, 32.489582, 45.830006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.636204, 32.441917, 45.618782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389633, -0.543990, 0.743143,
		-0.375813, -0.830588, -0.410961,
		0.840804, -0.119158, -0.528063,
		46.888443, 32.406170, 45.460361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.431789, 31.726744, 45.562775>,  <46.299881, 32.489582, 45.830006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.431789, 31.726744, 45.562775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.749783, 31.958305, 45.635300>,  <46.940578, 32.097244, 45.678814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.749783, 31.958305, 45.635300>,  <46.431789, 31.726744, 45.562775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.749783, 31.958305, 45.635300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328943, -0.662494, 0.672977,
		0.509708, -0.475363, -0.717097,
		0.794981, 0.578906, 0.181311,
		46.988277, 32.131977, 45.689693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.047401, 31.275436, 45.574505>,  <46.431789, 31.726744, 45.562775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.047401, 31.275436, 45.574505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.088154, 31.597088, 45.808769>,  <47.112606, 31.790079, 45.949326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.088154, 31.597088, 45.808769>,  <47.047401, 31.275436, 45.574505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.088154, 31.597088, 45.808769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394219, -0.573158, 0.718387,
		0.913351, 0.157685, -0.375400,
		0.101885, 0.804130, 0.585657,
		47.118721, 31.838327, 45.984467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.774342, 30.622723, 45.325474>,  <47.047401, 31.275436, 45.574505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.774342, 30.622723, 45.325474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630825, 30.527781, 45.686569>,  <46.544716, 30.470816, 45.903225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630825, 30.527781, 45.686569>,  <46.774342, 30.622723, 45.325474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630825, 30.527781, 45.686569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670697, -0.738182, 0.072480,
		0.649180, 0.631468, 0.424045,
		-0.358791, -0.237353, 0.902736,
		46.523190, 30.456575, 45.957390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.555882, 30.002502, 45.022926>,  <46.774342, 30.622723, 45.325474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.555882, 30.002502, 45.022926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363892, 29.705814, 44.835533>,  <46.248699, 29.527802, 44.723099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363892, 29.705814, 44.835533>,  <46.555882, 30.002502, 45.022926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.363892, 29.705814, 44.835533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873048, -0.456248, -0.172119,
		-0.086081, -0.491622, 0.866543,
		-0.479976, -0.741718, -0.468484,
		46.219898, 29.483299, 44.694988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.553413, 29.223095, 45.333927>,  <46.555882, 30.002502, 45.022926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.553413, 29.223095, 45.333927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548737, 29.289686, 44.939537>,  <46.545929, 29.329641, 44.702904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.548737, 29.289686, 44.939537>,  <46.553413, 29.223095, 45.333927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548737, 29.289686, 44.939537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961259, -0.269699, -0.056939,
		-0.275396, -0.948444, -0.156876,
		-0.011694, 0.166479, -0.985976,
		46.545227, 29.339630, 44.643745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.956135, 28.671289, 44.925667>,  <46.553413, 29.223095, 45.333927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.956135, 28.671289, 44.925667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.928185, 29.016844, 44.726139>,  <46.911415, 29.224176, 44.606422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.928185, 29.016844, 44.726139>,  <46.956135, 28.671289, 44.925667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.928185, 29.016844, 44.726139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996702, 0.081151, 0.000925,
		0.041278, -0.497107, -0.866707,
		-0.069874, 0.863886, -0.498817,
		46.907223, 29.276011, 44.576492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.434689, 28.578655, 44.259453>,  <46.956135, 28.671289, 44.925667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.434689, 28.578655, 44.259453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376392, 28.943939, 44.411667>,  <47.341415, 29.163109, 44.502995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376392, 28.943939, 44.411667>,  <47.434689, 28.578655, 44.259453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.376392, 28.943939, 44.411667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989041, 0.125307, 0.078076,
		0.023616, 0.387744, -0.921465,
		-0.145740, 0.913210, 0.380535,
		47.332672, 29.217903, 44.525826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.623695, 28.723806, 43.548759>,  <47.434689, 28.578655, 44.259453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.623695, 28.723806, 43.548759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365559, 28.491940, 43.349754>,  <47.210678, 28.352819, 43.230350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365559, 28.491940, 43.349754>,  <47.623695, 28.723806, 43.548759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.365559, 28.491940, 43.349754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176227, 0.520745, -0.835326,
		0.743289, -0.626746, -0.233905,
		-0.645342, -0.579668, -0.497513,
		47.171955, 28.318039, 43.200500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.833744, 28.373716, 42.937035>,  <47.623695, 28.723806, 43.548759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.833744, 28.373716, 42.937035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.444851, 28.459145, 42.898766>,  <47.211517, 28.510401, 42.875805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.444851, 28.459145, 42.898766>,  <47.833744, 28.373716, 42.937035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.444851, 28.459145, 42.898766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193898, 0.506223, -0.840322,
		-0.131035, -0.835539, -0.533577,
		-0.972231, 0.213571, -0.095677,
		47.153183, 28.523216, 42.870064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.711903, 28.294701, 42.150711>,  <47.833744, 28.373716, 42.937035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.711903, 28.294701, 42.150711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.436550, 28.522219, 42.330753>,  <47.271339, 28.658730, 42.438778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.436550, 28.522219, 42.330753>,  <47.711903, 28.294701, 42.150711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.436550, 28.522219, 42.330753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076431, 0.560210, -0.824817,
		-0.721308, -0.602194, -0.342166,
		-0.688385, 0.568795, 0.450110,
		47.230034, 28.692858, 42.465786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.128155, 28.278872, 41.707375>,  <47.711903, 28.294701, 42.150711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.128155, 28.278872, 41.707375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.149277, 28.624681, 41.907299>,  <47.161949, 28.832167, 42.027252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.149277, 28.624681, 41.907299>,  <47.128155, 28.278872, 41.707375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.149277, 28.624681, 41.907299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055331, 0.502272, -0.862938,
		-0.997071, 0.017913, 0.074358,
		0.052806, 0.864524, 0.499809,
		47.165119, 28.884039, 42.057243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.580246, 28.731146, 41.496136>,  <47.128155, 28.278872, 41.707375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.580246, 28.731146, 41.496136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.817635, 28.990070, 41.687458>,  <46.960068, 29.145426, 41.802254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.817635, 28.990070, 41.687458>,  <46.580246, 28.731146, 41.496136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.817635, 28.990070, 41.687458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119802, 0.658704, -0.742803,
		-0.795890, 0.383529, 0.468471,
		0.593470, 0.647313, 0.478308,
		46.995674, 29.184265, 41.830952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.238491, 29.410435, 41.426094>,  <46.580246, 28.731146, 41.496136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.238491, 29.410435, 41.426094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.624924, 29.453493, 41.519981>,  <46.856785, 29.479328, 41.576313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.624924, 29.453493, 41.519981>,  <46.238491, 29.410435, 41.426094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.624924, 29.453493, 41.519981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084764, 0.726399, -0.682027,
		-0.243914, 0.678791, 0.692639,
		0.966085, 0.107645, 0.234716,
		46.914749, 29.485786, 41.590397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.276455, 30.082352, 41.497650>,  <46.238491, 29.410435, 41.426094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.276455, 30.082352, 41.497650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649548, 29.957451, 41.425533>,  <46.873405, 29.882511, 41.382263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649548, 29.957451, 41.425533>,  <46.276455, 30.082352, 41.497650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.649548, 29.957451, 41.425533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145945, 0.784185, -0.603120,
		0.329705, 0.536239, 0.777009,
		0.932735, -0.312252, -0.180288,
		46.929367, 29.863775, 41.371449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.728439, 30.683018, 41.558720>,  <46.276455, 30.082352, 41.497650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.728439, 30.683018, 41.558720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932758, 30.413300, 41.345402>,  <47.055351, 30.251469, 41.217411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.932758, 30.413300, 41.345402>,  <46.728439, 30.683018, 41.558720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.932758, 30.413300, 41.345402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118792, 0.669740, -0.733032,
		0.851453, 0.311080, 0.422204,
		0.510799, -0.674298, -0.533298,
		47.085999, 30.211010, 41.185413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.389603, 30.998579, 41.322571>,  <46.728439, 30.683018, 41.558720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.389603, 30.998579, 41.322571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316463, 30.698349, 41.068577>,  <47.272579, 30.518211, 40.916180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316463, 30.698349, 41.068577>,  <47.389603, 30.998579, 41.322571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.316463, 30.698349, 41.068577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156649, 0.615379, -0.772509,
		0.970582, -0.240718, 0.005059,
		-0.182843, -0.750576, -0.634984,
		47.261612, 30.473177, 40.878082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.869244, 31.137678, 40.901905>,  <47.389603, 30.998579, 41.322571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.869244, 31.137678, 40.901905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.618252, 30.892752, 40.709515>,  <47.467655, 30.745796, 40.594082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.618252, 30.892752, 40.709515>,  <47.869244, 31.137678, 40.901905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.618252, 30.892752, 40.709515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126289, 0.529503, -0.838855,
		0.768322, -0.587107, -0.254924,
		-0.627480, -0.612317, -0.480974,
		47.430008, 30.709057, 40.565224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.204361, 30.944962, 40.268749>,  <47.869244, 31.137678, 40.901905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.204361, 30.944962, 40.268749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.815952, 30.875050, 40.203545>,  <47.582909, 30.833103, 40.164421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.815952, 30.875050, 40.203545>,  <48.204361, 30.944962, 40.268749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.815952, 30.875050, 40.203545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063054, 0.470569, -0.880107,
		0.230534, -0.864880, -0.445911,
		-0.971019, -0.174778, -0.163016,
		47.524647, 30.822617, 40.154640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.176899, 30.621622, 39.603386>,  <48.204361, 30.944962, 40.268749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.176899, 30.621622, 39.603386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.804028, 30.731968, 39.697140>,  <47.580303, 30.798176, 39.753391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.804028, 30.731968, 39.697140>,  <48.176899, 30.621622, 39.603386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.804028, 30.731968, 39.697140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106345, 0.410226, -0.905762,
		-0.346021, -0.869260, -0.353068,
		-0.932180, 0.275866, 0.234388,
		47.524372, 30.814728, 39.767456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.726074, 30.308319, 38.989262>,  <48.176899, 30.621622, 39.603386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.726074, 30.308319, 38.989262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.553181, 30.621342, 39.168495>,  <47.449444, 30.809155, 39.276035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.553181, 30.621342, 39.168495>,  <47.726074, 30.308319, 38.989262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.553181, 30.621342, 39.168495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173412, 0.415491, -0.892914,
		-0.884931, -0.463651, -0.043885,
		-0.432234, 0.782557, 0.448083,
		47.423512, 30.856110, 39.302921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.113075, 30.425547, 38.685764>,  <47.726074, 30.308319, 38.989262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.113075, 30.425547, 38.685764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.171288, 30.785048, 38.851204>,  <47.206215, 31.000748, 38.950466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.171288, 30.785048, 38.851204>,  <47.113075, 30.425547, 38.685764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.171288, 30.785048, 38.851204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275342, 0.438328, -0.855602,
		-0.950266, 0.010639, 0.311256,
		0.145535, 0.898752, 0.413599,
		47.214947, 31.054672, 38.975285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719929, 30.834421, 38.296669>,  <47.113075, 30.425547, 38.685764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719929, 30.834421, 38.296669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.904507, 31.128675, 38.495026>,  <47.015255, 31.305227, 38.614040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.904507, 31.128675, 38.495026>,  <46.719929, 30.834421, 38.296669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.904507, 31.128675, 38.495026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132378, 0.609797, -0.781424,
		-0.877237, 0.294939, 0.378770,
		0.461445, 0.735635, 0.495892,
		47.042942, 31.349365, 38.643795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265873, 31.413059, 38.249245>,  <46.719929, 30.834421, 38.296669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265873, 31.413059, 38.249245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.629875, 31.560022, 38.326088>,  <46.848278, 31.648199, 38.372192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.629875, 31.560022, 38.326088>,  <46.265873, 31.413059, 38.249245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.629875, 31.560022, 38.326088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102113, 0.647698, -0.755023,
		-0.401827, 0.667458, 0.626925,
		0.910004, 0.367406, 0.192107,
		46.902878, 31.670244, 38.383720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.254620, 32.109959, 38.296375>,  <46.265873, 31.413059, 38.249245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.254620, 32.109959, 38.296375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634323, 32.038330, 38.192959>,  <46.862144, 31.995354, 38.130909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634323, 32.038330, 38.192959>,  <46.254620, 32.109959, 38.296375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.634323, 32.038330, 38.192959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063290, 0.696488, -0.714772,
		0.308064, 0.694866, 0.649813,
		0.949258, -0.179069, -0.258541,
		46.919102, 31.984610, 38.115395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376621, 32.779991, 38.107109>,  <46.254620, 32.109959, 38.296375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376621, 32.779991, 38.107109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.688183, 32.553944, 37.998337>,  <46.875122, 32.418316, 37.933071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.688183, 32.553944, 37.998337>,  <46.376621, 32.779991, 38.107109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.688183, 32.553944, 37.998337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191696, 0.627399, -0.754734,
		0.597123, 0.535740, 0.597016,
		0.778908, -0.565114, -0.271935,
		46.921856, 32.384411, 37.916756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.923496, 33.224239, 38.090160>,  <46.376621, 32.779991, 38.107109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.923496, 33.224239, 38.090160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995831, 32.909187, 37.854553>,  <47.039230, 32.720158, 37.713188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995831, 32.909187, 37.854553>,  <46.923496, 33.224239, 38.090160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.995831, 32.909187, 37.854553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163215, 0.614616, -0.771756,
		0.969876, 0.043422, 0.239696,
		0.180832, -0.787630, -0.589014,
		47.050079, 32.672897, 37.677849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.631668, 33.404476, 37.744656>,  <46.923496, 33.224239, 38.090160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.631668, 33.404476, 37.744656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.423477, 33.139706, 37.528896>,  <47.298561, 32.980843, 37.399441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.423477, 33.139706, 37.528896>,  <47.631668, 33.404476, 37.744656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.423477, 33.139706, 37.528896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204789, 0.516502, -0.831436,
		0.828955, -0.543206, -0.133271,
		-0.520476, -0.661931, -0.539400,
		47.267334, 32.941128, 37.367077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.999218, 33.304432, 37.152908>,  <47.631668, 33.404476, 37.744656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.999218, 33.304432, 37.152908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.646530, 33.151756, 37.041996>,  <47.434917, 33.060150, 36.975449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.646530, 33.151756, 37.041996>,  <47.999218, 33.304432, 37.152908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.646530, 33.151756, 37.041996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143243, 0.343404, -0.928200,
		0.449503, -0.858131, -0.248111,
		-0.881719, -0.381688, -0.277282,
		47.382015, 33.037251, 36.958813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.102863, 32.927853, 36.568726>,  <47.999218, 33.304432, 37.152908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.102863, 32.927853, 36.568726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.714321, 33.020687, 36.589142>,  <47.481197, 33.076389, 36.601391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.714321, 33.020687, 36.589142>,  <48.102863, 32.927853, 36.568726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.714321, 33.020687, 36.589142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048105, 0.402400, -0.914199,
		-0.232714, -0.885556, -0.402038,
		-0.971355, 0.232087, 0.051044,
		47.422916, 33.090313, 36.604454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.010624, 33.049519, 35.845505>,  <48.102863, 32.927853, 36.568726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.010624, 33.049519, 35.845505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.704727, 33.219402, 36.039322>,  <47.521187, 33.321335, 36.155613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.704727, 33.219402, 36.039322>,  <48.010624, 33.049519, 35.845505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.704727, 33.219402, 36.039322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057647, 0.703897, -0.707959,
		-0.641749, -0.569341, -0.513818,
		-0.764745, 0.424712, 0.484546,
		47.475304, 33.346817, 36.184685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.523048, 33.205547, 35.392967>,  <48.010624, 33.049519, 35.845505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.523048, 33.205547, 35.392967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.464603, 33.452808, 35.701912>,  <47.429539, 33.601166, 35.887280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.464603, 33.452808, 35.701912>,  <47.523048, 33.205547, 35.392967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.464603, 33.452808, 35.701912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179769, 0.784331, -0.593723,
		-0.972798, 0.052098, -0.225723,
		-0.146109, 0.618150, 0.772361,
		47.420769, 33.638252, 35.933620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.903660, 33.688034, 35.308636>,  <47.523048, 33.205547, 35.392967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.903660, 33.688034, 35.308636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.165539, 33.865421, 35.553490>,  <47.322666, 33.971851, 35.700401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.165539, 33.865421, 35.553490>,  <46.903660, 33.688034, 35.308636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.165539, 33.865421, 35.553490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103464, 0.749622, -0.653729,
		-0.748773, 0.491331, 0.444897,
		0.654702, 0.443464, 0.612131,
		47.361950, 33.998459, 35.737129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.782928, 34.423115, 35.255203>,  <46.903660, 33.688034, 35.308636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.782928, 34.423115, 35.255203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.152927, 34.307121, 35.353416>,  <47.374928, 34.237526, 35.412342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.152927, 34.307121, 35.353416>,  <46.782928, 34.423115, 35.255203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.152927, 34.307121, 35.353416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379962, 0.701757, -0.602632,
		0.002452, 0.650727, 0.759308,
		0.924999, -0.289986, 0.245531,
		47.430428, 34.220127, 35.427074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.102253, 34.880138, 34.804420>,  <46.782928, 34.423115, 35.255203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.102253, 34.880138, 34.804420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.384747, 34.663853, 34.987225>,  <47.554241, 34.534081, 35.096909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.384747, 34.663853, 34.987225>,  <47.102253, 34.880138, 34.804420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.384747, 34.663853, 34.987225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702969, 0.458922, -0.543346,
		0.084062, 0.704996, 0.704212,
		0.706235, -0.540714, 0.457012,
		47.596619, 34.501640, 35.124329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.622398, 35.236656, 35.208187>,  <47.102253, 34.880138, 34.804420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.622398, 35.236656, 35.208187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.691830, 34.919113, 34.975063>,  <47.733490, 34.728588, 34.835190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.691830, 34.919113, 34.975063>,  <47.622398, 35.236656, 35.208187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.691830, 34.919113, 34.975063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703352, 0.514153, -0.490859,
		0.689323, -0.324713, 0.647608,
		0.173581, -0.793856, -0.582805,
		47.743904, 34.680958, 34.800220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.015404, 38.549938, 44.618690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697605, 38.755405, 44.748257>,  <37.506927, 38.878685, 44.825996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697605, 38.755405, 44.748257>,  <38.015404, 38.549938, 44.618690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697605, 38.755405, 44.748257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499846, -0.250240, -0.829177,
		-0.344871, -0.820682, 0.455572,
		-0.794493, 0.513675, 0.323913,
		37.459255, 38.909508, 44.845432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406052, 38.095768, 44.703838>,  <38.015404, 38.549938, 44.618690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406052, 38.095768, 44.703838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.254585, 38.465172, 44.679344>,  <37.163704, 38.686813, 44.664646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.254585, 38.465172, 44.679344>,  <37.406052, 38.095768, 44.703838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254585, 38.465172, 44.679344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550572, -0.277949, -0.787156,
		-0.743964, -0.264353, 0.613706,
		-0.378666, 0.923505, -0.061238,
		37.140984, 38.742222, 44.660973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720051, 37.970963, 44.581364>,  <37.406052, 38.095768, 44.703838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720051, 37.970963, 44.581364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810604, 38.339493, 44.454929>,  <36.864937, 38.560612, 44.379070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810604, 38.339493, 44.454929>,  <36.720051, 37.970963, 44.581364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810604, 38.339493, 44.454929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549794, -0.147007, -0.822262,
		-0.804038, 0.359931, 0.473258,
		0.226385, 0.921325, -0.316087,
		36.878521, 38.615891, 44.360104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092567, 38.353241, 44.395824>,  <36.720051, 37.970963, 44.581364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092567, 38.353241, 44.395824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.379642, 38.543694, 44.192562>,  <36.551888, 38.657967, 44.070606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.379642, 38.543694, 44.192562>,  <36.092567, 38.353241, 44.395824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379642, 38.543694, 44.192562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570660, -0.016072, -0.821029,
		-0.399088, 0.879225, 0.260177,
		0.717688, 0.476136, -0.508153,
		36.594948, 38.686535, 44.040115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670387, 38.771248, 43.961708>,  <36.092567, 38.353241, 44.395824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670387, 38.771248, 43.961708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047661, 38.787754, 43.829834>,  <36.274025, 38.797657, 43.750710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047661, 38.787754, 43.829834>,  <35.670387, 38.771248, 43.961708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047661, 38.787754, 43.829834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307963, -0.263899, -0.914066,
		-0.124721, 0.963668, -0.236199,
		0.943188, 0.041262, -0.329688,
		36.330616, 38.800133, 43.730927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578087, 39.119553, 43.411217>,  <35.670387, 38.771248, 43.961708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578087, 39.119553, 43.411217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.930534, 38.946659, 43.334484>,  <36.142002, 38.842922, 43.288445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.930534, 38.946659, 43.334484>,  <35.578087, 39.119553, 43.411217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930534, 38.946659, 43.334484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311392, -0.225020, -0.923256,
		0.355900, 0.873233, -0.332865,
		0.881119, -0.432238, -0.191833,
		36.194870, 38.816986, 43.276936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819942, 39.393181, 42.791115>,  <35.578087, 39.119553, 43.411217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819942, 39.393181, 42.791115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.999615, 39.037453, 42.825417>,  <36.107418, 38.824017, 42.845997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.999615, 39.037453, 42.825417>,  <35.819942, 39.393181, 42.791115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999615, 39.037453, 42.825417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175185, -0.181786, -0.967607,
		0.876098, 0.419607, -0.237450,
		0.449180, -0.889317, 0.085754,
		36.134369, 38.770657, 42.851143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391911, 39.415096, 42.342228>,  <35.819942, 39.393181, 42.791115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391911, 39.415096, 42.342228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.325405, 39.028687, 42.421371>,  <36.285503, 38.796841, 42.468857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.325405, 39.028687, 42.421371>,  <36.391911, 39.415096, 42.342228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325405, 39.028687, 42.421371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227996, -0.157556, -0.960830,
		0.959362, -0.204861, -0.194054,
		-0.166262, -0.966027, 0.197861,
		36.275528, 38.738880, 42.480728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595840, 39.093204, 41.788734>,  <36.391911, 39.415096, 42.342228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595840, 39.093204, 41.788734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.359108, 38.823483, 41.965389>,  <36.217068, 38.661648, 42.071381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.359108, 38.823483, 41.965389>,  <36.595840, 39.093204, 41.788734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359108, 38.823483, 41.965389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197284, -0.410053, -0.890469,
		0.781545, -0.614137, 0.109653,
		-0.591833, -0.674309, 0.441634,
		36.181557, 38.621189, 42.097881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834362, 38.439190, 41.778534>,  <36.595840, 39.093204, 41.788734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834362, 38.439190, 41.778534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.447811, 38.344872, 41.819569>,  <36.215881, 38.288280, 41.844189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.447811, 38.344872, 41.819569>,  <36.834362, 38.439190, 41.778534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447811, 38.344872, 41.819569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042828, -0.540956, -0.839960,
		0.253550, -0.807322, 0.532864,
		-0.966374, -0.235793, 0.102583,
		36.157898, 38.274132, 41.850342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788174, 37.761425, 41.608795>,  <36.834362, 38.439190, 41.778534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788174, 37.761425, 41.608795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408573, 37.878284, 41.561378>,  <36.180813, 37.948399, 41.532928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408573, 37.878284, 41.561378>,  <36.788174, 37.761425, 41.608795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408573, 37.878284, 41.561378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080562, -0.588203, -0.804691,
		-0.304817, -0.754100, 0.581739,
		-0.948998, 0.292149, -0.118543,
		36.123875, 37.965931, 41.525814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493454, 37.227463, 41.271618>,  <36.788174, 37.761425, 41.608795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493454, 37.227463, 41.271618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196873, 37.490078, 41.216175>,  <36.018925, 37.647648, 41.182907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.196873, 37.490078, 41.216175>,  <36.493454, 37.227463, 41.271618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196873, 37.490078, 41.216175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182615, -0.396206, -0.899818,
		-0.645680, -0.641859, 0.413660,
		-0.741451, 0.656535, -0.138609,
		35.974438, 37.687038, 41.174591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926468, 36.809742, 41.003345>,  <36.493454, 37.227463, 41.271618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926468, 36.809742, 41.003345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.869587, 37.198467, 40.928127>,  <35.835457, 37.431702, 40.882996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.869587, 37.198467, 40.928127>,  <35.926468, 36.809742, 41.003345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869587, 37.198467, 40.928127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218847, -0.216145, -0.951518,
		-0.965341, -0.094156, 0.243414,
		-0.142204, 0.971811, -0.188048,
		35.826927, 37.490009, 40.871712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396164, 36.762840, 40.514557>,  <35.926468, 36.809742, 41.003345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396164, 36.762840, 40.514557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553387, 37.129040, 40.480221>,  <35.647720, 37.348759, 40.459618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553387, 37.129040, 40.480221>,  <35.396164, 36.762840, 40.514557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553387, 37.129040, 40.480221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100069, -0.050214, -0.993713,
		-0.914053, 0.399176, 0.071876,
		0.393057, 0.915499, -0.085843,
		35.671303, 37.403690, 40.454468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040005, 37.122780, 39.963974>,  <35.396164, 36.762840, 40.514557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040005, 37.122780, 39.963974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.398472, 37.296070, 40.002354>,  <35.613552, 37.400043, 40.025383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.398472, 37.296070, 40.002354>,  <35.040005, 37.122780, 39.963974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398472, 37.296070, 40.002354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133688, -0.057422, -0.989358,
		-0.423106, 0.899454, -0.109377,
		0.896163, 0.433226, 0.095951,
		35.667320, 37.426037, 40.031139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975021, 37.699131, 39.491516>,  <35.040005, 37.122780, 39.963974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975021, 37.699131, 39.491516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.363541, 37.632046, 39.558979>,  <35.596653, 37.591793, 39.599457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.363541, 37.632046, 39.558979>,  <34.975021, 37.699131, 39.491516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363541, 37.632046, 39.558979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181975, 0.067373, -0.980992,
		0.153163, 0.983531, 0.095960,
		0.971301, -0.167714, 0.168659,
		35.654930, 37.581730, 39.609577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473709, 38.238125, 39.073650>,  <34.975021, 37.699131, 39.491516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473709, 38.238125, 39.073650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707279, 37.924534, 39.157948>,  <35.847420, 37.736382, 39.208527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707279, 37.924534, 39.157948>,  <35.473709, 38.238125, 39.073650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707279, 37.924534, 39.157948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301650, -0.031472, -0.952899,
		0.753682, 0.619993, 0.218108,
		0.583927, -0.783976, 0.210741,
		35.882458, 37.689342, 39.221169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226101, 38.410061, 39.018547>,  <35.473709, 38.238125, 39.073650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226101, 38.410061, 39.018547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194607, 38.015648, 38.959843>,  <36.175709, 37.778999, 38.924622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.194607, 38.015648, 38.959843>,  <36.226101, 38.410061, 39.018547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194607, 38.015648, 38.959843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646643, 0.061526, -0.760307,
		0.758718, -0.154769, 0.632767,
		-0.078740, -0.986033, -0.146761,
		36.170986, 37.719837, 38.915813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724541, 38.392689, 38.641701>,  <36.226101, 38.410061, 39.018547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724541, 38.392689, 38.641701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602043, 38.012142, 38.628292>,  <36.528545, 37.783813, 38.620247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602043, 38.012142, 38.628292>,  <36.724541, 38.392689, 38.641701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602043, 38.012142, 38.628292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736459, -0.214461, -0.641589,
		0.603193, -0.221172, 0.766316,
		-0.306246, -0.951362, -0.033523,
		36.510170, 37.726734, 38.618237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297588, 38.028702, 38.726059>,  <36.724541, 38.392689, 38.641701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297588, 38.028702, 38.726059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037365, 37.783894, 38.546192>,  <36.881229, 37.637009, 38.438271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037365, 37.783894, 38.546192>,  <37.297588, 38.028702, 38.726059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037365, 37.783894, 38.546192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690820, -0.230914, -0.685161,
		0.315500, -0.756378, 0.573021,
		-0.650559, -0.612023, -0.449668,
		36.842197, 37.600288, 38.411293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640064, 37.355705, 38.800087>,  <37.297588, 38.028702, 38.726059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640064, 37.355705, 38.800087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390007, 37.355114, 38.487885>,  <37.239971, 37.354759, 38.300564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390007, 37.355114, 38.487885>,  <37.640064, 37.355705, 38.800087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390007, 37.355114, 38.487885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722549, -0.379258, -0.578002,
		-0.295160, -0.925290, 0.238159,
		-0.625143, -0.001479, -0.780509,
		37.202465, 37.354671, 38.253731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748158, 36.728603, 38.477692>,  <37.640064, 37.355705, 38.800087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748158, 36.728603, 38.477692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.562355, 36.966660, 38.215382>,  <37.450874, 37.109493, 38.057995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.562355, 36.966660, 38.215382>,  <37.748158, 36.728603, 38.477692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562355, 36.966660, 38.215382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616501, -0.314279, -0.721911,
		-0.635737, -0.739616, -0.220922,
		-0.464506, 0.595144, -0.655773,
		37.423004, 37.145203, 38.018650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415955, 36.369526, 37.900761>,  <37.748158, 36.728603, 38.477692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415955, 36.369526, 37.900761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.558159, 36.736088, 37.827209>,  <37.643482, 36.956024, 37.783077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.558159, 36.736088, 37.827209>,  <37.415955, 36.369526, 37.900761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558159, 36.736088, 37.827209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646271, -0.383133, -0.659957,
		-0.675238, 0.115786, -0.728455,
		0.355508, 0.916408, -0.183877,
		37.664810, 37.011009, 37.772045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907207, 36.259796, 37.340878>,  <37.415955, 36.369526, 37.900761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907207, 36.259796, 37.340878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.938225, 36.658417, 37.352730>,  <37.956837, 36.897587, 37.359840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.938225, 36.658417, 37.352730>,  <37.907207, 36.259796, 37.340878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938225, 36.658417, 37.352730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749832, -0.038707, -0.660495,
		-0.657069, 0.073435, -0.750245,
		0.077543, 0.996549, 0.029630,
		37.961487, 36.957382, 37.361618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599216, 36.113441, 37.042057>,  <37.907207, 36.259796, 37.340878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599216, 36.113441, 37.042057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941582, 36.314037, 37.092529>,  <39.146999, 36.434395, 37.122810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941582, 36.314037, 37.092529>,  <38.599216, 36.113441, 37.042057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941582, 36.314037, 37.092529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214585, 0.122435, 0.969001,
		0.470499, -0.856455, 0.212406,
		0.855912, 0.501493, 0.126177,
		39.198357, 36.464485, 37.130383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978352, 35.925365, 37.713741>,  <38.599216, 36.113441, 37.042057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978352, 35.925365, 37.713741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.126667, 36.285656, 37.623234>,  <39.215656, 36.501831, 37.568928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.126667, 36.285656, 37.623234>,  <38.978352, 35.925365, 37.713741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126667, 36.285656, 37.623234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068845, 0.216311, 0.973894,
		0.926161, -0.376690, 0.018195,
		0.370792, 0.900730, -0.226272,
		39.237904, 36.555874, 37.555351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672894, 36.018101, 38.008320>,  <38.978352, 35.925365, 37.713741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672894, 36.018101, 38.008320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.559143, 36.397865, 37.955032>,  <39.490891, 36.625725, 37.923061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.559143, 36.397865, 37.955032>,  <39.672894, 36.018101, 38.008320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559143, 36.397865, 37.955032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301100, 0.220371, 0.927780,
		0.910201, 0.223731, -0.348537,
		-0.284380, 0.949411, -0.133217,
		39.473827, 36.682690, 37.915066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231544, 36.454533, 38.280777>,  <39.672894, 36.018101, 38.008320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231544, 36.454533, 38.280777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.903248, 36.682560, 38.265797>,  <39.706268, 36.819378, 38.256809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.903248, 36.682560, 38.265797>,  <40.231544, 36.454533, 38.280777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903248, 36.682560, 38.265797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178798, 0.318581, 0.930880,
		0.542598, 0.757316, -0.363400,
		-0.820742, 0.570069, -0.037455,
		39.657024, 36.853580, 38.254559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539383, 36.907925, 38.682819>,  <40.231544, 36.454533, 38.280777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539383, 36.907925, 38.682819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.145161, 36.975597, 38.679928>,  <39.908627, 37.016201, 38.678192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.145161, 36.975597, 38.679928>,  <40.539383, 36.907925, 38.682819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145161, 36.975597, 38.679928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088049, 0.548458, 0.831529,
		0.144643, 0.818884, -0.555434,
		-0.985559, 0.169180, -0.007228,
		39.849495, 37.026352, 38.677761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346325, 37.742924, 38.726887>,  <40.539383, 36.907925, 38.682819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346325, 37.742924, 38.726887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.030602, 37.518147, 38.825851>,  <39.841167, 37.383278, 38.885231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.030602, 37.518147, 38.825851>,  <40.346325, 37.742924, 38.726887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030602, 37.518147, 38.825851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183712, 0.600635, 0.778131,
		-0.585874, 0.568729, -0.577321,
		-0.789305, -0.561947, 0.247414,
		39.793812, 37.349564, 38.900074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820679, 38.223705, 38.949860>,  <40.346325, 37.742924, 38.726887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820679, 38.223705, 38.949860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.734108, 37.876560, 39.128735>,  <39.682167, 37.668274, 39.236061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.734108, 37.876560, 39.128735>,  <39.820679, 38.223705, 38.949860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734108, 37.876560, 39.128735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192567, 0.486993, 0.851913,
		-0.957119, 0.098264, -0.272520,
		-0.216428, -0.867860, 0.447188,
		39.669178, 37.616203, 39.262890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165321, 38.354088, 39.398197>,  <39.820679, 38.223705, 38.949860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165321, 38.354088, 39.398197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.299232, 38.013901, 39.560501>,  <39.379578, 37.809788, 39.657883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.299232, 38.013901, 39.560501>,  <39.165321, 38.354088, 39.398197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299232, 38.013901, 39.560501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269593, 0.326158, 0.906058,
		-0.902909, -0.412715, -0.120089,
		0.334776, -0.850463, 0.405756,
		39.399666, 37.758762, 39.682228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564877, 38.190136, 39.777321>,  <39.165321, 38.354088, 39.398197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564877, 38.190136, 39.777321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.855812, 37.961121, 39.928673>,  <39.030373, 37.823711, 40.019485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.855812, 37.961121, 39.928673>,  <38.564877, 38.190136, 39.777321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855812, 37.961121, 39.928673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508857, -0.079979, 0.857127,
		-0.460476, -0.815967, -0.349513,
		0.727341, -0.572539, 0.378382,
		39.074013, 37.789360, 40.042187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219318, 37.609276, 40.020626>,  <38.564877, 38.190136, 39.777321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219318, 37.609276, 40.020626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548542, 37.650211, 40.244091>,  <38.746075, 37.674774, 40.378170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548542, 37.650211, 40.244091>,  <38.219318, 37.609276, 40.020626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548542, 37.650211, 40.244091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541032, -0.157977, 0.826031,
		0.172790, -0.982125, -0.074656,
		0.823060, 0.102338, 0.558658,
		38.795460, 37.680912, 40.411690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149986, 37.082558, 40.484486>,  <38.219318, 37.609276, 40.020626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149986, 37.082558, 40.484486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.430450, 37.284142, 40.686237>,  <38.598728, 37.405094, 40.807289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.430450, 37.284142, 40.686237>,  <38.149986, 37.082558, 40.484486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430450, 37.284142, 40.686237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440280, -0.250399, 0.862238,
		0.560833, -0.826633, 0.046316,
		0.701156, 0.503963, 0.504381,
		38.640797, 37.435329, 40.837551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300346, 36.654648, 41.084827>,  <38.149986, 37.082558, 40.484486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300346, 36.654648, 41.084827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434547, 37.017075, 41.187962>,  <38.515068, 37.234531, 41.249844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434547, 37.017075, 41.187962>,  <38.300346, 36.654648, 41.084827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434547, 37.017075, 41.187962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262926, -0.172759, 0.949223,
		0.904603, -0.386259, 0.180267,
		0.335504, 0.906067, 0.257836,
		38.535198, 37.288895, 41.265312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930305, 36.616135, 41.585697>,  <38.300346, 36.654648, 41.084827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930305, 36.616135, 41.585697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788319, 36.989700, 41.602638>,  <38.703125, 37.213840, 41.612804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788319, 36.989700, 41.602638>,  <38.930305, 36.616135, 41.585697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788319, 36.989700, 41.602638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040991, -0.029715, 0.998718,
		0.933980, 0.356248, -0.027734,
		-0.354967, 0.933919, 0.042356,
		38.681828, 37.269875, 41.615345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443996, 36.996338, 42.014355>,  <38.930305, 36.616135, 41.585697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443996, 36.996338, 42.014355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.110172, 37.212772, 42.055790>,  <38.909878, 37.342632, 42.080650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.110172, 37.212772, 42.055790>,  <39.443996, 36.996338, 42.014355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110172, 37.212772, 42.055790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166648, 0.068722, 0.983619,
		0.525101, 0.838156, -0.147523,
		-0.834564, 0.541083, 0.103592,
		38.859802, 37.375099, 42.086868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492836, 37.356224, 42.569134>,  <39.443996, 36.996338, 42.014355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492836, 37.356224, 42.569134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095211, 37.381538, 42.533722>,  <38.856636, 37.396729, 42.512474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095211, 37.381538, 42.533722>,  <39.492836, 37.356224, 42.569134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095211, 37.381538, 42.533722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075924, 0.179506, 0.980823,
		0.077967, 0.981719, -0.173635,
		-0.994061, 0.063289, -0.088532,
		38.796993, 37.400524, 42.507164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313736, 37.972343, 42.868172>,  <39.492836, 37.356224, 42.569134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313736, 37.972343, 42.868172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.000664, 37.723373, 42.869186>,  <38.812820, 37.573994, 42.869797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.000664, 37.723373, 42.869186>,  <39.313736, 37.972343, 42.868172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000664, 37.723373, 42.869186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068657, -0.082274, 0.994242,
		-0.618630, 0.778344, 0.107128,
		-0.782677, -0.622423, 0.002541,
		38.765862, 37.536648, 42.869949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.748337, 38.340576, 43.108234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648067, 37.958324, 43.170124>,  <38.587906, 37.728973, 43.207256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648067, 37.958324, 43.170124>,  <38.748337, 38.340576, 43.108234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648067, 37.958324, 43.170124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042294, 0.170481, 0.984453,
		-0.967147, 0.240234, -0.083152,
		-0.250675, -0.955627, 0.154720,
		38.572865, 37.671635, 43.216541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410378, 38.290138, 43.718048>,  <38.748337, 38.340576, 43.108234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410378, 38.290138, 43.718048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.496361, 37.901356, 43.679913>,  <38.547951, 37.668087, 43.657032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.496361, 37.901356, 43.679913>,  <38.410378, 38.290138, 43.718048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496361, 37.901356, 43.679913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170477, -0.133466, 0.976281,
		-0.961628, -0.193611, -0.194387,
		0.214963, -0.971958, -0.095339,
		38.560848, 37.609768, 43.651310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991928, 37.953751, 44.094864>,  <38.410378, 38.290138, 43.718048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991928, 37.953751, 44.094864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.290901, 37.688461, 44.079460>,  <38.470284, 37.529289, 44.070217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.290901, 37.688461, 44.079460>,  <37.991928, 37.953751, 44.094864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290901, 37.688461, 44.079460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000775, -0.057097, 0.998368,
		-0.664338, -0.746242, -0.042162,
		0.747432, -0.663221, -0.038510,
		38.515129, 37.489494, 44.067905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854588, 37.540455, 44.634567>,  <37.991928, 37.953751, 44.094864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854588, 37.540455, 44.634567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238743, 37.453091, 44.565338>,  <38.469234, 37.400673, 44.523800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238743, 37.453091, 44.565338>,  <37.854588, 37.540455, 44.634567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238743, 37.453091, 44.565338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144631, -0.140204, 0.979502,
		-0.238201, -0.965732, -0.103061,
		0.960387, -0.218412, -0.173072,
		38.526859, 37.387569, 44.513416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996784, 36.875660, 45.052593>,  <37.854588, 37.540455, 44.634567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996784, 36.875660, 45.052593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.349442, 37.022163, 44.933552>,  <38.561035, 37.110065, 44.862125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.349442, 37.022163, 44.933552>,  <37.996784, 36.875660, 45.052593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349442, 37.022163, 44.933552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315318, 0.012022, 0.948910,
		0.351120, -0.930437, -0.104888,
		0.881640, 0.366254, -0.297605,
		38.613934, 37.132038, 44.844269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504646, 36.535015, 45.350319>,  <37.996784, 36.875660, 45.052593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504646, 36.535015, 45.350319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.705269, 36.867020, 45.252731>,  <38.825642, 37.066223, 45.194180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.705269, 36.867020, 45.252731>,  <38.504646, 36.535015, 45.350319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705269, 36.867020, 45.252731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219144, 0.150917, 0.963950,
		0.836908, -0.536942, -0.106198,
		0.501558, 0.830011, -0.243971,
		38.855736, 37.116024, 45.179539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221550, 36.494972, 45.783794>,  <38.504646, 36.535015, 45.350319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221550, 36.494972, 45.783794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.133083, 36.874531, 45.693737>,  <39.080002, 37.102264, 45.639702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.133083, 36.874531, 45.693737>,  <39.221550, 36.494972, 45.783794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133083, 36.874531, 45.693737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310687, 0.287384, 0.906027,
		0.924423, 0.130437, -0.358369,
		-0.221169, 0.948892, -0.225139,
		39.066734, 37.159199, 45.626194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882198, 36.832504, 45.804588>,  <39.221550, 36.494972, 45.783794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882198, 36.832504, 45.804588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.602921, 37.117027, 45.836990>,  <39.435352, 37.287743, 45.856430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.602921, 37.117027, 45.836990>,  <39.882198, 36.832504, 45.804588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602921, 37.117027, 45.836990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366118, 0.257535, 0.894222,
		0.615210, 0.653996, -0.440233,
		-0.698193, 0.711312, 0.081002,
		39.393463, 37.330421, 45.861290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207214, 37.448242, 45.960075>,  <39.882198, 36.832504, 45.804588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207214, 37.448242, 45.960075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.831543, 37.436974, 46.096981>,  <39.606140, 37.430210, 46.179127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.831543, 37.436974, 46.096981>,  <40.207214, 37.448242, 45.960075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831543, 37.436974, 46.096981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333576, 0.162118, 0.928679,
		-0.081652, 0.986369, -0.142859,
		-0.939181, -0.028174, 0.342266,
		39.549789, 37.428520, 46.199661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086899, 38.084110, 46.283669>,  <40.207214, 37.448242, 45.960075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086899, 38.084110, 46.283669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.837284, 37.814606, 46.441971>,  <39.687515, 37.652905, 46.536953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.837284, 37.814606, 46.441971>,  <40.086899, 38.084110, 46.283669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837284, 37.814606, 46.441971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336196, 0.225682, 0.914352,
		-0.705370, 0.703642, 0.085681,
		-0.624040, -0.673762, 0.395751,
		39.650070, 37.612476, 46.560696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992699, 38.365261, 46.918961>,  <40.086899, 38.084110, 46.283669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992699, 38.365261, 46.918961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.858738, 37.991192, 46.965069>,  <39.778362, 37.766750, 46.992733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.858738, 37.991192, 46.965069>,  <39.992699, 38.365261, 46.918961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858738, 37.991192, 46.965069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491482, -0.069002, 0.868150,
		-0.803919, 0.347399, 0.482730,
		-0.334904, -0.935175, 0.115269,
		39.758266, 37.710640, 46.999649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794933, 38.238678, 47.618973>,  <39.992699, 38.365261, 46.918961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794933, 38.238678, 47.618973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.830673, 37.857002, 47.504749>,  <39.852116, 37.627998, 47.436214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.830673, 37.857002, 47.504749>,  <39.794933, 38.238678, 47.618973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830673, 37.857002, 47.504749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476914, -0.210716, 0.853318,
		-0.874397, -0.212432, 0.436237,
		0.089350, -0.954186, -0.285561,
		39.857479, 37.570747, 47.419083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700665, 37.895370, 48.134636>,  <39.794933, 38.238678, 47.618973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700665, 37.895370, 48.134636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.872883, 37.610687, 47.912605>,  <39.976215, 37.439877, 47.779388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.872883, 37.610687, 47.912605>,  <39.700665, 37.895370, 48.134636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872883, 37.610687, 47.912605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562386, -0.269475, 0.781732,
		-0.705941, -0.648737, 0.284231,
		0.430546, -0.711704, -0.555074,
		40.002048, 37.397175, 47.746082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684422, 37.235844, 48.537247>,  <39.700665, 37.895370, 48.134636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684422, 37.235844, 48.537247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.983471, 37.209045, 48.272953>,  <40.162903, 37.192966, 48.114376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.983471, 37.209045, 48.272953>,  <39.684422, 37.235844, 48.537247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983471, 37.209045, 48.272953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620650, -0.283540, 0.731026,
		-0.236317, -0.956618, -0.170404,
		0.747628, -0.066992, -0.660730,
		40.207760, 37.188946, 48.074734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079277, 36.581039, 48.620129>,  <39.684422, 37.235844, 48.537247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079277, 36.581039, 48.620129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.324478, 36.840466, 48.439648>,  <40.471600, 36.996120, 48.331360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.324478, 36.840466, 48.439648>,  <40.079277, 36.581039, 48.620129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324478, 36.840466, 48.439648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679773, -0.141903, 0.719563,
		0.402659, -0.747812, -0.527866,
		0.613004, 0.648568, -0.451205,
		40.508381, 37.035034, 48.304287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717758, 36.277142, 48.552677>,  <40.079277, 36.581039, 48.620129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717758, 36.277142, 48.552677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.793858, 36.668316, 48.518143>,  <40.839516, 36.903019, 48.497421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.793858, 36.668316, 48.518143>,  <40.717758, 36.277142, 48.552677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793858, 36.668316, 48.518143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582636, -0.041692, 0.811663,
		0.790153, -0.204716, -0.577711,
		0.190247, 0.977933, -0.086332,
		40.850933, 36.961697, 48.492245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453621, 36.489426, 48.329308>,  <40.717758, 36.277142, 48.552677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453621, 36.489426, 48.329308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.286179, 36.795948, 48.524261>,  <41.185715, 36.979862, 48.641235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.286179, 36.795948, 48.524261>,  <41.453621, 36.489426, 48.329308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286179, 36.795948, 48.524261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673767, -0.097795, 0.732444,
		0.608938, 0.634993, -0.475372,
		-0.418607, 0.766303, 0.487388,
		41.160595, 37.025841, 48.670479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998711, 36.787067, 48.709766>,  <41.453621, 36.489426, 48.329308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998711, 36.787067, 48.709766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.686001, 36.966782, 48.882725>,  <41.498375, 37.074612, 48.986500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.686001, 36.966782, 48.882725>,  <41.998711, 36.787067, 48.709766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686001, 36.966782, 48.882725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448531, -0.076539, 0.890484,
		0.433181, 0.890101, -0.141684,
		-0.781777, 0.449290, 0.432393,
		41.451469, 37.101570, 49.012444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303753, 37.123066, 49.261780>,  <41.998711, 36.787067, 48.709766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303753, 37.123066, 49.261780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.916660, 37.147907, 49.359463>,  <41.684402, 37.162811, 49.418072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.916660, 37.147907, 49.359463>,  <42.303753, 37.123066, 49.261780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916660, 37.147907, 49.359463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238189, -0.090733, 0.966971,
		0.082206, 0.993937, 0.073014,
		-0.967734, 0.062099, 0.244204,
		41.626339, 37.166538, 49.432724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288021, 37.756828, 49.678516>,  <42.303753, 37.123066, 49.261780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288021, 37.756828, 49.678516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.988556, 37.512268, 49.781036>,  <41.808876, 37.365532, 49.842548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.988556, 37.512268, 49.781036>,  <42.288021, 37.756828, 49.678516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988556, 37.512268, 49.781036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431608, -0.156062, 0.888459,
		-0.503203, 0.775782, 0.380723,
		-0.748666, -0.611398, 0.256303,
		41.763954, 37.328850, 49.857925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162663, 37.918575, 50.287952>,  <42.288021, 37.756828, 49.678516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162663, 37.918575, 50.287952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.976658, 37.564529, 50.280613>,  <41.865055, 37.352100, 50.276211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.976658, 37.564529, 50.280613>,  <42.162663, 37.918575, 50.287952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976658, 37.564529, 50.280613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344935, -0.200229, 0.917021,
		-0.815342, 0.420098, 0.398416,
		-0.465013, -0.885114, -0.018348,
		41.837154, 37.298996, 50.275108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762535, 37.839424, 50.872337>,  <42.162663, 37.918575, 50.287952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762535, 37.839424, 50.872337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.860107, 37.469391, 50.755913>,  <41.918652, 37.247372, 50.686058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.860107, 37.469391, 50.755913>,  <41.762535, 37.839424, 50.872337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860107, 37.469391, 50.755913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310872, -0.209699, 0.927030,
		-0.918618, -0.316609, 0.236432,
		0.243926, -0.925087, -0.291058,
		41.933285, 37.191864, 50.668594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378242, 38.421154, 51.217186>,  <41.762535, 37.839424, 50.872337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378242, 38.421154, 51.217186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.076015, 38.242363, 51.025627>,  <40.894680, 38.135090, 50.910694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.076015, 38.242363, 51.025627>,  <41.378242, 38.421154, 51.217186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076015, 38.242363, 51.025627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161396, -0.581497, 0.797379,
		-0.634881, 0.679762, 0.367218,
		-0.755564, -0.446973, -0.478893,
		40.849346, 38.108273, 50.881958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062008, 38.573437, 51.948219>,  <41.378242, 38.421154, 51.217186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062008, 38.573437, 51.948219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.778423, 38.546989, 52.229076>,  <40.608273, 38.531120, 52.397591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.778423, 38.546989, 52.229076>,  <41.062008, 38.573437, 51.948219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778423, 38.546989, 52.229076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704115, 0.122685, -0.699407,
		-0.039896, -0.990241, -0.133536,
		-0.708964, -0.066121, 0.702138,
		40.565735, 38.527153, 52.439716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623039, 38.002769, 51.771477>,  <41.062008, 38.573437, 51.948219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623039, 38.002769, 51.771477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.413570, 38.244751, 52.011406>,  <40.287888, 38.389942, 52.155365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.413570, 38.244751, 52.011406>,  <40.623039, 38.002769, 51.771477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413570, 38.244751, 52.011406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764425, -0.022875, -0.644307,
		-0.376056, -0.795931, 0.474422,
		-0.523676, 0.604955, 0.599828,
		40.256466, 38.426239, 52.191353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883038, 37.662357, 51.896690>,  <40.623039, 38.002769, 51.771477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883038, 37.662357, 51.896690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.873325, 38.058872, 51.948467>,  <39.867496, 38.296783, 51.979534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.873325, 38.058872, 51.948467>,  <39.883038, 37.662357, 51.896690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873325, 38.058872, 51.948467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752231, 0.067164, -0.655468,
		-0.658452, -0.113284, 0.744048,
		-0.024280, 0.991290, 0.129440,
		39.866043, 38.356258, 51.987301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241653, 37.834991, 51.872414>,  <39.883038, 37.662357, 51.896690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241653, 37.834991, 51.872414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.424026, 38.174397, 51.764977>,  <39.533451, 38.378040, 51.700512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.424026, 38.174397, 51.764977>,  <39.241653, 37.834991, 51.872414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424026, 38.174397, 51.764977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601624, 0.071433, -0.795579,
		-0.655874, 0.524327, 0.543056,
		0.455936, 0.848515, -0.268597,
		39.560806, 38.428951, 51.684399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724648, 38.209309, 51.560349>,  <39.241653, 37.834991, 51.872414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724648, 38.209309, 51.560349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.055065, 38.396687, 51.434994>,  <39.253315, 38.509113, 51.359779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.055065, 38.396687, 51.434994>,  <38.724648, 38.209309, 51.560349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055065, 38.396687, 51.434994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444109, 0.198643, -0.873675,
		-0.347018, 0.860871, 0.372129,
		0.826042, 0.468447, -0.313388,
		39.302879, 38.537220, 51.340977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427429, 38.835617, 51.228321>,  <38.724648, 38.209309, 51.560349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427429, 38.835617, 51.228321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.784714, 38.731243, 51.081848>,  <38.999084, 38.668617, 50.993965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.784714, 38.731243, 51.081848>,  <38.427429, 38.835617, 51.228321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784714, 38.731243, 51.081848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279401, 0.315978, -0.906693,
		0.352292, 0.912180, 0.209330,
		0.893211, -0.260934, -0.366181,
		39.052677, 38.652962, 50.971992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652107, 39.414165, 51.015808>,  <38.427429, 38.835617, 51.228321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652107, 39.414165, 51.015808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830761, 39.127171, 50.801994>,  <38.937954, 38.954975, 50.673706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830761, 39.127171, 50.801994>,  <38.652107, 39.414165, 51.015808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830761, 39.127171, 50.801994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401086, 0.373489, -0.836442,
		0.799782, 0.587976, -0.120963,
		0.446630, -0.717488, -0.534539,
		38.964748, 38.911922, 50.641632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724098, 39.674892, 50.391216>,  <38.652107, 39.414165, 51.015808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724098, 39.674892, 50.391216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.780872, 39.286900, 50.312241>,  <38.814938, 39.054104, 50.264854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.780872, 39.286900, 50.312241>,  <38.724098, 39.674892, 50.391216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780872, 39.286900, 50.312241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379218, 0.130959, -0.915993,
		0.914357, 0.204882, -0.349249,
		0.141934, -0.969986, -0.197438,
		38.823452, 38.995903, 50.253010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737419, 39.674160, 49.647095>,  <38.724098, 39.674892, 50.391216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737419, 39.674160, 49.647095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.686337, 39.288925, 49.741875>,  <38.655685, 39.057785, 49.798744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.686337, 39.288925, 49.741875>,  <38.737419, 39.674160, 49.647095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686337, 39.288925, 49.741875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491619, -0.146021, -0.858481,
		0.861395, -0.226126, -0.454826,
		-0.127711, -0.963091, 0.236949,
		38.648022, 38.999996, 49.812958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107967, 39.356960, 49.107235>,  <38.737419, 39.674160, 49.647095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107967, 39.356960, 49.107235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.831512, 39.117626, 49.269382>,  <38.665638, 38.974026, 49.366669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.831512, 39.117626, 49.269382>,  <39.107967, 39.356960, 49.107235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831512, 39.117626, 49.269382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508914, 0.004659, -0.860805,
		0.513162, -0.801232, -0.307722,
		-0.691138, -0.598336, 0.405367,
		38.624172, 38.938126, 49.390991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065441, 38.646095, 48.703869>,  <39.107967, 39.356960, 49.107235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065441, 38.646095, 48.703869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.719528, 38.755360, 48.872406>,  <38.511982, 38.820919, 48.973530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.719528, 38.755360, 48.872406>,  <39.065441, 38.646095, 48.703869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719528, 38.755360, 48.872406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463315, -0.110512, -0.879276,
		-0.193625, -0.955598, 0.222131,
		-0.864783, 0.273166, 0.421345,
		38.460094, 38.837307, 48.998810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571907, 38.115383, 48.564285>,  <39.065441, 38.646095, 48.703869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571907, 38.115383, 48.564285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.390659, 38.468197, 48.615967>,  <38.281910, 38.679886, 48.646976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.390659, 38.468197, 48.615967>,  <38.571907, 38.115383, 48.564285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390659, 38.468197, 48.615967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313564, -0.022026, -0.949311,
		-0.834481, -0.470667, 0.286555,
		-0.453121, 0.882036, 0.129204,
		38.254723, 38.732807, 48.654728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871620, 37.987312, 48.482685>,  <38.571907, 38.115383, 48.564285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871620, 37.987312, 48.482685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.929417, 38.378086, 48.419781>,  <37.964096, 38.612549, 48.382038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.929417, 38.378086, 48.419781>,  <37.871620, 37.987312, 48.482685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929417, 38.378086, 48.419781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341198, -0.099991, -0.934658,
		-0.928820, 0.188706, 0.318879,
		0.144490, 0.976930, -0.157259,
		37.972763, 38.671165, 48.372604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372215, 38.130936, 48.085609>,  <37.871620, 37.987312, 48.482685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372215, 38.130936, 48.085609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612400, 38.446198, 48.031570>,  <37.756512, 38.635353, 47.999146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612400, 38.446198, 48.031570>,  <37.372215, 38.130936, 48.085609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612400, 38.446198, 48.031570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263353, 0.035388, -0.964050,
		-0.755041, 0.614457, 0.228813,
		0.600465, 0.788156, -0.135100,
		37.792538, 38.682644, 47.991039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034676, 38.554375, 47.645912>,  <37.372215, 38.130936, 48.085609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034676, 38.554375, 47.645912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405128, 38.701443, 47.612225>,  <37.627399, 38.789684, 47.592010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405128, 38.701443, 47.612225>,  <37.034676, 38.554375, 47.645912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405128, 38.701443, 47.612225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194958, 0.275454, -0.941338,
		-0.322898, 0.888227, 0.326787,
		0.926136, 0.367666, -0.084223,
		37.682968, 38.811741, 47.586956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003849, 39.272469, 47.364582>,  <37.034676, 38.554375, 47.645912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003849, 39.272469, 47.364582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.373703, 39.141079, 47.287483>,  <37.595615, 39.062244, 47.241222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.373703, 39.141079, 47.287483>,  <37.003849, 39.272469, 47.364582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373703, 39.141079, 47.287483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078546, 0.330757, -0.940442,
		0.372661, 0.884707, 0.280030,
		0.924638, -0.328470, -0.192750,
		37.651093, 39.042538, 47.229660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237743, 39.799644, 46.951481>,  <37.003849, 39.272469, 47.364582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237743, 39.799644, 46.951481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458706, 39.472534, 46.886856>,  <37.591282, 39.276268, 46.848080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458706, 39.472534, 46.886856>,  <37.237743, 39.799644, 46.951481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458706, 39.472534, 46.886856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089162, 0.134739, -0.986861,
		0.828795, 0.559550, 0.001515,
		0.552402, -0.817771, -0.161562,
		37.624428, 39.227203, 46.838387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818344, 40.021191, 46.610893>,  <37.237743, 39.799644, 46.951481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818344, 40.021191, 46.610893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827118, 39.635490, 46.505257>,  <37.832382, 39.404072, 46.441875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827118, 39.635490, 46.505257>,  <37.818344, 40.021191, 46.610893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827118, 39.635490, 46.505257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060540, 0.262393, -0.963060,
		0.997925, 0.037114, -0.052620,
		0.021936, -0.964247, -0.264095,
		37.833698, 39.346218, 46.426029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164608, 40.045223, 45.884800>,  <37.818344, 40.021191, 46.610893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164608, 40.045223, 45.884800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.963154, 39.704216, 45.940742>,  <37.842281, 39.499611, 45.974308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.963154, 39.704216, 45.940742>,  <38.164608, 40.045223, 45.884800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963154, 39.704216, 45.940742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015362, -0.153022, -0.988103,
		0.863779, -0.499793, 0.063971,
		-0.503636, -0.852521, 0.139855,
		37.812061, 39.448460, 45.982700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512886, 39.556194, 45.437679>,  <38.164608, 40.045223, 45.884800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512886, 39.556194, 45.437679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137833, 39.440041, 45.514122>,  <37.912800, 39.370350, 45.559990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.137833, 39.440041, 45.514122>,  <38.512886, 39.556194, 45.437679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137833, 39.440041, 45.514122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232938, 0.116749, -0.965458,
		0.258045, -0.949760, -0.177110,
		-0.937631, -0.290388, 0.191109,
		37.856544, 39.352924, 45.571453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358540, 39.134407, 44.927692>,  <38.512886, 39.556194, 45.437679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358540, 39.134407, 44.927692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977127, 39.152084, 45.046902>,  <37.748280, 39.162689, 45.118427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977127, 39.152084, 45.046902>,  <38.358540, 39.134407, 44.927692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977127, 39.152084, 45.046902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296192, 0.043648, -0.954131,
		-0.055178, -0.998069, -0.028528,
		-0.953533, 0.044198, 0.298028,
		37.691067, 39.165344, 45.136311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<48.041958, 32.320198, 44.957977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.657310, 32.337177, 45.066414>,  <47.426521, 32.347363, 45.131477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.657310, 32.337177, 45.066414>,  <48.041958, 32.320198, 44.957977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.657310, 32.337177, 45.066414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247518, 0.292255, -0.923754,
		-0.118438, -0.955398, -0.270531,
		-0.961617, 0.042446, 0.271093,
		47.368824, 32.349911, 45.147743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.594479, 31.833223, 44.504250>,  <48.041958, 32.320198, 44.957977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.594479, 31.833223, 44.504250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.358543, 32.118816, 44.655151>,  <47.216984, 32.290173, 44.745693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.358543, 32.118816, 44.655151>,  <47.594479, 31.833223, 44.504250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.358543, 32.118816, 44.655151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326633, 0.216311, -0.920066,
		-0.738516, -0.665911, 0.105622,
		-0.589835, 0.713983, 0.377258,
		47.181591, 32.333012, 44.768330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.999268, 31.877474, 43.987637>,  <47.594479, 31.833223, 44.504250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.999268, 31.877474, 43.987637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.913437, 32.193687, 44.217075>,  <46.861938, 32.383415, 44.354740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.913437, 32.193687, 44.217075>,  <46.999268, 31.877474, 43.987637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.913437, 32.193687, 44.217075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460570, 0.435988, -0.773168,
		-0.861297, -0.430085, 0.270544,
		-0.214574, 0.790532, 0.573600,
		46.849064, 32.430847, 44.389156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.345669, 32.050220, 43.713470>,  <46.999268, 31.877474, 43.987637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.345669, 32.050220, 43.713470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.518841, 32.365749, 43.887974>,  <46.622746, 32.555069, 43.992676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.518841, 32.365749, 43.887974>,  <46.345669, 32.050220, 43.713470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518841, 32.365749, 43.887974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438102, 0.607089, -0.662955,
		-0.787804, 0.095891, 0.608416,
		0.432934, 0.788827, 0.436257,
		46.648720, 32.602398, 44.018852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803440, 32.652908, 43.638256>,  <46.345669, 32.050220, 43.713470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803440, 32.652908, 43.638256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.159290, 32.815063, 43.722385>,  <46.372799, 32.912357, 43.772861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.159290, 32.815063, 43.722385>,  <45.803440, 32.652908, 43.638256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.159290, 32.815063, 43.722385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121139, 0.653490, -0.747179,
		-0.440339, 0.639228, 0.630467,
		0.889622, 0.405387, 0.210322,
		46.426178, 32.936680, 43.785480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788761, 33.402653, 43.607418>,  <45.803440, 32.652908, 43.638256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788761, 33.402653, 43.607418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.178993, 33.339733, 43.546108>,  <46.413132, 33.301979, 43.509323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.178993, 33.339733, 43.546108>,  <45.788761, 33.402653, 43.607418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.178993, 33.339733, 43.546108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036410, 0.572393, -0.819171,
		0.216593, 0.804750, 0.552689,
		0.975583, -0.157303, -0.153277,
		46.471668, 33.292542, 43.500126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.175282, 34.055328, 43.592873>,  <45.788761, 33.402653, 43.607418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.175282, 34.055328, 43.592873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.355721, 33.779694, 43.366009>,  <46.463985, 33.614315, 43.229889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.355721, 33.779694, 43.366009>,  <46.175282, 34.055328, 43.592873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.355721, 33.779694, 43.366009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092150, 0.596137, -0.797577,
		0.887703, 0.412051, 0.205419,
		0.451100, -0.689083, -0.567163,
		46.491051, 33.572968, 43.195862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376057, 34.429302, 43.146873>,  <46.175282, 34.055328, 43.592873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376057, 34.429302, 43.146873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.469227, 34.070179, 42.997372>,  <46.525131, 33.854706, 42.907673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.469227, 34.070179, 42.997372>,  <46.376057, 34.429302, 43.146873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.469227, 34.070179, 42.997372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028018, 0.390357, -0.920237,
		0.972090, 0.203878, 0.116081,
		0.232929, -0.897806, -0.373750,
		46.539104, 33.800838, 42.885246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.781929, 34.616119, 42.584133>,  <46.376057, 34.429302, 43.146873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.781929, 34.616119, 42.584133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.679558, 34.234875, 42.519527>,  <46.618134, 34.006130, 42.480766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.679558, 34.234875, 42.519527>,  <46.781929, 34.616119, 42.584133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679558, 34.234875, 42.519527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179180, 0.117410, -0.976785,
		0.949944, -0.278928, 0.140729,
		-0.255930, -0.953108, -0.161511,
		46.602779, 33.948944, 42.471073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.266247, 34.400944, 42.082653>,  <46.781929, 34.616119, 42.584133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.266247, 34.400944, 42.082653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.948132, 34.161079, 42.047058>,  <46.757263, 34.017162, 42.025703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.948132, 34.161079, 42.047058>,  <47.266247, 34.400944, 42.082653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.948132, 34.161079, 42.047058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156625, -0.061444, -0.985745,
		0.585646, -0.797891, 0.142788,
		-0.795291, -0.599662, -0.088985,
		46.709545, 33.981182, 42.020363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.414707, 34.199242, 41.450970>,  <47.266247, 34.400944, 42.082653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.414707, 34.199242, 41.450970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.041965, 34.076420, 41.528294>,  <46.818321, 34.002728, 41.574688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.041965, 34.076420, 41.528294>,  <47.414707, 34.199242, 41.450970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.041965, 34.076420, 41.528294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154810, -0.145387, -0.977188,
		0.328158, -0.940520, 0.087944,
		-0.931851, -0.307058, 0.193312,
		46.762409, 33.984303, 41.586288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.246716, 33.573807, 41.119144>,  <47.414707, 34.199242, 41.450970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.246716, 33.573807, 41.119144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.893246, 33.754581, 41.167931>,  <46.681164, 33.863049, 41.197201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.893246, 33.754581, 41.167931>,  <47.246716, 33.573807, 41.119144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893246, 33.754581, 41.167931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183046, -0.093809, -0.978619,
		-0.430835, -0.887102, 0.165622,
		-0.883671, 0.451940, 0.121964,
		46.628143, 33.890163, 41.204521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.754063, 33.185787, 40.752975>,  <47.246716, 33.573807, 41.119144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.754063, 33.185787, 40.752975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.581017, 33.545197, 40.782661>,  <46.477188, 33.760841, 40.800472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.581017, 33.545197, 40.782661>,  <46.754063, 33.185787, 40.752975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.581017, 33.545197, 40.782661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090259, 0.038740, -0.995165,
		-0.897050, -0.437221, 0.064340,
		-0.432614, 0.898519, 0.074214,
		46.451233, 33.814751, 40.804924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.296154, 33.196774, 40.189964>,  <46.754063, 33.185787, 40.752975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.296154, 33.196774, 40.189964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.312042, 33.585705, 40.282055>,  <46.321575, 33.819061, 40.337307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.312042, 33.585705, 40.282055>,  <46.296154, 33.196774, 40.189964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.312042, 33.585705, 40.282055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099865, 0.233116, -0.967308,
		-0.994208, 0.015430, 0.106361,
		0.039720, 0.972327, 0.230225,
		46.323959, 33.877403, 40.351124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735756, 33.511833, 39.755932>,  <46.296154, 33.196774, 40.189964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735756, 33.511833, 39.755932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.969345, 33.817455, 39.865616>,  <46.109497, 34.000828, 39.931427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.969345, 33.817455, 39.865616>,  <45.735756, 33.511833, 39.755932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969345, 33.817455, 39.865616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121091, 0.416006, -0.901263,
		-0.802691, 0.493109, 0.335457,
		0.583973, 0.764057, 0.274213,
		46.144539, 34.046673, 39.947880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292370, 34.168198, 39.771549>,  <45.735756, 33.511833, 39.755932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292370, 34.168198, 39.771549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.680733, 34.229603, 39.698032>,  <45.913750, 34.266445, 39.653923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.680733, 34.229603, 39.698032>,  <45.292370, 34.168198, 39.771549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680733, 34.229603, 39.698032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231862, 0.410703, -0.881795,
		-0.059881, 0.898753, 0.434347,
		0.970904, 0.153511, -0.183794,
		45.972004, 34.275658, 39.642895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.306946, 34.833572, 39.456066>,  <45.292370, 34.168198, 39.771549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.306946, 34.833572, 39.456066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.662552, 34.669750, 39.374180>,  <45.875916, 34.571457, 39.325047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.662552, 34.669750, 39.374180>,  <45.306946, 34.833572, 39.456066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.662552, 34.669750, 39.374180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115050, 0.232953, -0.965659,
		0.443185, 0.882040, 0.159979,
		0.889017, -0.409559, -0.204720,
		45.929256, 34.546883, 39.312763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.698685, 35.304291, 39.061073>,  <45.306946, 34.833572, 39.456066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.698685, 35.304291, 39.061073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.891151, 34.963722, 38.977592>,  <46.006634, 34.759380, 38.927505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.891151, 34.963722, 38.977592>,  <45.698685, 35.304291, 39.061073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.891151, 34.963722, 38.977592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044660, 0.213955, -0.975822,
		0.875489, 0.478858, 0.064924,
		0.481171, -0.851422, -0.208701,
		46.035503, 34.708294, 38.914982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006306, 35.436996, 38.386944>,  <45.698685, 35.304291, 39.061073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006306, 35.436996, 38.386944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.008003, 35.039589, 38.432388>,  <46.009022, 34.801144, 38.459656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.008003, 35.039589, 38.432388>,  <46.006306, 35.436996, 38.386944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.008003, 35.039589, 38.432388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114425, -0.113350, -0.986944,
		0.993423, -0.008813, -0.114164,
		0.004243, -0.993516, 0.113613,
		46.009277, 34.741535, 38.466473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435856, 35.140171, 37.825947>,  <46.006306, 35.436996, 38.386944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435856, 35.140171, 37.825947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.197594, 34.839203, 37.938412>,  <46.054634, 34.658623, 38.005890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.197594, 34.839203, 37.938412>,  <46.435856, 35.140171, 37.825947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.197594, 34.839203, 37.938412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149069, -0.240398, -0.959159,
		0.789284, -0.613243, 0.031032,
		-0.595658, -0.752424, 0.281158,
		46.018898, 34.613476, 38.022758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.625031, 34.662045, 37.390518>,  <46.435856, 35.140171, 37.825947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.625031, 34.662045, 37.390518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.283432, 34.504627, 37.526642>,  <46.078472, 34.410179, 37.608315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.283432, 34.504627, 37.526642>,  <46.625031, 34.662045, 37.390518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.283432, 34.504627, 37.526642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204479, -0.347573, -0.915085,
		0.478406, -0.851069, 0.216357,
		-0.854000, -0.393542, 0.340307,
		46.027233, 34.386566, 37.628735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.104275, 34.424141, 36.840111>,  <46.625031, 34.662045, 37.390518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.104275, 34.424141, 36.840111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.125732, 34.147373, 36.552116>,  <47.138607, 33.981312, 36.379322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.125732, 34.147373, 36.552116>,  <47.104275, 34.424141, 36.840111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.125732, 34.147373, 36.552116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134410, -0.719462, 0.681402,
		-0.989473, 0.060221, -0.131595,
		0.053643, -0.691916, -0.719982,
		47.141827, 33.939796, 36.336121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.542854, 33.962654, 36.857658>,  <47.104275, 34.424141, 36.840111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.542854, 33.962654, 36.857658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.819973, 33.756618, 36.655785>,  <46.986244, 33.632996, 36.534660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.819973, 33.756618, 36.655785>,  <46.542854, 33.962654, 36.857658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.819973, 33.756618, 36.655785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203834, -0.811191, 0.548107,
		-0.691722, -0.276856, -0.666986,
		0.692800, -0.515092, -0.504686,
		47.027813, 33.602089, 36.504379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.175236, 33.404312, 36.682438>,  <46.542854, 33.962654, 36.857658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.175236, 33.404312, 36.682438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.562317, 33.308113, 36.652229>,  <46.794567, 33.250393, 36.634106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.562317, 33.308113, 36.652229>,  <46.175236, 33.404312, 36.682438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.562317, 33.308113, 36.652229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177779, -0.863528, 0.471927,
		-0.178709, -0.443262, -0.878398,
		0.967707, -0.240498, -0.075517,
		46.852631, 33.235962, 36.629574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237213, 32.622616, 36.566460>,  <46.175236, 33.404312, 36.682438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237213, 32.622616, 36.566460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.603916, 32.727367, 36.687107>,  <46.823936, 32.790218, 36.759495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.603916, 32.727367, 36.687107>,  <46.237213, 32.622616, 36.566460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.603916, 32.727367, 36.687107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010755, -0.738651, 0.674002,
		0.399299, -0.621141, -0.674348,
		0.916757, 0.261876, 0.301623,
		46.878944, 32.805931, 36.777596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.612522, 31.995132, 36.680958>,  <46.237213, 32.622616, 36.566460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.612522, 31.995132, 36.680958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.819984, 32.269711, 36.884838>,  <46.944462, 32.434456, 37.007164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.819984, 32.269711, 36.884838>,  <46.612522, 31.995132, 36.680958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.819984, 32.269711, 36.884838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112141, -0.645617, 0.755383,
		0.847598, -0.334624, -0.411830,
		0.518654, 0.686444, 0.509698,
		46.975582, 32.475643, 37.037746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.233856, 31.660227, 36.893536>,  <46.612522, 31.995132, 36.680958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.233856, 31.660227, 36.893536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.178600, 31.971302, 37.138851>,  <47.145447, 32.157948, 37.286041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.178600, 31.971302, 37.138851>,  <47.233856, 31.660227, 36.893536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.178600, 31.971302, 37.138851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310513, -0.553998, 0.772443,
		0.940479, 0.297135, -0.164955,
		-0.138135, 0.777687, 0.613288,
		47.137161, 32.204609, 37.322838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.824444, 31.643143, 37.329327>,  <47.233856, 31.660227, 36.893536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.824444, 31.643143, 37.329327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.555943, 31.870159, 37.520042>,  <47.394844, 32.006371, 37.634472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.555943, 31.870159, 37.520042>,  <47.824444, 31.643143, 37.329327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.555943, 31.870159, 37.520042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290966, -0.389853, 0.873701,
		0.681736, 0.725199, 0.096554,
		-0.671248, 0.567540, 0.476785,
		47.354568, 32.040421, 37.663078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.164188, 32.046803, 37.920898>,  <47.824444, 31.643143, 37.329327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.164188, 32.046803, 37.920898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.770538, 32.015366, 37.984554>,  <47.534348, 31.996502, 38.022747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.770538, 32.015366, 37.984554>,  <48.164188, 32.046803, 37.920898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.770538, 32.015366, 37.984554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177407, -0.408316, 0.895435,
		-0.005399, 0.909451, 0.415777,
		-0.984123, -0.078596, 0.159138,
		47.475300, 31.991787, 38.032295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.065575, 32.207554, 38.631435>,  <48.164188, 32.046803, 37.920898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.065575, 32.207554, 38.631435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.708290, 32.041424, 38.562531>,  <47.493919, 31.941746, 38.521187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.708290, 32.041424, 38.562531>,  <48.065575, 32.207554, 38.631435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.708290, 32.041424, 38.562531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058703, -0.487551, 0.871119,
		-0.445786, 0.767982, 0.459868,
		-0.893212, -0.415328, -0.172261,
		47.440327, 31.916826, 38.510853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.737465, 32.247654, 39.226952>,  <48.065575, 32.207554, 38.631435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.737465, 32.247654, 39.226952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.511845, 31.975380, 39.039970>,  <47.376472, 31.812016, 38.927780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.511845, 31.975380, 39.039970>,  <47.737465, 32.247654, 39.226952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.511845, 31.975380, 39.039970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017241, -0.556277, 0.830818,
		-0.825559, 0.476685, 0.302034,
		-0.564053, -0.680682, -0.467458,
		47.342628, 31.771175, 38.899734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.132256, 32.172924, 39.681419>,  <47.737465, 32.247654, 39.226952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.132256, 32.172924, 39.681419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.174633, 31.857933, 39.438553>,  <47.200062, 31.668938, 39.292831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.174633, 31.857933, 39.438553>,  <47.132256, 32.172924, 39.681419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.174633, 31.857933, 39.438553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039215, -0.613440, 0.788767,
		-0.993598, -0.059758, -0.095874,
		0.105948, -0.787477, -0.607169,
		47.206417, 31.621691, 39.256401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.467854, 31.772600, 39.723728>,  <47.132256, 32.172924, 39.681419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.467854, 31.772600, 39.723728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.763111, 31.531614, 39.602280>,  <46.940266, 31.387024, 39.529411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.763111, 31.531614, 39.602280>,  <46.467854, 31.772600, 39.723728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.763111, 31.531614, 39.602280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161663, -0.594886, 0.787386,
		-0.654991, -0.532117, -0.536506,
		0.738141, -0.602463, -0.303621,
		46.984554, 31.350876, 39.511192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.231995, 31.156521, 40.015388>,  <46.467854, 31.772600, 39.723728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.231995, 31.156521, 40.015388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.614941, 31.077297, 39.931263>,  <46.844707, 31.029762, 39.880787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.614941, 31.077297, 39.931263>,  <46.231995, 31.156521, 40.015388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.614941, 31.077297, 39.931263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013956, -0.695442, 0.718447,
		-0.288557, -0.690748, -0.663025,
		0.957361, -0.198060, -0.210315,
		46.902149, 31.017879, 39.868168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.248516, 30.440388, 39.930401>,  <46.231995, 31.156521, 40.015388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.248516, 30.440388, 39.930401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.620319, 30.568897, 40.002842>,  <46.843403, 30.646004, 40.046307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.620319, 30.568897, 40.002842>,  <46.248516, 30.440388, 39.930401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.620319, 30.568897, 40.002842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087564, -0.669257, 0.737854,
		0.358255, -0.669983, -0.650212,
		0.929508, 0.321275, 0.181098,
		46.899174, 30.665279, 40.057171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.638943, 29.904421, 39.892319>,  <46.248516, 30.440388, 39.930401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.638943, 29.904421, 39.892319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.883465, 30.138330, 40.105614>,  <47.030178, 30.278677, 40.233589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.883465, 30.138330, 40.105614>,  <46.638943, 29.904421, 39.892319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.883465, 30.138330, 40.105614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083019, -0.717461, 0.691634,
		0.787025, -0.378533, -0.487138,
		0.611309, 0.584775, 0.533234,
		47.066856, 30.313763, 40.265583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.152336, 29.401360, 40.062702>,  <46.638943, 29.904421, 39.892319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.152336, 29.401360, 40.062702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.192921, 29.716574, 40.305588>,  <47.217274, 29.905703, 40.451317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.192921, 29.716574, 40.305588>,  <47.152336, 29.401360, 40.062702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.192921, 29.716574, 40.305588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306907, -0.605385, 0.734383,
		0.946316, 0.111844, -0.303278,
		0.101464, 0.788036, 0.607211,
		47.223358, 29.952984, 40.487751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.846615, 29.378752, 40.459145>,  <47.152336, 29.401360, 40.062702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.846615, 29.378752, 40.459145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.623890, 29.622278, 40.685173>,  <47.490257, 29.768394, 40.820789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.623890, 29.622278, 40.685173>,  <47.846615, 29.378752, 40.459145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.623890, 29.622278, 40.685173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212899, -0.552954, 0.805553,
		0.802893, 0.568842, 0.178274,
		-0.556810, 0.608818, 0.565069,
		47.456848, 29.804924, 40.854694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.128895, 29.434381, 41.096771>,  <47.846615, 29.378752, 40.459145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.128895, 29.434381, 41.096771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.795609, 29.617729, 41.220482>,  <47.595638, 29.727737, 41.294708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.795609, 29.617729, 41.220482>,  <48.128895, 29.434381, 41.096771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.795609, 29.617729, 41.220482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034200, -0.600973, 0.798538,
		0.551893, 0.654775, 0.516415,
		-0.833214, 0.458368, 0.309280,
		47.545643, 29.755239, 41.313267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.205692, 29.781221, 41.810223>,  <48.128895, 29.434381, 41.096771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.205692, 29.781221, 41.810223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.824902, 29.669579, 41.759880>,  <47.596428, 29.602592, 41.729675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.824902, 29.669579, 41.759880>,  <48.205692, 29.781221, 41.810223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.824902, 29.669579, 41.759880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047779, -0.541462, 0.839367,
		-0.302418, 0.793044, 0.528795,
		-0.951977, -0.279105, -0.125857,
		47.539307, 29.585848, 41.722122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.929920, 29.900585, 42.473495>,  <48.205692, 29.781221, 41.810223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.929920, 29.900585, 42.473495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.634586, 29.700478, 42.292564>,  <47.457386, 29.580414, 42.184006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.634586, 29.700478, 42.292564>,  <47.929920, 29.900585, 42.473495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.634586, 29.700478, 42.292564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086951, -0.594468, 0.799404,
		-0.668811, 0.629555, 0.395415,
		-0.738330, -0.500268, -0.452327,
		47.413086, 29.550398, 42.156868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.449497, 29.748438, 43.018330>,  <47.929920, 29.900585, 42.473495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.449497, 29.748438, 43.018330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.384968, 29.493921, 42.716572>,  <47.346252, 29.341211, 42.535519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.384968, 29.493921, 42.716572>,  <47.449497, 29.748438, 43.018330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.384968, 29.493921, 42.716572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088616, -0.751978, 0.653205,
		-0.982915, 0.172227, 0.064925,
		-0.161322, -0.636292, -0.754392,
		47.336571, 29.303034, 42.490253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.886948, 37.676510, 41.094913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547615, 37.691620, 40.883663>,  <39.344017, 37.700684, 40.756912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547615, 37.691620, 40.883663>,  <39.886948, 37.676510, 41.094913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547615, 37.691620, 40.883663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529346, 0.038666, -0.847525,
		-0.011593, -0.998538, -0.052796,
		-0.848327, 0.037773, -0.528123,
		39.293118, 37.702950, 40.725227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214478, 37.288357, 40.444759>,  <39.886948, 37.676510, 41.094913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214478, 37.288357, 40.444759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848122, 37.413200, 40.343781>,  <39.628307, 37.488106, 40.283192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848122, 37.413200, 40.343781>,  <40.214478, 37.288357, 40.444759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848122, 37.413200, 40.343781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118849, -0.389848, -0.913177,
		-0.383400, -0.866384, 0.319972,
		-0.915903, 0.312084, -0.252437,
		39.573353, 37.506832, 40.268047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957676, 36.681786, 40.085403>,  <40.214478, 37.288357, 40.444759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957676, 36.681786, 40.085403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746834, 37.007751, 39.989010>,  <39.620327, 37.203331, 39.931175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746834, 37.007751, 39.989010>,  <39.957676, 36.681786, 40.085403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746834, 37.007751, 39.989010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088263, -0.334540, -0.938239,
		-0.845205, -0.473280, 0.248264,
		-0.527103, 0.814917, -0.240982,
		39.588703, 37.252228, 39.916714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221954, 36.549118, 39.792850>,  <39.957676, 36.681786, 40.085403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221954, 36.549118, 39.792850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347813, 36.891579, 39.628899>,  <39.423328, 37.097057, 39.530529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347813, 36.891579, 39.628899>,  <39.221954, 36.549118, 39.792850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347813, 36.891579, 39.628899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284809, -0.326758, -0.901173,
		-0.905474, 0.400284, 0.141029,
		0.314643, 0.856155, -0.409876,
		39.442204, 37.148426, 39.505936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741676, 36.657433, 39.275192>,  <39.221954, 36.549118, 39.792850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741676, 36.657433, 39.275192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076015, 36.851574, 39.172592>,  <39.276619, 36.968060, 39.111034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076015, 36.851574, 39.172592>,  <38.741676, 36.657433, 39.275192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076015, 36.851574, 39.172592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069951, -0.369268, -0.926687,
		-0.544486, 0.792511, -0.274701,
		0.835848, 0.485352, -0.256499,
		39.326771, 36.997181, 39.095642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519169, 37.063087, 38.725170>,  <38.741676, 36.657433, 39.275192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519169, 37.063087, 38.725170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916977, 37.038364, 38.691467>,  <39.155663, 37.023529, 38.671246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916977, 37.038364, 38.691467>,  <38.519169, 37.063087, 38.725170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916977, 37.038364, 38.691467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094123, -0.179558, -0.979234,
		0.045398, 0.981803, -0.184393,
		0.994525, -0.061811, -0.084259,
		39.215336, 37.019821, 38.666191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622307, 37.604145, 38.216503>,  <38.519169, 37.063087, 38.725170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622307, 37.604145, 38.216503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946476, 37.371864, 38.247482>,  <39.140980, 37.232498, 38.266071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946476, 37.371864, 38.247482>,  <38.622307, 37.604145, 38.216503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946476, 37.371864, 38.247482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106811, 0.016478, -0.994143,
		0.576020, 0.813953, 0.075379,
		0.810427, -0.580698, 0.077447,
		39.189606, 37.197655, 38.270718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009506, 37.798889, 37.561810>,  <38.622307, 37.604145, 38.216503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009506, 37.798889, 37.561810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171455, 37.457973, 37.694283>,  <39.268623, 37.253426, 37.773766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171455, 37.457973, 37.694283>,  <39.009506, 37.798889, 37.561810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171455, 37.457973, 37.694283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129840, -0.304941, -0.943479,
		0.905107, 0.424992, -0.012802,
		0.404874, -0.852287, 0.331185,
		39.292919, 37.202286, 37.793636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668873, 37.709057, 37.219440>,  <39.009506, 37.798889, 37.561810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668873, 37.709057, 37.219440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547169, 37.346645, 37.337105>,  <39.474148, 37.129196, 37.407703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547169, 37.346645, 37.337105>,  <39.668873, 37.709057, 37.219440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547169, 37.346645, 37.337105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249658, -0.373850, -0.893257,
		0.919291, -0.198344, 0.339946,
		-0.304261, -0.906033, 0.294159,
		39.455891, 37.074837, 37.425354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193676, 37.274647, 37.030655>,  <39.668873, 37.709057, 37.219440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193676, 37.274647, 37.030655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857006, 37.059891, 37.053761>,  <39.655003, 36.931038, 37.067623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857006, 37.059891, 37.053761>,  <40.193676, 37.274647, 37.030655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857006, 37.059891, 37.053761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212669, -0.427913, -0.878443,
		0.496344, -0.727078, 0.474342,
		-0.841674, -0.536888, 0.057766,
		39.604504, 36.898823, 37.071091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365486, 36.600609, 36.883255>,  <40.193676, 37.274647, 37.030655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365486, 36.600609, 36.883255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971684, 36.549530, 36.835186>,  <39.735401, 36.518883, 36.806347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971684, 36.549530, 36.835186>,  <40.365486, 36.600609, 36.883255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971684, 36.549530, 36.835186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167722, -0.485866, -0.857790,
		0.051147, -0.864655, 0.499756,
		-0.984507, -0.127694, -0.120171,
		39.676331, 36.511223, 36.799133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254719, 35.879299, 36.723148>,  <40.365486, 36.600609, 36.883255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254719, 35.879299, 36.723148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953175, 36.096138, 36.574650>,  <39.772247, 36.226242, 36.485550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953175, 36.096138, 36.574650>,  <40.254719, 35.879299, 36.723148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953175, 36.096138, 36.574650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091120, -0.473316, -0.876167,
		-0.650685, -0.694336, 0.307419,
		-0.753860, 0.542097, -0.371248,
		39.727016, 36.258766, 36.463276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772369, 35.402374, 36.475552>,  <40.254719, 35.879299, 36.723148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772369, 35.402374, 36.475552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742020, 35.733715, 36.253532>,  <39.723808, 35.932518, 36.120319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742020, 35.733715, 36.253532>,  <39.772369, 35.402374, 36.475552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742020, 35.733715, 36.253532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299182, -0.512094, -0.805140,
		-0.951174, -0.227154, -0.208969,
		-0.075879, 0.828349, -0.555051,
		39.719257, 35.982220, 36.087017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028988, 35.216106, 35.782509>,  <39.772369, 35.402374, 36.475552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028988, 35.216106, 35.782509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294506, 34.929260, 35.697544>,  <40.453819, 34.757153, 35.646564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294506, 34.929260, 35.697544>,  <40.028988, 35.216106, 35.782509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294506, 34.929260, 35.697544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747125, 0.648818, 0.144360,
		0.034293, -0.254523, 0.966458,
		0.663799, -0.717114, -0.212411,
		40.493645, 34.714127, 35.633820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407944, 35.078194, 36.369694>,  <40.028988, 35.216106, 35.782509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407944, 35.078194, 36.369694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606377, 35.007351, 36.029686>,  <40.725437, 34.964848, 35.825680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606377, 35.007351, 36.029686>,  <40.407944, 35.078194, 36.369694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606377, 35.007351, 36.029686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577401, 0.798434, 0.170619,
		0.648470, -0.575445, 0.498347,
		0.496079, -0.177105, -0.850023,
		40.755199, 34.954220, 35.774677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570076, 34.386219, 36.431290>,  <40.407944, 35.078194, 36.369694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570076, 34.386219, 36.431290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786964, 34.283104, 36.751175>,  <40.917095, 34.221237, 36.943108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786964, 34.283104, 36.751175>,  <40.570076, 34.386219, 36.431290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786964, 34.283104, 36.751175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840212, -0.158754, 0.518500,
		-0.006700, -0.953072, -0.302669,
		0.542217, -0.257780, 0.799718,
		40.949631, 34.205769, 36.991089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339478, 33.798038, 36.652729>,  <40.570076, 34.386219, 36.431290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339478, 33.798038, 36.652729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529751, 33.906113, 36.987564>,  <40.643917, 33.970959, 37.188465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529751, 33.906113, 36.987564>,  <40.339478, 33.798038, 36.652729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529751, 33.906113, 36.987564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766807, -0.338884, 0.545129,
		0.430963, -0.901197, 0.045979,
		0.475687, 0.270187, 0.837090,
		40.672459, 33.987167, 37.238689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384930, 33.170731, 37.120842>,  <40.339478, 33.798038, 36.652729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384930, 33.170731, 37.120842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403652, 33.501556, 37.344902>,  <40.414886, 33.700054, 37.479340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403652, 33.501556, 37.344902>,  <40.384930, 33.170731, 37.120842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403652, 33.501556, 37.344902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557029, -0.443868, 0.701926,
		0.829173, -0.344876, 0.439925,
		0.046809, 0.827068, 0.560149,
		40.417694, 33.749676, 37.512947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618103, 32.990429, 37.751617>,  <40.384930, 33.170731, 37.120842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618103, 32.990429, 37.751617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436577, 33.339897, 37.821758>,  <40.327663, 33.549580, 37.863842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436577, 33.339897, 37.821758>,  <40.618103, 32.990429, 37.751617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436577, 33.339897, 37.821758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383212, -0.368996, 0.846753,
		0.804489, 0.317072, 0.502258,
		-0.453812, 0.873675, 0.175347,
		40.300434, 33.602001, 37.874363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428394, 32.939369, 38.458954>,  <40.618103, 32.990429, 37.751617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428394, 32.939369, 38.458954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208412, 33.252510, 38.342548>,  <40.076424, 33.440395, 38.272705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208412, 33.252510, 38.342548>,  <40.428394, 32.939369, 38.458954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208412, 33.252510, 38.342548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584674, -0.112051, 0.803493,
		0.596411, 0.612032, 0.519338,
		-0.549956, 0.782855, -0.291010,
		40.043427, 33.487366, 38.255245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469315, 33.417149, 39.151787>,  <40.428394, 32.939369, 38.458954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469315, 33.417149, 39.151787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162060, 33.522583, 38.918385>,  <39.977707, 33.585846, 38.778343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162060, 33.522583, 38.918385>,  <40.469315, 33.417149, 39.151787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162060, 33.522583, 38.918385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496419, 0.330402, 0.802747,
		0.404388, 0.906286, -0.122944,
		-0.768139, 0.263590, -0.583509,
		39.931618, 33.601662, 38.743332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352943, 34.190403, 39.175175>,  <40.469315, 33.417149, 39.151787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352943, 34.190403, 39.175175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008774, 34.015842, 39.069939>,  <39.802273, 33.911106, 39.006798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008774, 34.015842, 39.069939>,  <40.352943, 34.190403, 39.175175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008774, 34.015842, 39.069939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371499, 0.183830, 0.910052,
		-0.348788, 0.880771, -0.320296,
		-0.860428, -0.436404, -0.263088,
		39.750645, 33.884922, 38.991013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885326, 34.576382, 39.512932>,  <40.352943, 34.190403, 39.175175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885326, 34.576382, 39.512932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619461, 34.288353, 39.433205>,  <39.459942, 34.115536, 39.385368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619461, 34.288353, 39.433205>,  <39.885326, 34.576382, 39.512932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619461, 34.288353, 39.433205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434818, 0.155850, 0.886930,
		-0.607586, 0.676175, -0.416685,
		-0.664660, -0.720068, -0.199321,
		39.420063, 34.072334, 39.373409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177898, 34.825581, 39.567699>,  <39.885326, 34.576382, 39.512932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177898, 34.825581, 39.567699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114964, 34.430756, 39.580055>,  <39.077202, 34.193859, 39.587471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114964, 34.430756, 39.580055>,  <39.177898, 34.825581, 39.567699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114964, 34.430756, 39.580055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617528, 0.122746, 0.776912,
		-0.770653, 0.103158, -0.628851,
		-0.157333, -0.987062, 0.030892,
		39.067764, 34.134636, 39.589321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430603, 34.813065, 39.816792>,  <39.177898, 34.825581, 39.567699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430603, 34.813065, 39.816792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563095, 34.438866, 39.865997>,  <38.642590, 34.214348, 39.895523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563095, 34.438866, 39.865997>,  <38.430603, 34.813065, 39.816792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563095, 34.438866, 39.865997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552447, -0.086586, 0.829039,
		-0.764911, -0.342563, -0.545492,
		0.331230, -0.935496, 0.123017,
		38.662464, 34.158218, 39.902901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779148, 34.323002, 39.937309>,  <38.430603, 34.813065, 39.816792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779148, 34.323002, 39.937309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123898, 34.189083, 40.089672>,  <38.330746, 34.108734, 40.181091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123898, 34.189083, 40.089672>,  <37.779148, 34.323002, 39.937309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123898, 34.189083, 40.089672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412800, -0.026849, 0.910426,
		-0.294580, -0.941908, -0.161345,
		0.861869, -0.334796, 0.380911,
		38.382458, 34.088646, 40.203945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683960, 33.711609, 40.361324>,  <37.779148, 34.323002, 39.937309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683960, 33.711609, 40.361324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040573, 33.848572, 40.479939>,  <38.254539, 33.930752, 40.551105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040573, 33.848572, 40.479939>,  <37.683960, 33.711609, 40.361324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040573, 33.848572, 40.479939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342379, 0.080787, 0.936082,
		0.296569, -0.936070, 0.189258,
		0.891528, 0.342411, 0.296532,
		38.308033, 33.951294, 40.568897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911160, 33.229588, 40.854397>,  <37.683960, 33.711609, 40.361324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911160, 33.229588, 40.854397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139267, 33.548504, 40.933514>,  <38.276131, 33.739853, 40.980984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139267, 33.548504, 40.933514>,  <37.911160, 33.229588, 40.854397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139267, 33.548504, 40.933514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286655, -0.032498, 0.957482,
		0.769822, -0.602717, 0.210015,
		0.570266, 0.797293, 0.197790,
		38.310349, 33.787693, 40.992851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574036, 32.495258, 41.094845>,  <37.911160, 33.229588, 40.854397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574036, 32.495258, 41.094845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231789, 32.339069, 41.230755>,  <37.026440, 32.245354, 41.312302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231789, 32.339069, 41.230755>,  <37.574036, 32.495258, 41.094845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231789, 32.339069, 41.230755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447343, 0.227606, -0.864916,
		0.260406, -0.892028, -0.369425,
		-0.855613, -0.390489, 0.339773,
		36.975105, 32.221928, 41.332687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333191, 32.152924, 40.557159>,  <37.574036, 32.495258, 41.094845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333191, 32.152924, 40.557159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002827, 32.174015, 40.781689>,  <36.804607, 32.186668, 40.916409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002827, 32.174015, 40.781689>,  <37.333191, 32.152924, 40.557159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002827, 32.174015, 40.781689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531463, 0.259520, -0.806348,
		-0.188192, -0.964297, -0.186318,
		-0.825912, 0.052727, 0.561328,
		36.755054, 32.189835, 40.950089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807095, 31.682520, 40.190762>,  <37.333191, 32.152924, 40.557159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807095, 31.682520, 40.190762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610344, 31.945868, 40.418659>,  <36.492294, 32.103874, 40.555397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610344, 31.945868, 40.418659>,  <36.807095, 31.682520, 40.190762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610344, 31.945868, 40.418659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668972, 0.133043, -0.731284,
		-0.557255, -0.740844, 0.374989,
		-0.491878, 0.658369, 0.569742,
		36.462780, 32.143379, 40.589581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151836, 31.471447, 40.216888>,  <36.807095, 31.682520, 40.190762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151836, 31.471447, 40.216888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128799, 31.860750, 40.305840>,  <36.114979, 32.094334, 40.359211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128799, 31.860750, 40.305840>,  <36.151836, 31.471447, 40.216888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128799, 31.860750, 40.305840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592566, 0.145944, -0.792190,
		-0.803460, -0.177398, 0.568314,
		-0.057591, 0.973258, 0.222380,
		36.111523, 32.152729, 40.372555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451900, 31.641268, 40.162807>,  <36.151836, 31.471447, 40.216888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451900, 31.641268, 40.162807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656834, 31.984655, 40.153484>,  <35.779793, 32.190689, 40.147892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656834, 31.984655, 40.153484>,  <35.451900, 31.641268, 40.162807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656834, 31.984655, 40.153484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606203, 0.342293, -0.717882,
		-0.608303, 0.381922, 0.695775,
		0.512333, 0.858470, -0.023304,
		35.810535, 32.242195, 40.146492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878624, 32.132465, 40.087582>,  <35.451900, 31.641268, 40.162807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878624, 32.132465, 40.087582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214272, 32.325600, 39.987381>,  <35.415661, 32.441479, 39.927261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214272, 32.325600, 39.987381>,  <34.878624, 32.132465, 40.087582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214272, 32.325600, 39.987381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498671, 0.498902, -0.708818,
		-0.217265, 0.719701, 0.659414,
		0.839120, 0.482832, -0.250500,
		35.466007, 32.470448, 39.912231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695061, 32.819183, 40.082630>,  <34.878624, 32.132465, 40.087582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695061, 32.819183, 40.082630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019783, 32.804188, 39.849545>,  <35.214619, 32.795189, 39.709694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019783, 32.804188, 39.849545>,  <34.695061, 32.819183, 40.082630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019783, 32.804188, 39.849545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461890, 0.569309, -0.680106,
		0.357244, 0.821268, 0.444853,
		0.811809, -0.037491, -0.582718,
		35.263325, 32.792942, 39.674728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878052, 33.488838, 39.843666>,  <34.695061, 32.819183, 40.082630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878052, 33.488838, 39.843666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062183, 33.262203, 39.570293>,  <35.172665, 33.126225, 39.406269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062183, 33.262203, 39.570293>,  <34.878052, 33.488838, 39.843666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062183, 33.262203, 39.570293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263094, 0.648193, -0.714582,
		0.847866, 0.508750, 0.149319,
		0.460331, -0.566585, -0.683430,
		35.200283, 33.092228, 39.365265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122452, 33.899914, 39.320435>,  <34.878052, 33.488838, 39.843666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122452, 33.899914, 39.320435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154305, 33.553799, 39.122471>,  <35.173416, 33.346130, 39.003693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154305, 33.553799, 39.122471>,  <35.122452, 33.899914, 39.320435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154305, 33.553799, 39.122471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296326, 0.453496, -0.840555,
		0.951761, 0.213593, -0.220293,
		0.079635, -0.865286, -0.494913,
		35.178196, 33.294212, 38.973995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339531, 34.097351, 38.641495>,  <35.122452, 33.899914, 39.320435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339531, 34.097351, 38.641495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176575, 33.734379, 38.600327>,  <35.078800, 33.516594, 38.575626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176575, 33.734379, 38.600327>,  <35.339531, 34.097351, 38.641495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176575, 33.734379, 38.600327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517073, 0.322084, -0.793031,
		0.752773, -0.269858, -0.600425,
		-0.407393, -0.907435, -0.102920,
		35.054356, 33.462147, 38.569450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444454, 33.734737, 37.946323>,  <35.339531, 34.097351, 38.641495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444454, 33.734737, 37.946323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113235, 33.562428, 38.089863>,  <34.914505, 33.459042, 38.175987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113235, 33.562428, 38.089863>,  <35.444454, 33.734737, 37.946323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113235, 33.562428, 38.089863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480037, 0.214060, -0.850731,
		0.289656, -0.876706, -0.384038,
		-0.828048, -0.430772, 0.358847,
		34.864822, 33.433197, 38.197517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075153, 33.155117, 37.503872>,  <35.444454, 33.734737, 37.946323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075153, 33.155117, 37.503872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822575, 33.371162, 37.726421>,  <34.671028, 33.500790, 37.859951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822575, 33.371162, 37.726421>,  <35.075153, 33.155117, 37.503872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822575, 33.371162, 37.726421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463113, 0.312808, -0.829264,
		-0.621932, -0.781302, 0.052610,
		-0.631449, 0.540109, 0.556376,
		34.633141, 33.533195, 37.893333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.767345, 31.948242, 44.937653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.399761, 32.105972, 44.938881>,  <38.179211, 32.200611, 44.939617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.399761, 32.105972, 44.938881>,  <38.767345, 31.948242, 44.937653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399761, 32.105972, 44.938881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122033, -0.276972, -0.953098,
		-0.374984, -0.876237, 0.302648,
		-0.918964, 0.394329, 0.003070,
		38.124073, 32.224270, 44.939800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324154, 31.453062, 44.584408>,  <38.767345, 31.948242, 44.937653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324154, 31.453062, 44.584408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.135944, 31.805098, 44.558945>,  <38.023018, 32.016319, 44.543667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.135944, 31.805098, 44.558945>,  <38.324154, 31.453062, 44.584408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135944, 31.805098, 44.558945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366629, -0.260611, -0.893121,
		-0.802616, -0.396895, 0.445289,
		-0.470522, 0.880089, -0.063658,
		37.994789, 32.069126, 44.539848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714298, 31.262781, 44.256107>,  <38.324154, 31.453062, 44.584408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714298, 31.262781, 44.256107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.765385, 31.655739, 44.201576>,  <37.796036, 31.891514, 44.168858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.765385, 31.655739, 44.201576>,  <37.714298, 31.262781, 44.256107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765385, 31.655739, 44.201576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342959, -0.085233, -0.935475,
		-0.930627, 0.166232, 0.326036,
		0.127717, 0.982396, -0.136331,
		37.803699, 31.950459, 44.160675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082069, 31.341368, 43.866852>,  <37.714298, 31.262781, 44.256107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082069, 31.341368, 43.866852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.310577, 31.664677, 43.809799>,  <37.447681, 31.858662, 43.775566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.310577, 31.664677, 43.809799>,  <37.082069, 31.341368, 43.866852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310577, 31.664677, 43.809799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370382, 0.098792, -0.923611,
		-0.732440, 0.580459, 0.355807,
		0.571269, 0.808274, -0.142633,
		37.481956, 31.907160, 43.767010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600636, 31.831429, 43.663113>,  <37.082069, 31.341368, 43.866852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600636, 31.831429, 43.663113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.951923, 31.946766, 43.510494>,  <37.162697, 32.015968, 43.418922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.951923, 31.946766, 43.510494>,  <36.600636, 31.831429, 43.663113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951923, 31.946766, 43.510494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397479, -0.003597, -0.917604,
		-0.265957, 0.957520, 0.111451,
		0.878224, 0.288343, -0.381551,
		37.215389, 32.033268, 43.396030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493088, 32.262974, 43.188278>,  <36.600636, 31.831429, 43.663113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493088, 32.262974, 43.188278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860817, 32.159836, 43.069378>,  <37.081455, 32.097954, 42.998035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860817, 32.159836, 43.069378>,  <36.493088, 32.262974, 43.188278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860817, 32.159836, 43.069378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277220, 0.111736, -0.954287,
		0.279274, 0.959703, 0.031241,
		0.919323, -0.257846, -0.297254,
		37.136616, 32.082481, 42.980202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668564, 32.864780, 42.836472>,  <36.493088, 32.262974, 43.188278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668564, 32.864780, 42.836472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895359, 32.561821, 42.706936>,  <37.031437, 32.380043, 42.629215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.895359, 32.561821, 42.706936>,  <36.668564, 32.864780, 42.836472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895359, 32.561821, 42.706936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233998, 0.228842, -0.944922,
		0.789793, 0.611533, -0.047481,
		0.566985, -0.757403, -0.323835,
		37.065456, 32.334599, 42.609787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035969, 33.079922, 42.196552>,  <36.668564, 32.864780, 42.836472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035969, 33.079922, 42.196552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.042797, 32.679985, 42.194473>,  <37.046894, 32.440022, 42.193226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.042797, 32.679985, 42.194473>,  <37.035969, 33.079922, 42.196552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042797, 32.679985, 42.194473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233762, 0.001064, -0.972293,
		0.972144, 0.017808, -0.233707,
		0.017066, -0.999841, -0.005197,
		37.047916, 32.380032, 42.192913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494987, 32.852783, 41.747070>,  <37.035969, 33.079922, 42.196552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494987, 32.852783, 41.747070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.255325, 32.532555, 41.750916>,  <37.111526, 32.340416, 41.753223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.255325, 32.532555, 41.750916>,  <37.494987, 32.852783, 41.747070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255325, 32.532555, 41.750916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198255, 0.136716, -0.970569,
		0.775698, -0.583429, -0.240632,
		-0.599156, -0.800574, 0.009618,
		37.075577, 32.292381, 41.753799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194008, 33.073101, 41.541660>,  <37.494987, 32.852783, 41.747070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194008, 33.073101, 41.541660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264545, 33.464764, 41.501343>,  <38.306870, 33.699760, 41.477154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264545, 33.464764, 41.501343>,  <38.194008, 33.073101, 41.541660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264545, 33.464764, 41.501343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241666, 0.142333, 0.959864,
		0.954202, -0.144906, 0.261728,
		0.176343, 0.979154, -0.100795,
		38.317448, 33.758511, 41.471104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905567, 33.127689, 41.566063>,  <38.194008, 33.073101, 41.541660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905567, 33.127689, 41.566063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.791203, 33.507767, 41.615681>,  <38.722584, 33.735813, 41.645451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.791203, 33.507767, 41.615681>,  <38.905567, 33.127689, 41.566063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791203, 33.507767, 41.615681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751606, 0.142063, 0.644133,
		0.594429, 0.277396, -0.754788,
		-0.285907, 0.950195, 0.124046,
		38.705429, 33.792824, 41.652893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466145, 33.454174, 41.584923>,  <38.905567, 33.127689, 41.566063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466145, 33.454174, 41.584923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.226219, 33.729305, 41.748444>,  <39.082264, 33.894382, 41.846554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.226219, 33.729305, 41.748444>,  <39.466145, 33.454174, 41.584923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226219, 33.729305, 41.748444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693004, 0.191197, 0.695118,
		0.399960, 0.700241, -0.591350,
		-0.599815, 0.687827, 0.408798,
		39.046276, 33.935654, 41.871082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927166, 34.058270, 41.711632>,  <39.466145, 33.454174, 41.584923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927166, 34.058270, 41.711632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.596443, 34.075157, 41.935989>,  <39.398010, 34.085289, 42.070602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.596443, 34.075157, 41.935989>,  <39.927166, 34.058270, 41.711632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596443, 34.075157, 41.935989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554748, 0.225972, 0.800744,
		-0.092938, 0.973219, -0.210258,
		-0.826812, 0.042220, 0.560892,
		39.348400, 34.087822, 42.104256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912739, 34.719093, 42.148834>,  <39.927166, 34.058270, 41.711632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912739, 34.719093, 42.148834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.679790, 34.455647, 42.339439>,  <39.540020, 34.297577, 42.453804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.679790, 34.455647, 42.339439>,  <39.912739, 34.719093, 42.148834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679790, 34.455647, 42.339439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437339, 0.240280, 0.866603,
		-0.685258, 0.713082, 0.148108,
		-0.582371, -0.658619, 0.476512,
		39.505077, 34.258060, 42.482391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650017, 35.073044, 42.776421>,  <39.912739, 34.719093, 42.148834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650017, 35.073044, 42.776421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.621948, 34.681622, 42.853882>,  <39.605106, 34.446766, 42.900356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.621948, 34.681622, 42.853882>,  <39.650017, 35.073044, 42.776421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621948, 34.681622, 42.853882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204783, 0.175861, 0.962879,
		-0.976289, 0.107226, 0.188051,
		-0.070175, -0.978558, 0.193650,
		39.600895, 34.388054, 42.911976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289356, 34.990322, 43.359913>,  <39.650017, 35.073044, 42.776421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289356, 34.990322, 43.359913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.424309, 34.613892, 43.369347>,  <39.505280, 34.388035, 43.375008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.424309, 34.613892, 43.369347>,  <39.289356, 34.990322, 43.359913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424309, 34.613892, 43.369347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140607, 0.075146, 0.987210,
		-0.930808, -0.329749, 0.157674,
		0.337381, -0.941073, 0.023582,
		39.525524, 34.331570, 43.376423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030342, 34.674892, 44.117027>,  <39.289356, 34.990322, 43.359913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030342, 34.674892, 44.117027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.333427, 34.453976, 43.977978>,  <39.515278, 34.321426, 43.894547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.333427, 34.453976, 43.977978>,  <39.030342, 34.674892, 44.117027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333427, 34.453976, 43.977978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328587, -0.137353, 0.934433,
		-0.563830, -0.822255, 0.077404,
		0.757711, -0.552295, -0.347626,
		39.560741, 34.288288, 43.873692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045944, 34.091724, 44.523235>,  <39.030342, 34.674892, 44.117027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045944, 34.091724, 44.523235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.409855, 34.109955, 44.358200>,  <39.628201, 34.120892, 44.259178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.409855, 34.109955, 44.358200>,  <39.045944, 34.091724, 44.523235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409855, 34.109955, 44.358200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412924, 0.002269, 0.910763,
		0.042444, -0.998958, -0.016754,
		0.909776, 0.045574, -0.412590,
		39.682789, 34.123627, 44.234425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448292, 33.529495, 44.802006>,  <39.045944, 34.091724, 44.523235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448292, 33.529495, 44.802006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.723251, 33.784462, 44.662766>,  <39.888229, 33.937443, 44.579220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.723251, 33.784462, 44.662766>,  <39.448292, 33.529495, 44.802006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723251, 33.784462, 44.662766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570542, -0.177363, 0.801888,
		0.449400, -0.749825, -0.485595,
		0.687402, 0.637420, -0.348100,
		39.929470, 33.975689, 44.558334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108150, 33.230587, 44.829357>,  <39.448292, 33.529495, 44.802006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108150, 33.230587, 44.829357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.194565, 33.620487, 44.851963>,  <40.246414, 33.854427, 44.865528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.194565, 33.620487, 44.851963>,  <40.108150, 33.230587, 44.829357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194565, 33.620487, 44.851963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534239, -0.166456, 0.828783,
		0.817263, -0.148849, -0.556709,
		0.216031, 0.974749, 0.056517,
		40.259373, 33.912910, 44.868919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635521, 33.177311, 45.258965>,  <40.108150, 33.230587, 44.829357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635521, 33.177311, 45.258965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.587666, 33.574341, 45.267677>,  <40.558952, 33.812561, 45.272903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.587666, 33.574341, 45.267677>,  <40.635521, 33.177311, 45.258965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587666, 33.574341, 45.267677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560602, 0.049433, 0.826609,
		0.819398, 0.111101, -0.562356,
		-0.119636, 0.992579, 0.021778,
		40.551773, 33.872116, 45.274212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317856, 33.477623, 45.298622>,  <40.635521, 33.177311, 45.258965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317856, 33.477623, 45.298622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.050610, 33.738415, 45.442032>,  <40.890263, 33.894890, 45.528076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.050610, 33.738415, 45.442032>,  <41.317856, 33.477623, 45.298622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050610, 33.738415, 45.442032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515752, 0.058503, 0.854738,
		0.536299, 0.755974, -0.375348,
		-0.668119, 0.651982, 0.358520,
		40.850174, 33.934010, 45.549587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677006, 33.973007, 45.634617>,  <41.317856, 33.477623, 45.298622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677006, 33.973007, 45.634617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.334267, 34.074776, 45.813988>,  <41.128624, 34.135838, 45.921608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.334267, 34.074776, 45.813988>,  <41.677006, 33.973007, 45.634617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334267, 34.074776, 45.813988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491152, 0.138306, 0.860024,
		0.156788, 0.957153, -0.243466,
		-0.856847, 0.254421, 0.448423,
		41.077213, 34.151100, 45.948513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.313995, 38.425713, 48.111034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.644691, 38.279915, 47.939625>,  <34.843109, 38.192436, 47.836777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.644691, 38.279915, 47.939625>,  <34.313995, 38.425713, 48.111034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644691, 38.279915, 47.939625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416824, 0.114697, -0.901722,
		0.377825, 0.924114, -0.057106,
		0.826745, -0.364496, -0.428528,
		34.892715, 38.170567, 47.811066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333076, 38.721481, 47.431244>,  <34.313995, 38.425713, 48.111034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333076, 38.721481, 47.431244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.620712, 38.447628, 47.383595>,  <34.793293, 38.283318, 47.355003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.620712, 38.447628, 47.383595>,  <34.333076, 38.721481, 47.431244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620712, 38.447628, 47.383595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220186, -0.061883, -0.973493,
		0.659111, 0.726259, -0.195245,
		0.719091, -0.684630, -0.119124,
		34.836441, 38.242241, 47.347858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788925, 38.989098, 46.959896>,  <34.333076, 38.721481, 47.431244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788925, 38.989098, 46.959896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.836155, 38.591984, 46.951580>,  <34.864494, 38.353714, 46.946590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.836155, 38.591984, 46.951580>,  <34.788925, 38.989098, 46.959896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836155, 38.591984, 46.951580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068658, 0.012724, -0.997559,
		0.990628, 0.119213, -0.066660,
		0.118074, -0.992787, -0.020789,
		34.871578, 38.294147, 46.945343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290432, 38.732796, 46.326992>,  <34.788925, 38.989098, 46.959896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290432, 38.732796, 46.326992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.062210, 38.415298, 46.411312>,  <34.925278, 38.224800, 46.461903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.062210, 38.415298, 46.411312>,  <35.290432, 38.732796, 46.326992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062210, 38.415298, 46.411312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137627, -0.160637, -0.977371,
		0.809645, -0.586657, -0.017588,
		-0.570557, -0.793744, 0.210799,
		34.891045, 38.177174, 46.474552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574032, 38.165390, 45.858677>,  <35.290432, 38.732796, 46.326992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574032, 38.165390, 45.858677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.198502, 38.069714, 45.957783>,  <34.973183, 38.012310, 46.017246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.198502, 38.069714, 45.957783>,  <35.574032, 38.165390, 45.858677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198502, 38.069714, 45.957783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151458, -0.359368, -0.920823,
		0.309288, -0.902022, 0.301159,
		-0.938830, -0.239187, 0.247766,
		34.916851, 37.997959, 46.032112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472645, 37.582375, 45.466595>,  <35.574032, 38.165390, 45.858677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472645, 37.582375, 45.466595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.091881, 37.670193, 45.552078>,  <34.863422, 37.722885, 45.603367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.091881, 37.670193, 45.552078>,  <35.472645, 37.582375, 45.466595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091881, 37.670193, 45.552078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261803, -0.220501, -0.939595,
		-0.159161, -0.950357, 0.267375,
		-0.951907, 0.219546, 0.213711,
		34.806309, 37.736057, 45.616192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117699, 36.997555, 45.215420>,  <35.472645, 37.582375, 45.466595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117699, 36.997555, 45.215420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.875114, 37.314682, 45.239563>,  <34.729565, 37.504959, 45.254047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.875114, 37.314682, 45.239563>,  <35.117699, 36.997555, 45.215420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875114, 37.314682, 45.239563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405769, -0.243322, -0.880991,
		-0.683783, -0.558774, 0.469267,
		-0.606458, 0.792821, 0.060354,
		34.693176, 37.552528, 45.257668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478718, 36.777451, 45.064590>,  <35.117699, 36.997555, 45.215420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478718, 36.777451, 45.064590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480003, 37.173000, 45.005096>,  <34.480774, 37.410328, 44.969398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480003, 37.173000, 45.005096>,  <34.478718, 36.777451, 45.064590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480003, 37.173000, 45.005096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333425, -0.139165, -0.932449,
		-0.942771, 0.052590, 0.329268,
		0.003215, 0.988872, -0.148735,
		34.480968, 37.469662, 44.960476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808655, 36.968781, 44.809109>,  <34.478718, 36.777451, 45.064590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808655, 36.968781, 44.809109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.059456, 37.260811, 44.700397>,  <34.209934, 37.436028, 44.635170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.059456, 37.260811, 44.700397>,  <33.808655, 36.968781, 44.809109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059456, 37.260811, 44.700397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281774, -0.112718, -0.952837,
		-0.726276, 0.674008, 0.135041,
		0.626998, 0.730073, -0.271782,
		34.247555, 37.479832, 44.618862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331268, 37.407730, 44.439568>,  <33.808655, 36.968781, 44.809109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331268, 37.407730, 44.439568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.698280, 37.508839, 44.316769>,  <33.918488, 37.569504, 44.243088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.698280, 37.508839, 44.316769>,  <33.331268, 37.407730, 44.439568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698280, 37.508839, 44.316769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323257, 0.024433, -0.945996,
		-0.231622, 0.967217, 0.104129,
		0.917527, 0.252774, -0.307001,
		33.973537, 37.584671, 44.224667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168526, 37.935139, 43.881508>,  <33.331268, 37.407730, 44.439568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168526, 37.935139, 43.881508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.556564, 37.873920, 43.806160>,  <33.789387, 37.837189, 43.760952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.556564, 37.873920, 43.806160>,  <33.168526, 37.935139, 43.881508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556564, 37.873920, 43.806160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163570, 0.161123, -0.973285,
		0.179309, 0.974995, 0.131272,
		0.970100, -0.153046, -0.188371,
		33.847595, 37.828007, 43.749649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478107, 38.572479, 43.468483>,  <33.168526, 37.935139, 43.881508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478107, 38.572479, 43.468483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682220, 38.235432, 43.399651>,  <33.804688, 38.033203, 43.358349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682220, 38.235432, 43.399651>,  <33.478107, 38.572479, 43.468483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682220, 38.235432, 43.399651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178941, 0.091691, -0.979578,
		0.841186, 0.530652, -0.103991,
		0.510280, -0.842616, -0.172085,
		33.835304, 37.982647, 43.348026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929268, 38.710590, 42.915573>,  <33.478107, 38.572479, 43.468483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929268, 38.710590, 42.915573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.927521, 38.312096, 42.950180>,  <33.926472, 38.072998, 42.970943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.927521, 38.312096, 42.950180>,  <33.929268, 38.710590, 42.915573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927521, 38.312096, 42.950180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028793, -0.086354, -0.995848,
		0.999576, -0.006842, -0.028308,
		-0.004369, -0.996241, 0.086514,
		33.926208, 38.013222, 42.976135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318836, 38.459000, 42.410168>,  <33.929268, 38.710590, 42.915573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318836, 38.459000, 42.410168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.089809, 38.141399, 42.491875>,  <33.952393, 37.950840, 42.540897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.089809, 38.141399, 42.491875>,  <34.318836, 38.459000, 42.410168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089809, 38.141399, 42.491875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259807, -0.060586, -0.963758,
		0.777603, -0.604887, -0.171598,
		-0.572568, -0.794003, 0.204266,
		33.918037, 37.903198, 42.553154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913311, 38.176582, 42.286606>,  <34.318836, 38.459000, 42.410168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913311, 38.176582, 42.286606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.286392, 38.171196, 42.142448>,  <35.510242, 38.167965, 42.055954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.286392, 38.171196, 42.142448>,  <34.913311, 38.176582, 42.286606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286392, 38.171196, 42.142448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358355, 0.147066, 0.921929,
		0.040587, -0.989035, 0.141995,
		0.932703, -0.013467, -0.360395,
		35.566204, 38.167156, 42.034328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364494, 37.741737, 42.660271>,  <34.913311, 38.176582, 42.286606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364494, 37.741737, 42.660271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.611874, 37.998619, 42.479122>,  <35.760300, 38.152748, 42.370434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.611874, 37.998619, 42.479122>,  <35.364494, 37.741737, 42.660271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611874, 37.998619, 42.479122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544531, 0.065283, 0.836196,
		0.566576, -0.763746, -0.309328,
		0.618447, 0.642208, -0.452871,
		35.797409, 38.191280, 42.343262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017525, 37.492664, 42.837151>,  <35.364494, 37.741737, 42.660271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017525, 37.492664, 42.837151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.083622, 37.873543, 42.734379>,  <36.123280, 38.102070, 42.672718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.083622, 37.873543, 42.734379>,  <36.017525, 37.492664, 42.837151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083622, 37.873543, 42.734379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594534, 0.111679, 0.796277,
		0.786907, -0.284334, -0.547660,
		0.165247, 0.952198, -0.256928,
		36.133198, 38.159203, 42.657299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780846, 37.642410, 43.016247>,  <36.017525, 37.492664, 42.837151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780846, 37.642410, 43.016247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.605923, 37.996998, 42.955677>,  <36.500969, 38.209751, 42.919334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.605923, 37.996998, 42.955677>,  <36.780846, 37.642410, 43.016247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605923, 37.996998, 42.955677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554776, 0.398441, 0.730389,
		0.707805, 0.235396, -0.666034,
		-0.437306, 0.886473, -0.151426,
		36.474731, 38.262939, 42.910248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289421, 38.165291, 43.138405>,  <36.780846, 37.642410, 43.016247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289421, 38.165291, 43.138405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.950218, 38.374962, 43.169712>,  <36.746696, 38.500767, 43.188496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.950218, 38.374962, 43.169712>,  <37.289421, 38.165291, 43.138405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950218, 38.374962, 43.169712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350988, 0.444790, 0.823996,
		0.397111, 0.726221, -0.561164,
		-0.848004, 0.524180, 0.078263,
		36.695816, 38.532215, 43.193192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569454, 38.693195, 43.378887>,  <37.289421, 38.165291, 43.138405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569454, 38.693195, 43.378887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.183186, 38.744530, 43.469219>,  <36.951424, 38.775330, 43.523418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.183186, 38.744530, 43.469219>,  <37.569454, 38.693195, 43.378887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183186, 38.744530, 43.469219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259686, 0.457117, 0.850651,
		0.005939, 0.880098, -0.474754,
		-0.965675, 0.128339, 0.225834,
		36.893482, 38.783031, 43.536968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431820, 39.426575, 43.432739>,  <37.569454, 38.693195, 43.378887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431820, 39.426575, 43.432739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160450, 39.219852, 43.641605>,  <36.997627, 39.095818, 43.766926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160450, 39.219852, 43.641605>,  <37.431820, 39.426575, 43.432739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160450, 39.219852, 43.641605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257186, 0.498706, 0.827737,
		-0.688184, 0.695849, -0.205418,
		-0.678423, -0.516805, 0.522164,
		36.956924, 39.064812, 43.798256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101105, 39.841492, 43.940559>,  <37.431820, 39.426575, 43.432739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101105, 39.841492, 43.940559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.028591, 39.471172, 44.073246>,  <36.985085, 39.248981, 44.152859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.028591, 39.471172, 44.073246>,  <37.101105, 39.841492, 43.940559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028591, 39.471172, 44.073246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404880, 0.237132, 0.883086,
		-0.896219, 0.294395, 0.331848,
		-0.181284, -0.925797, 0.331717,
		36.974205, 39.193432, 44.172760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874512, 39.960209, 44.588001>,  <37.101105, 39.841492, 43.940559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874512, 39.960209, 44.588001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.920547, 39.562908, 44.593620>,  <36.948170, 39.324528, 44.596992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.920547, 39.562908, 44.593620>,  <36.874512, 39.960209, 44.588001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920547, 39.562908, 44.593620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184601, 0.035284, 0.982180,
		-0.976052, -0.110440, 0.187417,
		0.115085, -0.993256, 0.014052,
		36.955074, 39.264931, 44.597836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408508, 39.689552, 45.077644>,  <36.874512, 39.960209, 44.588001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408508, 39.689552, 45.077644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.729576, 39.461506, 45.007580>,  <36.922218, 39.324677, 44.965542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.729576, 39.461506, 45.007580>,  <36.408508, 39.689552, 45.077644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729576, 39.461506, 45.007580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253094, 0.059664, 0.965600,
		-0.540058, -0.819392, 0.192184,
		0.802671, -0.570121, -0.175161,
		36.970379, 39.290470, 44.955032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436764, 39.222755, 45.630993>,  <36.408508, 39.689552, 45.077644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436764, 39.222755, 45.630993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.807976, 39.204670, 45.483093>,  <37.030704, 39.193817, 45.394352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.807976, 39.204670, 45.483093>,  <36.436764, 39.222755, 45.630993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807976, 39.204670, 45.483093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348410, -0.245859, 0.904524,
		-0.131802, -0.968251, -0.212413,
		0.928030, -0.045211, -0.369752,
		37.086384, 39.191105, 45.372166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713943, 38.732891, 45.959023>,  <36.436764, 39.222755, 45.630993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713943, 38.732891, 45.959023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.051743, 38.900719, 45.825878>,  <37.254421, 39.001415, 45.745991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.051743, 38.900719, 45.825878>,  <36.713943, 38.732891, 45.959023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051743, 38.900719, 45.825878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488715, -0.349493, 0.799383,
		0.219064, -0.837745, -0.500194,
		0.844493, 0.419568, -0.332857,
		37.305092, 39.026588, 45.726021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168056, 38.284000, 46.092258>,  <36.713943, 38.732891, 45.959023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168056, 38.284000, 46.092258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.378517, 38.622597, 46.059731>,  <37.504795, 38.825756, 46.040215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.378517, 38.622597, 46.059731>,  <37.168056, 38.284000, 46.092258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378517, 38.622597, 46.059731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518302, -0.243406, 0.819827,
		0.674183, -0.473504, -0.566808,
		0.526156, 0.846491, -0.081318,
		37.536366, 38.876545, 46.035336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826992, 38.070583, 46.215881>,  <37.168056, 38.284000, 46.092258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826992, 38.070583, 46.215881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.820904, 38.463379, 46.291203>,  <37.817249, 38.699059, 46.336395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.820904, 38.463379, 46.291203>,  <37.826992, 38.070583, 46.215881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820904, 38.463379, 46.291203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474727, -0.158651, 0.865716,
		0.880001, 0.102569, -0.463764,
		-0.015219, 0.981992, 0.188306,
		37.816338, 38.757977, 46.347694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543049, 38.261925, 45.867496>,  <37.826992, 38.070583, 46.215881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543049, 38.261925, 45.867496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.846153, 38.001865, 45.845207>,  <39.028015, 37.845829, 45.831833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.846153, 38.001865, 45.845207>,  <38.543049, 38.261925, 45.867496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846153, 38.001865, 45.845207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237438, -0.195179, -0.951593,
		0.607797, 0.734314, -0.302268,
		0.757764, -0.650145, -0.055725,
		39.073483, 37.806820, 45.828491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933548, 38.369347, 45.227795>,  <38.543049, 38.261925, 45.867496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933548, 38.369347, 45.227795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.997089, 37.997425, 45.360596>,  <39.035213, 37.774273, 45.440277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.997089, 37.997425, 45.360596>,  <38.933548, 38.369347, 45.227795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997089, 37.997425, 45.360596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009046, -0.334886, -0.942215,
		0.987260, 0.152681, -0.044788,
		0.158858, -0.929806, 0.332001,
		39.044746, 37.718483, 45.460197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436039, 38.200924, 44.823551>,  <38.933548, 38.369347, 45.227795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436039, 38.200924, 44.823551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263218, 37.857777, 44.934826>,  <39.159523, 37.651890, 45.001591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263218, 37.857777, 44.934826>,  <39.436039, 38.200924, 44.823551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263218, 37.857777, 44.934826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069686, -0.339300, -0.938093,
		0.899151, -0.385922, 0.206378,
		-0.432055, -0.857869, 0.278189,
		39.133602, 37.600414, 45.018284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702850, 37.648716, 44.409420>,  <39.436039, 38.200924, 44.823551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702850, 37.648716, 44.409420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.365963, 37.478176, 44.541416>,  <39.163830, 37.375851, 44.620613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.365963, 37.478176, 44.541416>,  <39.702850, 37.648716, 44.409420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365963, 37.478176, 44.541416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288000, -0.161640, -0.943890,
		0.455769, -0.889998, 0.013346,
		-0.842217, -0.426352, 0.329991,
		39.113297, 37.350269, 44.640415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710365, 36.987095, 44.087143>,  <39.702850, 37.648716, 44.409420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710365, 36.987095, 44.087143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.339649, 37.062840, 44.216885>,  <39.117218, 37.108284, 44.294727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.339649, 37.062840, 44.216885>,  <39.710365, 36.987095, 44.087143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339649, 37.062840, 44.216885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340339, -0.058193, -0.938500,
		-0.158838, -0.980182, 0.118379,
		-0.926790, 0.189358, 0.324351,
		39.061611, 37.119648, 44.314190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242653, 36.471386, 43.895340>,  <39.710365, 36.987095, 44.087143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242653, 36.471386, 43.895340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.002617, 36.785179, 43.957932>,  <38.858597, 36.973454, 43.995487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.002617, 36.785179, 43.957932>,  <39.242653, 36.471386, 43.895340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002617, 36.785179, 43.957932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128653, 0.098419, -0.986794,
		-0.789519, -0.612296, 0.041865,
		-0.600090, 0.784479, 0.156478,
		38.822590, 37.020523, 44.004875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671291, 36.277683, 43.652443>,  <39.242653, 36.471386, 43.895340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671291, 36.277683, 43.652443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.657108, 36.677368, 43.645290>,  <38.648598, 36.917179, 43.640999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.657108, 36.677368, 43.645290>,  <38.671291, 36.277683, 43.652443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657108, 36.677368, 43.645290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196303, -0.024512, -0.980237,
		-0.979902, -0.031248, 0.197017,
		-0.035459, 0.999211, -0.017885,
		38.646469, 36.977131, 43.639923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267914, 36.365173, 43.206306>,  <38.671291, 36.277683, 43.652443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267914, 36.365173, 43.206306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.373234, 36.750614, 43.224800>,  <38.436424, 36.981880, 43.235897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.373234, 36.750614, 43.224800>,  <38.267914, 36.365173, 43.206306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373234, 36.750614, 43.224800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289739, 0.124704, -0.948947,
		-0.920177, 0.236458, 0.312028,
		0.263298, 0.963606, 0.046238,
		38.452225, 37.039696, 43.238670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737179, 36.743858, 42.955307>,  <38.267914, 36.365173, 43.206306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737179, 36.743858, 42.955307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.063091, 36.971336, 42.910206>,  <38.258640, 37.107822, 42.883144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.063091, 36.971336, 42.910206>,  <37.737179, 36.743858, 42.955307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063091, 36.971336, 42.910206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183006, 0.067745, -0.980775,
		-0.550125, 0.819753, 0.159272,
		0.814783, 0.568697, -0.112752,
		38.307526, 37.141945, 42.876381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528156, 37.308460, 42.447941>,  <37.737179, 36.743858, 42.955307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528156, 37.308460, 42.447941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.927341, 37.332333, 42.456917>,  <38.166855, 37.346657, 42.462303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.927341, 37.332333, 42.456917>,  <37.528156, 37.308460, 42.447941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927341, 37.332333, 42.456917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005141, 0.275477, -0.961294,
		-0.063549, 0.959454, 0.274609,
		0.997966, 0.059677, 0.022438,
		38.226730, 37.350235, 42.463650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693951, 37.974960, 42.099964>,  <37.528156, 37.308460, 42.447941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693951, 37.974960, 42.099964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.044701, 37.782757, 42.105595>,  <38.255150, 37.667435, 42.108974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.044701, 37.782757, 42.105595>,  <37.693951, 37.974960, 42.099964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044701, 37.782757, 42.105595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202569, 0.342794, -0.917310,
		0.435954, 0.807218, 0.397924,
		0.876875, -0.480512, 0.014075,
		38.307762, 37.638603, 42.109818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191463, 38.435562, 41.888264>,  <37.693951, 37.974960, 42.099964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191463, 38.435562, 41.888264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.332253, 38.069496, 41.809689>,  <38.416725, 37.849857, 41.762543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.332253, 38.069496, 41.809689>,  <38.191463, 38.435562, 41.888264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332253, 38.069496, 41.809689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187851, 0.274661, -0.943013,
		0.916966, 0.295016, 0.268588,
		0.351975, -0.915165, -0.196436,
		38.437843, 37.794945, 41.750759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796352, 38.525024, 41.451523>,  <38.191463, 38.435562, 41.888264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796352, 38.525024, 41.451523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.718822, 38.135201, 41.406509>,  <38.672302, 37.901306, 41.379501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.718822, 38.135201, 41.406509>,  <38.796352, 38.525024, 41.451523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718822, 38.135201, 41.406509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471431, 0.008071, -0.881866,
		0.860340, -0.223982, 0.457873,
		-0.193826, -0.974560, -0.112536,
		38.660675, 37.842831, 41.372749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476238, 38.219692, 41.344837>,  <38.796352, 38.525024, 41.451523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476238, 38.219692, 41.344837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.203953, 37.972282, 41.187836>,  <39.040581, 37.823837, 41.093636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.203953, 37.972282, 41.187836>,  <39.476238, 38.219692, 41.344837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203953, 37.972282, 41.187836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538708, -0.059578, -0.840383,
		0.496412, -0.783505, 0.373759,
		-0.680712, -0.618523, -0.392505,
		38.999741, 37.786724, 41.070084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.213263, 36.637592, 28.261250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.964163, 36.346275, 28.375628>,  <25.814703, 36.171486, 28.444254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.964163, 36.346275, 28.375628>,  <26.213263, 36.637592, 28.261250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964163, 36.346275, 28.375628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324758, 0.091893, 0.941323,
		-0.711839, 0.679073, 0.179293,
		-0.622751, -0.728297, 0.285947,
		25.777338, 36.127785, 28.461412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896990, 36.846287, 29.014345>,  <26.213263, 36.637592, 28.261250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896990, 36.846287, 29.014345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.891043, 36.448990, 28.968300>,  <25.887474, 36.210613, 28.940672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.891043, 36.448990, 28.968300>,  <25.896990, 36.846287, 29.014345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891043, 36.448990, 28.968300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422348, -0.110590, 0.899662,
		-0.906312, -0.035241, 0.421138,
		-0.014869, -0.993241, -0.115113,
		25.886581, 36.151016, 28.933765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.668985, 36.604870, 29.622889>,  <25.896990, 36.846287, 29.014345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.668985, 36.604870, 29.622889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.808319, 36.260799, 29.473886>,  <25.891920, 36.054356, 29.384485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.808319, 36.260799, 29.473886>,  <25.668985, 36.604870, 29.622889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808319, 36.260799, 29.473886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241683, -0.301542, 0.922314,
		-0.905678, -0.411303, 0.102852,
		0.348336, -0.860176, -0.372504,
		25.912821, 36.002747, 29.362135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416344, 36.089138, 30.137489>,  <25.668985, 36.604870, 29.622889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416344, 36.089138, 30.137489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.709932, 35.898762, 29.943680>,  <25.886086, 35.784534, 29.827394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.709932, 35.898762, 29.943680>,  <25.416344, 36.089138, 30.137489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.709932, 35.898762, 29.943680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316544, -0.391460, 0.864037,
		-0.600905, -0.787551, -0.136663,
		0.733971, -0.475944, -0.484525,
		25.930124, 35.755978, 29.798323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.343168, 35.426804, 30.346880>,  <25.416344, 36.089138, 30.137489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.343168, 35.426804, 30.346880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.723593, 35.454754, 30.226482>,  <25.951847, 35.471523, 30.154243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.723593, 35.454754, 30.226482>,  <25.343168, 35.426804, 30.346880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.723593, 35.454754, 30.226482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306779, -0.330052, 0.892722,
		-0.036965, -0.941373, -0.335336,
		0.951062, 0.069875, -0.300994,
		26.008911, 35.475716, 30.136185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612484, 34.868137, 30.660494>,  <25.343168, 35.426804, 30.346880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612484, 34.868137, 30.660494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.924368, 35.100807, 30.567797>,  <26.111498, 35.240410, 30.512178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.924368, 35.100807, 30.567797>,  <25.612484, 34.868137, 30.660494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924368, 35.100807, 30.567797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400541, -0.178879, 0.898649,
		0.481266, -0.793510, -0.372458,
		0.779712, 0.581674, -0.231744,
		26.158281, 35.275311, 30.498274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219398, 34.440987, 30.817415>,  <25.612484, 34.868137, 30.660494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219398, 34.440987, 30.817415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.335924, 34.823620, 30.813559>,  <26.405840, 35.053200, 30.811245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.335924, 34.823620, 30.813559>,  <26.219398, 34.440987, 30.817415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335924, 34.823620, 30.813559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279602, -0.075502, 0.957143,
		0.914854, -0.281526, -0.289456,
		0.291315, 0.956579, -0.009642,
		26.423319, 35.110592, 30.810665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941675, 34.387413, 31.072557>,  <26.219398, 34.440987, 30.817415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941675, 34.387413, 31.072557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.841213, 34.773159, 31.105846>,  <26.780935, 35.004604, 31.125820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.841213, 34.773159, 31.105846>,  <26.941675, 34.387413, 31.072557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841213, 34.773159, 31.105846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283839, -0.008820, 0.958831,
		0.925395, 0.264438, -0.271508,
		-0.251157, 0.964362, 0.083220,
		26.765867, 35.062469, 31.130812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482906, 34.733463, 31.455952>,  <26.941675, 34.387413, 31.072557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482906, 34.733463, 31.455952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.181423, 34.991886, 31.504179>,  <27.000534, 35.146938, 31.533115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.181423, 34.991886, 31.504179>,  <27.482906, 34.733463, 31.455952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181423, 34.991886, 31.504179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295229, 0.168930, 0.940373,
		0.587168, 0.744360, -0.318059,
		-0.753706, 0.646058, 0.120567,
		26.955311, 35.185703, 31.540348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699503, 35.300125, 31.831154>,  <27.482906, 34.733463, 31.455952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699503, 35.300125, 31.831154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.302120, 35.325890, 31.868874>,  <27.063690, 35.341347, 31.891506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.302120, 35.325890, 31.868874>,  <27.699503, 35.300125, 31.831154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302120, 35.325890, 31.868874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091450, -0.045840, 0.994754,
		0.068394, 0.996870, 0.039650,
		-0.993458, 0.064409, 0.094299,
		27.004084, 35.345211, 31.897163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433146, 35.882748, 32.335701>,  <27.699503, 35.300125, 31.831154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433146, 35.882748, 32.335701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144472, 35.605927, 32.329628>,  <26.971268, 35.439835, 32.325985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.144472, 35.605927, 32.329628>,  <27.433146, 35.882748, 32.335701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144472, 35.605927, 32.329628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027096, 0.006332, 0.999613,
		-0.691693, 0.721815, -0.023321,
		-0.721683, -0.692057, -0.015179,
		26.927967, 35.398308, 32.325073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817041, 36.198303, 32.584026>,  <27.433146, 35.882748, 32.335701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817041, 36.198303, 32.584026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.815094, 35.803192, 32.646355>,  <26.813927, 35.566128, 32.683750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.815094, 35.803192, 32.646355>,  <26.817041, 36.198303, 32.584026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815094, 35.803192, 32.646355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102454, 0.154506, 0.982665,
		-0.994726, 0.020747, 0.100449,
		-0.004868, -0.987774, 0.155816,
		26.813633, 35.506859, 32.693100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654457, 36.183323, 33.299385>,  <26.817041, 36.198303, 32.584026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654457, 36.183323, 33.299385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.735531, 35.800686, 33.215626>,  <26.784174, 35.571102, 33.165371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.735531, 35.800686, 33.215626>,  <26.654457, 36.183323, 33.299385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735531, 35.800686, 33.215626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014770, -0.216795, 0.976106,
		-0.979133, -0.194746, -0.058069,
		0.202682, -0.956595, -0.209395,
		26.796335, 35.513706, 33.152809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292007, 35.818752, 33.801422>,  <26.654457, 36.183323, 33.299385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292007, 35.818752, 33.801422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.588778, 35.574844, 33.689899>,  <26.766840, 35.428501, 33.622986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.588778, 35.574844, 33.689899>,  <26.292007, 35.818752, 33.801422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588778, 35.574844, 33.689899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167806, -0.233730, 0.957712,
		-0.649147, -0.757334, -0.071087,
		0.741923, -0.609767, -0.278810,
		26.811354, 35.391914, 33.606255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164520, 35.120815, 34.011658>,  <26.292007, 35.818752, 33.801422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164520, 35.120815, 34.011658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.560917, 35.121796, 33.958103>,  <26.798756, 35.122383, 33.925972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.560917, 35.121796, 33.958103>,  <26.164520, 35.120815, 34.011658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560917, 35.121796, 33.958103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127652, -0.319371, 0.938993,
		-0.040457, -0.947627, -0.316808,
		0.990993, 0.002452, -0.133887,
		26.858215, 35.122532, 33.917938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448105, 34.451221, 34.320312>,  <26.164520, 35.120815, 34.011658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448105, 34.451221, 34.320312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.778475, 34.669022, 34.261845>,  <26.976696, 34.799702, 34.226765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.778475, 34.669022, 34.261845>,  <26.448105, 34.451221, 34.320312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778475, 34.669022, 34.261845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444459, -0.469352, 0.762998,
		0.346850, -0.695144, -0.629658,
		0.825925, 0.544503, -0.146169,
		27.026253, 34.832371, 34.217995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955296, 33.955280, 34.331902>,  <26.448105, 34.451221, 34.320312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955296, 33.955280, 34.331902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108276, 34.313911, 34.421227>,  <27.200066, 34.529091, 34.474823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108276, 34.313911, 34.421227>,  <26.955296, 33.955280, 34.331902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108276, 34.313911, 34.421227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641196, -0.431558, 0.634528,
		0.665280, -0.099487, -0.739936,
		0.382453, 0.896582, 0.223316,
		27.223013, 34.582886, 34.488220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731447, 33.865574, 34.341240>,  <26.955296, 33.955280, 34.331902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731447, 33.865574, 34.341240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.622183, 34.181118, 34.561447>,  <27.556623, 34.370445, 34.693573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.622183, 34.181118, 34.561447>,  <27.731447, 33.865574, 34.341240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622183, 34.181118, 34.561447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646699, -0.273077, 0.712186,
		0.712154, 0.550565, -0.435563,
		-0.273163, 0.788864, 0.550523,
		27.540234, 34.417778, 34.726604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254040, 33.968704, 34.811584>,  <27.731447, 33.865574, 34.341240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254040, 33.968704, 34.811584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010069, 34.231400, 34.988983>,  <27.863686, 34.389015, 35.095421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010069, 34.231400, 34.988983>,  <28.254040, 33.968704, 34.811584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010069, 34.231400, 34.988983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511957, -0.100627, 0.853097,
		0.604888, 0.747376, -0.274846,
		-0.609927, 0.656737, 0.443492,
		27.827091, 34.428421, 35.122032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613356, 34.443787, 35.330296>,  <28.254040, 33.968704, 34.811584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613356, 34.443787, 35.330296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.227009, 34.459679, 35.432686>,  <27.995201, 34.469212, 35.494122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.227009, 34.459679, 35.432686>,  <28.613356, 34.443787, 35.330296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227009, 34.459679, 35.432686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244789, -0.183290, 0.952094,
		0.084743, 0.982256, 0.167309,
		-0.965866, 0.039728, 0.255978,
		27.937248, 34.471596, 35.509480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014839, 35.025650, 35.288689>,  <28.613356, 34.443787, 35.330296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014839, 35.025650, 35.288689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227276, 35.331905, 35.433872>,  <29.354738, 35.515659, 35.520981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227276, 35.331905, 35.433872>,  <29.014839, 35.025650, 35.288689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227276, 35.331905, 35.433872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448238, 0.617383, -0.646468,
		-0.719045, 0.180643, 0.671076,
		0.531091, 0.765641, 0.362955,
		29.386602, 35.561596, 35.542759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479885, 35.619980, 35.487541>,  <29.014839, 35.025650, 35.288689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479885, 35.619980, 35.487541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.829781, 35.788574, 35.391888>,  <29.039717, 35.889732, 35.334496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.829781, 35.788574, 35.391888>,  <28.479885, 35.619980, 35.487541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829781, 35.788574, 35.391888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480858, 0.693753, -0.536174,
		-0.060091, 0.584000, 0.809526,
		0.874737, 0.421487, -0.239133,
		29.092201, 35.915020, 35.320148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465883, 36.255081, 35.631439>,  <28.479885, 35.619980, 35.487541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465883, 36.255081, 35.631439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743967, 36.277683, 35.344807>,  <28.910818, 36.291245, 35.172829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743967, 36.277683, 35.344807>,  <28.465883, 36.255081, 35.631439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743967, 36.277683, 35.344807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526743, 0.718381, -0.454390,
		0.489106, 0.693351, 0.529188,
		0.695210, 0.056501, -0.716582,
		28.952530, 36.294632, 35.129833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576910, 36.927227, 35.521412>,  <28.465883, 36.255081, 35.631439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576910, 36.927227, 35.521412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.718561, 36.766697, 35.183529>,  <28.803553, 36.670380, 34.980801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.718561, 36.766697, 35.183529>,  <28.576910, 36.927227, 35.521412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718561, 36.766697, 35.183529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467518, 0.706304, -0.531565,
		0.809950, 0.583160, 0.062498,
		0.354130, -0.401322, -0.844709,
		28.824800, 36.646301, 34.930115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766253, 37.512257, 35.108501>,  <28.576910, 36.927227, 35.521412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766253, 37.512257, 35.108501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765734, 37.212154, 34.844044>,  <28.765423, 37.032093, 34.685371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765734, 37.212154, 34.844044>,  <28.766253, 37.512257, 35.108501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765734, 37.212154, 34.844044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388829, 0.609495, -0.690889,
		0.921309, 0.256173, -0.292514,
		-0.001299, -0.750260, -0.661141,
		28.765345, 36.987076, 34.645702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041286, 37.808987, 34.526047>,  <28.766253, 37.512257, 35.108501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041286, 37.808987, 34.526047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.853680, 37.489300, 34.375702>,  <28.741116, 37.297489, 34.285496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.853680, 37.489300, 34.375702>,  <29.041286, 37.808987, 34.526047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853680, 37.489300, 34.375702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153385, 0.492819, -0.856506,
		0.869767, -0.344065, -0.353729,
		-0.469018, -0.799217, -0.375863,
		28.712975, 37.249535, 34.262943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264370, 37.747551, 33.767883>,  <29.041286, 37.808987, 34.526047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264370, 37.747551, 33.767883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934832, 37.521572, 33.786266>,  <28.737108, 37.385983, 33.797295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934832, 37.521572, 33.786266>,  <29.264370, 37.747551, 33.767883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934832, 37.521572, 33.786266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303071, 0.370539, -0.877980,
		0.478987, -0.737246, -0.476486,
		-0.823845, -0.564950, 0.045954,
		28.687677, 37.352089, 33.800053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071619, 37.570343, 33.067314>,  <29.264370, 37.747551, 33.767883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071619, 37.570343, 33.067314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731087, 37.533184, 33.273849>,  <28.526768, 37.510887, 33.397770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731087, 37.533184, 33.273849>,  <29.071619, 37.570343, 33.067314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731087, 37.533184, 33.273849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522440, 0.239881, -0.818238,
		-0.047848, -0.966348, -0.252751,
		-0.851332, -0.092896, 0.516337,
		28.475687, 37.505314, 33.428749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659870, 37.234261, 32.677643>,  <29.071619, 37.570343, 33.067314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659870, 37.234261, 32.677643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413984, 37.441483, 32.915546>,  <28.266453, 37.565815, 33.058289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413984, 37.441483, 32.915546>,  <28.659870, 37.234261, 32.677643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413984, 37.441483, 32.915546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513300, 0.309778, -0.800350,
		-0.598873, -0.797278, 0.075495,
		-0.614715, 0.518059, 0.594761,
		28.229570, 37.596901, 33.093975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961203, 37.187428, 32.223358>,  <28.659870, 37.234261, 32.677643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961203, 37.187428, 32.223358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.919621, 37.449425, 32.522739>,  <27.894670, 37.606621, 32.702370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.919621, 37.449425, 32.522739>,  <27.961203, 37.187428, 32.223358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919621, 37.449425, 32.522739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510613, 0.610639, -0.605305,
		-0.853504, -0.445094, 0.270967,
		-0.103954, 0.654989, 0.748453,
		27.888433, 37.645920, 32.747276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222227, 37.297634, 32.401424>,  <27.961203, 37.187428, 32.223358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222227, 37.297634, 32.401424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.434690, 37.622959, 32.496418>,  <27.562168, 37.818153, 32.553413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.434690, 37.622959, 32.496418>,  <27.222227, 37.297634, 32.401424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434690, 37.622959, 32.496418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700124, 0.579176, -0.417591,
		-0.477174, 0.055541, 0.877052,
		0.531160, 0.813308, 0.237482,
		27.594038, 37.866951, 32.567661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733404, 37.758720, 32.678757>,  <27.222227, 37.297634, 32.401424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733404, 37.758720, 32.678757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.046223, 37.979893, 32.563751>,  <27.233913, 38.112598, 32.494747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.046223, 37.979893, 32.563751>,  <26.733404, 37.758720, 32.678757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046223, 37.979893, 32.563751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590851, 0.511076, -0.624257,
		-0.198232, 0.658076, 0.726388,
		0.782048, 0.552934, -0.287513,
		27.280838, 38.145775, 32.477497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365866, 38.456673, 32.582825>,  <26.733404, 37.758720, 32.678757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365866, 38.456673, 32.582825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.724442, 38.580826, 32.456295>,  <26.939587, 38.655315, 32.380379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.724442, 38.580826, 32.456295>,  <26.365866, 38.456673, 32.582825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724442, 38.580826, 32.456295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414197, 0.840630, -0.348973,
		0.157594, 0.443852, 0.882133,
		0.896440, 0.310380, -0.316320,
		26.993374, 38.673939, 32.361401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441647, 39.149925, 32.873199>,  <26.365866, 38.456673, 32.582825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441647, 39.149925, 32.873199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.644428, 39.065483, 32.538910>,  <26.766098, 39.014816, 32.338337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.644428, 39.065483, 32.538910>,  <26.441647, 39.149925, 32.873199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644428, 39.065483, 32.538910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564442, 0.651462, -0.506954,
		0.651462, 0.728719, 0.211105,
		0.506954, -0.211105, -0.835723,
		26.796515, 39.002151, 32.288193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376139, 39.766315, 32.488140>,  <26.441647, 39.149925, 32.873199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376139, 39.766315, 32.488140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.461538, 39.478416, 32.223900>,  <26.512777, 39.305679, 32.065357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.461538, 39.478416, 32.223900>,  <26.376139, 39.766315, 32.488140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461538, 39.478416, 32.223900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519713, 0.488892, -0.700630,
		0.827235, 0.492904, -0.269683,
		0.213498, -0.719743, -0.660597,
		26.525587, 39.262493, 32.025723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416546, 40.120602, 31.890396>,  <26.376139, 39.766315, 32.488140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416546, 40.120602, 31.890396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.417953, 39.746906, 31.747744>,  <26.418798, 39.522690, 31.662151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.417953, 39.746906, 31.747744>,  <26.416546, 40.120602, 31.890396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.417953, 39.746906, 31.747744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518759, 0.303187, -0.799354,
		0.854913, 0.187821, -0.483577,
		0.003521, -0.934238, -0.356633,
		26.419010, 39.466637, 31.640755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689018, 40.179863, 31.204802>,  <26.416546, 40.120602, 31.890396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689018, 40.179863, 31.204802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.455687, 39.856533, 31.236650>,  <26.315687, 39.662537, 31.255760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.455687, 39.856533, 31.236650>,  <26.689018, 40.179863, 31.204802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455687, 39.856533, 31.236650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496947, 0.277635, -0.822170,
		0.642472, -0.519165, -0.563646,
		-0.583329, -0.808323, 0.079624,
		26.280687, 39.614037, 31.260538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692924, 40.082539, 30.532610>,  <26.689018, 40.179863, 31.204802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692924, 40.082539, 30.532610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.395615, 39.889465, 30.717890>,  <26.217228, 39.773621, 30.829058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.395615, 39.889465, 30.717890>,  <26.692924, 40.082539, 30.532610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395615, 39.889465, 30.717890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608875, 0.201254, -0.767312,
		0.277154, -0.852354, -0.443485,
		-0.743274, -0.482691, 0.463198,
		26.172632, 39.744659, 30.856850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441780, 39.698830, 30.059988>,  <26.692924, 40.082539, 30.532610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441780, 39.698830, 30.059988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.126011, 39.697151, 30.305523>,  <25.936550, 39.696144, 30.452845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.126011, 39.697151, 30.305523>,  <26.441780, 39.698830, 30.059988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126011, 39.697151, 30.305523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613529, -0.027075, -0.789208,
		0.019935, -0.999625, 0.018796,
		-0.789421, -0.004200, 0.613838,
		25.889185, 39.695892, 30.489674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.924112, 39.017895, 29.994165>,  <26.441780, 39.698830, 30.059988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.924112, 39.017895, 29.994165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.720598, 39.334824, 30.128847>,  <25.598490, 39.524979, 30.209656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.720598, 39.334824, 30.128847>,  <25.924112, 39.017895, 29.994165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720598, 39.334824, 30.128847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632241, -0.078438, -0.770791,
		-0.584302, -0.605044, 0.540845,
		-0.508785, 0.792319, 0.336703,
		25.567963, 39.572517, 30.229858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274130, 38.827724, 29.716629>,  <25.924112, 39.017895, 29.994165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274130, 38.827724, 29.716629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.244883, 39.207470, 29.838856>,  <25.227335, 39.435318, 29.912191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.244883, 39.207470, 29.838856>,  <25.274130, 38.827724, 29.716629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.244883, 39.207470, 29.838856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767456, 0.142106, -0.625154,
		-0.636918, -0.280219, 0.718201,
		-0.073119, 0.949359, 0.305566,
		25.222946, 39.492279, 29.930525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.444324, 38.857002, 29.905811>,  <25.274130, 38.827724, 29.716629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.444324, 38.857002, 29.905811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.607550, 39.218502, 29.854082>,  <24.705484, 39.435402, 29.823044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.607550, 39.218502, 29.854082>,  <24.444324, 38.857002, 29.905811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.607550, 39.218502, 29.854082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694648, 0.215437, -0.686331,
		-0.592410, 0.369900, 0.715699,
		0.408061, 0.903748, -0.129323,
		24.729969, 39.489628, 29.815285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.623589, 34.770679, 45.946335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.332722, 34.606125, 46.166145>,  <41.158199, 34.507393, 46.298031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.332722, 34.606125, 46.166145>,  <41.623589, 34.770679, 45.946335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332722, 34.606125, 46.166145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479808, 0.267900, 0.835472,
		-0.490924, 0.871199, 0.002579,
		-0.727171, -0.411391, 0.549527,
		41.114571, 34.482708, 46.331005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538456, 35.218414, 46.612537>,  <41.623589, 34.770679, 45.946335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538456, 35.218414, 46.612537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.364975, 34.870743, 46.707558>,  <41.260887, 34.662140, 46.764572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.364975, 34.870743, 46.707558>,  <41.538456, 35.218414, 46.612537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364975, 34.870743, 46.707558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274171, 0.123841, 0.953674,
		-0.858332, 0.478740, 0.184593,
		-0.433702, -0.869179, 0.237554,
		41.234863, 34.609989, 46.778824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985222, 35.361389, 47.096172>,  <41.538456, 35.218414, 46.612537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985222, 35.361389, 47.096172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.105740, 34.984550, 47.155064>,  <41.178051, 34.758446, 47.190399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.105740, 34.984550, 47.155064>,  <40.985222, 35.361389, 47.096172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105740, 34.984550, 47.155064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206231, 0.215132, 0.954561,
		-0.930962, -0.257241, 0.259108,
		0.301294, -0.942096, 0.147229,
		41.196129, 34.701923, 47.199234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764088, 35.164150, 47.734932>,  <40.985222, 35.361389, 47.096172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764088, 35.164150, 47.734932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.068066, 34.914154, 47.663517>,  <41.250450, 34.764156, 47.620667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.068066, 34.914154, 47.663517>,  <40.764088, 35.164150, 47.734932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068066, 34.914154, 47.663517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380833, 0.205535, 0.901511,
		-0.526739, -0.753090, 0.394211,
		0.759943, -0.624989, -0.178538,
		41.296047, 34.726658, 47.609955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851151, 34.932045, 48.300934>,  <40.764088, 35.164150, 47.734932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851151, 34.932045, 48.300934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.217773, 34.872139, 48.152615>,  <41.437748, 34.836193, 48.063622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.217773, 34.872139, 48.152615>,  <40.851151, 34.932045, 48.300934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217773, 34.872139, 48.152615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390243, 0.132424, 0.911139,
		-0.087358, -0.979813, 0.179821,
		0.916558, -0.149769, -0.370797,
		41.492741, 34.827209, 48.041374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175282, 34.598213, 48.797413>,  <40.851151, 34.932045, 48.300934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175282, 34.598213, 48.797413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.500267, 34.682026, 48.579792>,  <41.695259, 34.732315, 48.449219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.500267, 34.682026, 48.579792>,  <41.175282, 34.598213, 48.797413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500267, 34.682026, 48.579792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571109, -0.098481, 0.814945,
		0.117180, -0.972830, -0.199680,
		0.812467, 0.209534, -0.544052,
		41.744007, 34.744884, 48.416576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597324, 34.034691, 48.856937>,  <41.175282, 34.598213, 48.797413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597324, 34.034691, 48.856937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.852009, 34.319557, 48.738678>,  <42.004822, 34.490479, 48.667721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.852009, 34.319557, 48.738678>,  <41.597324, 34.034691, 48.856937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852009, 34.319557, 48.738678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508016, -0.098978, 0.855642,
		0.580097, -0.694997, -0.424813,
		0.636715, 0.712168, -0.295653,
		42.043022, 34.533207, 48.649982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262852, 33.813019, 48.921104>,  <41.597324, 34.034691, 48.856937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262852, 33.813019, 48.921104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.295502, 34.211651, 48.926182>,  <42.315090, 34.450832, 48.929230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.295502, 34.211651, 48.926182>,  <42.262852, 33.813019, 48.921104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295502, 34.211651, 48.926182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565745, -0.056816, 0.822621,
		0.820531, -0.059964, -0.568449,
		0.081624, 0.996582, 0.012695,
		42.319988, 34.510624, 48.929989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948437, 33.922699, 49.018803>,  <42.262852, 33.813019, 48.921104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948437, 33.922699, 49.018803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.780083, 34.270176, 49.123295>,  <42.679070, 34.478661, 49.185989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.780083, 34.270176, 49.123295>,  <42.948437, 33.922699, 49.018803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780083, 34.270176, 49.123295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604828, 0.054118, 0.794515,
		0.676049, 0.492394, -0.548184,
		-0.420882, 0.868688, 0.261228,
		42.653820, 34.530781, 49.201664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475479, 34.358185, 49.292530>,  <42.948437, 33.922699, 49.018803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475479, 34.358185, 49.292530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.150154, 34.525578, 49.454220>,  <42.954960, 34.626015, 49.551231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.150154, 34.525578, 49.454220>,  <43.475479, 34.358185, 49.292530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150154, 34.525578, 49.454220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470452, 0.064224, 0.880085,
		0.342341, 0.905951, -0.249111,
		-0.813313, 0.418484, 0.404220,
		42.906158, 34.651123, 49.575485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747211, 34.832592, 49.913319>,  <43.475479, 34.358185, 49.292530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747211, 34.832592, 49.913319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.351845, 34.795853, 49.961651>,  <43.114624, 34.773808, 49.990650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.351845, 34.795853, 49.961651>,  <43.747211, 34.832592, 49.913319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351845, 34.795853, 49.961651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123705, -0.026245, 0.991972,
		-0.087943, 0.995427, 0.037303,
		-0.988414, -0.091851, 0.120831,
		43.055321, 34.768299, 49.997902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549511, 35.241070, 50.353790>,  <43.747211, 34.832592, 49.913319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549511, 35.241070, 50.353790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.224884, 35.012276, 50.401436>,  <43.030109, 34.875000, 50.430023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.224884, 35.012276, 50.401436>,  <43.549511, 35.241070, 50.353790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224884, 35.012276, 50.401436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024170, 0.170836, 0.985003,
		-0.583757, 0.802276, -0.124820,
		-0.811568, -0.571986, 0.119118,
		42.981415, 34.840679, 50.437172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849865, 35.567631, 50.750854>,  <43.549511, 35.241070, 50.353790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849865, 35.567631, 50.750854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.913780, 35.176018, 50.801388>,  <42.952129, 34.941051, 50.831707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.913780, 35.176018, 50.801388>,  <42.849865, 35.567631, 50.750854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913780, 35.176018, 50.801388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002525, 0.128380, 0.991722,
		-0.987148, -0.158149, 0.022986,
		0.159791, -0.979034, 0.126331,
		42.961716, 34.882309, 50.839287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693184, 36.293159, 50.620491>,  <42.849865, 35.567631, 50.750854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693184, 36.293159, 50.620491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.376060, 36.486485, 50.769012>,  <42.185787, 36.602478, 50.858128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.376060, 36.486485, 50.769012>,  <42.693184, 36.293159, 50.620491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376060, 36.486485, 50.769012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392728, 0.060771, -0.917645,
		-0.466074, -0.873336, 0.141630,
		-0.792805, 0.483312, 0.371307,
		42.138218, 36.631477, 50.880405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044716, 36.093254, 50.296570>,  <42.693184, 36.293159, 50.620491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044716, 36.093254, 50.296570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.926540, 36.439545, 50.458179>,  <41.855633, 36.647320, 50.555145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.926540, 36.439545, 50.458179>,  <42.044716, 36.093254, 50.296570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926540, 36.439545, 50.458179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578355, 0.174532, -0.796896,
		-0.760407, -0.469106, 0.449132,
		-0.295441, 0.865724, 0.404025,
		41.837910, 36.699261, 50.579388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259411, 36.178074, 50.193771>,  <42.044716, 36.093254, 50.296570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259411, 36.178074, 50.193771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.429409, 36.537548, 50.237129>,  <41.531406, 36.753231, 50.263145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.429409, 36.537548, 50.237129>,  <41.259411, 36.178074, 50.193771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429409, 36.537548, 50.237129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487665, 0.328197, -0.808993,
		-0.762604, 0.290956, 0.577737,
		0.424993, 0.898683, 0.108395,
		41.556908, 36.807152, 50.269650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743973, 36.580502, 50.019199>,  <41.259411, 36.178074, 50.193771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743973, 36.580502, 50.019199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.070469, 36.807846, 49.977802>,  <41.266369, 36.944252, 49.952965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.070469, 36.807846, 49.977802>,  <40.743973, 36.580502, 50.019199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070469, 36.807846, 49.977802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378901, 0.391456, -0.838568,
		-0.436098, 0.723689, 0.534877,
		0.816243, 0.568363, -0.103493,
		41.315342, 36.978355, 49.946754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360817, 37.118240, 49.729195>,  <40.743973, 36.580502, 50.019199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360817, 37.118240, 49.729195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.752735, 37.129745, 49.650036>,  <40.987888, 37.136650, 49.602539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.752735, 37.129745, 49.650036>,  <40.360817, 37.118240, 49.729195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752735, 37.129745, 49.650036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187028, 0.482148, -0.855894,
		0.070797, 0.875618, 0.477788,
		0.979800, 0.028765, -0.197900,
		41.046677, 37.138374, 49.590668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368515, 37.802048, 49.532589>,  <40.360817, 37.118240, 49.729195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368515, 37.802048, 49.532589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.646332, 37.552650, 49.388996>,  <40.813023, 37.403011, 49.302841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.646332, 37.552650, 49.388996>,  <40.368515, 37.802048, 49.532589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646332, 37.552650, 49.388996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027425, 0.475662, -0.879200,
		0.718932, 0.620485, 0.313267,
		0.694540, -0.623493, -0.358986,
		40.854694, 37.365601, 49.281300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777546, 38.208900, 49.108864>,  <40.368515, 37.802048, 49.532589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777546, 38.208900, 49.108864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.863815, 37.842140, 48.974533>,  <40.915577, 37.622086, 48.893936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.863815, 37.842140, 48.974533>,  <40.777546, 38.208900, 49.108864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863815, 37.842140, 48.974533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100741, 0.321189, -0.941642,
		0.971254, 0.236922, -0.023096,
		0.215678, -0.916900, -0.335824,
		40.928520, 37.567070, 48.873787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920361, 38.250538, 48.417198>,  <40.777546, 38.208900, 49.108864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920361, 38.250538, 48.417198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.913342, 37.850964, 48.434280>,  <40.909130, 37.611221, 48.444530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.913342, 37.850964, 48.434280>,  <40.920361, 38.250538, 48.417198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913342, 37.850964, 48.434280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440850, -0.030601, -0.897059,
		0.897409, -0.034569, -0.439843,
		-0.017550, -0.998934, 0.042701,
		40.908077, 37.551285, 48.447090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291088, 37.926800, 47.802738>,  <40.920361, 38.250538, 48.417198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291088, 37.926800, 47.802738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.045536, 37.646507, 47.948135>,  <40.898205, 37.478333, 48.035374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.045536, 37.646507, 47.948135>,  <41.291088, 37.926800, 47.802738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045536, 37.646507, 47.948135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390933, -0.130174, -0.911168,
		0.685802, -0.701447, -0.194029,
		-0.613878, -0.700733, 0.363492,
		40.861374, 37.436287, 48.057182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154125, 37.341587, 47.203732>,  <41.291088, 37.926800, 47.802738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154125, 37.341587, 47.203732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.852520, 37.303104, 47.463642>,  <40.671558, 37.280014, 47.619591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.852520, 37.303104, 47.463642>,  <41.154125, 37.341587, 47.203732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852520, 37.303104, 47.463642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645218, -0.076960, -0.760112,
		0.123135, -0.992382, -0.004045,
		-0.754010, -0.096206, 0.649779,
		40.626316, 37.274242, 47.658577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822479, 36.665264, 47.053436>,  <41.154125, 37.341587, 47.203732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822479, 36.665264, 47.053436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.547291, 36.880257, 47.248501>,  <40.382179, 37.009251, 47.365540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.547291, 36.880257, 47.248501>,  <40.822479, 36.665264, 47.053436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547291, 36.880257, 47.248501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661438, -0.187832, -0.726098,
		-0.298670, -0.822087, 0.484736,
		-0.687965, 0.537487, 0.487660,
		40.340900, 37.041500, 47.394798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117516, 36.385487, 47.114063>,  <40.822479, 36.665264, 47.053436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117516, 36.385487, 47.114063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.020893, 36.766403, 47.188663>,  <39.962917, 36.994953, 47.233421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.020893, 36.766403, 47.188663>,  <40.117516, 36.385487, 47.114063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020893, 36.766403, 47.188663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827807, -0.101942, -0.551674,
		-0.506345, -0.287646, 0.812942,
		-0.241559, 0.952296, 0.186497,
		39.948425, 37.052094, 47.244614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430092, 36.441700, 46.894516>,  <40.117516, 36.385487, 47.114063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430092, 36.441700, 46.894516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.514568, 36.830322, 46.937363>,  <39.565254, 37.063496, 46.963070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.514568, 36.830322, 46.937363>,  <39.430092, 36.441700, 46.894516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514568, 36.830322, 46.937363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759976, 0.232128, -0.607086,
		-0.614684, 0.046804, 0.787383,
		0.211188, 0.971558, 0.107115,
		39.577923, 37.121788, 46.969498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786037, 36.778572, 47.018425>,  <39.430092, 36.441700, 46.894516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786037, 36.778572, 47.018425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.061523, 37.030846, 46.875370>,  <39.226814, 37.182209, 46.789539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.061523, 37.030846, 46.875370>,  <38.786037, 36.778572, 47.018425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061523, 37.030846, 46.875370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607540, 0.232818, -0.759402,
		-0.395681, 0.740290, 0.543513,
		0.688718, 0.630687, -0.357634,
		39.268139, 37.220051, 46.768082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381058, 37.400715, 46.720997>,  <38.786037, 36.778572, 47.018425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381058, 37.400715, 46.720997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.748611, 37.375679, 46.565182>,  <38.969143, 37.360657, 46.471695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.748611, 37.375679, 46.565182>,  <38.381058, 37.400715, 46.720997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748611, 37.375679, 46.565182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376139, 0.158966, -0.912825,
		0.119058, 0.985298, 0.122528,
		0.918882, -0.062592, -0.389535,
		39.024277, 37.356903, 46.448322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472904, 38.192997, 46.670776>,  <38.381058, 37.400715, 46.720997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472904, 38.192997, 46.670776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.223995, 38.504211, 46.705265>,  <38.074650, 38.690941, 46.725960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.223995, 38.504211, 46.705265>,  <38.472904, 38.192997, 46.670776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223995, 38.504211, 46.705265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209451, 0.059358, 0.976016,
		0.754262, 0.625404, -0.199898,
		-0.622269, 0.778040, 0.086220,
		38.037315, 38.737625, 46.731133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861782, 38.685635, 46.913540>,  <38.472904, 38.192997, 46.670776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861782, 38.685635, 46.913540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.479568, 38.753246, 47.010193>,  <38.250240, 38.793816, 47.068184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.479568, 38.753246, 47.010193>,  <38.861782, 38.685635, 46.913540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479568, 38.753246, 47.010193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265250, 0.134684, 0.954727,
		0.128838, 0.976365, -0.173531,
		-0.955533, 0.169034, 0.241628,
		38.192909, 38.803955, 47.082680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917831, 39.242931, 47.382580>,  <38.861782, 38.685635, 46.913540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917831, 39.242931, 47.382580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.546482, 39.110672, 47.450455>,  <38.323673, 39.031319, 47.491180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.546482, 39.110672, 47.450455>,  <38.917831, 39.242931, 47.382580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546482, 39.110672, 47.450455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149518, 0.085705, 0.985038,
		-0.340240, 0.939856, -0.030129,
		-0.928375, -0.330645, 0.169686,
		38.267971, 39.011478, 47.501362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601742, 39.702423, 47.850243>,  <38.917831, 39.242931, 47.382580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601742, 39.702423, 47.850243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.361408, 39.384823, 47.887264>,  <38.217209, 39.194263, 47.909477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.361408, 39.384823, 47.887264>,  <38.601742, 39.702423, 47.850243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361408, 39.384823, 47.887264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187080, 0.252231, 0.949411,
		-0.777175, 0.553123, -0.300090,
		-0.600833, -0.793999, 0.092550,
		38.181160, 39.146622, 47.915028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192963, 39.919773, 48.284866>,  <38.601742, 39.702423, 47.850243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192963, 39.919773, 48.284866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.136738, 39.524235, 48.304600>,  <38.103001, 39.286911, 48.316441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.136738, 39.524235, 48.304600>,  <38.192963, 39.919773, 48.284866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136738, 39.524235, 48.304600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236442, 0.081910, 0.968187,
		-0.961424, 0.124429, -0.245317,
		-0.140565, -0.988842, 0.049330,
		38.094570, 39.227581, 48.319401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709003, 39.917122, 48.871555>,  <38.192963, 39.919773, 48.284866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709003, 39.917122, 48.871555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863808, 39.557533, 48.789509>,  <37.956688, 39.341782, 48.740280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863808, 39.557533, 48.789509>,  <37.709003, 39.917122, 48.871555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863808, 39.557533, 48.789509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077145, -0.190104, 0.978728,
		-0.918843, -0.394600, -0.004220,
		0.387009, -0.898972, -0.205117,
		37.979912, 39.287842, 48.727974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198051, 39.300369, 49.095917>,  <37.709003, 39.917122, 48.871555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198051, 39.300369, 49.095917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.588421, 39.213898, 49.107502>,  <37.822643, 39.162014, 49.114452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.588421, 39.213898, 49.107502>,  <37.198051, 39.300369, 49.095917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588421, 39.213898, 49.107502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046254, -0.075353, 0.996083,
		-0.213156, -0.973440, -0.083538,
		0.975922, -0.216186, 0.028963,
		37.881199, 39.149044, 49.116192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170815, 38.769787, 49.473003>,  <37.198051, 39.300369, 49.095917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170815, 38.769787, 49.473003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.515057, 38.971363, 49.502430>,  <37.721600, 39.092308, 49.520084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.515057, 38.971363, 49.502430>,  <37.170815, 38.769787, 49.473003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515057, 38.971363, 49.502430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128201, 0.074565, 0.988941,
		0.492880, -0.860515, 0.128776,
		0.860601, 0.503939, 0.073567,
		37.773235, 39.122543, 49.524502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035339, 38.006756, 49.461212>,  <37.170815, 38.769787, 49.473003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035339, 38.006756, 49.461212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.671379, 37.942410, 49.614155>,  <36.453003, 37.903801, 49.705921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.671379, 37.942410, 49.614155>,  <37.035339, 38.006756, 49.461212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671379, 37.942410, 49.614155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302921, -0.372058, -0.877389,
		0.283398, -0.914164, 0.289809,
		-0.909904, -0.160861, 0.382360,
		36.398407, 37.894150, 49.728863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682178, 37.342209, 49.269573>,  <37.035339, 38.006756, 49.461212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682178, 37.342209, 49.269573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.399445, 37.616867, 49.337578>,  <36.229805, 37.781662, 49.378380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.399445, 37.616867, 49.337578>,  <36.682178, 37.342209, 49.269573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399445, 37.616867, 49.337578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429814, -0.226009, -0.874174,
		-0.561826, -0.690966, 0.454881,
		-0.706831, 0.686648, 0.170009,
		36.187393, 37.822861, 49.388580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181149, 37.088238, 48.823944>,  <36.682178, 37.342209, 49.269573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181149, 37.088238, 48.823944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.024715, 37.435307, 48.946705>,  <35.930855, 37.643547, 49.020363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.024715, 37.435307, 48.946705>,  <36.181149, 37.088238, 48.823944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024715, 37.435307, 48.946705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545794, 0.049850, -0.836435,
		-0.741054, -0.494625, 0.454076,
		-0.391086, 0.867676, 0.306905,
		35.907391, 37.695610, 49.038776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446335, 36.996605, 48.731541>,  <36.181149, 37.088238, 48.823944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446335, 36.996605, 48.731541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546551, 37.383831, 48.728077>,  <35.606682, 37.616165, 48.725998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546551, 37.383831, 48.728077>,  <35.446335, 36.996605, 48.731541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546551, 37.383831, 48.728077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581584, 0.143359, -0.800755,
		-0.773943, 0.205659, 0.598929,
		0.250544, 0.968066, -0.008656,
		35.621716, 37.674252, 48.725479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868637, 37.299099, 48.651909>,  <35.446335, 36.996605, 48.731541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868637, 37.299099, 48.651909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133904, 37.572178, 48.529182>,  <35.293064, 37.736027, 48.455547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133904, 37.572178, 48.529182>,  <34.868637, 37.299099, 48.651909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133904, 37.572178, 48.529182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533976, 0.144286, -0.833097,
		-0.524482, 0.716315, 0.460229,
		0.663165, 0.682696, -0.306820,
		35.332851, 37.776985, 48.437138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428326, 37.795994, 48.392643>,  <34.868637, 37.299099, 48.651909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428326, 37.795994, 48.392643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.782784, 37.880894, 48.227863>,  <34.995457, 37.931835, 48.128994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.782784, 37.880894, 48.227863>,  <34.428326, 37.795994, 48.392643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782784, 37.880894, 48.227863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449004, 0.173296, -0.876564,
		-0.114661, 0.961727, 0.248866,
		0.886142, 0.212249, -0.411949,
		35.048626, 37.944569, 48.104279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.582523, 32.895493, 51.411076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.905518, 33.082581, 51.267292>,  <40.099312, 33.194832, 51.181023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.905518, 33.082581, 51.267292>,  <39.582523, 32.895493, 51.411076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905518, 33.082581, 51.267292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540603, 0.342900, -0.768224,
		-0.236053, 0.814653, 0.529735,
		0.807482, 0.467718, -0.359461,
		40.147762, 33.222897, 51.159454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409683, 33.553589, 51.151806>,  <39.582523, 32.895493, 51.411076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409683, 33.553589, 51.151806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.737495, 33.462101, 50.941643>,  <39.934181, 33.407207, 50.815544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.737495, 33.462101, 50.941643>,  <39.409683, 33.553589, 51.151806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737495, 33.462101, 50.941643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458130, 0.289254, -0.840505,
		0.344221, 0.929526, 0.132267,
		0.819530, -0.228724, -0.525411,
		39.983353, 33.393482, 50.784019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471893, 34.119652, 50.598995>,  <39.409683, 33.553589, 51.151806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471893, 34.119652, 50.598995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.693996, 33.814373, 50.466801>,  <39.827259, 33.631207, 50.387486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.693996, 33.814373, 50.466801>,  <39.471893, 34.119652, 50.598995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693996, 33.814373, 50.466801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325183, 0.166511, -0.930876,
		0.765473, 0.624341, -0.155723,
		0.555255, -0.763199, -0.330485,
		39.860573, 33.585415, 50.367657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775188, 34.362808, 49.968609>,  <39.471893, 34.119652, 50.598995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775188, 34.362808, 49.968609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.801701, 33.965645, 49.929127>,  <39.817608, 33.727348, 49.905437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.801701, 33.965645, 49.929127>,  <39.775188, 34.362808, 49.968609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801701, 33.965645, 49.929127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249184, 0.079319, -0.965203,
		0.966186, 0.088569, -0.242160,
		0.066279, -0.992907, -0.098707,
		39.821583, 33.667774, 49.899513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262661, 34.246567, 49.405552>,  <39.775188, 34.362808, 49.968609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262661, 34.246567, 49.405552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.083149, 33.891830, 49.449562>,  <39.975441, 33.678989, 49.475967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.083149, 33.891830, 49.449562>,  <40.262661, 34.246567, 49.405552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083149, 33.891830, 49.449562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297387, 0.032105, -0.954217,
		0.842710, -0.460951, -0.278144,
		-0.448777, -0.886844, 0.110025,
		39.948517, 33.625778, 49.482571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612846, 33.713646, 48.994217>,  <40.262661, 34.246567, 49.405552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612846, 33.713646, 48.994217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.221649, 33.656681, 49.055210>,  <39.986931, 33.622501, 49.091805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.221649, 33.656681, 49.055210>,  <40.612846, 33.713646, 48.994217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221649, 33.656681, 49.055210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142573, -0.077426, -0.986751,
		0.152330, -0.986775, 0.055418,
		-0.977992, -0.142411, 0.152482,
		39.928253, 33.613956, 49.100956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363285, 33.557297, 48.333076>,  <40.612846, 33.713646, 48.994217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363285, 33.557297, 48.333076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.011402, 33.550446, 48.523159>,  <39.800274, 33.546333, 48.637211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.011402, 33.550446, 48.523159>,  <40.363285, 33.557297, 48.333076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011402, 33.550446, 48.523159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461428, -0.210729, -0.861787,
		0.114902, -0.977394, 0.177476,
		-0.879705, -0.017129, 0.475211,
		39.747490, 33.545307, 48.665722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024544, 32.994949, 48.090519>,  <40.363285, 33.557297, 48.333076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024544, 32.994949, 48.090519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.733402, 33.233765, 48.225441>,  <39.558716, 33.377052, 48.306396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.733402, 33.233765, 48.225441>,  <40.024544, 32.994949, 48.090519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733402, 33.233765, 48.225441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526520, -0.171437, -0.832698,
		-0.439324, -0.783682, 0.439133,
		-0.727854, 0.597036, 0.337307,
		39.515045, 33.412876, 48.326633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365772, 32.581806, 48.081089>,  <40.024544, 32.994949, 48.090519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365772, 32.581806, 48.081089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.237465, 32.960495, 48.069607>,  <39.160480, 33.187710, 48.062717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.237465, 32.960495, 48.069607>,  <39.365772, 32.581806, 48.081089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237465, 32.960495, 48.069607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615424, -0.231366, -0.753474,
		-0.719974, -0.224022, 0.656850,
		-0.320767, 0.946723, -0.028709,
		39.141235, 33.244511, 48.060993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647289, 32.527958, 48.082581>,  <39.365772, 32.581806, 48.081089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647289, 32.527958, 48.082581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.766701, 32.882317, 47.940556>,  <38.838348, 33.094933, 47.855339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.766701, 32.882317, 47.940556>,  <38.647289, 32.527958, 48.082581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766701, 32.882317, 47.940556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518350, -0.161878, -0.839708,
		-0.801371, 0.434721, 0.410880,
		0.298527, 0.885897, -0.355062,
		38.856258, 33.148087, 47.834038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097397, 32.853584, 47.856995>,  <38.647289, 32.527958, 48.082581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097397, 32.853584, 47.856995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.385132, 33.052025, 47.662498>,  <38.557774, 33.171089, 47.545799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.385132, 33.052025, 47.662498>,  <38.097397, 32.853584, 47.856995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385132, 33.052025, 47.662498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499149, -0.117670, -0.858489,
		-0.483114, 0.860254, 0.162983,
		0.719341, 0.496101, -0.486243,
		38.600933, 33.200855, 47.516624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692867, 33.332424, 47.524746>,  <38.097397, 32.853584, 47.856995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692867, 33.332424, 47.524746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.033642, 33.252075, 47.331314>,  <38.238106, 33.203865, 47.215256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.033642, 33.252075, 47.331314>,  <37.692867, 33.332424, 47.524746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033642, 33.252075, 47.331314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506732, -0.083476, -0.858053,
		0.131991, 0.976055, -0.172904,
		0.851940, -0.200871, -0.483580,
		38.289223, 33.191814, 47.186241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346645, 34.022007, 47.500538>,  <37.692867, 33.332424, 47.524746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346645, 34.022007, 47.500538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.958035, 34.064270, 47.585365>,  <36.724869, 34.089630, 47.636261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.958035, 34.064270, 47.585365>,  <37.346645, 34.022007, 47.500538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958035, 34.064270, 47.585365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236398, 0.492435, 0.837630,
		-0.015925, 0.863912, -0.503391,
		-0.971526, 0.105662, 0.212069,
		36.666576, 34.095970, 47.648987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224312, 34.640358, 47.891518>,  <37.346645, 34.022007, 47.500538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224312, 34.640358, 47.891518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.906811, 34.427818, 48.009922>,  <36.716309, 34.300293, 48.080963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.906811, 34.427818, 48.009922>,  <37.224312, 34.640358, 47.891518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906811, 34.427818, 48.009922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011501, 0.473464, 0.880738,
		-0.608132, 0.702493, -0.369702,
		-0.793753, -0.531353, 0.296008,
		36.668686, 34.268414, 48.098724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893753, 35.152355, 48.320827>,  <37.224312, 34.640358, 47.891518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893753, 35.152355, 48.320827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.756615, 34.789471, 48.418343>,  <36.674332, 34.571739, 48.476852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.756615, 34.789471, 48.418343>,  <36.893753, 35.152355, 48.320827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756615, 34.789471, 48.418343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180370, 0.191113, 0.964854,
		-0.921914, 0.374765, 0.098111,
		-0.342843, -0.907209, 0.243786,
		36.653763, 34.517307, 48.491478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495407, 35.272739, 48.878426>,  <36.893753, 35.152355, 48.320827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495407, 35.272739, 48.878426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.545723, 34.876568, 48.901180>,  <36.575912, 34.638866, 48.914833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.545723, 34.876568, 48.901180>,  <36.495407, 35.272739, 48.878426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545723, 34.876568, 48.901180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047897, 0.051212, 0.997538,
		-0.990900, -0.128203, -0.040997,
		0.125788, -0.990425, 0.056887,
		36.583458, 34.579441, 48.918247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854317, 35.004204, 49.311405>,  <36.495407, 35.272739, 48.878426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854317, 35.004204, 49.311405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.160530, 34.748238, 49.338161>,  <36.344257, 34.594658, 49.354214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.160530, 34.748238, 49.338161>,  <35.854317, 35.004204, 49.311405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160530, 34.748238, 49.338161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019077, 0.126495, 0.991784,
		-0.643116, -0.757965, 0.109043,
		0.765531, -0.639912, 0.066892,
		36.390190, 34.556263, 49.358231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633732, 34.481251, 49.872517>,  <35.854317, 35.004204, 49.311405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633732, 34.481251, 49.872517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.026974, 34.472073, 49.799873>,  <36.262920, 34.466568, 49.756287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.026974, 34.472073, 49.799873>,  <35.633732, 34.481251, 49.872517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026974, 34.472073, 49.799873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182349, 0.036127, 0.982570,
		-0.015987, -0.999084, 0.039702,
		0.983104, -0.022948, -0.181604,
		36.321903, 34.465191, 49.745392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921524, 34.083290, 50.459053>,  <35.633732, 34.481251, 49.872517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921524, 34.083290, 50.459053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.257084, 34.254875, 50.325043>,  <36.458420, 34.357826, 50.244637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.257084, 34.254875, 50.325043>,  <35.921524, 34.083290, 50.459053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257084, 34.254875, 50.325043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293895, 0.161090, 0.942166,
		0.458124, -0.888842, 0.009067,
		0.838897, 0.428964, -0.335025,
		36.508755, 34.383564, 50.224537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444366, 33.781223, 50.853569>,  <35.921524, 34.083290, 50.459053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444366, 33.781223, 50.853569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.627007, 34.109108, 50.715248>,  <36.736591, 34.305840, 50.632256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.627007, 34.109108, 50.715248>,  <36.444366, 33.781223, 50.853569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627007, 34.109108, 50.715248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447669, 0.124203, 0.885531,
		0.768834, -0.559142, -0.310250,
		0.456604, 0.819716, -0.345802,
		36.763988, 34.355022, 50.611507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295708, 33.752914, 51.094093>,  <36.444366, 33.781223, 50.853569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295708, 33.752914, 51.094093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.151966, 34.122536, 51.041958>,  <37.065723, 34.344311, 51.010677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.151966, 34.122536, 51.041958>,  <37.295708, 33.752914, 51.094093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151966, 34.122536, 51.041958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385044, 0.274043, 0.881273,
		0.850063, 0.266501, -0.454280,
		-0.359352, 0.924055, -0.130340,
		37.044159, 34.399754, 51.002857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867996, 34.165291, 51.373325>,  <37.295708, 33.752914, 51.094093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867996, 34.165291, 51.373325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.545948, 34.401897, 51.355961>,  <37.352718, 34.543861, 51.345543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.545948, 34.401897, 51.355961>,  <37.867996, 34.165291, 51.373325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545948, 34.401897, 51.355961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254672, 0.410882, 0.875396,
		0.535648, 0.693746, -0.481453,
		-0.805123, 0.591517, -0.043410,
		37.304413, 34.579353, 51.342937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182812, 34.789246, 51.449360>,  <37.867996, 34.165291, 51.373325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182812, 34.789246, 51.449360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.791992, 34.824852, 51.526779>,  <37.557503, 34.846218, 51.573231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.791992, 34.824852, 51.526779>,  <38.182812, 34.789246, 51.449360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791992, 34.824852, 51.526779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212547, 0.345805, 0.913916,
		0.014428, 0.934074, -0.356788,
		-0.977044, 0.089020, 0.193545,
		37.498878, 34.851559, 51.584843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029041, 35.518913, 51.753029>,  <38.182812, 34.789246, 51.449360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029041, 35.518913, 51.753029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.734169, 35.288090, 51.893635>,  <37.557243, 35.149593, 51.977997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.734169, 35.288090, 51.893635>,  <38.029041, 35.518913, 51.753029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734169, 35.288090, 51.893635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182842, 0.330451, 0.925943,
		-0.650484, 0.746861, -0.138092,
		-0.737183, -0.577063, 0.351511,
		37.513016, 35.114971, 51.999088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677444, 35.916233, 52.235771>,  <38.029041, 35.518913, 51.753029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677444, 35.916233, 52.235771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.584297, 35.541222, 52.339169>,  <37.528408, 35.316216, 52.401207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.584297, 35.541222, 52.339169>,  <37.677444, 35.916233, 52.235771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584297, 35.541222, 52.339169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145036, 0.229344, 0.962479,
		-0.961633, 0.261619, 0.082569,
		-0.232866, -0.937527, 0.258489,
		37.514439, 35.259964, 52.416714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250378, 36.012344, 52.853809>,  <37.677444, 35.916233, 52.235771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250378, 36.012344, 52.853809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.387577, 35.636707, 52.862438>,  <37.469894, 35.411327, 52.867615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.387577, 35.636707, 52.862438>,  <37.250378, 36.012344, 52.853809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387577, 35.636707, 52.862438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205527, 0.097439, 0.973789,
		-0.916576, -0.329571, 0.226430,
		0.342996, -0.939089, 0.021574,
		37.490475, 35.354980, 52.868912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695995, 36.378357, 52.430992>,  <37.250378, 36.012344, 52.853809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695995, 36.378357, 52.430992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.774052, 36.707428, 52.644577>,  <36.820885, 36.904873, 52.772728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.774052, 36.707428, 52.644577>,  <36.695995, 36.378357, 52.430992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774052, 36.707428, 52.644577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110696, 0.522475, -0.845439,
		-0.974508, 0.224088, 0.010890,
		0.195142, 0.822681, 0.533962,
		36.832596, 36.954231, 52.804764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102139, 36.796398, 52.420246>,  <36.695995, 36.378357, 52.430992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102139, 36.796398, 52.420246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.459675, 36.974678, 52.439827>,  <36.674198, 37.081646, 52.451576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.459675, 36.974678, 52.439827>,  <36.102139, 36.796398, 52.420246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459675, 36.974678, 52.439827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177133, 0.451300, -0.874615,
		-0.411909, 0.773097, 0.482340,
		0.893843, 0.445700, 0.048954,
		36.727829, 37.108387, 52.454514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027607, 37.438808, 52.166622>,  <36.102139, 36.796398, 52.420246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027607, 37.438808, 52.166622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.424686, 37.398544, 52.140018>,  <36.662933, 37.374386, 52.124058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.424686, 37.398544, 52.140018>,  <36.027607, 37.438808, 52.166622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424686, 37.398544, 52.140018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010380, 0.620445, -0.784182,
		0.120201, 0.777763, 0.616957,
		0.992695, -0.100663, -0.066505,
		36.722496, 37.368347, 52.120068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244602, 38.104908, 52.092793>,  <36.027607, 37.438808, 52.166622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244602, 38.104908, 52.092793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.517876, 37.862778, 51.929405>,  <36.681839, 37.717499, 51.831375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.517876, 37.862778, 51.929405>,  <36.244602, 38.104908, 52.092793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517876, 37.862778, 51.929405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108383, 0.469105, -0.876466,
		0.722161, 0.643056, 0.254877,
		0.683181, -0.605326, -0.408466,
		36.722832, 37.681179, 51.806866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672516, 38.481716, 51.500496>,  <36.244602, 38.104908, 52.092793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672516, 38.481716, 51.500496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.733765, 38.097961, 51.405731>,  <36.770512, 37.867706, 51.348873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.733765, 38.097961, 51.405731>,  <36.672516, 38.481716, 51.500496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733765, 38.097961, 51.405731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130415, 0.218025, -0.967190,
		0.979565, 0.178991, -0.091735,
		0.153118, -0.959389, -0.236913,
		36.779701, 37.810146, 51.334656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113209, 38.509212, 51.006622>,  <36.672516, 38.481716, 51.500496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113209, 38.509212, 51.006622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.934635, 38.152161, 50.981632>,  <36.827492, 37.937927, 50.966637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.934635, 38.152161, 50.981632>,  <37.113209, 38.509212, 51.006622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934635, 38.152161, 50.981632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114463, 0.126213, -0.985377,
		0.887466, -0.432754, -0.158519,
		-0.446433, -0.892633, -0.062475,
		36.800705, 37.884369, 50.962891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443943, 38.157070, 50.512520>,  <37.113209, 38.509212, 51.006622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443943, 38.157070, 50.512520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.087013, 37.978390, 50.538486>,  <36.872856, 37.871181, 50.554066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.087013, 37.978390, 50.538486>,  <37.443943, 38.157070, 50.512520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087013, 37.978390, 50.538486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089869, 0.034872, -0.995343,
		0.442359, -0.894002, -0.071262,
		-0.892324, -0.446703, 0.064917,
		36.819317, 37.844379, 50.557961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725151, 38.094025, 49.847610>,  <37.443943, 38.157070, 50.512520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725151, 38.094025, 49.847610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.009808, 38.335560, 49.703968>,  <38.180599, 38.480480, 49.617783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.009808, 38.335560, 49.703968>,  <37.725151, 38.094025, 49.847610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009808, 38.335560, 49.703968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521184, -0.110997, 0.846195,
		0.471105, -0.789342, -0.393699,
		0.711637, 0.603837, -0.359102,
		38.223297, 38.516712, 49.596237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266788, 37.783783, 50.107399>,  <37.725151, 38.094025, 49.847610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266788, 37.783783, 50.107399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.416210, 38.142776, 50.013615>,  <38.505863, 38.358173, 49.957344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.416210, 38.142776, 50.013615>,  <38.266788, 37.783783, 50.107399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416210, 38.142776, 50.013615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572662, -0.024286, 0.819431,
		0.729734, -0.440374, -0.523029,
		0.373558, 0.897486, -0.234463,
		38.528278, 38.412022, 49.943275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963890, 37.806038, 49.905243>,  <38.266788, 37.783783, 50.107399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963890, 37.806038, 49.905243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.899879, 38.169262, 50.060066>,  <38.861473, 38.387196, 50.152962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.899879, 38.169262, 50.060066>,  <38.963890, 37.806038, 49.905243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899879, 38.169262, 50.060066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740334, -0.148949, 0.655530,
		0.652915, 0.391454, -0.648434,
		-0.160026, 0.908063, 0.387058,
		38.851871, 38.441681, 50.176182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684307, 37.938354, 50.183647>,  <38.963890, 37.806038, 49.905243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684307, 37.938354, 50.183647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.482609, 38.256775, 50.317535>,  <39.361591, 38.447826, 50.397869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.482609, 38.256775, 50.317535>,  <39.684307, 37.938354, 50.183647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482609, 38.256775, 50.317535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507656, -0.040304, 0.860616,
		0.698585, 0.603887, -0.383797,
		-0.504247, 0.796050, 0.334722,
		39.331333, 38.495590, 50.417953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219086, 38.415779, 50.411144>,  <39.684307, 37.938354, 50.183647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219086, 38.415779, 50.411144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.874443, 38.494289, 50.598381>,  <39.667660, 38.541397, 50.710724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.874443, 38.494289, 50.598381>,  <40.219086, 38.415779, 50.411144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874443, 38.494289, 50.598381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501978, 0.192860, 0.843103,
		0.075204, 0.961395, -0.264695,
		-0.861605, 0.196276, 0.468095,
		39.615963, 38.553173, 50.738811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390675, 39.060127, 50.839767>,  <40.219086, 38.415779, 50.411144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390675, 39.060127, 50.839767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.048023, 38.931091, 51.000820>,  <39.842430, 38.853668, 51.097450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.048023, 38.931091, 51.000820>,  <40.390675, 39.060127, 50.839767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048023, 38.931091, 51.000820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431996, -0.021835, 0.901611,
		-0.282063, 0.946286, 0.158064,
		-0.856633, -0.322594, 0.402633,
		39.791035, 38.834312, 51.121609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233826, 39.501797, 51.348961>,  <40.390675, 39.060127, 50.839767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233826, 39.501797, 51.348961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.018044, 39.179775, 51.447655>,  <39.888577, 38.986561, 51.506870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.018044, 39.179775, 51.447655>,  <40.233826, 39.501797, 51.348961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018044, 39.179775, 51.447655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367556, 0.038489, 0.929205,
		-0.757557, 0.591951, 0.275140,
		-0.539454, -0.805055, 0.246732,
		39.856209, 38.938259, 51.521675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804482, 39.621239, 51.977200>,  <40.233826, 39.501797, 51.348961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804482, 39.621239, 51.977200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.892544, 39.233044, 51.937840>,  <39.945381, 39.000126, 51.914223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.892544, 39.233044, 51.937840>,  <39.804482, 39.621239, 51.977200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892544, 39.233044, 51.937840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276220, -0.034721, 0.960467,
		-0.935539, -0.238632, 0.260424,
		0.220156, -0.970489, -0.098398,
		39.958591, 38.941898, 51.908321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682804, 39.289864, 52.563725>,  <39.804482, 39.621239, 51.977200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682804, 39.289864, 52.563725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.954453, 39.082726, 52.355637>,  <40.117443, 38.958443, 52.230785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.954453, 39.082726, 52.355637>,  <39.682804, 39.289864, 52.563725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954453, 39.082726, 52.355637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649234, 0.093106, 0.754868,
		-0.342472, -0.850391, 0.399435,
		0.679123, -0.517848, -0.520216,
		40.158188, 38.927372, 52.199570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.845341, 37.920013, 37.111961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999176, 37.639202, 37.351711>,  <37.091476, 37.470715, 37.495560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999176, 37.639202, 37.351711>,  <36.845341, 37.920013, 37.111961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999176, 37.639202, 37.351711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747528, 0.144088, 0.648414,
		-0.541568, -0.697419, -0.469372,
		0.384586, -0.702029, 0.599374,
		37.114552, 37.428593, 37.531525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396969, 37.272491, 37.235752>,  <36.845341, 37.920013, 37.111961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396969, 37.272491, 37.235752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647858, 37.326813, 37.542519>,  <36.798389, 37.359406, 37.726578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647858, 37.326813, 37.542519>,  <36.396969, 37.272491, 37.235752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647858, 37.326813, 37.542519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778792, 0.097941, 0.619589,
		0.009031, -0.985883, 0.167194,
		0.627218, 0.135805, 0.766913,
		36.836021, 37.367554, 37.772591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046947, 36.881447, 37.687191>,  <36.396969, 37.272491, 37.235752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046947, 36.881447, 37.687191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293827, 37.094002, 37.919289>,  <36.441956, 37.221535, 38.058548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293827, 37.094002, 37.919289>,  <36.046947, 36.881447, 37.687191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293827, 37.094002, 37.919289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652778, -0.065878, 0.754680,
		0.439255, -0.844562, 0.306219,
		0.617200, 0.531390, 0.580249,
		36.478989, 37.253418, 38.093365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096493, 36.547489, 38.375381>,  <36.046947, 36.881447, 37.687191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096493, 36.547489, 38.375381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222591, 36.915745, 38.467514>,  <36.298252, 37.136696, 38.522793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222591, 36.915745, 38.467514>,  <36.096493, 36.547489, 38.375381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222591, 36.915745, 38.467514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464498, -0.061959, 0.883404,
		0.827564, -0.385476, 0.408100,
		0.315246, 0.920635, 0.230328,
		36.317165, 37.191936, 38.536613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383205, 36.418373, 38.981884>,  <36.096493, 36.547489, 38.375381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383205, 36.418373, 38.981884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309643, 36.810787, 38.957401>,  <36.265507, 37.046234, 38.942711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309643, 36.810787, 38.957401>,  <36.383205, 36.418373, 38.981884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309643, 36.810787, 38.957401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406290, -0.019165, 0.913543,
		0.895046, 0.192874, 0.402110,
		-0.183905, 0.981036, -0.061209,
		36.254471, 37.105099, 38.939037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763229, 36.824669, 39.536663>,  <36.383205, 36.418373, 38.981884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763229, 36.824669, 39.536663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470222, 37.072746, 39.424397>,  <36.294418, 37.221592, 39.357037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470222, 37.072746, 39.424397>,  <36.763229, 36.824669, 39.536663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470222, 37.072746, 39.424397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168334, 0.234466, 0.957439,
		0.659605, 0.748589, -0.067351,
		-0.732520, 0.620194, -0.280668,
		36.250465, 37.258804, 39.340195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905190, 37.374191, 39.837425>,  <36.763229, 36.824669, 39.536663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905190, 37.374191, 39.837425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521046, 37.454952, 39.760532>,  <36.290562, 37.503407, 39.714397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521046, 37.454952, 39.760532>,  <36.905190, 37.374191, 39.837425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521046, 37.454952, 39.760532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101346, 0.389538, 0.915418,
		0.259705, 0.898609, -0.353633,
		-0.960355, 0.201899, -0.192235,
		36.232941, 37.515522, 39.702862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840675, 38.036495, 40.065548>,  <36.905190, 37.374191, 39.837425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840675, 38.036495, 40.065548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472652, 37.880615, 40.049419>,  <36.251839, 37.787086, 40.039742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472652, 37.880615, 40.049419>,  <36.840675, 38.036495, 40.065548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472652, 37.880615, 40.049419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224283, 0.439516, 0.869783,
		-0.321234, 0.809295, -0.491784,
		-0.920058, -0.389702, -0.040323,
		36.196636, 37.763706, 40.037323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325226, 38.573471, 40.147118>,  <36.840675, 38.036495, 40.065548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325226, 38.573471, 40.147118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143959, 38.229671, 40.241692>,  <36.035198, 38.023392, 40.298435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143959, 38.229671, 40.241692>,  <36.325226, 38.573471, 40.147118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143959, 38.229671, 40.241692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094944, 0.310258, 0.945899,
		-0.886353, 0.406207, -0.222204,
		-0.453171, -0.859497, 0.236431,
		36.008007, 37.971821, 40.312622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730362, 38.787899, 40.514355>,  <36.325226, 38.573471, 40.147118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730362, 38.787899, 40.514355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766430, 38.402679, 40.615875>,  <35.788071, 38.171547, 40.676788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766430, 38.402679, 40.615875>,  <35.730362, 38.787899, 40.514355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766430, 38.402679, 40.615875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291023, 0.218232, 0.931494,
		-0.952457, -0.157856, -0.260589,
		0.090173, -0.963045, 0.253797,
		35.793484, 38.113766, 40.692013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104191, 38.692646, 40.940018>,  <35.730362, 38.787899, 40.514355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104191, 38.692646, 40.940018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385086, 38.419456, 41.020432>,  <35.553623, 38.255543, 41.068680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385086, 38.419456, 41.020432>,  <35.104191, 38.692646, 40.940018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385086, 38.419456, 41.020432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225338, 0.054630, 0.972748,
		-0.675344, -0.728397, -0.115537,
		0.702235, -0.682974, 0.201030,
		35.595757, 38.214565, 41.080742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844860, 38.281895, 41.470707>,  <35.104191, 38.692646, 40.940018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844860, 38.281895, 41.470707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232529, 38.185051, 41.488964>,  <35.465130, 38.126945, 41.499920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232529, 38.185051, 41.488964>,  <34.844860, 38.281895, 41.470707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232529, 38.185051, 41.488964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002493, 0.175629, 0.984453,
		-0.246365, -0.954220, 0.169612,
		0.969174, -0.242112, 0.045647,
		35.523281, 38.112419, 41.502659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614567, 37.700260, 41.816341>,  <34.844860, 38.281895, 41.470707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614567, 37.700260, 41.816341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251690, 37.653561, 41.978020>,  <34.033962, 37.625542, 42.075027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251690, 37.653561, 41.978020>,  <34.614567, 37.700260, 41.816341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251690, 37.653561, 41.978020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388625, -0.135497, -0.911379,
		0.161168, -0.983875, 0.077551,
		-0.907191, -0.116747, 0.404197,
		33.979534, 37.618538, 42.099277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371445, 37.039429, 41.506001>,  <34.614567, 37.700260, 41.816341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371445, 37.039429, 41.506001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065254, 37.267670, 41.624969>,  <33.881538, 37.404613, 41.696350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065254, 37.267670, 41.624969>,  <34.371445, 37.039429, 41.506001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065254, 37.267670, 41.624969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440794, -0.128270, -0.888396,
		-0.468773, -0.811145, 0.349707,
		-0.765475, 0.570605, 0.297419,
		33.835613, 37.438850, 41.714195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738518, 36.599026, 41.227985>,  <34.371445, 37.039429, 41.506001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738518, 36.599026, 41.227985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626228, 36.975483, 41.303291>,  <33.558857, 37.201359, 41.348473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626228, 36.975483, 41.303291>,  <33.738518, 36.599026, 41.227985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626228, 36.975483, 41.303291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516789, 0.017072, -0.855943,
		-0.808781, -0.337571, 0.481581,
		-0.280720, 0.941146, 0.188260,
		33.542011, 37.257828, 41.359768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012646, 36.615028, 41.123951>,  <33.738518, 36.599026, 41.227985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012646, 36.615028, 41.123951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128593, 36.996086, 41.087189>,  <33.198162, 37.224720, 41.065132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128593, 36.996086, 41.087189>,  <33.012646, 36.615028, 41.123951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128593, 36.996086, 41.087189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364633, 0.021145, -0.930911,
		-0.884882, 0.303356, 0.353494,
		0.289872, 0.952643, -0.091903,
		33.215553, 37.281879, 41.059616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448238, 36.910652, 40.832539>,  <33.012646, 36.615028, 41.123951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448238, 36.910652, 40.832539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724342, 37.191906, 40.764256>,  <32.890003, 37.360661, 40.723286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724342, 37.191906, 40.764256>,  <32.448238, 36.910652, 40.832539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724342, 37.191906, 40.764256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340507, 0.107496, -0.934077,
		-0.638433, 0.702882, 0.313623,
		0.690259, 0.703137, -0.170708,
		32.931419, 37.402847, 40.713043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133793, 37.576298, 40.532871>,  <32.448238, 36.910652, 40.832539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133793, 37.576298, 40.532871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519474, 37.573112, 40.426853>,  <32.750881, 37.571201, 40.363243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519474, 37.573112, 40.426853>,  <32.133793, 37.576298, 40.532871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519474, 37.573112, 40.426853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263304, -0.146985, -0.953450,
		-0.031369, 0.989107, -0.143820,
		0.964203, -0.007960, -0.265047,
		32.808735, 37.570724, 40.347340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192703, 38.011967, 39.977119>,  <32.133793, 37.576298, 40.532871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192703, 38.011967, 39.977119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534962, 37.810963, 39.927574>,  <32.740318, 37.690361, 39.897846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534962, 37.810963, 39.927574>,  <32.192703, 38.011967, 39.977119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534962, 37.810963, 39.927574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187883, -0.078587, -0.979043,
		0.482246, 0.860991, -0.161656,
		0.855651, -0.502512, -0.123867,
		32.791656, 37.660210, 39.890415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477676, 38.196503, 39.277191>,  <32.192703, 38.011967, 39.977119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477676, 38.196503, 39.277191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662724, 37.856918, 39.379368>,  <32.773750, 37.653168, 39.440674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662724, 37.856918, 39.379368>,  <32.477676, 38.196503, 39.277191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662724, 37.856918, 39.379368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040610, -0.308118, -0.950481,
		0.885629, 0.429333, -0.177017,
		0.462615, -0.848962, 0.255443,
		32.801510, 37.602230, 39.456001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966148, 38.094341, 38.751472>,  <32.477676, 38.196503, 39.277191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966148, 38.094341, 38.751472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893265, 37.737118, 38.916027>,  <32.849533, 37.522781, 39.014759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893265, 37.737118, 38.916027>,  <32.966148, 38.094341, 38.751472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893265, 37.737118, 38.916027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012019, -0.416336, -0.909131,
		0.983186, -0.170599, 0.065128,
		-0.182212, -0.893062, 0.411387,
		32.838600, 37.469200, 39.039444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399044, 37.553894, 38.398613>,  <32.966148, 38.094341, 38.751472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399044, 37.553894, 38.398613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096958, 37.362255, 38.577557>,  <32.915707, 37.247272, 38.684921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096958, 37.362255, 38.577557>,  <33.399044, 37.553894, 38.398613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096958, 37.362255, 38.577557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201634, -0.479594, -0.854010,
		0.623700, -0.735159, 0.265593,
		-0.755210, -0.479094, 0.447356,
		32.870396, 37.218529, 38.711765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390141, 36.725636, 38.254902>,  <33.399044, 37.553894, 38.398613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390141, 36.725636, 38.254902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017033, 36.857040, 38.314259>,  <32.793167, 36.935883, 38.349873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017033, 36.857040, 38.314259>,  <33.390141, 36.725636, 38.254902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017033, 36.857040, 38.314259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324733, -0.587057, -0.741561,
		-0.156499, -0.739892, 0.654268,
		-0.932769, 0.328516, 0.148393,
		32.737202, 36.955597, 38.358776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070724, 36.167583, 37.976830>,  <33.390141, 36.725636, 38.254902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070724, 36.167583, 37.976830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748875, 36.396168, 38.041336>,  <32.555763, 36.533318, 38.080040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748875, 36.396168, 38.041336>,  <33.070724, 36.167583, 37.976830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748875, 36.396168, 38.041336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491179, -0.487969, -0.721547,
		-0.333644, -0.659786, 0.673323,
		-0.804627, 0.571462, 0.161266,
		32.507488, 36.567608, 38.089714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484283, 35.794895, 38.286591>,  <33.070724, 36.167583, 37.976830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484283, 35.794895, 38.286591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326305, 36.110107, 38.097691>,  <32.231518, 36.299236, 37.984348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326305, 36.110107, 38.097691>,  <32.484283, 35.794895, 38.286591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326305, 36.110107, 38.097691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490098, -0.615510, -0.617213,
		-0.777062, -0.012312, 0.629304,
		-0.394942, 0.788033, -0.472255,
		32.207821, 36.346516, 37.956013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844196, 35.555637, 38.020874>,  <32.484283, 35.794895, 38.286591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844196, 35.555637, 38.020874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912052, 35.894722, 37.819836>,  <31.952765, 36.098171, 37.699211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912052, 35.894722, 37.819836>,  <31.844196, 35.555637, 38.020874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912052, 35.894722, 37.819836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532457, -0.350309, -0.770567,
		-0.829285, 0.398330, 0.391944,
		0.169639, 0.847713, -0.502599,
		31.962944, 36.149036, 37.669056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320288, 35.113541, 38.285786>,  <31.844196, 35.555637, 38.020874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320288, 35.113541, 38.285786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282150, 34.715374, 38.282906>,  <31.259268, 34.476475, 38.281178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282150, 34.715374, 38.282906>,  <31.320288, 35.113541, 38.285786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282150, 34.715374, 38.282906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985139, 0.093317, 0.144197,
		-0.142865, 0.020839, -0.989523,
		-0.095344, -0.995418, -0.007198,
		31.253548, 34.416748, 38.280746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979641, 35.057323, 38.639828>,  <31.320288, 35.113541, 38.285786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979641, 35.057323, 38.639828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921719, 34.662987, 38.606003>,  <31.886965, 34.426384, 38.585709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921719, 34.662987, 38.606003>,  <31.979641, 35.057323, 38.639828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921719, 34.662987, 38.606003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513340, -0.147916, 0.845342,
		-0.845881, 0.078997, 0.527490,
		-0.144804, -0.985840, -0.084567,
		31.878277, 34.367233, 38.580631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574448, 34.817478, 39.121075>,  <31.979641, 35.057323, 38.639828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574448, 34.817478, 39.121075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867325, 34.575096, 38.996681>,  <32.043053, 34.429668, 38.922043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867325, 34.575096, 38.996681>,  <31.574448, 34.817478, 39.121075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867325, 34.575096, 38.996681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426776, 0.052329, 0.902842,
		-0.530809, -0.793776, 0.296921,
		0.732192, -0.605955, -0.310988,
		32.086983, 34.393311, 38.903385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480371, 34.171886, 39.502350>,  <31.574448, 34.817478, 39.121075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480371, 34.171886, 39.502350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856926, 34.213154, 39.373882>,  <32.082859, 34.237915, 39.296803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856926, 34.213154, 39.373882>,  <31.480371, 34.171886, 39.502350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856926, 34.213154, 39.373882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316087, 0.062759, 0.946652,
		0.117824, -0.992682, 0.026469,
		0.941385, 0.103171, -0.321169,
		32.139343, 34.244102, 39.277531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976097, 33.699963, 39.876377>,  <31.480371, 34.171886, 39.502350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976097, 33.699963, 39.876377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258823, 33.948879, 39.741817>,  <32.428459, 34.098228, 39.661079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258823, 33.948879, 39.741817>,  <31.976097, 33.699963, 39.876377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258823, 33.948879, 39.741817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430880, -0.001575, 0.902408,
		0.561032, -0.782783, -0.269247,
		0.706813, 0.622293, -0.336402,
		32.470867, 34.135567, 39.640896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636040, 33.452591, 40.091385>,  <31.976097, 33.699963, 39.876377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636040, 33.452591, 40.091385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701126, 33.840328, 40.017731>,  <32.740177, 34.072971, 39.973537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701126, 33.840328, 40.017731>,  <32.636040, 33.452591, 40.091385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701126, 33.840328, 40.017731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576533, 0.058037, 0.815010,
		0.800707, -0.238774, -0.549413,
		0.162717, 0.969339, -0.184132,
		32.749943, 34.131130, 39.962490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354801, 33.478409, 40.032204>,  <32.636040, 33.452591, 40.091385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354801, 33.478409, 40.032204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234730, 33.858196, 40.068863>,  <33.162689, 34.086071, 40.090858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234730, 33.858196, 40.068863>,  <33.354801, 33.478409, 40.032204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234730, 33.858196, 40.068863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696325, 0.152441, 0.701351,
		0.651941, 0.274347, -0.706899,
		-0.300175, 0.949471, 0.091652,
		33.144676, 34.143036, 40.096359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967682, 33.905571, 39.929111>,  <33.354801, 33.478409, 40.032204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967682, 33.905571, 39.929111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692902, 34.115894, 40.129761>,  <33.528034, 34.242088, 40.250153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692902, 34.115894, 40.129761>,  <33.967682, 33.905571, 39.929111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692902, 34.115894, 40.129761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713770, 0.358526, 0.601657,
		0.136511, 0.771352, -0.621596,
		-0.686948, 0.525809, 0.501625,
		33.486816, 34.273636, 40.280247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344772, 34.337162, 40.186928>,  <33.967682, 33.905571, 39.929111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344772, 34.337162, 40.186928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004570, 34.353962, 40.396645>,  <33.800449, 34.364044, 40.522476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004570, 34.353962, 40.396645>,  <34.344772, 34.337162, 40.186928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004570, 34.353962, 40.396645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524661, -0.002612, 0.851307,
		0.037126, 0.999114, -0.019815,
		-0.850501, 0.042002, 0.524294,
		33.749420, 34.366562, 40.553932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441776, 34.797550, 40.727554>,  <34.344772, 34.337162, 40.186928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441776, 34.797550, 40.727554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138016, 34.566010, 40.846378>,  <33.955761, 34.427086, 40.917671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138016, 34.566010, 40.846378>,  <34.441776, 34.797550, 40.727554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138016, 34.566010, 40.846378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464039, -0.161840, 0.870905,
		-0.456048, 0.799212, 0.391510,
		-0.759400, -0.578850, 0.297059,
		33.910194, 34.392353, 40.935497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372002, 34.946484, 41.375080>,  <34.441776, 34.797550, 40.727554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372002, 34.946484, 41.375080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206120, 34.583858, 41.343666>,  <34.106590, 34.366283, 41.324818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206120, 34.583858, 41.343666>,  <34.372002, 34.946484, 41.375080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206120, 34.583858, 41.343666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504019, -0.300701, 0.809656,
		-0.757615, 0.296190, 0.581627,
		-0.414708, -0.906559, -0.078530,
		34.081707, 34.311890, 41.320107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020115, 34.728958, 42.013721>,  <34.372002, 34.946484, 41.375080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020115, 34.728958, 42.013721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080551, 34.377056, 41.833405>,  <34.116814, 34.165916, 41.725216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080551, 34.377056, 41.833405>,  <34.020115, 34.728958, 42.013721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080551, 34.377056, 41.833405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358416, -0.376240, 0.854390,
		-0.921255, -0.290656, 0.258472,
		0.151086, -0.879751, -0.450788,
		34.125877, 34.113132, 41.698170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754681, 34.228725, 42.417686>,  <34.020115, 34.728958, 42.013721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754681, 34.228725, 42.417686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996227, 34.002499, 42.193016>,  <34.141155, 33.866764, 42.058212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996227, 34.002499, 42.193016>,  <33.754681, 34.228725, 42.417686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996227, 34.002499, 42.193016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388325, -0.406644, 0.826948,
		-0.696097, -0.717479, -0.025935,
		0.603865, -0.565565, -0.561679,
		34.177387, 33.832829, 42.024513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596130, 33.487598, 42.579327>,  <33.754681, 34.228725, 42.417686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596130, 33.487598, 42.579327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969791, 33.537106, 42.445435>,  <34.193989, 33.566811, 42.365097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969791, 33.537106, 42.445435>,  <33.596130, 33.487598, 42.579327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969791, 33.537106, 42.445435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351676, -0.478867, 0.804370,
		-0.060735, -0.869119, -0.490860,
		0.934149, 0.123770, -0.334732,
		34.250034, 33.574238, 42.345016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895409, 32.861179, 42.703190>,  <33.596130, 33.487598, 42.579327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895409, 32.861179, 42.703190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222057, 33.083336, 42.640377>,  <34.418049, 33.216629, 42.602688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222057, 33.083336, 42.640377>,  <33.895409, 32.861179, 42.703190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222057, 33.083336, 42.640377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462199, -0.466333, 0.754259,
		0.345682, -0.688527, -0.637522,
		0.816625, 0.555396, -0.157033,
		34.467045, 33.249954, 42.593266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470116, 32.455322, 42.816948>,  <33.895409, 32.861179, 42.703190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470116, 32.455322, 42.816948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627979, 32.819321, 42.867794>,  <34.722698, 33.037720, 42.898304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627979, 32.819321, 42.867794>,  <34.470116, 32.455322, 42.816948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627979, 32.819321, 42.867794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458858, -0.315058, 0.830775,
		0.796049, -0.269542, -0.541898,
		0.394658, 0.909992, 0.127120,
		34.746376, 33.092319, 42.905930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157726, 32.410328, 43.111084>,  <34.470116, 32.455322, 42.816948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157726, 32.410328, 43.111084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073944, 32.792114, 43.196049>,  <35.023674, 33.021187, 43.247028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073944, 32.792114, 43.196049>,  <35.157726, 32.410328, 43.111084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073944, 32.792114, 43.196049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620621, -0.038095, 0.783185,
		0.755617, 0.295871, -0.584384,
		-0.209459, 0.954468, 0.212408,
		35.011105, 33.078453, 43.259769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834660, 32.677113, 43.325745>,  <35.157726, 32.410328, 43.111084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834660, 32.677113, 43.325745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552479, 32.906029, 43.492992>,  <35.383171, 33.043377, 43.593342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552479, 32.906029, 43.492992>,  <35.834660, 32.677113, 43.325745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552479, 32.906029, 43.492992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548997, 0.068113, 0.833044,
		0.448260, 0.817220, -0.362234,
		-0.705454, 0.572286, 0.418119,
		35.340843, 33.077713, 43.618427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093304, 33.362114, 43.561352>,  <35.834660, 32.677113, 43.325745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093304, 33.362114, 43.561352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765312, 33.310421, 43.784401>,  <35.568520, 33.279404, 43.918228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765312, 33.310421, 43.784401>,  <36.093304, 33.362114, 43.561352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765312, 33.310421, 43.784401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549950, 0.092277, 0.830084,
		-0.158731, 0.987311, -0.004592,
		-0.819975, -0.129234, 0.557619,
		35.519321, 33.271652, 43.951687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126133, 33.867859, 44.114693>,  <36.093304, 33.362114, 43.561352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126133, 33.867859, 44.114693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832748, 33.636250, 44.257111>,  <35.656719, 33.497284, 44.342560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832748, 33.636250, 44.257111>,  <36.126133, 33.867859, 44.114693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832748, 33.636250, 44.257111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257415, 0.248180, 0.933887,
		-0.629107, 0.776618, -0.032980,
		-0.733459, -0.579026, 0.356045,
		35.612709, 33.462543, 44.363926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753956, 34.215767, 44.614208>,  <36.126133, 33.867859, 44.114693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753956, 34.215767, 44.614208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659100, 33.834896, 44.691280>,  <35.602188, 33.606373, 44.737522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659100, 33.834896, 44.691280>,  <35.753956, 34.215767, 44.614208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659100, 33.834896, 44.691280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167617, 0.155256, 0.973550,
		-0.956906, 0.263162, 0.122783,
		-0.237139, -0.952177, 0.192676,
		35.587959, 33.549244, 44.749084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193176, 34.213364, 44.956650>,  <35.753956, 34.215767, 44.614208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193176, 34.213364, 44.956650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367538, 33.867016, 45.054844>,  <35.472157, 33.659206, 45.113758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.367538, 33.867016, 45.054844>,  <35.193176, 34.213364, 44.956650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367538, 33.867016, 45.054844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001506, 0.272060, 0.962279,
		-0.899992, -0.419831, 0.117288,
		0.435904, -0.865867, 0.245484,
		35.498310, 33.607254, 45.128490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748226, 33.926666, 45.520504>,  <35.193176, 34.213364, 44.956650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748226, 33.926666, 45.520504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082592, 33.709858, 45.555065>,  <35.283211, 33.579773, 45.575802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082592, 33.709858, 45.555065>,  <34.748226, 33.926666, 45.520504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082592, 33.709858, 45.555065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041734, 0.219738, 0.974666,
		-0.547274, -0.811129, 0.206302,
		0.835913, -0.542019, 0.086405,
		35.333366, 33.547253, 45.580986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676960, 33.452141, 46.122906>,  <34.748226, 33.926666, 45.520504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676960, 33.452141, 46.122906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071278, 33.490532, 46.067783>,  <35.307869, 33.513569, 46.034710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071278, 33.490532, 46.067783>,  <34.676960, 33.452141, 46.122906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071278, 33.490532, 46.067783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101890, 0.310485, 0.945102,
		0.133499, -0.945721, 0.296295,
		0.985798, 0.095981, -0.137809,
		35.367016, 33.519325, 46.026440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943455, 33.157768, 46.746582>,  <34.676960, 33.452141, 46.122906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943455, 33.157768, 46.746582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235485, 33.375153, 46.580868>,  <35.410706, 33.505585, 46.481438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235485, 33.375153, 46.580868>,  <34.943455, 33.157768, 46.746582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235485, 33.375153, 46.580868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202828, 0.406599, 0.890808,
		0.652568, -0.734389, 0.186620,
		0.730079, 0.543461, -0.414288,
		35.454510, 33.538189, 46.456581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585297, 32.990292, 47.136971>,  <34.943455, 33.157768, 46.746582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585297, 32.990292, 47.136971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736389, 33.306099, 46.943481>,  <35.827045, 33.495583, 46.827389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736389, 33.306099, 46.943481>,  <35.585297, 32.990292, 47.136971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736389, 33.306099, 46.943481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589936, 0.197445, 0.782937,
		0.713651, -0.581099, -0.391185,
		0.377727, 0.789518, -0.483719,
		35.849709, 33.542953, 46.798367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325649, 32.988068, 47.130394>,  <35.585297, 32.990292, 47.136971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325649, 32.988068, 47.130394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219654, 33.371643, 47.089970>,  <36.156055, 33.601788, 47.065716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219654, 33.371643, 47.089970>,  <36.325649, 32.988068, 47.130394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219654, 33.371643, 47.089970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674785, 0.259287, 0.690967,
		0.688800, 0.114906, -0.715787,
		-0.264991, 0.958941, -0.101060,
		36.140156, 33.659325, 47.059650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878075, 33.320473, 47.102539>,  <36.325649, 32.988068, 47.130394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878075, 33.320473, 47.102539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610695, 33.582439, 47.243538>,  <36.450268, 33.739620, 47.328136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610695, 33.582439, 47.243538>,  <36.878075, 33.320473, 47.102539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610695, 33.582439, 47.243538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652458, 0.288834, 0.700624,
		0.357038, 0.698322, -0.620378,
		-0.668448, 0.654920, 0.352501,
		36.410160, 33.778915, 47.349289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632160, 33.658066, 46.866203>,  <36.878075, 33.320473, 47.102539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632160, 33.658066, 46.866203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957016, 33.438175, 46.787998>,  <38.151928, 33.306240, 46.741074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957016, 33.438175, 46.787998>,  <37.632160, 33.658066, 46.866203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957016, 33.438175, 46.787998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261734, -0.043762, -0.964147,
		0.521464, 0.834196, -0.179424,
		0.812140, -0.549729, -0.195517,
		38.200657, 33.273258, 46.729343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952446, 33.946602, 46.285011>,  <37.632160, 33.658066, 46.866203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952446, 33.946602, 46.285011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090820, 33.571472, 46.273579>,  <38.173847, 33.346394, 46.266720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090820, 33.571472, 46.273579>,  <37.952446, 33.946602, 46.285011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090820, 33.571472, 46.273579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327875, -0.092287, -0.940203,
		0.879105, 0.334624, -0.339414,
		0.345938, -0.937822, -0.028585,
		38.194603, 33.290127, 46.265003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282413, 33.779564, 45.607353>,  <37.952446, 33.946602, 46.285011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282413, 33.779564, 45.607353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245804, 33.414925, 45.767662>,  <38.223839, 33.196140, 45.863846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245804, 33.414925, 45.767662>,  <38.282413, 33.779564, 45.607353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245804, 33.414925, 45.767662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092485, -0.392938, -0.914902,
		0.991498, -0.120804, -0.048345,
		-0.091527, -0.911595, 0.400770,
		38.218346, 33.141445, 45.887894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759281, 33.306187, 45.320789>,  <38.282413, 33.779564, 45.607353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759281, 33.306187, 45.320789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479084, 33.052910, 45.452477>,  <38.310966, 32.900944, 45.531487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479084, 33.052910, 45.452477>,  <38.759281, 33.306187, 45.320789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479084, 33.052910, 45.452477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041155, -0.424696, -0.904400,
		0.712475, -0.647072, 0.271436,
		-0.700490, -0.633192, 0.329215,
		38.268936, 32.862953, 45.551243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868324, 32.641762, 45.166798>,  <38.759281, 33.306187, 45.320789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868324, 32.641762, 45.166798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470184, 32.638435, 45.205193>,  <38.231300, 32.636440, 45.228230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470184, 32.638435, 45.205193>,  <38.868324, 32.641762, 45.166798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470184, 32.638435, 45.205193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088369, -0.318271, -0.943872,
		0.038398, -0.947963, 0.316056,
		-0.995347, -0.008313, 0.095991,
		38.171581, 32.635941, 45.233990>
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
