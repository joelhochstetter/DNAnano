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
	<24.327440, 35.271442, 34.769917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.204405, 35.104729, 35.112072>,  <24.130585, 35.004700, 35.317364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.204405, 35.104729, 35.112072>,  <24.327440, 35.271442, 34.769917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.204405, 35.104729, 35.112072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676817, -0.727706, -0.111193,
		0.668812, 0.544738, 0.505916,
		-0.307587, -0.416780, 0.855386,
		24.112129, 34.979694, 35.368687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.856754, 35.290813, 35.284737>,  <24.327440, 35.271442, 34.769917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.856754, 35.290813, 35.284737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.591120, 34.999352, 35.351734>,  <24.431738, 34.824474, 35.391933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.591120, 34.999352, 35.351734>,  <24.856754, 35.290813, 35.284737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.591120, 34.999352, 35.351734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744213, -0.665700, 0.054686,
		0.071651, 0.160965, 0.984356,
		-0.664089, -0.728652, 0.167490,
		24.391893, 34.780754, 35.401981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.889837, 34.913422, 35.991619>,  <24.856754, 35.290813, 35.284737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.889837, 34.913422, 35.991619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686148, 34.648983, 35.771206>,  <24.563934, 34.490318, 35.638958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686148, 34.648983, 35.771206>,  <24.889837, 34.913422, 35.991619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.686148, 34.648983, 35.771206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656924, -0.712214, 0.247391,
		-0.556004, -0.236010, 0.796969,
		-0.509226, -0.661098, -0.551034,
		24.533381, 34.450653, 35.605896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.868725, 34.330597, 36.335648>,  <24.889837, 34.913422, 35.991619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.868725, 34.330597, 36.335648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789633, 34.193680, 35.968227>,  <24.742178, 34.111530, 35.747776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789633, 34.193680, 35.968227>,  <24.868725, 34.330597, 36.335648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789633, 34.193680, 35.968227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731915, -0.674890, 0.093934,
		-0.652075, -0.653730, 0.383973,
		-0.197732, -0.342288, -0.918554,
		24.730312, 34.090992, 35.692661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.942503, 33.550438, 36.394993>,  <24.868725, 34.330597, 36.335648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.942503, 33.550438, 36.394993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.935562, 33.603073, 35.998531>,  <24.931398, 33.634655, 35.760654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.935562, 33.603073, 35.998531>,  <24.942503, 33.550438, 36.394993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.935562, 33.603073, 35.998531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444465, -0.886957, -0.125533,
		-0.895628, -0.442711, -0.043096,
		-0.017351, 0.131585, -0.991153,
		24.930357, 33.642548, 35.701187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.488220, 33.026802, 36.156666>,  <24.942503, 33.550438, 36.394993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.488220, 33.026802, 36.156666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.773676, 33.159561, 35.909904>,  <24.944948, 33.239216, 35.761848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.773676, 33.159561, 35.909904>,  <24.488220, 33.026802, 36.156666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.773676, 33.159561, 35.909904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453756, -0.889932, 0.046118,
		-0.533693, -0.312833, -0.785689,
		0.713637, 0.331899, -0.616900,
		24.987766, 33.259132, 35.724834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.564226, 32.594330, 35.669315>,  <24.488220, 33.026802, 36.156666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.564226, 32.594330, 35.669315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914404, 32.783703, 35.630424>,  <25.124512, 32.897327, 35.607090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914404, 32.783703, 35.630424>,  <24.564226, 32.594330, 35.669315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.914404, 32.783703, 35.630424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472983, -0.880590, -0.029137,
		-0.099410, -0.020478, -0.994836,
		0.875446, 0.473437, -0.097225,
		25.177038, 32.925735, 35.601257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896860, 32.296394, 35.126369>,  <24.564226, 32.594330, 35.669315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896860, 32.296394, 35.126369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145021, 32.435307, 35.407650>,  <25.293919, 32.518654, 35.576420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145021, 32.435307, 35.407650>,  <24.896860, 32.296394, 35.126369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.145021, 32.435307, 35.407650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490663, -0.871345, -0.002570,
		0.611840, 0.346630, -0.710985,
		0.620404, 0.347282, 0.703203,
		25.331142, 32.539490, 35.618610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554464, 32.162025, 34.880131>,  <24.896860, 32.296394, 35.126369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554464, 32.162025, 34.880131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581432, 32.196770, 35.277706>,  <25.597612, 32.217617, 35.516251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581432, 32.196770, 35.277706>,  <25.554464, 32.162025, 34.880131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581432, 32.196770, 35.277706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622367, -0.782289, 0.026149,
		0.779817, 0.616830, -0.106801,
		0.067420, 0.086861, 0.993937,
		25.601658, 32.222828, 35.575886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254063, 31.862112, 34.988384>,  <25.554464, 32.162025, 34.880131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254063, 31.862112, 34.988384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083101, 31.860870, 35.350006>,  <25.980524, 31.860126, 35.566978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083101, 31.860870, 35.350006>,  <26.254063, 31.862112, 34.988384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083101, 31.860870, 35.350006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358100, -0.918782, 0.166143,
		0.830115, 0.394753, 0.393800,
		-0.427402, -0.003102, 0.904056,
		25.954880, 31.859940, 35.621223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756460, 31.667681, 35.425556>,  <26.254063, 31.862112, 34.988384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756460, 31.667681, 35.425556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393621, 31.559847, 35.554859>,  <26.175919, 31.495148, 35.632442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.393621, 31.559847, 35.554859>,  <26.756460, 31.667681, 35.425556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.393621, 31.559847, 35.554859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309504, -0.947679, 0.078180,
		0.285271, 0.170967, 0.943075,
		-0.907098, -0.269583, 0.323260,
		26.121492, 31.478971, 35.651836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807669, 31.201006, 36.146687>,  <26.756460, 31.667681, 35.425556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807669, 31.201006, 36.146687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473928, 31.144949, 35.933437>,  <26.273685, 31.111315, 35.805489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473928, 31.144949, 35.933437>,  <26.807669, 31.201006, 36.146687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473928, 31.144949, 35.933437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188111, -0.981473, -0.036400,
		-0.518145, -0.130656, 0.845254,
		-0.834350, -0.140141, -0.533124,
		26.223623, 31.102907, 35.773499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281008, 30.745396, 36.580780>,  <26.807669, 31.201006, 36.146687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281008, 30.745396, 36.580780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252544, 30.713692, 36.183056>,  <26.235466, 30.694670, 35.944420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252544, 30.713692, 36.183056>,  <26.281008, 30.745396, 36.580780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.252544, 30.713692, 36.183056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167864, -0.983572, 0.066391,
		-0.983239, -0.162185, 0.083294,
		-0.071159, -0.079260, -0.994311,
		26.231197, 30.689913, 35.884762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769962, 30.173326, 36.438900>,  <26.281008, 30.745396, 36.580780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769962, 30.173326, 36.438900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068928, 30.275949, 36.193771>,  <26.248308, 30.337523, 36.046696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068928, 30.275949, 36.193771>,  <25.769962, 30.173326, 36.438900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068928, 30.275949, 36.193771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356546, -0.933233, 0.044158,
		-0.560577, -0.251504, -0.788986,
		0.747415, 0.256556, -0.612822,
		26.293152, 30.352917, 36.009926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283655, 30.174133, 35.914932>,  <25.769962, 30.173326, 36.438900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283655, 30.174133, 35.914932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383654, 29.841299, 36.112976>,  <25.443653, 29.641598, 36.231804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383654, 29.841299, 36.112976>,  <25.283655, 30.174133, 35.914932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.383654, 29.841299, 36.112976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905382, -0.019642, 0.424143,
		-0.343199, -0.554298, -0.758267,
		0.249995, -0.832086, 0.495111,
		25.458652, 29.591673, 36.261509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154348, 30.885155, 35.643360>,  <25.283655, 30.174133, 35.914932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154348, 30.885155, 35.643360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497583, 30.959549, 35.834816>,  <25.703524, 31.004187, 35.949688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497583, 30.959549, 35.834816>,  <25.154348, 30.885155, 35.643360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.497583, 30.959549, 35.834816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183727, 0.981598, -0.052047,
		-0.479512, -0.043278, 0.876468,
		0.858087, 0.185988, 0.478639,
		25.755009, 31.015345, 35.978409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070099, 31.170067, 36.358883>,  <25.154348, 30.885155, 35.643360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070099, 31.170067, 36.358883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403645, 31.272121, 36.163097>,  <25.603771, 31.333355, 36.045628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403645, 31.272121, 36.163097>,  <25.070099, 31.170067, 36.358883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.403645, 31.272121, 36.163097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314736, 0.948253, -0.041909,
		0.453443, 0.188999, 0.871016,
		0.833865, 0.255137, -0.489464,
		25.653805, 31.348663, 36.016258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.273767, 31.697775, 36.693695>,  <25.070099, 31.170067, 36.358883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.273767, 31.697775, 36.693695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451071, 31.734007, 36.336971>,  <25.557453, 31.755745, 36.122936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451071, 31.734007, 36.336971>,  <25.273767, 31.697775, 36.693695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451071, 31.734007, 36.336971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269865, 0.962210, -0.036402,
		0.854808, 0.256803, 0.450950,
		0.443256, 0.090579, -0.891807,
		25.584047, 31.761181, 36.069427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739670, 32.355625, 36.837006>,  <25.273767, 31.697775, 36.693695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.739670, 32.355625, 36.837006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678085, 32.309662, 36.444458>,  <25.641134, 32.282085, 36.208927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678085, 32.309662, 36.444458>,  <25.739670, 32.355625, 36.837006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678085, 32.309662, 36.444458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119742, 0.988064, -0.096903,
		0.980794, 0.102593, -0.165884,
		-0.153963, -0.114905, -0.981372,
		25.631897, 32.275192, 36.150047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128492, 32.931385, 36.548172>,  <25.739670, 32.355625, 36.837006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128492, 32.931385, 36.548172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858595, 32.825970, 36.272415>,  <25.696655, 32.762718, 36.106960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858595, 32.825970, 36.272415>,  <26.128492, 32.931385, 36.548172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858595, 32.825970, 36.272415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155643, 0.963878, -0.216137,
		0.721453, -0.038537, -0.691390,
		-0.674744, -0.263543, -0.689395,
		25.656172, 32.746906, 36.065598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319963, 33.261452, 35.905945>,  <26.128492, 32.931385, 36.548172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319963, 33.261452, 35.905945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929090, 33.177750, 35.891373>,  <25.694567, 33.127529, 35.882629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929090, 33.177750, 35.891373>,  <26.319963, 33.261452, 35.905945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929090, 33.177750, 35.891373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192565, 0.945170, -0.263765,
		0.089629, -0.250731, -0.963899,
		-0.977182, -0.209254, -0.036432,
		25.635937, 33.114975, 35.880444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051395, 32.810585, 35.284428>,  <26.319963, 33.261452, 35.905945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051395, 32.810585, 35.284428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819675, 32.832954, 34.959148>,  <25.680643, 32.846375, 34.763981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819675, 32.832954, 34.959148>,  <26.051395, 32.810585, 35.284428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819675, 32.832954, 34.959148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517969, 0.745063, 0.420226,
		0.629382, 0.664646, -0.402647,
		-0.579298, 0.055924, -0.813195,
		25.645885, 32.849731, 34.715191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060432, 33.422211, 35.145668>,  <26.051395, 32.810585, 35.284428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060432, 33.422211, 35.145668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719318, 33.257942, 35.016605>,  <25.514650, 33.159382, 34.939167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719318, 33.257942, 35.016605>,  <26.060432, 33.422211, 35.145668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719318, 33.257942, 35.016605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516841, 0.752382, 0.408409,
		0.075037, 0.515046, -0.853872,
		-0.852787, -0.410670, -0.322653,
		25.463482, 33.134743, 34.919811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552231, 33.816277, 34.671688>,  <26.060432, 33.422211, 35.145668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552231, 33.816277, 34.671688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334900, 33.583534, 34.913757>,  <25.204502, 33.443890, 35.058998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334900, 33.583534, 34.913757>,  <25.552231, 33.816277, 34.671688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334900, 33.583534, 34.913757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519275, 0.799340, 0.302339,
		-0.659658, -0.149982, -0.736448,
		-0.543327, -0.581860, 0.605174,
		25.171902, 33.408978, 35.095310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876732, 33.751629, 34.418591>,  <25.552231, 33.816277, 34.671688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876732, 33.751629, 34.418591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905350, 33.724857, 34.816666>,  <24.922520, 33.708794, 35.055511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905350, 33.724857, 34.816666>,  <24.876732, 33.751629, 34.418591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.905350, 33.724857, 34.816666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672227, 0.733873, 0.097681,
		-0.736881, -0.675981, 0.007511,
		0.071542, -0.066930, 0.995189,
		24.926813, 33.704777, 35.115223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.262304, 33.676704, 34.567390>,  <24.876732, 33.751629, 34.418591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.262304, 33.676704, 34.567390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.418287, 33.816132, 34.908314>,  <24.511877, 33.899788, 35.112869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.418287, 33.816132, 34.908314>,  <24.262304, 33.676704, 34.567390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.418287, 33.816132, 34.908314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703570, 0.709925, 0.031570,
		-0.594072, -0.611971, 0.522082,
		0.389959, 0.348566, 0.852311,
		24.535275, 33.920700, 35.164005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.243843, 33.107838, 34.105698>,  <24.262304, 33.676704, 34.567390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.243843, 33.107838, 34.105698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364172, 33.324104, 33.791454>,  <24.436369, 33.453865, 33.602909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364172, 33.324104, 33.791454>,  <24.243843, 33.107838, 34.105698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.364172, 33.324104, 33.791454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429503, -0.812302, -0.394579,
		-0.851490, -0.218724, -0.476576,
		0.300820, 0.540671, -0.785609,
		24.454418, 33.486305, 33.555771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.931107, 32.755489, 33.615326>,  <24.243843, 33.107838, 34.105698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.931107, 32.755489, 33.615326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.268869, 32.924992, 33.484230>,  <24.471527, 33.026691, 33.405575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.268869, 32.924992, 33.484230>,  <23.931107, 32.755489, 33.615326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.268869, 32.924992, 33.484230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353159, -0.900360, -0.254228,
		-0.402810, 0.098929, -0.909922,
		0.844407, 0.423752, -0.327736,
		24.522192, 33.052116, 33.385910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.174387, 32.205532, 33.173927>,  <23.931107, 32.755489, 33.615326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.174387, 32.205532, 33.173927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481970, 32.460747, 33.190010>,  <24.666519, 32.613876, 33.199657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481970, 32.460747, 33.190010>,  <24.174387, 32.205532, 33.173927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481970, 32.460747, 33.190010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612595, -0.717393, -0.331774,
		-0.182841, 0.279748, -0.942502,
		0.768958, 0.638034, 0.040204,
		24.712658, 32.652157, 33.202072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.509007, 32.160156, 32.573185>,  <24.174387, 32.205532, 33.173927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.509007, 32.160156, 32.573185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772015, 32.284935, 32.847515>,  <24.929819, 32.359802, 33.012112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.772015, 32.284935, 32.847515>,  <24.509007, 32.160156, 32.573185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.772015, 32.284935, 32.847515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661100, -0.675504, -0.326559,
		0.361409, 0.668119, -0.650385,
		0.657518, 0.311948, 0.685827,
		24.969271, 32.378521, 33.053265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.196161, 32.173107, 32.223896>,  <24.509007, 32.160156, 32.573185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.196161, 32.173107, 32.223896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297699, 32.193298, 32.610268>,  <25.358622, 32.205414, 32.842091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297699, 32.193298, 32.610268>,  <25.196161, 32.173107, 32.223896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.297699, 32.193298, 32.610268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788706, -0.588891, -0.176495,
		0.559915, 0.806635, -0.189303,
		0.253845, 0.050482, 0.965927,
		25.373852, 32.208443, 32.900047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943644, 32.282455, 32.265087>,  <25.196161, 32.173107, 32.223896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943644, 32.282455, 32.265087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864344, 32.099457, 32.611820>,  <25.816765, 31.989656, 32.819859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864344, 32.099457, 32.611820>,  <25.943644, 32.282455, 32.265087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864344, 32.099457, 32.611820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738504, -0.651199, -0.174792,
		0.644445, 0.605505, 0.466963,
		-0.198249, -0.457498, 0.866829,
		25.804869, 31.962208, 32.871868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531961, 32.208542, 32.426613>,  <25.943644, 32.282455, 32.265087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531961, 32.208542, 32.426613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311214, 31.972075, 32.661888>,  <26.178766, 31.830194, 32.803051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311214, 31.972075, 32.661888>,  <26.531961, 32.208542, 32.426613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311214, 31.972075, 32.661888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704999, -0.707473, -0.049591,
		0.445441, 0.387302, 0.807205,
		-0.551868, -0.591168, 0.588185,
		26.145655, 31.794724, 32.838345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904209, 31.945566, 33.125160>,  <26.531961, 32.208542, 32.426613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904209, 31.945566, 33.125160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627131, 31.683086, 33.005447>,  <26.460884, 31.525599, 32.933620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627131, 31.683086, 33.005447>,  <26.904209, 31.945566, 33.125160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627131, 31.683086, 33.005447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710341, -0.692560, -0.125603,
		-0.124853, -0.299600, 0.945860,
		-0.692696, -0.656202, -0.299286,
		26.419321, 31.486225, 32.915661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802649, 31.220882, 33.449200>,  <26.904209, 31.945566, 33.125160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802649, 31.220882, 33.449200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422091, 31.127558, 33.368790>,  <26.193756, 31.071562, 33.320545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422091, 31.127558, 33.368790>,  <26.802649, 31.220882, 33.449200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422091, 31.127558, 33.368790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286373, -0.910347, -0.298762,
		-0.113297, -0.341809, 0.932915,
		-0.951396, -0.233313, -0.201024,
		26.136671, 31.057564, 33.308483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677475, 30.494139, 33.715050>,  <26.802649, 31.220882, 33.449200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677475, 30.494139, 33.715050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458410, 30.577118, 33.390820>,  <26.326971, 30.626905, 33.196281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458410, 30.577118, 33.390820>,  <26.677475, 30.494139, 33.715050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458410, 30.577118, 33.390820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173760, -0.919456, -0.352715,
		-0.818457, -0.334015, 0.467506,
		-0.547663, 0.207448, -0.810574,
		26.294111, 30.639353, 33.147648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131207, 29.926397, 33.549522>,  <26.677475, 30.494139, 33.715050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131207, 29.926397, 33.549522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245552, 30.100782, 33.208179>,  <26.314159, 30.205414, 33.003372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245552, 30.100782, 33.208179>,  <26.131207, 29.926397, 33.549522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245552, 30.100782, 33.208179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159553, -0.899743, -0.406209,
		-0.944893, -0.020034, -0.326765,
		0.285866, 0.435961, -0.853357,
		26.331312, 30.231571, 32.952171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776394, 29.575445, 32.996300>,  <26.131207, 29.926397, 33.549522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776394, 29.575445, 32.996300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096203, 29.747778, 32.828896>,  <26.288088, 29.851177, 32.728455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096203, 29.747778, 32.828896>,  <25.776394, 29.575445, 32.996300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.096203, 29.747778, 32.828896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243402, -0.869399, -0.430002,
		-0.549107, 0.241931, -0.799970,
		0.799523, 0.430831, -0.418506,
		26.336060, 29.877028, 32.703342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797525, 29.445623, 32.313168>,  <25.776394, 29.575445, 32.996300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797525, 29.445623, 32.313168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177382, 29.509987, 32.420715>,  <26.405294, 29.548605, 32.485245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177382, 29.509987, 32.420715>,  <25.797525, 29.445623, 32.313168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177382, 29.509987, 32.420715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236580, -0.930839, -0.278514,
		0.205461, 0.328097, -0.922029,
		0.949640, 0.160910, 0.268872,
		26.462273, 29.558260, 32.501377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189781, 28.987118, 31.845716>,  <25.797525, 29.445623, 32.313168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189781, 28.987118, 31.845716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414419, 29.090635, 32.160076>,  <26.549202, 29.152746, 32.348694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414419, 29.090635, 32.160076>,  <26.189781, 28.987118, 31.845716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414419, 29.090635, 32.160076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557323, -0.820352, -0.128118,
		0.611559, 0.509950, -0.604935,
		0.561593, 0.258792, 0.785901,
		26.582897, 29.168274, 32.395847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878784, 28.820957, 31.947260>,  <26.189781, 28.987118, 31.845716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878784, 28.820957, 31.947260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818874, 29.110996, 31.678396>,  <26.782928, 29.285019, 31.517078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818874, 29.110996, 31.678396>,  <26.878784, 28.820957, 31.947260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818874, 29.110996, 31.678396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273277, 0.622986, 0.732944,
		0.950204, 0.293463, 0.104845,
		-0.149775, 0.725098, -0.672161,
		26.773941, 29.328526, 31.476748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334383, 29.348877, 32.155373>,  <26.878784, 28.820957, 31.947260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334383, 29.348877, 32.155373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011452, 29.472988, 31.954592>,  <26.817694, 29.547455, 31.834124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011452, 29.472988, 31.954592>,  <27.334383, 29.348877, 32.155373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011452, 29.472988, 31.954592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234487, 0.611891, 0.755384,
		0.541516, 0.727542, -0.421240,
		-0.807326, 0.310278, -0.501948,
		26.769255, 29.566071, 31.804007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435236, 30.037125, 32.347664>,  <27.334383, 29.348877, 32.155373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435236, 30.037125, 32.347664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069704, 29.925047, 32.230087>,  <26.850384, 29.857801, 32.159542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069704, 29.925047, 32.230087>,  <27.435236, 30.037125, 32.347664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069704, 29.925047, 32.230087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399692, 0.748585, 0.529025,
		0.071813, 0.600927, -0.796071,
		-0.913832, -0.280192, -0.293944,
		26.795555, 29.840990, 32.141903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198431, 30.525782, 32.017906>,  <27.435236, 30.037125, 32.347664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198431, 30.525782, 32.017906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914249, 30.320507, 32.210529>,  <26.743740, 30.197342, 32.326103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914249, 30.320507, 32.210529>,  <27.198431, 30.525782, 32.017906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914249, 30.320507, 32.210529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325657, 0.846346, 0.421481,
		-0.623859, 0.142622, -0.768413,
		-0.710456, -0.513184, 0.481554,
		26.701113, 30.166552, 32.354996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650354, 30.877874, 31.893860>,  <27.198431, 30.525782, 32.017906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650354, 30.877874, 31.893860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549768, 30.666386, 32.218136>,  <26.489418, 30.539494, 32.412701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549768, 30.666386, 32.218136>,  <26.650354, 30.877874, 31.893860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549768, 30.666386, 32.218136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453520, 0.804328, 0.383895,
		-0.855035, -0.271130, -0.442045,
		-0.251464, -0.528720, 0.810692,
		26.474329, 30.507771, 32.461342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.833378, 30.835297, 31.971699>,  <26.650354, 30.877874, 31.893860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.833378, 30.835297, 31.971699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055376, 30.813917, 32.303753>,  <26.188576, 30.801090, 32.502987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055376, 30.813917, 32.303753>,  <25.833378, 30.835297, 31.971699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055376, 30.813917, 32.303753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431329, 0.834812, 0.342118,
		-0.711291, -0.547935, 0.440264,
		0.554996, -0.053447, 0.830134,
		26.221874, 30.797884, 32.552792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553207, 30.625830, 32.602203>,  <25.833378, 30.835297, 31.971699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553207, 30.625830, 32.602203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841661, 30.882671, 32.706257>,  <26.014734, 31.036776, 32.768688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841661, 30.882671, 32.706257>,  <25.553207, 30.625830, 32.602203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841661, 30.882671, 32.706257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650138, 0.497492, 0.574302,
		0.239346, -0.583272, 0.776213,
		0.721134, 0.642103, 0.260134,
		26.058002, 31.075302, 32.784298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274305, 30.959522, 33.170094>,  <25.553207, 30.625830, 32.602203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274305, 30.959522, 33.170094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590170, 31.199514, 33.118778>,  <25.779690, 31.343510, 33.087990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590170, 31.199514, 33.118778>,  <25.274305, 30.959522, 33.170094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590170, 31.199514, 33.118778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494202, 0.745920, 0.446507,
		0.363590, -0.289188, 0.885535,
		0.789662, 0.599979, -0.128292,
		25.827068, 31.379509, 33.080292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.443245, 31.246424, 33.846458>,  <25.274305, 30.959522, 33.170094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.443245, 31.246424, 33.846458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552717, 31.495613, 33.553337>,  <25.618401, 31.645126, 33.377464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552717, 31.495613, 33.553337>,  <25.443245, 31.246424, 33.846458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552717, 31.495613, 33.553337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494618, 0.744588, 0.448266,
		0.824895, 0.239775, 0.511914,
		0.273682, 0.622974, -0.732804,
		25.634823, 31.682505, 33.333496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723858, 31.975798, 34.073570>,  <25.443245, 31.246424, 33.846458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723858, 31.975798, 34.073570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558002, 32.025387, 33.712971>,  <25.458488, 32.055141, 33.496609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558002, 32.025387, 33.712971>,  <25.723858, 31.975798, 34.073570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558002, 32.025387, 33.712971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599445, 0.708143, 0.373094,
		0.684646, 0.695100, -0.219307,
		-0.414639, 0.123975, -0.901502,
		25.433611, 32.062580, 33.442520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650085, 32.708157, 34.059578>,  <25.723858, 31.975798, 34.073570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650085, 32.708157, 34.059578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426695, 32.613190, 33.741650>,  <25.292660, 32.556210, 33.550892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426695, 32.613190, 33.741650>,  <25.650085, 32.708157, 34.059578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426695, 32.613190, 33.741650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466846, 0.881978, 0.064580,
		0.685681, 0.407125, -0.603400,
		-0.558477, -0.237414, -0.794819,
		25.259151, 32.541965, 33.503204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.843239, 33.198845, 33.491058>,  <25.650085, 32.708157, 34.059578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.843239, 33.198845, 33.491058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478643, 33.036461, 33.517536>,  <25.259886, 32.939030, 33.533424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478643, 33.036461, 33.517536>,  <25.843239, 33.198845, 33.491058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478643, 33.036461, 33.517536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403380, 0.913711, 0.049163,
		-0.080442, 0.018110, -0.996595,
		-0.911490, -0.405961, 0.066195,
		25.205196, 32.914673, 33.537395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177456, 33.757492, 33.973812>,  <25.843239, 33.198845, 33.491058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177456, 33.757492, 33.973812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162781, 34.058182, 33.710430>,  <26.153976, 34.238594, 33.552399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162781, 34.058182, 33.710430>,  <26.177456, 33.757492, 33.973812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.162781, 34.058182, 33.710430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524495, 0.546369, 0.652983,
		0.850623, 0.369314, 0.374230,
		-0.036688, 0.751724, -0.658457,
		26.151773, 34.283699, 33.512894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387281, 34.419250, 34.200397>,  <26.177456, 33.757492, 33.973812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387281, 34.419250, 34.200397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090755, 34.447357, 33.933411>,  <25.912840, 34.464222, 33.773220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090755, 34.447357, 33.933411>,  <26.387281, 34.419250, 34.200397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090755, 34.447357, 33.933411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557325, 0.489662, 0.670537,
		0.373950, 0.869076, -0.323833,
		-0.741316, 0.070267, -0.667467,
		25.868361, 34.468437, 33.733170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344767, 35.055954, 33.896877>,  <26.387281, 34.419250, 34.200397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344767, 35.055954, 33.896877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006279, 34.850159, 33.952316>,  <25.803186, 34.726681, 33.985580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006279, 34.850159, 33.952316>,  <26.344767, 35.055954, 33.896877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006279, 34.850159, 33.952316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199093, 0.546584, 0.813393,
		-0.494242, 0.660714, -0.564962,
		-0.846219, -0.514493, 0.138601,
		25.752413, 34.695812, 33.993896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726595, 35.498932, 33.822224>,  <26.344767, 35.055954, 33.896877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726595, 35.498932, 33.822224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704365, 35.207291, 34.095081>,  <25.691027, 35.032307, 34.258797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704365, 35.207291, 34.095081>,  <25.726595, 35.498932, 33.822224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704365, 35.207291, 34.095081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266624, 0.669232, 0.693571,
		-0.962197, -0.143331, -0.231589,
		-0.055576, -0.729099, 0.682148,
		25.687693, 34.988560, 34.299725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469816, 35.001354, 33.305580>,  <25.726595, 35.498932, 33.822224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469816, 35.001354, 33.305580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314604, 34.637379, 33.364159>,  <25.221478, 34.418995, 33.399307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314604, 34.637379, 33.364159>,  <25.469816, 35.001354, 33.305580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.314604, 34.637379, 33.364159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913102, 0.357960, -0.195218,
		0.125214, -0.209470, -0.969765,
		-0.388030, -0.909938, 0.146446,
		25.198195, 34.364399, 33.408092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.852150, 34.937397, 32.826984>,  <25.469816, 35.001354, 33.305580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.852150, 34.937397, 32.826984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837191, 34.603626, 33.046921>,  <24.828215, 34.403362, 33.178883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837191, 34.603626, 33.046921>,  <24.852150, 34.937397, 32.826984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.837191, 34.603626, 33.046921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973369, -0.094115, -0.209035,
		0.226174, -0.543016, -0.808690,
		-0.037400, -0.834431, 0.549841,
		24.825970, 34.353298, 33.211872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.550703, 34.278202, 32.393597>,  <24.852150, 34.937397, 32.826984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.550703, 34.278202, 32.393597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474802, 34.321972, 32.783882>,  <24.429260, 34.348232, 33.018055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474802, 34.321972, 32.783882>,  <24.550703, 34.278202, 32.393597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.474802, 34.321972, 32.783882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977427, 0.072976, -0.198271,
		-0.092900, -0.991313, 0.093106,
		-0.189754, 0.109424, 0.975715,
		24.417875, 34.354797, 33.076595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.878080, 34.298615, 31.741207>,  <24.550703, 34.278202, 32.393597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.878080, 34.298615, 31.741207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770882, 34.677589, 31.671309>,  <24.706562, 34.904976, 31.629370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770882, 34.677589, 31.671309>,  <24.878080, 34.298615, 31.741207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.770882, 34.677589, 31.671309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684139, -0.314859, -0.657888,
		-0.678330, -0.056761, 0.732561,
		-0.267996, 0.947440, -0.174746,
		24.690483, 34.961823, 31.618885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437748, 34.264271, 31.166145>,  <24.878080, 34.298615, 31.741207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437748, 34.264271, 31.166145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813433, 34.401154, 31.177256>,  <26.038843, 34.483284, 31.183922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813433, 34.401154, 31.177256>,  <25.437748, 34.264271, 31.166145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813433, 34.401154, 31.177256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181904, -0.564584, 0.805081,
		0.291188, -0.751091, -0.592514,
		0.939213, 0.342210, 0.027774,
		26.095196, 34.503815, 31.185587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996378, 33.717491, 31.308830>,  <25.437748, 34.264271, 31.166145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996378, 33.717491, 31.308830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054550, 34.047249, 31.527634>,  <26.089455, 34.245106, 31.658916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054550, 34.047249, 31.527634>,  <25.996378, 33.717491, 31.308830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054550, 34.047249, 31.527634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030716, -0.556384, 0.830358,
		0.988891, -0.103959, -0.106238,
		0.145432, 0.824397, 0.547010,
		26.098179, 34.294567, 31.691736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587126, 33.616219, 31.739038>,  <25.996378, 33.717491, 31.308830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587126, 33.616219, 31.739038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367781, 33.912678, 31.893957>,  <26.236174, 34.090553, 31.986908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367781, 33.912678, 31.893957>,  <26.587126, 33.616219, 31.739038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367781, 33.912678, 31.893957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070784, -0.420341, 0.904601,
		0.833239, 0.523464, 0.178038,
		-0.548363, 0.741147, 0.387297,
		26.203272, 34.135021, 32.010147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253332, 33.920437, 31.696169>,  <26.587126, 33.616219, 31.739038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253332, 33.920437, 31.696169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279907, 33.562500, 31.519604>,  <27.295853, 33.347736, 31.413666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279907, 33.562500, 31.519604>,  <27.253332, 33.920437, 31.696169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279907, 33.562500, 31.519604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716667, 0.350602, -0.602882,
		0.694244, -0.276290, 0.664597,
		0.066439, -0.894842, -0.441411,
		27.299839, 33.294048, 31.387180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997824, 33.578274, 31.674265>,  <27.253332, 33.920437, 31.696169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997824, 33.578274, 31.674265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761391, 33.504990, 31.360052>,  <27.619532, 33.461021, 31.171524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761391, 33.504990, 31.360052>,  <27.997824, 33.578274, 31.674265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761391, 33.504990, 31.360052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680917, 0.408733, -0.607692,
		0.432404, -0.894077, -0.116848,
		-0.591083, -0.183204, -0.785530,
		27.584066, 33.450027, 31.124393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485872, 33.552887, 31.077171>,  <27.997824, 33.578274, 31.674265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485872, 33.552887, 31.077171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128420, 33.539879, 30.898123>,  <27.913948, 33.532074, 30.790693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128420, 33.539879, 30.898123>,  <28.485872, 33.552887, 31.077171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128420, 33.539879, 30.898123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413877, 0.326009, -0.849955,
		0.173572, -0.944807, -0.277871,
		-0.893632, -0.032524, -0.447620,
		27.860331, 33.530121, 30.763836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415567, 33.063560, 30.510260>,  <28.485872, 33.552887, 31.077171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415567, 33.063560, 30.510260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226715, 33.414520, 30.476164>,  <28.113403, 33.625095, 30.455708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226715, 33.414520, 30.476164>,  <28.415567, 33.063560, 30.510260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226715, 33.414520, 30.476164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547715, 0.216207, -0.808247,
		-0.690726, -0.428283, -0.582642,
		-0.472129, 0.877399, -0.085237,
		28.085075, 33.677738, 30.450592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152662, 33.190105, 29.816763>,  <28.415567, 33.063560, 30.510260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152662, 33.190105, 29.816763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224571, 33.540176, 29.996428>,  <28.267715, 33.750217, 30.104227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224571, 33.540176, 29.996428>,  <28.152662, 33.190105, 29.816763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224571, 33.540176, 29.996428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512467, 0.306429, -0.802171,
		-0.839678, 0.374389, -0.393412,
		0.179771, 0.875177, 0.449164,
		28.278503, 33.802731, 30.131176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975002, 33.713409, 29.331383>,  <28.152662, 33.190105, 29.816763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975002, 33.713409, 29.331383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229183, 33.874596, 29.594843>,  <28.381691, 33.971306, 29.752920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229183, 33.874596, 29.594843>,  <27.975002, 33.713409, 29.331383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229183, 33.874596, 29.594843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629206, 0.224192, -0.744203,
		-0.447551, 0.887332, -0.111084,
		0.635451, 0.402964, 0.658652,
		28.419819, 33.995483, 29.792439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094313, 34.245651, 29.031189>,  <27.975002, 33.713409, 29.331383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094313, 34.245651, 29.031189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386099, 34.227959, 29.304224>,  <28.561171, 34.217342, 29.468044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386099, 34.227959, 29.304224>,  <28.094313, 34.245651, 29.031189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386099, 34.227959, 29.304224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665226, 0.278188, -0.692883,
		-0.159237, 0.959508, 0.232355,
		0.729465, -0.044236, 0.682587,
		28.604939, 34.214687, 29.509001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478256, 34.745110, 28.809271>,  <28.094313, 34.245651, 29.031189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478256, 34.745110, 28.809271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728594, 34.556557, 29.057823>,  <28.878798, 34.443424, 29.206955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728594, 34.556557, 29.057823>,  <28.478256, 34.745110, 28.809271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728594, 34.556557, 29.057823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754491, 0.164022, -0.635484,
		0.197637, 0.866541, 0.458308,
		0.625845, -0.471384, 0.621381,
		28.916348, 34.415142, 29.244238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031179, 35.233387, 28.789728>,  <28.478256, 34.745110, 28.809271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031179, 35.233387, 28.789728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167961, 34.873905, 28.899563>,  <29.250031, 34.658215, 28.965464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167961, 34.873905, 28.899563>,  <29.031179, 35.233387, 28.789728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167961, 34.873905, 28.899563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672313, 0.029819, -0.739666,
		0.656554, 0.437538, 0.614408,
		0.341953, -0.898705, 0.274585,
		29.270548, 34.604294, 28.981937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716835, 35.368256, 28.882238>,  <29.031179, 35.233387, 28.789728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716835, 35.368256, 28.882238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681126, 34.972256, 28.838537>,  <29.659700, 34.734657, 28.812317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681126, 34.972256, 28.838537>,  <29.716835, 35.368256, 28.882238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681126, 34.972256, 28.838537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746767, 0.006052, -0.665058,
		0.659067, -0.140958, 0.738757,
		-0.089275, -0.989997, -0.109251,
		29.654343, 34.675255, 28.805761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439859, 35.098671, 29.014071>,  <29.716835, 35.368256, 28.882238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439859, 35.098671, 29.014071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234623, 34.822914, 28.809534>,  <30.111481, 34.657459, 28.686811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234623, 34.822914, 28.809534>,  <30.439859, 35.098671, 29.014071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234623, 34.822914, 28.809534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781651, -0.129155, -0.610197,
		0.354625, -0.712778, 0.605135,
		-0.513091, -0.689396, -0.511342,
		30.080696, 34.616096, 28.656132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956505, 34.503845, 28.877024>,  <30.439859, 35.098671, 29.014071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956505, 34.503845, 28.877024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674971, 34.462406, 28.595917>,  <30.506050, 34.437542, 28.427252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674971, 34.462406, 28.595917>,  <30.956505, 34.503845, 28.877024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674971, 34.462406, 28.595917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690488, 0.132612, -0.711084,
		0.166868, -0.985738, -0.021799,
		-0.703833, -0.103605, -0.702769,
		30.463820, 34.431328, 28.385086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159264, 33.949417, 28.359262>,  <30.956505, 34.503845, 28.877024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159264, 33.949417, 28.359262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901325, 34.180912, 28.159569>,  <30.746563, 34.319809, 28.039753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901325, 34.180912, 28.159569>,  <31.159264, 33.949417, 28.359262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901325, 34.180912, 28.159569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652693, 0.077091, -0.753690,
		-0.397704, -0.811861, -0.427451,
		-0.644844, 0.578740, -0.499236,
		30.707872, 34.354534, 28.009798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305857, 33.796322, 27.638308>,  <31.159264, 33.949417, 28.359262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305857, 33.796322, 27.638308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097553, 34.137653, 27.628199>,  <30.972570, 34.342453, 27.622133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097553, 34.137653, 27.628199>,  <31.305857, 33.796322, 27.638308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097553, 34.137653, 27.628199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499017, 0.280250, -0.820026,
		-0.692670, -0.439647, -0.571769,
		-0.520759, 0.853329, -0.025271,
		30.941326, 34.393654, 27.620617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969772, 33.874950, 26.859636>,  <31.305857, 33.796322, 27.638308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969772, 33.874950, 26.859636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977743, 34.240524, 27.021782>,  <30.982525, 34.459869, 27.119068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977743, 34.240524, 27.021782>,  <30.969772, 33.874950, 26.859636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977743, 34.240524, 27.021782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545160, 0.329934, -0.770678,
		-0.838095, 0.236344, -0.491669,
		0.019927, 0.913939, 0.405362,
		30.983721, 34.514706, 27.143391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851286, 34.349678, 26.339180>,  <30.969772, 33.874950, 26.859636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851286, 34.349678, 26.339180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039093, 34.568451, 26.616426>,  <31.151777, 34.699715, 26.782774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039093, 34.568451, 26.616426>,  <30.851286, 34.349678, 26.339180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039093, 34.568451, 26.616426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648230, 0.319453, -0.691192,
		-0.599457, 0.773829, -0.204551,
		0.469520, 0.546936, 0.693118,
		31.179949, 34.732533, 26.824362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856464, 34.978085, 26.098106>,  <30.851286, 34.349678, 26.339180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856464, 34.978085, 26.098106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144413, 35.063927, 26.362146>,  <31.317183, 35.115433, 26.520571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144413, 35.063927, 26.362146>,  <30.856464, 34.978085, 26.098106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144413, 35.063927, 26.362146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532776, 0.438721, -0.723653,
		-0.444898, 0.872621, 0.201487,
		0.719872, 0.214605, 0.660098,
		31.360374, 35.128307, 26.560175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063103, 35.632599, 25.989605>,  <30.856464, 34.978085, 26.098106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063103, 35.632599, 25.989605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384800, 35.484089, 26.175228>,  <31.577818, 35.394981, 26.286602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384800, 35.484089, 26.175228>,  <31.063103, 35.632599, 25.989605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384800, 35.484089, 26.175228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590516, 0.587198, -0.553614,
		-0.066951, 0.719274, 0.691493,
		0.804244, -0.371273, 0.464056,
		31.626074, 35.372707, 26.314445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593590, 36.156151, 26.019386>,  <31.063103, 35.632599, 25.989605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593590, 36.156151, 26.019386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834131, 35.839981, 26.066046>,  <31.978456, 35.650280, 26.094042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834131, 35.839981, 26.066046>,  <31.593590, 36.156151, 26.019386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834131, 35.839981, 26.066046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643269, 0.392374, -0.657455,
		0.473895, 0.470402, 0.744410,
		0.601355, -0.790420, 0.116651,
		32.014538, 35.602856, 26.101042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298172, 36.432266, 26.201614>,  <31.593590, 36.156151, 26.019386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298172, 36.432266, 26.201614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379208, 36.052750, 26.104666>,  <32.427830, 35.825039, 26.046495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379208, 36.052750, 26.104666>,  <32.298172, 36.432266, 26.201614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379208, 36.052750, 26.104666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778891, 0.306139, -0.547365,
		0.593537, -0.077890, 0.801029,
		0.202591, -0.948795, -0.242373,
		32.439983, 35.768112, 26.031954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033936, 36.522949, 26.109032>,  <32.298172, 36.432266, 26.201614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033936, 36.522949, 26.109032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935364, 36.180981, 25.926439>,  <32.876221, 35.975800, 25.816883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935364, 36.180981, 25.926439>,  <33.033936, 36.522949, 26.109032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935364, 36.180981, 25.926439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762123, 0.120024, -0.636210,
		0.598701, -0.504674, 0.621981,
		-0.246426, -0.854926, -0.456483,
		32.861435, 35.924503, 25.789494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658863, 36.039700, 25.958107>,  <33.033936, 36.522949, 26.109032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658863, 36.039700, 25.958107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386433, 35.936096, 25.684158>,  <33.222973, 35.873932, 25.519789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386433, 35.936096, 25.684158>,  <33.658863, 36.039700, 25.958107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386433, 35.936096, 25.684158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666347, 0.168451, -0.726364,
		0.303506, -0.951071, 0.057865,
		-0.681077, -0.259014, -0.684869,
		33.182110, 35.858391, 25.478697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932793, 35.468178, 25.539890>,  <33.658863, 36.039700, 25.958107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932793, 35.468178, 25.539890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657425, 35.658138, 25.320601>,  <33.492207, 35.772114, 25.189026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657425, 35.658138, 25.320601>,  <33.932793, 35.468178, 25.539890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657425, 35.658138, 25.320601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668929, 0.123511, -0.732993,
		-0.280389, -0.871328, -0.402703,
		-0.688416, 0.474903, -0.548225,
		33.450901, 35.800610, 25.156134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219112, 35.360603, 24.856874>,  <33.932793, 35.468178, 25.539890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219112, 35.360603, 24.856874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927486, 35.618519, 24.765043>,  <33.752510, 35.773270, 24.709944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927486, 35.618519, 24.765043>,  <34.219112, 35.360603, 24.856874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927486, 35.618519, 24.765043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485352, 0.250542, -0.837653,
		-0.482591, -0.722132, -0.495612,
		-0.729067, 0.644790, -0.229579,
		33.708767, 35.811954, 24.696169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256832, 35.339558, 24.213930>,  <34.219112, 35.360603, 24.856874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256832, 35.339558, 24.213930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052017, 35.676624, 24.280540>,  <33.929127, 35.878864, 24.320507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052017, 35.676624, 24.280540>,  <34.256832, 35.339558, 24.213930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052017, 35.676624, 24.280540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543545, 0.467984, -0.696814,
		-0.665114, -0.266279, -0.697652,
		-0.512037, 0.842666, 0.166528,
		33.898407, 35.929424, 24.330500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968525, 35.547897, 23.560123>,  <34.256832, 35.339558, 24.213930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968525, 35.547897, 23.560123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980045, 35.881382, 23.780701>,  <33.986958, 36.081474, 23.913048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980045, 35.881382, 23.780701>,  <33.968525, 35.547897, 23.560123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980045, 35.881382, 23.780701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563056, 0.442293, -0.698100,
		-0.825916, 0.330600, -0.456690,
		0.028801, 0.833715, 0.551443,
		33.988686, 36.131496, 23.946135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852184, 36.090027, 23.048025>,  <33.968525, 35.547897, 23.560123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852184, 36.090027, 23.048025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998749, 36.281517, 23.367165>,  <34.086689, 36.396412, 23.558647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998749, 36.281517, 23.367165>,  <33.852184, 36.090027, 23.048025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998749, 36.281517, 23.367165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606097, 0.527796, -0.595044,
		-0.705965, 0.701606, -0.096764,
		0.366415, 0.478728, 0.797847,
		34.108673, 36.425137, 23.606518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856586, 36.939777, 22.985649>,  <33.852184, 36.090027, 23.048025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856586, 36.939777, 22.985649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144211, 36.822453, 23.237654>,  <34.316784, 36.752056, 23.388857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144211, 36.822453, 23.237654>,  <33.856586, 36.939777, 22.985649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144211, 36.822453, 23.237654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660081, 0.571805, -0.487167,
		-0.217353, 0.766164, 0.604774,
		0.719062, -0.293313, 0.630014,
		34.359928, 36.734459, 23.426659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233749, 37.547924, 23.011747>,  <33.856586, 36.939777, 22.985649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233749, 37.547924, 23.011747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470959, 37.255047, 23.145746>,  <34.613285, 37.079323, 23.226147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470959, 37.255047, 23.145746>,  <34.233749, 37.547924, 23.011747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470959, 37.255047, 23.145746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798718, 0.482282, -0.359797,
		0.101876, 0.480936, 0.870816,
		0.593019, -0.732191, 0.334999,
		34.648865, 37.035389, 23.246246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703583, 37.896286, 23.404627>,  <34.233749, 37.547924, 23.011747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703583, 37.896286, 23.404627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860756, 37.539734, 23.314249>,  <34.955059, 37.325802, 23.260021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860756, 37.539734, 23.314249>,  <34.703583, 37.896286, 23.404627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860756, 37.539734, 23.314249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860740, 0.442989, -0.250772,
		0.323625, -0.095945, 0.941308,
		0.392929, -0.891378, -0.225946,
		34.978634, 37.272320, 23.246466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241848, 37.825813, 23.851261>,  <34.703583, 37.896286, 23.404627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241848, 37.825813, 23.851261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316864, 37.563843, 23.558439>,  <35.361874, 37.406662, 23.382746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316864, 37.563843, 23.558439>,  <35.241848, 37.825813, 23.851261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316864, 37.563843, 23.558439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924249, 0.369981, -0.094220,
		0.332553, -0.658930, 0.674699,
		0.187542, -0.654923, -0.732054,
		35.373127, 37.367367, 23.338823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848885, 37.639477, 23.954039>,  <35.241848, 37.825813, 23.851261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848885, 37.639477, 23.954039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792336, 37.551216, 23.568018>,  <35.758408, 37.498260, 23.336405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792336, 37.551216, 23.568018>,  <35.848885, 37.639477, 23.954039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792336, 37.551216, 23.568018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884777, 0.409112, -0.223152,
		0.444053, -0.885405, 0.137387,
		-0.141373, -0.220648, -0.965054,
		35.749924, 37.485023, 23.278502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476440, 37.587582, 23.808674>,  <35.848885, 37.639477, 23.954039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476440, 37.587582, 23.808674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289459, 37.606159, 23.455555>,  <36.177273, 37.617306, 23.243683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289459, 37.606159, 23.455555>,  <36.476440, 37.587582, 23.808674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289459, 37.606159, 23.455555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800777, 0.445287, -0.400594,
		0.374495, -0.894183, -0.245338,
		-0.467450, 0.046440, -0.882799,
		36.149223, 37.620090, 23.190716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941563, 37.416286, 23.319889>,  <36.476440, 37.587582, 23.808674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941563, 37.416286, 23.319889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684166, 37.645027, 23.116362>,  <36.529728, 37.782272, 22.994246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.684166, 37.645027, 23.116362>,  <36.941563, 37.416286, 23.319889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684166, 37.645027, 23.116362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765061, 0.501686, -0.403725,
		0.024395, -0.649072, -0.760336,
		-0.643496, 0.571854, -0.508818,
		36.491116, 37.816582, 22.963717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141590, 37.391594, 22.588989>,  <36.941563, 37.416286, 23.319889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141590, 37.391594, 22.588989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907211, 37.715134, 22.608736>,  <36.766586, 37.909256, 22.620584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907211, 37.715134, 22.608736>,  <37.141590, 37.391594, 22.588989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907211, 37.715134, 22.608736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630612, 0.493394, -0.599075,
		-0.508917, -0.319893, -0.799170,
		-0.585945, 0.808846, 0.049368,
		36.731426, 37.957787, 22.623547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116428, 37.610157, 21.932331>,  <37.141590, 37.391594, 22.588989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116428, 37.610157, 21.932331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046436, 37.906605, 22.191597>,  <37.004440, 38.084473, 22.347157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046436, 37.906605, 22.191597>,  <37.116428, 37.610157, 21.932331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046436, 37.906605, 22.191597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578391, 0.610128, -0.541486,
		-0.796772, 0.280143, -0.535420,
		-0.174982, 0.741123, 0.648165,
		36.993942, 38.128941, 22.386045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339478, 38.223934, 21.633371>,  <37.116428, 37.610157, 21.932331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339478, 38.223934, 21.633371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287136, 38.369488, 22.002253>,  <37.255730, 38.456821, 22.223581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287136, 38.369488, 22.002253>,  <37.339478, 38.223934, 21.633371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287136, 38.369488, 22.002253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603042, 0.767544, -0.217293,
		-0.786904, 0.527694, -0.319877,
		-0.130856, 0.363888, 0.922205,
		37.247879, 38.478653, 22.278913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305523, 39.027191, 21.516100>,  <37.339478, 38.223934, 21.633371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305523, 39.027191, 21.516100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376801, 39.012218, 21.909412>,  <37.419567, 39.003235, 22.145401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376801, 39.012218, 21.909412>,  <37.305523, 39.027191, 21.516100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376801, 39.012218, 21.909412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404492, 0.913730, -0.038522,
		-0.897013, 0.404595, 0.177962,
		0.178195, -0.037429, 0.983283,
		37.430260, 39.000988, 22.204397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142296, 39.676311, 21.775215>,  <37.305523, 39.027191, 21.516100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142296, 39.676311, 21.775215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396805, 39.533939, 22.048996>,  <37.549511, 39.448517, 22.213264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396805, 39.533939, 22.048996>,  <37.142296, 39.676311, 21.775215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396805, 39.533939, 22.048996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583606, 0.802312, -0.125301,
		-0.504546, 0.479176, 0.718209,
		0.636269, -0.355931, 0.684453,
		37.587685, 39.427158, 22.254332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332737, 40.230240, 22.299862>,  <37.142296, 39.676311, 21.775215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332737, 40.230240, 22.299862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627785, 39.962029, 22.331631>,  <37.804813, 39.801102, 22.350691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627785, 39.962029, 22.331631>,  <37.332737, 40.230240, 22.299862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627785, 39.962029, 22.331631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665017, 0.741804, 0.086481,
		-0.116902, -0.010974, 0.993083,
		0.737622, -0.670527, 0.079421,
		37.849072, 39.760872, 22.355457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788147, 40.423592, 22.775736>,  <37.332737, 40.230240, 22.299862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788147, 40.423592, 22.775736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008717, 40.186237, 22.541189>,  <38.141060, 40.043823, 22.400461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008717, 40.186237, 22.541189>,  <37.788147, 40.423592, 22.775736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008717, 40.186237, 22.541189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705604, 0.706723, -0.051624,
		0.445030, -0.385275, 0.808400,
		0.551426, -0.593385, -0.586365,
		38.174145, 40.008221, 22.365280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396511, 40.526833, 22.950918>,  <37.788147, 40.423592, 22.775736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396511, 40.526833, 22.950918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465382, 40.361435, 22.593287>,  <38.506706, 40.262196, 22.378708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465382, 40.361435, 22.593287>,  <38.396511, 40.526833, 22.950918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465382, 40.361435, 22.593287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649546, 0.730013, -0.212532,
		0.740570, -0.544151, 0.394279,
		0.172179, -0.413497, -0.894077,
		38.517036, 40.237385, 22.325064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126091, 40.711651, 22.798077>,  <38.396511, 40.526833, 22.950918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126091, 40.711651, 22.798077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984138, 40.589283, 22.444698>,  <38.898968, 40.515862, 22.232672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984138, 40.589283, 22.444698>,  <39.126091, 40.711651, 22.798077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984138, 40.589283, 22.444698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606779, 0.643523, -0.466580,
		0.711254, -0.701635, -0.042745,
		-0.354876, -0.305920, -0.883446,
		38.877674, 40.497509, 22.179665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709270, 40.518227, 22.436827>,  <39.126091, 40.711651, 22.798077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709270, 40.518227, 22.436827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435734, 40.572750, 22.150112>,  <39.271610, 40.605465, 21.978083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435734, 40.572750, 22.150112>,  <39.709270, 40.518227, 22.436827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435734, 40.572750, 22.150112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620498, 0.625476, -0.473035,
		0.383854, -0.768245, -0.512305,
		-0.683841, 0.136308, -0.716786,
		39.230583, 40.613644, 21.935076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061089, 40.355762, 21.755394>,  <39.709270, 40.518227, 22.436827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061089, 40.355762, 21.755394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750290, 40.603283, 21.709171>,  <39.563808, 40.751797, 21.681437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750290, 40.603283, 21.709171>,  <40.061089, 40.355762, 21.755394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750290, 40.603283, 21.709171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572400, 0.618116, -0.538787,
		-0.261975, -0.484783, -0.834478,
		-0.776999, 0.618804, -0.115559,
		39.517189, 40.788925, 21.674503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085667, 40.502876, 20.996164>,  <40.061089, 40.355762, 21.755394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085667, 40.502876, 20.996164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893391, 40.786415, 21.202648>,  <39.778023, 40.956539, 21.326538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.893391, 40.786415, 21.202648>,  <40.085667, 40.502876, 20.996164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893391, 40.786415, 21.202648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457499, 0.704945, -0.541985,
		-0.748083, -0.024364, -0.663158,
		-0.480695, 0.708844, 0.516211,
		39.749184, 40.999069, 21.357512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713390, 40.921539, 20.614708>,  <40.085667, 40.502876, 20.996164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713390, 40.921539, 20.614708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793869, 41.168697, 20.918741>,  <39.842155, 41.316990, 21.101162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793869, 41.168697, 20.918741>,  <39.713390, 40.921539, 20.614708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793869, 41.168697, 20.918741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194210, 0.735385, -0.649224,
		-0.960105, 0.278240, 0.027959,
		0.201200, 0.617893, 0.760084,
		39.854229, 41.354065, 21.146767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889214, 41.544407, 20.254684>,  <39.713390, 40.921539, 20.614708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889214, 41.544407, 20.254684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762329, 41.914734, 20.336899>,  <39.686199, 42.136929, 20.386227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762329, 41.914734, 20.336899>,  <39.889214, 41.544407, 20.254684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762329, 41.914734, 20.336899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799514, 0.144507, 0.583006,
		0.510054, 0.349265, -0.786040,
		-0.317212, 0.925814, 0.205536,
		39.667164, 42.192478, 20.398560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373718, 42.023449, 20.018812>,  <39.889214, 41.544407, 20.254684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373718, 42.023449, 20.018812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175499, 42.152325, 20.341457>,  <40.056568, 42.229649, 20.535046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175499, 42.152325, 20.341457>,  <40.373718, 42.023449, 20.018812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175499, 42.152325, 20.341457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868530, 0.173714, 0.464197,
		0.009440, 0.930600, -0.365915,
		-0.495546, 0.322191, 0.806615,
		40.026836, 42.248981, 20.583443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690468, 42.632179, 20.201351>,  <40.373718, 42.023449, 20.018812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690468, 42.632179, 20.201351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516487, 42.477161, 20.526466>,  <40.412098, 42.384151, 20.721537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516487, 42.477161, 20.526466>,  <40.690468, 42.632179, 20.201351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516487, 42.477161, 20.526466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658533, 0.478716, 0.580659,
		-0.614125, 0.787809, 0.046989,
		-0.434954, -0.387541, 0.812790,
		40.386002, 42.360901, 20.770304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840919, 43.161274, 20.587273>,  <40.690468, 42.632179, 20.201351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840919, 43.161274, 20.587273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694252, 42.892574, 20.844738>,  <40.606251, 42.731354, 20.999218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694252, 42.892574, 20.844738>,  <40.840919, 43.161274, 20.587273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694252, 42.892574, 20.844738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619656, 0.339723, 0.707542,
		-0.693960, 0.658283, 0.291690,
		-0.366668, -0.671753, 0.643663,
		40.584251, 42.691048, 21.037836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198433, 42.643929, 21.068811>,  <40.840919, 43.161274, 20.587273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198433, 42.643929, 21.068811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398632, 42.756790, 21.396200>,  <41.518753, 42.824505, 21.592632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398632, 42.756790, 21.396200>,  <41.198433, 42.643929, 21.068811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398632, 42.756790, 21.396200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865050, 0.125295, 0.485788,
		0.034515, -0.951153, 0.306783,
		0.500497, 0.282150, 0.818470,
		41.548782, 42.841434, 21.641741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820995, 42.349056, 21.592142>,  <41.198433, 42.643929, 21.068811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820995, 42.349056, 21.592142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026478, 42.666206, 21.723259>,  <41.149769, 42.856499, 21.801929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026478, 42.666206, 21.723259>,  <40.820995, 42.349056, 21.592142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026478, 42.666206, 21.723259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796962, 0.299487, 0.524556,
		0.317744, -0.530700, 0.785746,
		0.513703, 0.792884, 0.327787,
		41.180592, 42.904072, 21.821596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839077, 42.351204, 22.396622>,  <40.820995, 42.349056, 21.592142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839077, 42.351204, 22.396622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857113, 42.718655, 22.239601>,  <40.867935, 42.939125, 22.145390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857113, 42.718655, 22.239601>,  <40.839077, 42.351204, 22.396622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857113, 42.718655, 22.239601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758351, 0.287264, 0.585136,
		0.650286, 0.271308, 0.709592,
		0.045088, 0.918625, -0.392550,
		40.870640, 42.994244, 22.121836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458591, 42.890381, 22.640036>,  <40.839077, 42.351204, 22.396622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458591, 42.890381, 22.640036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388409, 43.130863, 22.328197>,  <40.346298, 43.275154, 22.141094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388409, 43.130863, 22.328197>,  <40.458591, 42.890381, 22.640036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388409, 43.130863, 22.328197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924223, 0.172215, 0.340814,
		0.339157, 0.780316, 0.525433,
		-0.175455, 0.601206, -0.779594,
		40.335773, 43.311226, 22.094320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337372, 43.589600, 22.850004>,  <40.458591, 42.890381, 22.640036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337372, 43.589600, 22.850004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144592, 43.574924, 22.499830>,  <40.028927, 43.566120, 22.289726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144592, 43.574924, 22.499830>,  <40.337372, 43.589600, 22.850004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144592, 43.574924, 22.499830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875730, 0.052963, 0.479888,
		0.028758, 0.997922, -0.057657,
		-0.481945, -0.036691, -0.875433,
		40.000008, 43.563915, 22.237200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816406, 44.073914, 22.862183>,  <40.337372, 43.589600, 22.850004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816406, 44.073914, 22.862183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725353, 43.780216, 22.606348>,  <39.670719, 43.604000, 22.452847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725353, 43.780216, 22.606348>,  <39.816406, 44.073914, 22.862183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725353, 43.780216, 22.606348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888628, -0.111926, 0.444761,
		-0.398148, 0.669600, -0.626988,
		-0.227636, -0.734240, -0.639589,
		39.657063, 43.559944, 22.414471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163830, 44.034863, 22.878578>,  <39.816406, 44.073914, 22.862183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163830, 44.034863, 22.878578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247921, 43.664680, 22.752504>,  <39.298378, 43.442574, 22.676861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247921, 43.664680, 22.752504>,  <39.163830, 44.034863, 22.878578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247921, 43.664680, 22.752504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699443, -0.367622, 0.612889,
		-0.683068, 0.091604, -0.724587,
		0.210231, -0.925453, -0.315183,
		39.310989, 43.387043, 22.657949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522633, 43.764668, 22.594479>,  <39.163830, 44.034863, 22.878578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522633, 43.764668, 22.594479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767807, 43.468281, 22.704229>,  <38.914913, 43.290451, 22.770081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767807, 43.468281, 22.704229>,  <38.522633, 43.764668, 22.594479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767807, 43.468281, 22.704229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722820, -0.385575, 0.573466,
		-0.319119, -0.549830, -0.771913,
		0.612939, -0.740958, 0.274384,
		38.951687, 43.245991, 22.786543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313282, 43.148499, 22.365469>,  <38.522633, 43.764668, 22.594479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313282, 43.148499, 22.365469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535671, 43.017540, 22.671072>,  <38.669106, 42.938965, 22.854433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535671, 43.017540, 22.671072>,  <38.313282, 43.148499, 22.365469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535671, 43.017540, 22.671072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831013, -0.238582, 0.502490,
		0.017763, -0.914269, -0.404717,
		0.555969, -0.327399, 0.764008,
		38.702461, 42.919319, 22.900274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963734, 42.609119, 22.704046>,  <38.313282, 43.148499, 22.365469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963734, 42.609119, 22.704046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246319, 42.652428, 22.983812>,  <38.415871, 42.678413, 23.151672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246319, 42.652428, 22.983812>,  <37.963734, 42.609119, 22.704046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246319, 42.652428, 22.983812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653084, -0.281102, 0.703180,
		0.272743, -0.953551, -0.127878,
		0.706465, 0.108273, 0.699417,
		38.458260, 42.684910, 23.193638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860085, 42.033073, 23.069321>,  <37.963734, 42.609119, 22.704046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860085, 42.033073, 23.069321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067932, 42.274982, 23.310732>,  <38.192638, 42.420128, 23.455580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067932, 42.274982, 23.310732>,  <37.860085, 42.033073, 23.069321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067932, 42.274982, 23.310732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561320, -0.290910, 0.774785,
		0.644142, -0.741364, 0.188310,
		0.519617, 0.604774, 0.603529,
		38.223816, 42.456413, 23.491791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088799, 41.653900, 23.709764>,  <37.860085, 42.033073, 23.069321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088799, 41.653900, 23.709764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063957, 42.044323, 23.793156>,  <38.049053, 42.278576, 23.843191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063957, 42.044323, 23.793156>,  <38.088799, 41.653900, 23.709764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063957, 42.044323, 23.793156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587827, -0.204578, 0.782693,
		0.806600, -0.073945, 0.586454,
		-0.062099, 0.976053, 0.208479,
		38.045326, 42.337139, 23.855700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152790, 41.667599, 24.400146>,  <38.088799, 41.653900, 23.709764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152790, 41.667599, 24.400146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993816, 42.025970, 24.320801>,  <37.898430, 42.240993, 24.273193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993816, 42.025970, 24.320801>,  <38.152790, 41.667599, 24.400146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993816, 42.025970, 24.320801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474473, -0.015610, 0.880131,
		0.785442, 0.443915, 0.431300,
		-0.397437, 0.895932, -0.198365,
		37.874584, 42.294750, 24.261292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164227, 41.963619, 25.049150>,  <38.152790, 41.667599, 24.400146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164227, 41.963619, 25.049150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890018, 42.133121, 24.812342>,  <37.725494, 42.234821, 24.670256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890018, 42.133121, 24.812342>,  <38.164227, 41.963619, 25.049150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890018, 42.133121, 24.812342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695056, -0.138901, 0.705410,
		0.216687, 0.895065, 0.389752,
		-0.685524, 0.423752, -0.592022,
		37.684361, 42.260246, 24.634735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784710, 42.233799, 25.550018>,  <38.164227, 41.963619, 25.049150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784710, 42.233799, 25.550018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564507, 42.228783, 25.216124>,  <37.432384, 42.225773, 25.015787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564507, 42.228783, 25.216124>,  <37.784710, 42.233799, 25.550018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564507, 42.228783, 25.216124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801026, -0.273713, 0.532390,
		-0.235154, 0.961730, 0.140636,
		-0.550509, -0.012541, -0.834735,
		37.399353, 42.225021, 24.965704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264400, 42.538479, 25.766296>,  <37.784710, 42.233799, 25.550018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264400, 42.538479, 25.766296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133495, 42.369614, 25.428143>,  <37.054951, 42.268295, 25.225250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133495, 42.369614, 25.428143>,  <37.264400, 42.538479, 25.766296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133495, 42.369614, 25.428143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745323, -0.434617, 0.505570,
		-0.580853, 0.795539, -0.172416,
		-0.327265, -0.422168, -0.845383,
		37.035316, 42.242962, 25.174528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598522, 42.646786, 25.679001>,  <37.264400, 42.538479, 25.766296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598522, 42.646786, 25.679001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607552, 42.349274, 25.411785>,  <36.612968, 42.170765, 25.251455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607552, 42.349274, 25.411785>,  <36.598522, 42.646786, 25.679001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607552, 42.349274, 25.411785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774007, -0.435933, 0.459212,
		-0.632775, 0.506703, -0.585533,
		0.022569, -0.743784, -0.668039,
		36.614323, 42.126137, 25.211374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900837, 42.634972, 25.357103>,  <36.598522, 42.646786, 25.679001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900837, 42.634972, 25.357103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078613, 42.276894, 25.343832>,  <36.185280, 42.062046, 25.335869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078613, 42.276894, 25.343832>,  <35.900837, 42.634972, 25.357103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078613, 42.276894, 25.343832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817010, -0.420256, 0.394817,
		-0.367382, -0.148364, -0.918161,
		0.444439, -0.895195, -0.033180,
		36.211945, 42.008335, 25.333878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345100, 42.236603, 25.357643>,  <35.900837, 42.634972, 25.357103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345100, 42.236603, 25.357643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639381, 41.970451, 25.408258>,  <35.815952, 41.810760, 25.438627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639381, 41.970451, 25.408258>,  <35.345100, 42.236603, 25.357643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639381, 41.970451, 25.408258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642867, -0.627194, 0.439716,
		-0.213211, -0.404850, -0.889178,
		0.735706, -0.665375, 0.126540,
		35.860092, 41.770840, 25.446220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141083, 41.711334, 24.990055>,  <35.345100, 42.236603, 25.357643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141083, 41.711334, 24.990055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407780, 41.566772, 25.250774>,  <35.567799, 41.480038, 25.407206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407780, 41.566772, 25.250774>,  <35.141083, 41.711334, 24.990055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407780, 41.566772, 25.250774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671178, -0.671357, 0.314326,
		0.323991, -0.647047, -0.690188,
		0.666746, -0.361400, 0.651797,
		35.607803, 41.458351, 25.446314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230186, 40.968819, 25.021830>,  <35.141083, 41.711334, 24.990055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230186, 40.968819, 25.021830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399300, 41.032860, 25.378620>,  <35.500767, 41.071285, 25.592695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399300, 41.032860, 25.378620>,  <35.230186, 40.968819, 25.021830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399300, 41.032860, 25.378620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715279, -0.545408, 0.436927,
		0.556444, -0.822738, -0.116072,
		0.422783, 0.160101, 0.891976,
		35.526134, 41.080891, 25.646214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306110, 40.281475, 25.356096>,  <35.230186, 40.968819, 25.021830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306110, 40.281475, 25.356096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319794, 40.561157, 25.641735>,  <35.328003, 40.728966, 25.813118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319794, 40.561157, 25.641735>,  <35.306110, 40.281475, 25.356096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319794, 40.561157, 25.641735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644423, -0.530709, 0.550515,
		0.763903, -0.479015, 0.432431,
		0.034210, 0.699208, 0.714099,
		35.330055, 40.770920, 25.855965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654831, 40.007526, 25.995157>,  <35.306110, 40.281475, 25.356096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654831, 40.007526, 25.995157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434288, 40.314350, 26.126383>,  <35.301964, 40.498444, 26.205118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434288, 40.314350, 26.126383>,  <35.654831, 40.007526, 25.995157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434288, 40.314350, 26.126383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466791, -0.609562, 0.640735,
		0.691457, 0.200135, 0.694142,
		-0.551356, 0.767059, 0.328065,
		35.268883, 40.544468, 26.224802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588776, 39.955437, 26.678844>,  <35.654831, 40.007526, 25.995157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588776, 39.955437, 26.678844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276283, 40.199383, 26.625557>,  <35.088787, 40.345749, 26.593584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276283, 40.199383, 26.625557>,  <35.588776, 39.955437, 26.678844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276283, 40.199383, 26.625557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532961, -0.540517, 0.650994,
		0.325009, 0.579577, 0.747301,
		-0.781231, 0.609861, -0.133219,
		35.041912, 40.382339, 26.585592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302544, 40.149345, 27.352100>,  <35.588776, 39.955437, 26.678844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302544, 40.149345, 27.352100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999271, 40.229488, 27.103899>,  <34.817310, 40.277573, 26.954979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999271, 40.229488, 27.103899>,  <35.302544, 40.149345, 27.352100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999271, 40.229488, 27.103899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647931, -0.338261, 0.682470,
		-0.073152, 0.919476, 0.386281,
		-0.758179, 0.200359, -0.620501,
		34.771816, 40.289597, 26.917749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782433, 40.559341, 27.729332>,  <35.302544, 40.149345, 27.352100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782433, 40.559341, 27.729332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560173, 40.428490, 27.423588>,  <34.426819, 40.349979, 27.240141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560173, 40.428490, 27.423588>,  <34.782433, 40.559341, 27.729332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560173, 40.428490, 27.423588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760114, -0.172626, 0.626440,
		-0.336876, 0.929078, -0.152738,
		-0.555645, -0.327131, -0.764359,
		34.393478, 40.330349, 27.194281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155987, 40.708324, 27.961855>,  <34.782433, 40.559341, 27.729332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155987, 40.708324, 27.961855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076527, 40.449299, 27.667591>,  <34.028851, 40.293884, 27.491032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076527, 40.449299, 27.667591>,  <34.155987, 40.708324, 27.961855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076527, 40.449299, 27.667591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744400, -0.388560, 0.543037,
		-0.637502, 0.655498, -0.404862,
		-0.198646, -0.647567, -0.735661,
		34.016933, 40.255028, 27.446894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368065, 40.771564, 27.879482>,  <34.155987, 40.708324, 27.961855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368065, 40.771564, 27.879482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481094, 40.421383, 27.722651>,  <33.548912, 40.211273, 27.628551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481094, 40.421383, 27.722651>,  <33.368065, 40.771564, 27.879482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481094, 40.421383, 27.722651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760524, -0.453569, 0.464627,
		-0.584596, 0.166894, -0.793973,
		0.282578, -0.875455, -0.392082,
		33.565868, 40.158745, 27.605026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807396, 40.512375, 27.561975>,  <33.368065, 40.771564, 27.879482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807396, 40.512375, 27.561975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044666, 40.202255, 27.648752>,  <33.187027, 40.016186, 27.700819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044666, 40.202255, 27.648752>,  <32.807396, 40.512375, 27.561975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044666, 40.202255, 27.648752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768450, -0.464892, 0.439726,
		-0.240063, -0.427542, -0.871538,
		0.593172, -0.775296, 0.216941,
		33.222618, 39.969666, 27.713835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397079, 39.890305, 27.498787>,  <32.807396, 40.512375, 27.561975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397079, 39.890305, 27.498787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717941, 39.752613, 27.693949>,  <32.910458, 39.669998, 27.811047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717941, 39.752613, 27.693949>,  <32.397079, 39.890305, 27.498787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717941, 39.752613, 27.693949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573022, -0.673521, 0.466920,
		0.167889, -0.654125, -0.737519,
		0.802159, -0.344224, 0.487905,
		32.958588, 39.649345, 27.840321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358540, 39.267311, 27.392618>,  <32.397079, 39.890305, 27.498787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358540, 39.267311, 27.392618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549191, 39.309437, 27.741728>,  <32.663582, 39.334713, 27.951193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549191, 39.309437, 27.741728>,  <32.358540, 39.267311, 27.392618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549191, 39.309437, 27.741728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771080, -0.426727, 0.472589,
		0.422206, -0.898228, -0.122185,
		0.476632, 0.105315, 0.872772,
		32.692181, 39.341030, 28.003559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105583, 38.704262, 27.842041>,  <32.358540, 39.267311, 27.392618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105583, 38.704262, 27.842041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275719, 38.954525, 28.103617>,  <32.377800, 39.104683, 28.260561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275719, 38.954525, 28.103617>,  <32.105583, 38.704262, 27.842041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275719, 38.954525, 28.103617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515984, -0.425980, 0.743170,
		0.743536, -0.653522, 0.141643,
		0.425341, 0.625660, 0.653938,
		32.403320, 39.142223, 28.299799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248573, 38.215698, 28.322922>,  <32.105583, 38.704262, 27.842041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248573, 38.215698, 28.322922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245754, 38.571827, 28.505032>,  <32.244061, 38.785503, 28.614298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245754, 38.571827, 28.505032>,  <32.248573, 38.215698, 28.322922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245754, 38.571827, 28.505032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539666, -0.386681, 0.747822,
		0.841849, -0.240425, 0.483203,
		-0.007051, 0.890322, 0.455276,
		32.243641, 38.838924, 28.641615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578098, 38.202702, 29.078897>,  <32.248573, 38.215698, 28.322922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578098, 38.202702, 29.078897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314690, 38.502270, 29.049332>,  <32.156643, 38.682011, 29.031591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314690, 38.502270, 29.049332>,  <32.578098, 38.202702, 29.078897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314690, 38.502270, 29.049332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512162, -0.374037, 0.773166,
		0.551392, 0.547006, 0.629881,
		-0.658526, 0.748919, -0.073915,
		32.117130, 38.726944, 29.027157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415112, 38.365376, 29.777252>,  <32.578098, 38.202702, 29.078897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415112, 38.365376, 29.777252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107662, 38.514645, 29.569422>,  <31.923193, 38.604206, 29.444723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107662, 38.514645, 29.569422>,  <32.415112, 38.365376, 29.777252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107662, 38.514645, 29.569422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639403, -0.472854, 0.606277,
		-0.019438, 0.798218, 0.602055,
		-0.768625, 0.373171, -0.519575,
		31.877075, 38.626595, 29.413549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876982, 38.568996, 30.290476>,  <32.415112, 38.365376, 29.777252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876982, 38.568996, 30.290476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668592, 38.557545, 29.949240>,  <31.543558, 38.550674, 29.744497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668592, 38.557545, 29.949240>,  <31.876982, 38.568996, 30.290476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668592, 38.557545, 29.949240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797638, -0.339512, 0.498502,
		-0.303907, 0.940166, 0.154043,
		-0.520974, -0.028628, -0.853092,
		31.512300, 38.548958, 29.693312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309608, 38.965878, 30.511644>,  <31.876982, 38.568996, 30.290476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309608, 38.965878, 30.511644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194407, 38.755219, 30.191721>,  <31.125286, 38.628822, 29.999767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194407, 38.755219, 30.191721>,  <31.309608, 38.965878, 30.511644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194407, 38.755219, 30.191721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861030, -0.223144, 0.456983,
		-0.419143, 0.820271, -0.389197,
		-0.288003, -0.526652, -0.799807,
		31.108006, 38.597221, 29.951778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587463, 39.117889, 30.346611>,  <31.309608, 38.965878, 30.511644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587463, 39.117889, 30.346611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653116, 38.775879, 30.149837>,  <30.692509, 38.570675, 30.031775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653116, 38.775879, 30.149837>,  <30.587463, 39.117889, 30.346611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653116, 38.775879, 30.149837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895152, -0.338623, 0.289890,
		-0.414442, 0.392773, -0.820955,
		0.164133, -0.855022, -0.491932,
		30.702356, 38.519371, 30.002258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914619, 38.941139, 29.986025>,  <30.587463, 39.117889, 30.346611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914619, 38.941139, 29.986025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125748, 38.601746, 30.001419>,  <30.252424, 38.398109, 30.010654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125748, 38.601746, 30.001419>,  <29.914619, 38.941139, 29.986025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125748, 38.601746, 30.001419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803371, -0.484027, 0.346861,
		-0.275678, -0.213999, -0.937126,
		0.527823, -0.848482, 0.038485,
		30.284094, 38.347202, 30.012964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468100, 38.395855, 29.685551>,  <29.914619, 38.941139, 29.986025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468100, 38.395855, 29.685551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738392, 38.227505, 29.927628>,  <29.900566, 38.126495, 30.072874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.738392, 38.227505, 29.927628>,  <29.468100, 38.395855, 29.685551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738392, 38.227505, 29.927628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711969, -0.585377, 0.387857,
		0.191025, -0.692963, -0.695206,
		0.675728, -0.420875, 0.605191,
		29.941111, 38.101242, 30.109184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259800, 37.694416, 29.650002>,  <29.468100, 38.395855, 29.685551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259800, 37.694416, 29.650002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495813, 37.706303, 29.972734>,  <29.637421, 37.713436, 30.166374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495813, 37.706303, 29.972734>,  <29.259800, 37.694416, 29.650002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495813, 37.706303, 29.972734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600771, -0.651453, 0.463339,
		0.539383, -0.758107, -0.366525,
		0.590034, 0.029719, 0.806831,
		29.672823, 37.715218, 30.214785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357430, 37.070690, 29.807493>,  <29.259800, 37.694416, 29.650002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357430, 37.070690, 29.807493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474289, 37.241756, 30.149664>,  <29.544405, 37.344395, 30.354965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474289, 37.241756, 30.149664>,  <29.357430, 37.070690, 29.807493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474289, 37.241756, 30.149664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488573, -0.702184, 0.517914,
		0.822158, -0.569246, 0.003802,
		0.292150, 0.427665, 0.855425,
		29.561934, 37.370056, 30.406292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725145, 36.604568, 30.107618>,  <29.357430, 37.070690, 29.807493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725145, 36.604568, 30.107618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582989, 36.841835, 30.396574>,  <29.497696, 36.984196, 30.569948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582989, 36.841835, 30.396574>,  <29.725145, 36.604568, 30.107618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582989, 36.841835, 30.396574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387166, -0.796844, 0.463834,
		0.850765, -0.114843, 0.512845,
		-0.355390, 0.593170, 0.722390,
		29.476372, 37.019787, 30.613291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945499, 36.263885, 30.732725>,  <29.725145, 36.604568, 30.107618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945499, 36.263885, 30.732725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635860, 36.507641, 30.801332>,  <29.450077, 36.653893, 30.842497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635860, 36.507641, 30.801332>,  <29.945499, 36.263885, 30.732725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635860, 36.507641, 30.801332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508034, -0.759633, 0.406029,
		0.377721, 0.227169, 0.897620,
		-0.774099, 0.609387, 0.171520,
		29.403631, 36.690456, 30.852789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865440, 36.263577, 31.530354>,  <29.945499, 36.263885, 30.732725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865440, 36.263577, 31.530354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514128, 36.391235, 31.387936>,  <29.303341, 36.467831, 31.302485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.514128, 36.391235, 31.387936>,  <29.865440, 36.263577, 31.530354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514128, 36.391235, 31.387936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465070, -0.397230, 0.791150,
		0.111064, 0.860437, 0.497306,
		-0.878280, 0.319150, -0.356045,
		29.250645, 36.486980, 31.281122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567532, 36.080288, 31.377714>,  <29.865440, 36.263577, 31.530354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567532, 36.080288, 31.377714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686472, 36.001614, 31.751431>,  <30.757835, 35.954411, 31.975660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686472, 36.001614, 31.751431>,  <30.567532, 36.080288, 31.377714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686472, 36.001614, 31.751431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897324, 0.391875, -0.203086,
		-0.326181, 0.898748, 0.293015,
		0.297348, -0.196687, 0.934290,
		30.775677, 35.942608, 32.031719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941626, 36.682060, 31.680506>,  <30.567532, 36.080288, 31.377714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941626, 36.682060, 31.680506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058598, 36.353092, 31.875694>,  <31.128780, 36.155712, 31.992807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058598, 36.353092, 31.875694>,  <30.941626, 36.682060, 31.680506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058598, 36.353092, 31.875694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949903, 0.308676, -0.049016,
		-0.110314, 0.477859, 0.871482,
		0.292429, -0.822417, 0.487971,
		31.146326, 36.106369, 32.022087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285295, 36.907288, 32.338074>,  <30.941626, 36.682060, 31.680506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285295, 36.907288, 32.338074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432297, 36.553722, 32.222397>,  <31.520498, 36.341583, 32.152992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432297, 36.553722, 32.222397>,  <31.285295, 36.907288, 32.338074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432297, 36.553722, 32.222397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924482, 0.381095, 0.010008,
		0.101362, -0.271028, 0.957220,
		0.367504, -0.883918, -0.289189,
		31.542547, 36.288548, 32.135639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831263, 36.987427, 32.738213>,  <31.285295, 36.907288, 32.338074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831263, 36.987427, 32.738213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948099, 36.708122, 32.476795>,  <32.018200, 36.540539, 32.319946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948099, 36.708122, 32.476795>,  <31.831263, 36.987427, 32.738213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948099, 36.708122, 32.476795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919772, 0.392369, -0.008137,
		0.262112, -0.598733, 0.756846,
		0.292091, -0.698258, -0.653543,
		32.035725, 36.498646, 32.280731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521626, 36.839863, 32.943081>,  <31.831263, 36.987427, 32.738213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521626, 36.839863, 32.943081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483334, 36.679657, 32.578571>,  <32.460358, 36.583534, 32.359863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483334, 36.679657, 32.578571>,  <32.521626, 36.839863, 32.943081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483334, 36.679657, 32.578571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926851, 0.298003, -0.228344,
		0.363018, -0.866477, 0.342689,
		-0.095732, -0.400515, -0.911276,
		32.454613, 36.559502, 32.305187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141563, 36.444218, 32.802349>,  <32.521626, 36.839863, 32.943081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141563, 36.444218, 32.802349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978981, 36.512630, 32.443340>,  <32.881432, 36.553680, 32.227936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978981, 36.512630, 32.443340>,  <33.141563, 36.444218, 32.802349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978981, 36.512630, 32.443340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877384, 0.347154, -0.331182,
		0.254934, -0.922080, -0.291166,
		-0.406456, 0.171035, -0.897519,
		32.857044, 36.563942, 32.174084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628757, 36.187191, 32.311607>,  <33.141563, 36.444218, 32.802349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628757, 36.187191, 32.311607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387802, 36.427021, 32.100842>,  <33.243229, 36.570919, 31.974382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387802, 36.427021, 32.100842>,  <33.628757, 36.187191, 32.311607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387802, 36.427021, 32.100842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798142, 0.444132, -0.407083,
		-0.010059, -0.665773, -0.746087,
		-0.602386, 0.599578, -0.526914,
		33.207085, 36.606895, 31.942768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894135, 36.223492, 31.785690>,  <33.628757, 36.187191, 32.311607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894135, 36.223492, 31.785690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667255, 36.552494, 31.768869>,  <33.531128, 36.749897, 31.758778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667255, 36.552494, 31.768869>,  <33.894135, 36.223492, 31.785690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667255, 36.552494, 31.768869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712932, 0.464793, -0.525068,
		-0.412326, -0.327799, -0.850021,
		-0.567200, 0.822506, -0.042053,
		33.497097, 36.799244, 31.756254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049778, 36.517475, 31.135345>,  <33.894135, 36.223492, 31.785690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049778, 36.517475, 31.135345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876617, 36.825176, 31.323324>,  <33.772720, 37.009796, 31.436111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876617, 36.825176, 31.323324>,  <34.049778, 36.517475, 31.135345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876617, 36.825176, 31.323324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603262, 0.634606, -0.483063,
		-0.669826, 0.074381, -0.738783,
		-0.432906, 0.769248, 0.469947,
		33.746746, 37.055950, 31.464308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874161, 37.156384, 30.661530>,  <34.049778, 36.517475, 31.135345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874161, 37.156384, 30.661530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905586, 37.282913, 31.039686>,  <33.924442, 37.358829, 31.266581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905586, 37.282913, 31.039686>,  <33.874161, 37.156384, 30.661530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905586, 37.282913, 31.039686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582058, 0.755345, -0.301102,
		-0.809343, 0.573928, -0.124779,
		0.078560, 0.316324, 0.945393,
		33.929153, 37.377811, 31.323303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876171, 37.751305, 30.537754>,  <33.874161, 37.156384, 30.661530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876171, 37.751305, 30.537754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020405, 37.758526, 30.910774>,  <34.106945, 37.762859, 31.134586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020405, 37.758526, 30.910774>,  <33.876171, 37.751305, 30.537754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020405, 37.758526, 30.910774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504324, 0.837285, -0.211215,
		-0.784623, 0.546469, 0.292811,
		0.360588, 0.018053, 0.932550,
		34.128582, 37.763943, 31.190538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759850, 38.456108, 30.806324>,  <33.876171, 37.751305, 30.537754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759850, 38.456108, 30.806324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064526, 38.267853, 30.984459>,  <34.247330, 38.154900, 31.091341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064526, 38.267853, 30.984459>,  <33.759850, 38.456108, 30.806324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064526, 38.267853, 30.984459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628343, 0.704296, -0.330384,
		-0.158159, 0.531476, 0.832177,
		0.761690, -0.470639, 0.445340,
		34.293034, 38.126659, 31.118061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058060, 39.011627, 31.127077>,  <33.759850, 38.456108, 30.806324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058060, 39.011627, 31.127077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320438, 38.712330, 31.087358>,  <34.477867, 38.532749, 31.063528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320438, 38.712330, 31.087358>,  <34.058060, 39.011627, 31.127077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320438, 38.712330, 31.087358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633296, 0.617145, -0.466978,
		0.410695, 0.243429, 0.878676,
		0.655947, -0.748248, -0.099295,
		34.517223, 38.487854, 31.057570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697407, 39.316730, 31.290243>,  <34.058060, 39.011627, 31.127077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697407, 39.316730, 31.290243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753239, 38.988785, 31.068129>,  <34.786739, 38.792019, 30.934860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753239, 38.988785, 31.068129>,  <34.697407, 39.316730, 31.290243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753239, 38.988785, 31.068129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535898, 0.534097, -0.653875,
		0.832665, -0.206308, 0.513913,
		0.139580, -0.819864, -0.555284,
		34.795113, 38.742825, 30.901543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275658, 39.412659, 31.124788>,  <34.697407, 39.316730, 31.290243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275658, 39.412659, 31.124788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144627, 39.142410, 30.860600>,  <35.066010, 38.980259, 30.702085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144627, 39.142410, 30.860600>,  <35.275658, 39.412659, 31.124788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144627, 39.142410, 30.860600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404174, 0.531651, -0.744305,
		0.854013, -0.510761, 0.098914,
		-0.327575, -0.675625, -0.660474,
		35.046352, 38.939724, 30.662457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876320, 39.469501, 30.641787>,  <35.275658, 39.412659, 31.124788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876320, 39.469501, 30.641787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588428, 39.264153, 30.454836>,  <35.415695, 39.140942, 30.342665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588428, 39.264153, 30.454836>,  <35.876320, 39.469501, 30.641787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588428, 39.264153, 30.454836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269202, 0.414167, -0.869480,
		0.639944, -0.751604, -0.159883,
		-0.719723, -0.513378, -0.467377,
		35.372513, 39.110138, 30.314623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149746, 39.032631, 30.048365>,  <35.876320, 39.469501, 30.641787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149746, 39.032631, 30.048365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762840, 39.110237, 29.982933>,  <35.530697, 39.156803, 29.943674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762840, 39.110237, 29.982933>,  <36.149746, 39.032631, 30.048365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762840, 39.110237, 29.982933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213746, 0.275383, -0.937271,
		-0.136803, -0.941552, -0.307839,
		-0.967263, 0.194021, -0.163580,
		35.472660, 39.168442, 29.933859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106724, 38.805901, 29.307844>,  <36.149746, 39.032631, 30.048365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106724, 38.805901, 29.307844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807495, 39.064156, 29.369225>,  <35.627960, 39.219109, 29.406054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807495, 39.064156, 29.369225>,  <36.106724, 38.805901, 29.307844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807495, 39.064156, 29.369225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303614, 0.538590, -0.785964,
		-0.590095, -0.541364, -0.598926,
		-0.748068, 0.645636, 0.153453,
		35.583076, 39.257847, 29.415260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723434, 38.840984, 28.724087>,  <36.106724, 38.805901, 29.307844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723434, 38.840984, 28.724087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620476, 39.179226, 28.911150>,  <35.558701, 39.382172, 29.023388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620476, 39.179226, 28.911150>,  <35.723434, 38.840984, 28.724087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620476, 39.179226, 28.911150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257606, 0.526495, -0.810211,
		-0.931336, -0.088073, -0.353350,
		-0.257394, 0.845604, 0.467656,
		35.543259, 39.432907, 29.051447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414909, 39.321297, 28.163733>,  <35.723434, 38.840984, 28.724087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414909, 39.321297, 28.163733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564606, 39.525280, 28.473541>,  <35.654423, 39.647671, 28.659426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564606, 39.525280, 28.473541>,  <35.414909, 39.321297, 28.163733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564606, 39.525280, 28.473541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505120, 0.588335, -0.631439,
		-0.777688, 0.627537, -0.037412,
		0.374240, 0.509960, 0.774522,
		35.676876, 39.678268, 28.705898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384468, 39.912094, 28.015507>,  <35.414909, 39.321297, 28.163733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384468, 39.912094, 28.015507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651764, 39.955505, 28.309900>,  <35.812141, 39.981552, 28.486536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651764, 39.955505, 28.309900>,  <35.384468, 39.912094, 28.015507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651764, 39.955505, 28.309900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623830, 0.457261, -0.633836,
		-0.405324, 0.882686, 0.237861,
		0.668243, 0.108525, 0.735985,
		35.852238, 39.988064, 28.530695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707291, 40.627125, 27.913179>,  <35.384468, 39.912094, 28.015507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707291, 40.627125, 27.913179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975822, 40.441288, 28.144167>,  <36.136940, 40.329784, 28.282761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975822, 40.441288, 28.144167>,  <35.707291, 40.627125, 27.913179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975822, 40.441288, 28.144167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727326, 0.562794, -0.392759,
		-0.142525, 0.683680, 0.715729,
		0.671329, -0.464591, 0.577471,
		36.177219, 40.301910, 28.317408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166512, 41.214386, 28.140627>,  <35.707291, 40.627125, 27.913179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166512, 41.214386, 28.140627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359737, 40.868595, 28.196249>,  <36.475674, 40.661121, 28.229622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359737, 40.868595, 28.196249>,  <36.166512, 41.214386, 28.140627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359737, 40.868595, 28.196249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851032, 0.426211, -0.306739,
		0.205901, 0.266515, 0.941581,
		0.483062, -0.864474, 0.139056,
		36.504658, 40.609253, 28.237967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949890, 41.408298, 28.380150>,  <36.166512, 41.214386, 28.140627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949890, 41.408298, 28.380150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934029, 41.042542, 28.218998>,  <36.924511, 40.823086, 28.122307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934029, 41.042542, 28.218998>,  <36.949890, 41.408298, 28.380150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934029, 41.042542, 28.218998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821747, 0.199544, -0.533773,
		0.568471, -0.352228, 0.743489,
		-0.039651, -0.914395, -0.402877,
		36.922134, 40.768223, 28.098135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608772, 41.278271, 28.165976>,  <36.949890, 41.408298, 28.380150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608772, 41.278271, 28.165976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424248, 40.987770, 27.962116>,  <37.313534, 40.813469, 27.839800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424248, 40.987770, 27.962116>,  <37.608772, 41.278271, 28.165976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424248, 40.987770, 27.962116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705878, 0.047580, -0.706733,
		0.537519, -0.685776, 0.490699,
		-0.461313, -0.726256, -0.509650,
		37.285854, 40.769894, 27.809221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985641, 40.660698, 28.174644>,  <37.608772, 41.278271, 28.165976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985641, 40.660698, 28.174644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770699, 40.662956, 27.837309>,  <37.641735, 40.664310, 27.634909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770699, 40.662956, 27.837309>,  <37.985641, 40.660698, 28.174644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770699, 40.662956, 27.837309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809015, -0.278996, -0.517355,
		-0.238211, -0.960276, 0.145348,
		-0.537355, 0.005651, -0.843338,
		37.609493, 40.664650, 27.584309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171242, 40.014706, 27.909235>,  <37.985641, 40.660698, 28.174644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171242, 40.014706, 27.909235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025848, 40.233513, 27.607599>,  <37.938614, 40.364796, 27.426617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025848, 40.233513, 27.607599>,  <38.171242, 40.014706, 27.909235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025848, 40.233513, 27.607599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745829, -0.314171, -0.587398,
		-0.558230, -0.775932, -0.293785,
		-0.363482, 0.547016, -0.754092,
		37.916805, 40.397617, 27.381372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415508, 39.742329, 27.366482>,  <38.171242, 40.014706, 27.909235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415508, 39.742329, 27.366482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300560, 40.083508, 27.192175>,  <38.231590, 40.288216, 27.087591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300560, 40.083508, 27.192175>,  <38.415508, 39.742329, 27.366482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300560, 40.083508, 27.192175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634654, -0.171184, -0.753598,
		-0.717379, -0.493123, -0.492135,
		-0.287371, 0.852951, -0.435766,
		38.214348, 40.339394, 27.061445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377747, 39.544666, 26.654125>,  <38.415508, 39.742329, 27.366482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377747, 39.544666, 26.654125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393898, 39.944290, 26.660534>,  <38.403591, 40.184063, 26.664379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393898, 39.944290, 26.660534>,  <38.377747, 39.544666, 26.654125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393898, 39.944290, 26.660534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643603, -0.013743, -0.765236,
		-0.764293, 0.041214, -0.643550,
		0.040382, 0.999056, 0.016022,
		38.406013, 40.244007, 26.665340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165848, 39.724281, 25.964642>,  <38.377747, 39.544666, 26.654125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165848, 39.724281, 25.964642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400021, 40.012821, 26.112654>,  <38.540524, 40.185947, 26.201462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400021, 40.012821, 26.112654>,  <38.165848, 39.724281, 25.964642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400021, 40.012821, 26.112654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629988, -0.117491, -0.767666,
		-0.510283, 0.682528, -0.523227,
		0.585428, 0.721353, 0.370031,
		38.575649, 40.229229, 26.223663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549740, 39.896854, 25.477682>,  <38.165848, 39.724281, 25.964642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549740, 39.896854, 25.477682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767262, 40.075325, 25.761993>,  <38.897774, 40.182407, 25.932579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767262, 40.075325, 25.761993>,  <38.549740, 39.896854, 25.477682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767262, 40.075325, 25.761993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792423, 0.005860, -0.609944,
		-0.276310, 0.894924, -0.350378,
		0.543800, 0.446181, 0.710777,
		38.930401, 40.209179, 25.975227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816826, 40.457596, 25.165525>,  <38.549740, 39.896854, 25.477682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816826, 40.457596, 25.165525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051849, 40.382595, 25.480391>,  <39.192863, 40.337593, 25.669310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051849, 40.382595, 25.480391>,  <38.816826, 40.457596, 25.165525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051849, 40.382595, 25.480391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792771, -0.061552, -0.606404,
		0.162153, 0.980334, 0.112481,
		0.587555, -0.187502, 0.787161,
		39.228115, 40.326344, 25.716539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329018, 40.972359, 25.180756>,  <38.816826, 40.457596, 25.165525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329018, 40.972359, 25.180756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464142, 40.655922, 25.384737>,  <39.545216, 40.466061, 25.507126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464142, 40.655922, 25.384737>,  <39.329018, 40.972359, 25.180756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464142, 40.655922, 25.384737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764586, -0.085320, -0.638849,
		0.548900, 0.605713, 0.576039,
		0.337812, -0.791096, 0.509951,
		39.565487, 40.418594, 25.537722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981937, 41.049427, 25.035540>,  <39.329018, 40.972359, 25.180756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981937, 41.049427, 25.035540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984734, 40.680473, 25.190023>,  <39.986412, 40.459103, 25.282715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984734, 40.680473, 25.190023>,  <39.981937, 41.049427, 25.035540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984734, 40.680473, 25.190023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742118, -0.254077, -0.620246,
		0.670232, 0.290952, 0.682741,
		0.006993, -0.922384, 0.386211,
		39.986832, 40.403759, 25.305887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669556, 40.960636, 25.260351>,  <39.981937, 41.049427, 25.035540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669556, 40.960636, 25.260351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510059, 40.600124, 25.192589>,  <40.414364, 40.383816, 25.151932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510059, 40.600124, 25.192589>,  <40.669556, 40.960636, 25.260351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510059, 40.600124, 25.192589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724002, -0.195994, -0.661368,
		0.562877, -0.386362, 0.730681,
		-0.398736, -0.901283, -0.169407,
		40.390438, 40.329739, 25.141768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119209, 40.407875, 25.478807>,  <40.669556, 40.960636, 25.260351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119209, 40.407875, 25.478807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891964, 40.229004, 25.202465>,  <40.755619, 40.121681, 25.036659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891964, 40.229004, 25.202465>,  <41.119209, 40.407875, 25.478807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891964, 40.229004, 25.202465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821637, -0.260763, -0.506867,
		0.046512, -0.855588, 0.515563,
		-0.568109, -0.447182, -0.690854,
		40.721531, 40.094849, 24.995209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533539, 39.921391, 25.310730>,  <41.119209, 40.407875, 25.478807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533539, 39.921391, 25.310730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263863, 39.933842, 25.015570>,  <41.102058, 39.941311, 24.838472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263863, 39.933842, 25.015570>,  <41.533539, 39.921391, 25.310730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263863, 39.933842, 25.015570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684452, -0.349037, -0.640077,
		-0.277477, -0.936592, 0.214015,
		-0.674190, 0.031123, -0.737902,
		41.061607, 39.943180, 24.794199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646969, 39.357758, 24.913925>,  <41.533539, 39.921391, 25.310730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646969, 39.357758, 24.913925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442352, 39.605907, 24.676113>,  <41.319584, 39.754795, 24.533426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442352, 39.605907, 24.676113>,  <41.646969, 39.357758, 24.913925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442352, 39.605907, 24.676113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618734, -0.214170, -0.755844,
		-0.596234, -0.754501, -0.274288,
		-0.511540, 0.620371, -0.594531,
		41.288891, 39.792019, 24.497753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635033, 38.743557, 24.458347>,  <41.646969, 39.357758, 24.913925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635033, 38.743557, 24.458347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029667, 38.701698, 24.508457>,  <42.266449, 38.676582, 24.538523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029667, 38.701698, 24.508457>,  <41.635033, 38.743557, 24.458347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029667, 38.701698, 24.508457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149888, -0.276889, 0.949140,
		-0.064636, -0.955187, -0.288860,
		0.986588, -0.104646, 0.125274,
		42.325642, 38.670303, 24.546040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783741, 38.101704, 24.636370>,  <41.635033, 38.743557, 24.458347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783741, 38.101704, 24.636370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096813, 38.300472, 24.786293>,  <42.284657, 38.419735, 24.876247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096813, 38.300472, 24.786293>,  <41.783741, 38.101704, 24.636370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096813, 38.300472, 24.786293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243503, -0.309720, 0.919119,
		0.572817, -0.810642, -0.121409,
		0.782679, 0.496924, 0.374807,
		42.331615, 38.449551, 24.898735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176216, 37.625862, 25.077087>,  <41.783741, 38.101704, 24.636370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176216, 37.625862, 25.077087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246357, 38.004398, 25.185671>,  <42.288441, 38.231522, 25.250820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246357, 38.004398, 25.185671>,  <42.176216, 37.625862, 25.077087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246357, 38.004398, 25.185671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210822, -0.233238, 0.949291,
		0.961667, -0.223692, 0.158610,
		0.175355, 0.946341, 0.271457,
		42.298965, 38.288300, 25.267107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553711, 37.591007, 25.732088>,  <42.176216, 37.625862, 25.077087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553711, 37.591007, 25.732088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449360, 37.976620, 25.711720>,  <42.386749, 38.207985, 25.699499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449360, 37.976620, 25.711720>,  <42.553711, 37.591007, 25.732088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449360, 37.976620, 25.711720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136990, 0.015246, 0.990455,
		0.955604, 0.265360, 0.128085,
		-0.260874, 0.964029, -0.050920,
		42.371098, 38.265827, 25.696444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979916, 37.956215, 26.275045>,  <42.553711, 37.591007, 25.732088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979916, 37.956215, 26.275045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643742, 38.156052, 26.191071>,  <42.442036, 38.275955, 26.140686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643742, 38.156052, 26.191071>,  <42.979916, 37.956215, 26.275045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643742, 38.156052, 26.191071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162653, 0.136986, 0.977128,
		0.516923, 0.855362, -0.033868,
		-0.840437, 0.499591, -0.209938,
		42.391609, 38.305927, 26.128090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978245, 38.456333, 26.837315>,  <42.979916, 37.956215, 26.275045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978245, 38.456333, 26.837315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618488, 38.515244, 26.672676>,  <42.402634, 38.550591, 26.573893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618488, 38.515244, 26.672676>,  <42.978245, 38.456333, 26.837315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618488, 38.515244, 26.672676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345162, 0.338541, 0.875359,
		0.268259, 0.929354, -0.253647,
		-0.899389, 0.147274, -0.411595,
		42.348671, 38.559425, 26.549198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716251, 39.121029, 27.160715>,  <42.978245, 38.456333, 26.837315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716251, 39.121029, 27.160715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380501, 38.952351, 27.023533>,  <42.179050, 38.851143, 26.941223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380501, 38.952351, 27.023533>,  <42.716251, 39.121029, 27.160715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380501, 38.952351, 27.023533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403441, 0.060518, 0.913002,
		-0.364253, 0.904716, -0.220926,
		-0.839378, -0.421695, -0.342956,
		42.128689, 38.825844, 26.920647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186470, 39.613831, 27.421867>,  <42.716251, 39.121029, 27.160715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186470, 39.613831, 27.421867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028706, 39.252899, 27.352314>,  <41.934048, 39.036339, 27.310581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028706, 39.252899, 27.352314>,  <42.186470, 39.613831, 27.421867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028706, 39.252899, 27.352314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506592, 0.055632, 0.860389,
		-0.766684, 0.427436, -0.479056,
		-0.394412, -0.902332, -0.173884,
		41.910381, 38.982201, 27.300148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502262, 39.657124, 27.551006>,  <42.186470, 39.613831, 27.421867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502262, 39.657124, 27.551006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543968, 39.259407, 27.560129>,  <41.568993, 39.020779, 27.565603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543968, 39.259407, 27.560129>,  <41.502262, 39.657124, 27.551006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543968, 39.259407, 27.560129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485550, -0.030876, 0.873663,
		-0.867969, -0.102167, -0.485996,
		0.104265, -0.994288, 0.022808,
		41.575249, 38.961121, 27.566971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800201, 39.337807, 27.682592>,  <41.502262, 39.657124, 27.551006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800201, 39.337807, 27.682592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093670, 39.095821, 27.806366>,  <41.269753, 38.950630, 27.880630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093670, 39.095821, 27.806366>,  <40.800201, 39.337807, 27.682592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093670, 39.095821, 27.806366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497860, -0.168657, 0.850700,
		-0.462453, -0.778188, -0.424925,
		0.733671, -0.604961, 0.309433,
		41.313770, 38.914333, 27.899197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409714, 38.803608, 27.836838>,  <40.800201, 39.337807, 27.682592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409714, 38.803608, 27.836838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741142, 38.720619, 28.044846>,  <40.939999, 38.670826, 28.169651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741142, 38.720619, 28.044846>,  <40.409714, 38.803608, 27.836838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741142, 38.720619, 28.044846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556173, -0.198275, 0.807068,
		-0.064340, -0.957936, -0.279678,
		0.828573, -0.207477, 0.520020,
		40.989716, 38.658379, 28.200851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292259, 38.067055, 28.152044>,  <40.409714, 38.803608, 27.836838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292259, 38.067055, 28.152044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588444, 38.235783, 28.361340>,  <40.766155, 38.337021, 28.486916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588444, 38.235783, 28.361340>,  <40.292259, 38.067055, 28.152044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588444, 38.235783, 28.361340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500035, -0.174432, 0.848256,
		0.449083, -0.889741, 0.081765,
		0.740466, 0.421823, 0.523236,
		40.810585, 38.362328, 28.518311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350845, 37.672894, 28.756615>,  <40.292259, 38.067055, 28.152044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350845, 37.672894, 28.756615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558250, 37.996906, 28.866161>,  <40.682693, 38.191315, 28.931890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558250, 37.996906, 28.866161>,  <40.350845, 37.672894, 28.756615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558250, 37.996906, 28.866161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392965, -0.058722, 0.917677,
		0.759425, -0.583445, 0.287864,
		0.518509, 0.810027, 0.273868,
		40.713802, 38.239914, 28.948322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796627, 37.481125, 29.339888>,  <40.350845, 37.672894, 28.756615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796627, 37.481125, 29.339888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753326, 37.878693, 29.347923>,  <40.727345, 38.117233, 29.352745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753326, 37.878693, 29.347923>,  <40.796627, 37.481125, 29.339888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753326, 37.878693, 29.347923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362192, -0.058250, 0.930282,
		0.925796, 0.093429, 0.366295,
		-0.108252, 0.993921, 0.020089,
		40.720852, 38.176868, 29.353951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066296, 37.638275, 30.010078>,  <40.796627, 37.481125, 29.339888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066296, 37.638275, 30.010078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832745, 37.921597, 29.851383>,  <40.692616, 38.091587, 29.756166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832745, 37.921597, 29.851383>,  <41.066296, 37.638275, 30.010078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832745, 37.921597, 29.851383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494522, 0.077264, 0.865724,
		0.643847, 0.701669, 0.305159,
		-0.583874, 0.708301, -0.396737,
		40.657581, 38.134087, 29.732363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873436, 37.945969, 30.587461>,  <41.066296, 37.638275, 30.010078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873436, 37.945969, 30.587461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634563, 38.039661, 30.280603>,  <40.491241, 38.095879, 30.096489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634563, 38.039661, 30.280603>,  <40.873436, 37.945969, 30.587461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634563, 38.039661, 30.280603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788214, 0.005876, 0.615373,
		0.148648, 0.972163, 0.181116,
		-0.597179, 0.234232, -0.767146,
		40.455410, 38.109932, 30.050459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386074, 38.459030, 30.845976>,  <40.873436, 37.945969, 30.587461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386074, 38.459030, 30.845976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178520, 38.328419, 30.529966>,  <40.053986, 38.250053, 30.340361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178520, 38.328419, 30.529966>,  <40.386074, 38.459030, 30.845976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178520, 38.328419, 30.529966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838695, 0.015685, 0.544375,
		-0.165361, 0.945058, -0.281995,
		-0.518889, -0.326526, -0.790022,
		40.022854, 38.230461, 30.292959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798122, 38.945892, 30.848124>,  <40.386074, 38.459030, 30.845976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798122, 38.945892, 30.848124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699017, 38.618309, 30.641081>,  <39.639553, 38.421757, 30.516855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699017, 38.618309, 30.641081>,  <39.798122, 38.945892, 30.848124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699017, 38.618309, 30.641081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933740, 0.059387, 0.352991,
		-0.258347, 0.570768, -0.779410,
		-0.247763, -0.818961, -0.517607,
		39.624687, 38.372620, 30.485800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080173, 39.114693, 30.659552>,  <39.798122, 38.945892, 30.848124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080173, 39.114693, 30.659552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097755, 38.722744, 30.581657>,  <39.108303, 38.487576, 30.534920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097755, 38.722744, 30.581657>,  <39.080173, 39.114693, 30.659552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097755, 38.722744, 30.581657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939794, -0.106678, 0.324665,
		-0.338904, 0.168743, -0.925565,
		0.043953, -0.979870, -0.194737,
		39.110943, 38.428783, 30.523235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445240, 38.962997, 30.476313>,  <39.080173, 39.114693, 30.659552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445240, 38.962997, 30.476313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583206, 38.597424, 30.561882>,  <38.665985, 38.378078, 30.613224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583206, 38.597424, 30.561882>,  <38.445240, 38.962997, 30.476313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583206, 38.597424, 30.561882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892084, -0.248297, 0.377537,
		-0.291926, -0.321056, -0.900945,
		0.344913, -0.913932, 0.213925,
		38.686680, 38.323242, 30.626060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018700, 38.382717, 30.110376>,  <38.445240, 38.962997, 30.476313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018700, 38.382717, 30.110376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182270, 38.223938, 30.439060>,  <38.280415, 38.128670, 30.636271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182270, 38.223938, 30.439060>,  <38.018700, 38.382717, 30.110376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182270, 38.223938, 30.439060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888156, -0.379986, 0.258436,
		0.209654, -0.835490, -0.507939,
		0.408930, -0.396947, 0.821711,
		38.304951, 38.104855, 30.685574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785088, 37.629875, 30.227900>,  <38.018700, 38.382717, 30.110376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785088, 37.629875, 30.227900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903214, 37.770222, 30.583357>,  <37.974087, 37.854427, 30.796631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903214, 37.770222, 30.583357>,  <37.785088, 37.629875, 30.227900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903214, 37.770222, 30.583357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823622, -0.377886, 0.422905,
		0.484188, -0.856794, 0.177385,
		0.295311, 0.350864, 0.888643,
		37.991806, 37.875481, 30.849949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762875, 37.110279, 30.557978>,  <37.785088, 37.629875, 30.227900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762875, 37.110279, 30.557978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757202, 37.395576, 30.838287>,  <37.753799, 37.566753, 31.006474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757202, 37.395576, 30.838287>,  <37.762875, 37.110279, 30.557978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757202, 37.395576, 30.838287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772681, -0.452641, 0.445062,
		0.634636, -0.535162, 0.557529,
		-0.014180, 0.713244, 0.700772,
		37.752949, 37.609550, 31.048519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724514, 36.789223, 31.190334>,  <37.762875, 37.110279, 30.557978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724514, 36.789223, 31.190334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581474, 37.157269, 31.254221>,  <37.495651, 37.378098, 31.292553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581474, 37.157269, 31.254221>,  <37.724514, 36.789223, 31.190334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581474, 37.157269, 31.254221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746028, -0.384335, 0.543809,
		0.561753, 0.075309, 0.823870,
		-0.357596, 0.920117, 0.159719,
		37.474197, 37.433304, 31.302137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545845, 36.785240, 31.884258>,  <37.724514, 36.789223, 31.190334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545845, 36.785240, 31.884258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309414, 37.096375, 31.798847>,  <37.167557, 37.283054, 31.747601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309414, 37.096375, 31.798847>,  <37.545845, 36.785240, 31.884258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309414, 37.096375, 31.798847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605086, -0.252531, 0.755049,
		0.533385, 0.575494, 0.619925,
		-0.591076, 0.777840, -0.213527,
		37.132092, 37.329727, 31.734789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457638, 37.139893, 32.419498>,  <37.545845, 36.785240, 31.884258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457638, 37.139893, 32.419498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136341, 37.262306, 32.215088>,  <36.943562, 37.335754, 32.092442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136341, 37.262306, 32.215088>,  <37.457638, 37.139893, 32.419498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136341, 37.262306, 32.215088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593815, -0.344075, 0.727321,
		0.046757, 0.887668, 0.458104,
		-0.803242, 0.306037, -0.511022,
		36.895367, 37.354118, 32.061783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012383, 37.396149, 32.930492>,  <37.457638, 37.139893, 32.419498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012383, 37.396149, 32.930492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771908, 37.334774, 32.616795>,  <36.627625, 37.297951, 32.428577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771908, 37.334774, 32.616795>,  <37.012383, 37.396149, 32.930492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771908, 37.334774, 32.616795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678814, -0.419775, 0.602495,
		-0.421649, 0.894565, 0.148208,
		-0.601185, -0.153436, -0.784241,
		36.591553, 37.288742, 32.381523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356327, 37.687202, 33.141457>,  <37.012383, 37.396149, 32.930492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356327, 37.687202, 33.141457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230137, 37.449104, 32.845848>,  <36.154423, 37.306244, 32.668484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230137, 37.449104, 32.845848>,  <36.356327, 37.687202, 33.141457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230137, 37.449104, 32.845848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716606, -0.361080, 0.596738,
		-0.622054, 0.717845, -0.312645,
		-0.315476, -0.595247, -0.739024,
		36.135494, 37.270531, 32.624142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622604, 37.775616, 33.143208>,  <36.356327, 37.687202, 33.141457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622604, 37.775616, 33.143208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677650, 37.417934, 32.972816>,  <35.710678, 37.203323, 32.870583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677650, 37.417934, 32.972816>,  <35.622604, 37.775616, 33.143208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677650, 37.417934, 32.972816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786070, -0.360255, 0.502305,
		-0.602625, 0.265724, -0.752485,
		0.137612, -0.894208, -0.425976,
		35.718933, 37.149673, 32.845024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003109, 37.539730, 33.188217>,  <35.622604, 37.775616, 33.143208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003109, 37.539730, 33.188217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170578, 37.196449, 33.069427>,  <35.271061, 36.990479, 32.998154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170578, 37.196449, 33.069427>,  <35.003109, 37.539730, 33.188217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170578, 37.196449, 33.069427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758064, -0.510337, 0.406074,
		-0.500047, 0.055103, -0.864243,
		0.418679, -0.858208, -0.296964,
		35.296181, 36.938988, 32.980335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474102, 37.050613, 32.796513>,  <35.003109, 37.539730, 33.188217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474102, 37.050613, 32.796513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771450, 36.840767, 32.962490>,  <34.949860, 36.714859, 33.062077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771450, 36.840767, 32.962490>,  <34.474102, 37.050613, 32.796513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771450, 36.840767, 32.962490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663649, -0.655903, 0.359669,
		0.083476, -0.542746, -0.835738,
		0.743372, -0.524613, 0.414945,
		34.994461, 36.683384, 33.086975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125278, 36.480949, 32.957916>,  <34.474102, 37.050613, 32.796513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125278, 36.480949, 32.957916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474098, 36.426151, 33.145855>,  <34.683392, 36.393272, 33.258617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474098, 36.426151, 33.145855>,  <34.125278, 36.480949, 32.957916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474098, 36.426151, 33.145855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408615, -0.732186, 0.544921,
		0.269364, -0.667186, -0.694482,
		0.872054, -0.136994, 0.469846,
		34.735714, 36.385052, 33.286808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181187, 35.781570, 33.095642>,  <34.125278, 36.480949, 32.957916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181187, 35.781570, 33.095642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438526, 35.937790, 33.359028>,  <34.592930, 36.031521, 33.517059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438526, 35.937790, 33.359028>,  <34.181187, 35.781570, 33.095642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438526, 35.937790, 33.359028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288459, -0.673045, 0.681030,
		0.709149, -0.628080, -0.320347,
		0.643349, 0.390545, 0.658464,
		34.631531, 36.054955, 33.556568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591122, 35.294582, 33.377132>,  <34.181187, 35.781570, 33.095642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591122, 35.294582, 33.377132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590923, 35.578300, 33.659096>,  <34.590805, 35.748531, 33.828274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590923, 35.578300, 33.659096>,  <34.591122, 35.294582, 33.377132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590923, 35.578300, 33.659096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232877, -0.685611, 0.689714,
		0.972506, -0.163815, 0.165519,
		-0.000496, 0.709297, 0.704910,
		34.590775, 35.791088, 33.870567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857765, 35.056835, 33.981937>,  <34.591122, 35.294582, 33.377132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857765, 35.056835, 33.981937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640816, 35.356064, 34.134892>,  <34.510647, 35.535603, 34.226665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640816, 35.356064, 34.134892>,  <34.857765, 35.056835, 33.981937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640816, 35.356064, 34.134892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248673, -0.577698, 0.777449,
		0.802492, 0.326578, 0.499353,
		-0.542373, 0.748072, 0.382386,
		34.478104, 35.580486, 34.249607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082127, 35.089882, 34.649643>,  <34.857765, 35.056835, 33.981937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082127, 35.089882, 34.649643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723911, 35.267712, 34.642002>,  <34.508984, 35.374409, 34.637417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723911, 35.267712, 34.642002>,  <35.082127, 35.089882, 34.649643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723911, 35.267712, 34.642002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232303, -0.430460, 0.872204,
		0.379534, 0.785530, 0.488769,
		-0.895538, 0.444574, -0.019107,
		34.455250, 35.401085, 34.636269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984646, 35.393909, 35.286076>,  <35.082127, 35.089882, 34.649643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984646, 35.393909, 35.286076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607811, 35.366425, 35.154774>,  <34.381710, 35.349934, 35.075993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607811, 35.366425, 35.154774>,  <34.984646, 35.393909, 35.286076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607811, 35.366425, 35.154774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260297, -0.467340, 0.844890,
		-0.211464, 0.881403, 0.422389,
		-0.942087, -0.068717, -0.328252,
		34.325184, 35.345810, 35.056297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497528, 35.472130, 35.909126>,  <34.984646, 35.393909, 35.286076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497528, 35.472130, 35.909126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274269, 35.308079, 35.620609>,  <34.140316, 35.209648, 35.447498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274269, 35.308079, 35.620609>,  <34.497528, 35.472130, 35.909126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274269, 35.308079, 35.620609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446983, -0.583766, 0.677807,
		-0.699058, 0.700722, 0.142504,
		-0.558143, -0.410130, -0.721297,
		34.106827, 35.185040, 35.404221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778446, 35.376060, 36.206326>,  <34.497528, 35.472130, 35.909126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778446, 35.376060, 36.206326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763527, 35.139687, 35.883984>,  <33.754578, 34.997860, 35.690578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763527, 35.139687, 35.883984>,  <33.778446, 35.376060, 36.206326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763527, 35.139687, 35.883984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376820, -0.738570, 0.559035,
		-0.925535, 0.324512, -0.195131,
		-0.037296, -0.590936, -0.805855,
		33.752338, 34.962406, 35.642227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114216, 35.112583, 36.192974>,  <33.778446, 35.376060, 36.206326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114216, 35.112583, 36.192974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356743, 34.856529, 36.004250>,  <33.502258, 34.702896, 35.891014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356743, 34.856529, 36.004250>,  <33.114216, 35.112583, 36.192974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356743, 34.856529, 36.004250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352598, -0.748210, 0.562011,
		-0.712773, -0.174402, -0.679367,
		0.606325, -0.640130, -0.471810,
		33.538639, 34.664490, 35.862705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797718, 34.458996, 36.189789>,  <33.114216, 35.112583, 36.192974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797718, 34.458996, 36.189789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187271, 34.375397, 36.154312>,  <33.421005, 34.325237, 36.133026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187271, 34.375397, 36.154312>,  <32.797718, 34.458996, 36.189789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187271, 34.375397, 36.154312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086147, -0.701593, 0.707351,
		-0.210062, -0.681238, -0.701276,
		0.973885, -0.209001, -0.088692,
		33.479435, 34.312695, 36.127705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956856, 33.724979, 36.037357>,  <32.797718, 34.458996, 36.189789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956856, 33.724979, 36.037357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218983, 33.908562, 36.277328>,  <33.376259, 34.018711, 36.421310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218983, 33.908562, 36.277328>,  <32.956856, 33.724979, 36.037357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218983, 33.908562, 36.277328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189757, -0.668739, 0.718875,
		0.731128, -0.584933, -0.351147,
		0.655319, 0.458957, 0.599929,
		33.415577, 34.046249, 36.457306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255066, 33.133488, 36.390240>,  <32.956856, 33.724979, 36.037357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255066, 33.133488, 36.390240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304482, 33.456245, 36.621292>,  <33.334133, 33.649902, 36.759922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304482, 33.456245, 36.621292>,  <33.255066, 33.133488, 36.390240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304482, 33.456245, 36.621292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400666, -0.491970, 0.772937,
		0.907857, -0.326926, 0.262518,
		0.123543, 0.806898, 0.577627,
		33.341545, 33.698315, 36.794579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374920, 32.588264, 35.761036>,  <33.255066, 33.133488, 36.390240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374920, 32.588264, 35.761036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394417, 32.868732, 35.476505>,  <33.406113, 33.037014, 35.305786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394417, 32.868732, 35.476505>,  <33.374920, 32.588264, 35.761036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394417, 32.868732, 35.476505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592929, 0.552796, 0.585536,
		0.803778, -0.450303, -0.388802,
		0.048741, 0.701173, -0.711323,
		33.409039, 33.079082, 35.263107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063919, 32.788929, 35.762501>,  <33.374920, 32.588264, 35.761036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063919, 32.788929, 35.762501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837322, 33.086754, 35.621246>,  <33.701363, 33.265450, 35.536491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837322, 33.086754, 35.621246>,  <34.063919, 32.788929, 35.762501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837322, 33.086754, 35.621246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584495, 0.665125, 0.464729,
		0.580903, 0.056859, -0.811985,
		-0.566495, 0.744564, -0.353139,
		33.667374, 33.310123, 35.515305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453281, 33.306610, 35.673954>,  <34.063919, 32.788929, 35.762501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453281, 33.306610, 35.673954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130157, 33.542179, 35.664051>,  <33.936283, 33.683521, 35.658108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130157, 33.542179, 35.664051>,  <34.453281, 33.306610, 35.673954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130157, 33.542179, 35.664051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500122, 0.707032, 0.499984,
		0.311957, 0.391509, -0.865681,
		-0.807812, 0.588920, -0.024761,
		33.887814, 33.718857, 35.656624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588154, 33.035358, 36.350365>,  <34.453281, 33.306610, 35.673954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588154, 33.035358, 36.350365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485813, 32.662075, 36.249439>,  <34.424408, 32.438107, 36.188885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485813, 32.662075, 36.249439>,  <34.588154, 33.035358, 36.350365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485813, 32.662075, 36.249439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134764, 0.224025, -0.965221,
		0.957278, -0.280953, 0.068447,
		-0.255848, -0.933209, -0.252316,
		34.409058, 32.382111, 36.173744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097984, 32.792107, 35.816750>,  <34.588154, 33.035358, 36.350365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097984, 32.792107, 35.816750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797573, 32.529053, 35.793148>,  <34.617329, 32.371220, 35.778988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797573, 32.529053, 35.793148>,  <35.097984, 32.792107, 35.816750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797573, 32.529053, 35.793148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065441, 0.014780, -0.997747,
		0.657025, -0.753192, 0.031936,
		-0.751023, -0.657634, -0.059000,
		34.572266, 32.331764, 35.775448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768559, 33.005962, 35.501934>,  <35.097984, 32.792107, 35.816750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768559, 33.005962, 35.501934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051983, 33.286282, 35.534992>,  <36.222038, 33.454472, 35.554829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051983, 33.286282, 35.534992>,  <35.768559, 33.005962, 35.501934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051983, 33.286282, 35.534992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601982, -0.661412, 0.447383,
		0.368187, -0.267245, -0.890516,
		0.708559, 0.700795, 0.082647,
		36.264549, 33.496521, 35.559788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377270, 33.136917, 35.032219>,  <35.768559, 33.005962, 35.501934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377270, 33.136917, 35.032219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616409, 33.264565, 35.326359>,  <36.759892, 33.341152, 35.502842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616409, 33.264565, 35.326359>,  <36.377270, 33.136917, 35.032219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616409, 33.264565, 35.326359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774331, 0.007380, -0.632738,
		-0.207345, 0.947686, -0.242691,
		0.597846, 0.319118, 0.735353,
		36.795761, 33.360298, 35.546967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845230, 32.754280, 34.528912>,  <36.377270, 33.136917, 35.032219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845230, 32.754280, 34.528912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207523, 32.599407, 34.459927>,  <37.424900, 32.506481, 34.418537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207523, 32.599407, 34.459927>,  <36.845230, 32.754280, 34.528912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207523, 32.599407, 34.459927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191634, 0.736990, -0.648168,
		0.378061, 0.554016, 0.741712,
		0.905730, -0.387184, -0.172459,
		37.479240, 32.483253, 34.408188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393452, 33.242203, 34.760086>,  <36.845230, 32.754280, 34.528912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393452, 33.242203, 34.760086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522346, 33.009212, 34.461586>,  <37.599682, 32.869419, 34.282486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522346, 33.009212, 34.461586>,  <37.393452, 33.242203, 34.760086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522346, 33.009212, 34.461586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236765, 0.812832, -0.532208,
		0.916573, -0.005189, 0.399834,
		0.322236, -0.582475, -0.746249,
		37.619019, 32.834469, 34.237713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985008, 32.743496, 34.615631>,  <37.393452, 33.242203, 34.760086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985008, 32.743496, 34.615631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962585, 32.509495, 34.291992>,  <37.949131, 32.369095, 34.097809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962585, 32.509495, 34.291992>,  <37.985008, 32.743496, 34.615631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962585, 32.509495, 34.291992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965091, -0.239404, 0.106229,
		-0.255845, -0.774894, 0.578000,
		-0.056060, -0.585000, -0.809093,
		37.945766, 32.333996, 34.049263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051220, 32.683495, 35.292519>,  <37.985008, 32.743496, 34.615631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051220, 32.683495, 35.292519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717468, 32.606682, 35.499184>,  <37.517216, 32.560596, 35.623180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717468, 32.606682, 35.499184>,  <38.051220, 32.683495, 35.292519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717468, 32.606682, 35.499184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121643, -0.978391, -0.167193,
		0.537601, -0.076654, 0.839708,
		-0.834379, -0.192028, 0.516660,
		37.467155, 32.549072, 35.654182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235741, 32.187103, 35.836830>,  <38.051220, 32.683495, 35.292519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235741, 32.187103, 35.836830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838066, 32.171997, 35.796490>,  <37.599461, 32.162933, 35.772285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.838066, 32.171997, 35.796490>,  <38.235741, 32.187103, 35.836830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838066, 32.171997, 35.796490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030840, -0.997112, 0.069401,
		-0.103183, 0.065888, 0.992478,
		-0.994184, -0.037769, -0.100854,
		37.539810, 32.160667, 35.766235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950722, 31.802073, 36.387444>,  <38.235741, 32.187103, 35.836830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950722, 31.802073, 36.387444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711330, 31.749989, 36.071247>,  <37.567696, 31.718739, 35.881531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711330, 31.749989, 36.071247>,  <37.950722, 31.802073, 36.387444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711330, 31.749989, 36.071247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109042, -0.990761, 0.080641,
		-0.793684, -0.037935, 0.607146,
		-0.598477, -0.130208, -0.790488,
		37.531788, 31.710926, 35.834099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368950, 31.411316, 36.584351>,  <37.950722, 31.802073, 36.387444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368950, 31.411316, 36.584351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516640, 31.356133, 36.216732>,  <37.605255, 31.323023, 35.996162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516640, 31.356133, 36.216732>,  <37.368950, 31.411316, 36.584351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516640, 31.356133, 36.216732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204446, -0.952635, 0.225139,
		-0.906574, -0.271022, -0.323530,
		0.369224, -0.137961, -0.919043,
		37.627407, 31.314745, 35.941017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107269, 30.804781, 36.333420>,  <37.368950, 31.411316, 36.584351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107269, 30.804781, 36.333420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441048, 30.846109, 36.116894>,  <37.641315, 30.870907, 35.986977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441048, 30.846109, 36.116894>,  <37.107269, 30.804781, 36.333420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441048, 30.846109, 36.116894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227496, -0.959248, 0.167596,
		-0.501940, -0.262997, -0.823947,
		0.834447, 0.103321, -0.541316,
		37.691383, 30.877106, 35.954498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203499, 30.142321, 36.126945>,  <37.107269, 30.804781, 36.333420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203499, 30.142321, 36.126945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554955, 30.318510, 36.053211>,  <37.765827, 30.424223, 36.008972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554955, 30.318510, 36.053211>,  <37.203499, 30.142321, 36.126945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554955, 30.318510, 36.053211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452259, -0.891526, 0.025379,
		-0.153157, -0.105664, -0.982537,
		0.878638, 0.440474, -0.184331,
		37.818546, 30.450653, 35.997913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540871, 29.731249, 35.666729>,  <37.203499, 30.142321, 36.126945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540871, 29.731249, 35.666729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817265, 29.960981, 35.842316>,  <37.983101, 30.098822, 35.947666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817265, 29.960981, 35.842316>,  <37.540871, 29.731249, 35.666729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817265, 29.960981, 35.842316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556551, -0.810192, 0.183959,
		0.461297, 0.117192, -0.879472,
		0.690982, 0.574331, 0.438963,
		38.024559, 30.133280, 35.974003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179440, 29.672190, 35.309772>,  <37.540871, 29.731249, 35.666729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179440, 29.672190, 35.309772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253056, 29.756531, 35.693787>,  <38.297226, 29.807135, 35.924194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253056, 29.756531, 35.693787>,  <38.179440, 29.672190, 35.309772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253056, 29.756531, 35.693787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579877, -0.811931, 0.067162,
		0.793646, 0.544343, -0.271693,
		0.184037, 0.210851, 0.960037,
		38.308266, 29.819786, 35.981796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977650, 29.513788, 35.406345>,  <38.179440, 29.672190, 35.309772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977650, 29.513788, 35.406345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777088, 29.494061, 35.751865>,  <38.656750, 29.482224, 35.959179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777088, 29.494061, 35.751865>,  <38.977650, 29.513788, 35.406345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777088, 29.494061, 35.751865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687166, -0.629347, 0.362940,
		0.525732, 0.775558, 0.349451,
		-0.501407, -0.049321, 0.863805,
		38.626667, 29.479263, 36.011005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773361, 30.103191, 34.971962>,  <38.977650, 29.513788, 35.406345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773361, 30.103191, 34.971962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037235, 30.259995, 34.715481>,  <39.195560, 30.354076, 34.561592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037235, 30.259995, 34.715481>,  <38.773361, 30.103191, 34.971962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037235, 30.259995, 34.715481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662324, 0.099942, 0.742522,
		0.355157, -0.914517, -0.193705,
		0.659690, 0.392007, -0.641202,
		39.235142, 30.377596, 34.523121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427876, 29.812502, 34.939552>,  <38.773361, 30.103191, 34.971962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427876, 29.812502, 34.939552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518917, 30.190023, 34.843689>,  <39.573540, 30.416536, 34.786171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518917, 30.190023, 34.843689>,  <39.427876, 29.812502, 34.939552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518917, 30.190023, 34.843689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779700, -0.029204, 0.625472,
		0.583323, -0.329218, -0.742530,
		0.227601, 0.943802, -0.239656,
		39.587196, 30.473164, 34.771793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111553, 29.724676, 34.860512>,  <39.427876, 29.812502, 34.939552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111553, 29.724676, 34.860512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039333, 30.117142, 34.887981>,  <39.996002, 30.352621, 34.904465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039333, 30.117142, 34.887981>,  <40.111553, 29.724676, 34.860512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039333, 30.117142, 34.887981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689381, 0.076437, 0.720355,
		0.701538, 0.177402, -0.690197,
		-0.180550, 0.981166, 0.068674,
		39.985168, 30.411491, 34.908585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089600, 29.091806, 35.180382>,  <40.111553, 29.724676, 34.860512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089600, 29.091806, 35.180382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091026, 29.029825, 34.785217>,  <40.091881, 28.992636, 34.548119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091026, 29.029825, 34.785217>,  <40.089600, 29.091806, 35.180382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091026, 29.029825, 34.785217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910967, -0.406982, 0.067122,
		-0.412464, -0.900197, 0.139707,
		0.003565, -0.154954, -0.987915,
		40.092094, 28.983339, 34.488842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543015, 28.497805, 35.071854>,  <40.089600, 29.091806, 35.180382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543015, 28.497805, 35.071854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494846, 28.689934, 34.724339>,  <40.465946, 28.805212, 34.515831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494846, 28.689934, 34.724339>,  <40.543015, 28.497805, 35.071854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494846, 28.689934, 34.724339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854668, -0.395042, -0.336874,
		-0.505015, -0.783091, -0.362944,
		-0.120425, 0.480323, -0.868785,
		40.458717, 28.834030, 34.463703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142811, 28.249323, 34.504982>,  <40.543015, 28.497805, 35.071854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142811, 28.249323, 34.504982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356991, 27.921915, 34.588238>,  <40.485500, 27.725471, 34.638191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356991, 27.921915, 34.588238>,  <40.142811, 28.249323, 34.504982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356991, 27.921915, 34.588238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519387, -0.513464, -0.683076,
		0.665981, 0.257648, -0.700062,
		0.535450, -0.818518, 0.208138,
		40.517624, 27.676359, 34.650681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613174, 27.932087, 33.873951>,  <40.142811, 28.249323, 34.504982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613174, 27.932087, 33.873951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452278, 27.704578, 34.160923>,  <40.355740, 27.568073, 34.333107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452278, 27.704578, 34.160923>,  <40.613174, 27.932087, 33.873951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452278, 27.704578, 34.160923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507416, -0.513760, -0.691795,
		0.762058, -0.642302, -0.081949,
		-0.402239, -0.568770, 0.717429,
		40.331608, 27.533947, 34.376152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740814, 27.199951, 33.812645>,  <40.613174, 27.932087, 33.873951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740814, 27.199951, 33.812645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405918, 27.202070, 34.031368>,  <40.204979, 27.203341, 34.162601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405918, 27.202070, 34.031368>,  <40.740814, 27.199951, 33.812645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405918, 27.202070, 34.031368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455829, -0.559140, -0.692519,
		0.302077, -0.829057, 0.470547,
		-0.837239, 0.005296, 0.546812,
		40.154747, 27.203659, 34.195412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423824, 26.445303, 33.826134>,  <40.740814, 27.199951, 33.812645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423824, 26.445303, 33.826134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163830, 26.749252, 33.830341>,  <40.007832, 26.931622, 33.832867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163830, 26.749252, 33.830341>,  <40.423824, 26.445303, 33.826134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163830, 26.749252, 33.830341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644955, -0.544261, -0.536481,
		-0.401930, -0.355493, 0.843847,
		-0.649988, 0.759871, 0.010522,
		39.968834, 26.977213, 33.833496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449837, 26.465773, 34.471470>,  <40.423824, 26.445303, 33.826134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449837, 26.465773, 34.471470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196613, 26.203564, 34.636162>,  <40.044678, 26.046238, 34.734978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196613, 26.203564, 34.636162>,  <40.449837, 26.465773, 34.471470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196613, 26.203564, 34.636162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759284, 0.629394, -0.165381,
		-0.150727, -0.417314, -0.896175,
		-0.633063, -0.655524, 0.411727,
		40.006695, 26.006907, 34.759678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128803, 26.740744, 34.915421>,  <40.449837, 26.465773, 34.471470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128803, 26.740744, 34.915421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306431, 26.389893, 34.988571>,  <41.413010, 26.179382, 35.032459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306431, 26.389893, 34.988571>,  <41.128803, 26.740744, 34.915421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306431, 26.389893, 34.988571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832933, 0.479344, 0.276498,
		-0.330184, 0.029537, 0.943454,
		0.444072, -0.877130, 0.182874,
		41.439651, 26.126753, 35.043434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487522, 26.692249, 35.668861>,  <41.128803, 26.740744, 34.915421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487522, 26.692249, 35.668861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654938, 26.437630, 35.409744>,  <41.755386, 26.284859, 35.254276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654938, 26.437630, 35.409744>,  <41.487522, 26.692249, 35.668861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654938, 26.437630, 35.409744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902846, 0.214281, 0.372764,
		-0.098474, -0.740870, 0.664391,
		0.418535, -0.636550, -0.647790,
		41.780499, 26.246664, 35.215408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820976, 26.210211, 36.147266>,  <41.487522, 26.692249, 35.668861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820976, 26.210211, 36.147266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986015, 26.246075, 35.784672>,  <42.085041, 26.267593, 35.567116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986015, 26.246075, 35.784672>,  <41.820976, 26.210211, 36.147266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986015, 26.246075, 35.784672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787758, 0.464554, 0.404509,
		0.457381, -0.880994, 0.121046,
		0.412602, 0.089660, -0.906488,
		42.109795, 26.272974, 35.512726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541454, 26.047493, 36.292461>,  <41.820976, 26.210211, 36.147266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541454, 26.047493, 36.292461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504925, 26.228104, 35.937431>,  <42.483009, 26.336470, 35.724415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504925, 26.228104, 35.937431>,  <42.541454, 26.047493, 36.292461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504925, 26.228104, 35.937431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866024, 0.476003, 0.153050,
		0.491593, -0.754682, -0.434501,
		-0.091319, 0.451527, -0.887572,
		42.477528, 26.363562, 35.671158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168671, 25.953337, 35.861057>,  <42.541454, 26.047493, 36.292461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168671, 25.953337, 35.861057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970982, 26.285873, 35.759377>,  <42.852367, 26.485395, 35.698368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970982, 26.285873, 35.759377>,  <43.168671, 25.953337, 35.861057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970982, 26.285873, 35.759377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844106, 0.528840, 0.088397,
		0.207918, -0.170882, -0.963104,
		-0.494223, 0.831341, -0.254198,
		42.822716, 26.535276, 35.683117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521568, 26.304361, 35.293049>,  <43.168671, 25.953337, 35.861057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521568, 26.304361, 35.293049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377895, 26.544853, 35.578568>,  <43.291691, 26.689148, 35.749878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377895, 26.544853, 35.578568>,  <43.521568, 26.304361, 35.293049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377895, 26.544853, 35.578568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887103, 0.457521, 0.061019,
		-0.289891, 0.655130, -0.697688,
		-0.359182, 0.601232, 0.713799,
		43.270142, 26.725224, 35.792706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345230, 26.938734, 35.068275>,  <43.521568, 26.304361, 35.293049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345230, 26.938734, 35.068275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476730, 26.930151, 35.445946>,  <43.555630, 26.925001, 35.672546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476730, 26.930151, 35.445946>,  <43.345230, 26.938734, 35.068275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476730, 26.930151, 35.445946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838961, 0.465705, -0.281537,
		-0.433665, 0.884680, 0.171103,
		0.328753, -0.021456, 0.944172,
		43.575356, 26.923714, 35.729198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.794956, 27.458021, 35.203533>,  <43.345230, 26.938734, 35.068275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.794956, 27.458021, 35.203533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905956, 27.170456, 35.458454>,  <43.972557, 26.997917, 35.611408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905956, 27.170456, 35.458454>,  <43.794956, 27.458021, 35.203533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905956, 27.170456, 35.458454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952966, 0.121847, -0.277504,
		0.121847, 0.684339, 0.718912,
		0.277504, -0.718912, 0.637305,
		43.989208, 26.954782, 35.649647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248577, 27.686890, 35.803101>,  <43.794956, 27.458021, 35.203533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248577, 27.686890, 35.803101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302975, 27.295256, 35.742569>,  <44.335613, 27.060276, 35.706249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302975, 27.295256, 35.742569>,  <44.248577, 27.686890, 35.803101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302975, 27.295256, 35.742569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987971, 0.145377, -0.052708,
		0.073605, -0.142343, 0.987077,
		0.135995, -0.979083, -0.151331,
		44.343773, 27.001530, 35.697170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748112, 27.459465, 36.304310>,  <44.248577, 27.686890, 35.803101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748112, 27.459465, 36.304310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774059, 27.192554, 36.007519>,  <44.789627, 27.032408, 35.829445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774059, 27.192554, 36.007519>,  <44.748112, 27.459465, 36.304310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774059, 27.192554, 36.007519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991998, 0.123827, -0.024633,
		0.108314, -0.734443, 0.669972,
		0.064869, -0.667279, -0.741978,
		44.793518, 26.992371, 35.784924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.177921, 26.845968, 36.447819>,  <44.748112, 27.459465, 36.304310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.177921, 26.845968, 36.447819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198711, 26.988050, 36.074482>,  <45.211185, 27.073299, 35.850479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198711, 26.988050, 36.074482>,  <45.177921, 26.845968, 36.447819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198711, 26.988050, 36.074482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841462, 0.487743, 0.232483,
		0.537810, -0.797457, -0.273538,
		0.051979, 0.355203, -0.933343,
		45.214306, 27.094612, 35.794479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.730995, 26.533262, 36.197716>,  <45.177921, 26.845968, 36.447819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.730995, 26.533262, 36.197716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661724, 26.894096, 36.039600>,  <45.620163, 27.110598, 35.944729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.661724, 26.894096, 36.039600>,  <45.730995, 26.533262, 36.197716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661724, 26.894096, 36.039600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818906, 0.354863, 0.451071,
		0.547178, -0.245592, -0.800176,
		-0.173173, 0.902085, -0.395290,
		45.609772, 27.164722, 35.921013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198280, 26.725061, 36.718525>,  <45.730995, 26.533262, 36.197716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198280, 26.725061, 36.718525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.114796, 27.115751, 36.738312>,  <46.064705, 27.350164, 36.750183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.114796, 27.115751, 36.738312>,  <46.198280, 26.725061, 36.718525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114796, 27.115751, 36.738312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526528, 0.069597, 0.847304,
		0.824140, 0.202891, -0.528799,
		-0.208713, 0.976725, 0.049470,
		46.052181, 27.408770, 36.753151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.817947, 26.981665, 36.900257>,  <46.198280, 26.725061, 36.718525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.817947, 26.981665, 36.900257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.493507, 27.193586, 36.999397>,  <46.298843, 27.320740, 37.058880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.493507, 27.193586, 36.999397>,  <46.817947, 26.981665, 36.900257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.493507, 27.193586, 36.999397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433704, 0.260438, 0.862597,
		0.392459, 0.807142, -0.441019,
		-0.811096, 0.529805, 0.247849,
		46.250179, 27.352528, 37.073753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.112186, 27.349449, 37.398998>,  <46.817947, 26.981665, 36.900257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.112186, 27.349449, 37.398998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.735584, 27.480776, 37.429398>,  <46.509624, 27.559572, 37.447639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.735584, 27.480776, 37.429398>,  <47.112186, 27.349449, 37.398998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.735584, 27.480776, 37.429398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224314, 0.442233, 0.868397,
		0.251499, 0.834649, -0.490010,
		-0.941505, 0.328317, 0.076003,
		46.453133, 27.579271, 37.452198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.149326, 27.911510, 37.911842>,  <47.112186, 27.349449, 37.398998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.149326, 27.911510, 37.911842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755493, 27.926188, 37.843430>,  <46.519196, 27.934994, 37.802380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755493, 27.926188, 37.843430>,  <47.149326, 27.911510, 37.911842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.755493, 27.926188, 37.843430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123348, 0.547666, 0.827555,
		0.124037, 0.835892, -0.534695,
		-0.984581, 0.036693, -0.171036,
		46.460117, 27.937195, 37.792118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.006935, 28.720503, 37.970428>,  <47.149326, 27.911510, 37.911842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.006935, 28.720503, 37.970428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.016777, 29.079933, 38.145679>,  <47.022682, 29.295591, 38.250828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.016777, 29.079933, 38.145679>,  <47.006935, 28.720503, 37.970428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.016777, 29.079933, 38.145679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748848, 0.306908, -0.587396,
		-0.662284, -0.313633, 0.680451,
		0.024609, 0.898578, 0.438124,
		47.024158, 29.349506, 38.277115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.771072, 29.202606, 37.337566>,  <47.006935, 28.720503, 37.970428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.771072, 29.202606, 37.337566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.669956, 29.237778, 36.952160>,  <46.609287, 29.258881, 36.720917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.669956, 29.237778, 36.952160>,  <46.771072, 29.202606, 37.337566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.669956, 29.237778, 36.952160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163645, 0.977628, 0.132148,
		0.953582, 0.191080, -0.232743,
		-0.252787, 0.087926, -0.963519,
		46.594120, 29.264156, 36.663105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.276745, 29.682285, 37.057545>,  <46.771072, 29.202606, 37.337566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.276745, 29.682285, 37.057545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937309, 29.687532, 36.845989>,  <46.733646, 29.690680, 36.719055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937309, 29.687532, 36.845989>,  <47.276745, 29.682285, 37.057545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.937309, 29.687532, 36.845989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114710, 0.971350, 0.208137,
		0.516467, 0.237292, -0.822772,
		-0.848589, 0.013116, -0.528889,
		46.682732, 29.691467, 36.687321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.245979, 30.310209, 36.611855>,  <47.276745, 29.682285, 37.057545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.245979, 30.310209, 36.611855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.874035, 30.181614, 36.683403>,  <46.650867, 30.104456, 36.726334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.874035, 30.181614, 36.683403>,  <47.245979, 30.310209, 36.611855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.874035, 30.181614, 36.683403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251328, 0.910158, 0.329313,
		-0.268674, 0.261261, -0.927123,
		-0.929865, -0.321489, 0.178873,
		46.595074, 30.085167, 36.737064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.749088, 30.678650, 36.173717>,  <47.245979, 30.310209, 36.611855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.749088, 30.678650, 36.173717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.612057, 30.554878, 36.528545>,  <46.529839, 30.480616, 36.741444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.612057, 30.554878, 36.528545>,  <46.749088, 30.678650, 36.173717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.612057, 30.554878, 36.528545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126851, 0.950793, 0.282667,
		-0.930886, -0.015690, -0.364973,
		-0.342579, -0.309428, 0.887070,
		46.509281, 30.462049, 36.794666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.091560, 30.898159, 36.202042>,  <46.749088, 30.678650, 36.173717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.091560, 30.898159, 36.202042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277706, 30.862894, 36.554329>,  <46.389393, 30.841734, 36.765701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277706, 30.862894, 36.554329>,  <46.091560, 30.898159, 36.202042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277706, 30.862894, 36.554329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143637, 0.974315, 0.173430,
		-0.873386, -0.207212, 0.440749,
		0.465365, -0.088164, 0.880717,
		46.417316, 30.836445, 36.818542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708794, 31.183521, 36.724194>,  <46.091560, 30.898159, 36.202042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708794, 31.183521, 36.724194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081276, 31.218088, 36.865837>,  <46.304764, 31.238829, 36.950821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081276, 31.218088, 36.865837>,  <45.708794, 31.183521, 36.724194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.081276, 31.218088, 36.865837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155415, 0.972888, 0.171273,
		-0.329705, -0.214524, 0.919388,
		0.931204, 0.086417, 0.354106,
		46.360638, 31.244013, 36.972069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624855, 31.690413, 37.105804>,  <45.708794, 31.183521, 36.724194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624855, 31.690413, 37.105804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023724, 31.682884, 37.076687>,  <46.263042, 31.678368, 37.059216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023724, 31.682884, 37.076687>,  <45.624855, 31.690413, 37.105804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.023724, 31.682884, 37.076687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036003, 0.969467, 0.242566,
		0.066007, -0.244500, 0.967400,
		0.997169, -0.018818, -0.072795,
		46.322876, 31.677238, 37.054848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749939, 32.475136, 37.223755>,  <45.624855, 31.690413, 37.105804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749939, 32.475136, 37.223755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104000, 32.290424, 37.246605>,  <46.316437, 32.179596, 37.260315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104000, 32.290424, 37.246605>,  <45.749939, 32.475136, 37.223755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.104000, 32.290424, 37.246605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441699, 0.872508, 0.208885,
		-0.146301, -0.159662, 0.976270,
		0.885154, -0.461777, 0.057126,
		46.369545, 32.151890, 37.263744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.992584, 32.609039, 37.929176>,  <45.749939, 32.475136, 37.223755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.992584, 32.609039, 37.929176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296242, 32.549816, 37.675632>,  <46.478436, 32.514282, 37.523506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296242, 32.549816, 37.675632>,  <45.992584, 32.609039, 37.929176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296242, 32.549816, 37.675632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561063, 0.642539, 0.521874,
		0.330016, -0.751814, 0.570846,
		0.759143, -0.148054, -0.633863,
		46.523983, 32.505402, 37.485474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.607285, 32.538750, 38.326496>,  <45.992584, 32.609039, 37.929176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.607285, 32.538750, 38.326496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719009, 32.644230, 37.957184>,  <46.786045, 32.707520, 37.735596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719009, 32.644230, 37.957184>,  <46.607285, 32.538750, 38.326496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.719009, 32.644230, 37.957184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539943, 0.751987, 0.378124,
		0.794007, -0.604132, 0.067652,
		0.279310, 0.263705, -0.923280,
		46.802803, 32.723343, 37.680199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.369545, 32.522118, 38.291470>,  <46.607285, 32.538750, 38.326496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.369545, 32.522118, 38.291470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234921, 32.776981, 38.014126>,  <47.154144, 32.929901, 37.847721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234921, 32.776981, 38.014126>,  <47.369545, 32.522118, 38.291470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234921, 32.776981, 38.014126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576795, 0.721513, 0.383049,
		0.744332, -0.271006, -0.610348,
		-0.336565, 0.637162, -0.693360,
		47.133949, 32.968128, 37.806118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.836319, 32.769547, 37.875740>,  <47.369545, 32.522118, 38.291470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.836319, 32.769547, 37.875740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.561783, 33.057026, 37.831165>,  <47.397060, 33.229511, 37.804420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.561783, 33.057026, 37.831165>,  <47.836319, 32.769547, 37.875740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.561783, 33.057026, 37.831165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646916, 0.673302, 0.358002,
		0.332327, 0.173618, -0.927047,
		-0.686338, 0.718695, -0.111440,
		47.355881, 33.272633, 37.797733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.026611, 33.312443, 37.382629>,  <47.836319, 32.769547, 37.875740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.026611, 33.312443, 37.382629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.819489, 33.453327, 37.694481>,  <47.695213, 33.537857, 37.881592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.819489, 33.453327, 37.694481>,  <48.026611, 33.312443, 37.382629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.819489, 33.453327, 37.694481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729160, 0.658334, 0.186875,
		-0.447436, 0.665239, -0.597710,
		-0.517810, 0.352212, 0.779628,
		47.664146, 33.558990, 37.928368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.534573, 33.667213, 36.884567>,  <48.026611, 33.312443, 37.382629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.534573, 33.667213, 36.884567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.509953, 33.542019, 36.505463>,  <47.495178, 33.466900, 36.278000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.509953, 33.542019, 36.505463>,  <47.534573, 33.667213, 36.884567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.509953, 33.542019, 36.505463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396694, 0.879012, -0.264523,
		0.915885, 0.359688, -0.178267,
		-0.061554, -0.312990, -0.947760,
		47.491486, 33.448120, 36.221134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.717674, 34.206448, 36.492165>,  <47.534573, 33.667213, 36.884567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.717674, 34.206448, 36.492165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.541763, 34.001495, 36.197124>,  <47.436214, 33.878525, 36.020100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.541763, 34.001495, 36.197124>,  <47.717674, 34.206448, 36.492165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.541763, 34.001495, 36.197124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254438, 0.858720, -0.444816,
		0.861320, -0.007936, -0.508001,
		-0.439761, -0.512383, -0.737614,
		47.409828, 33.847782, 35.975845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.915150, 34.443756, 35.901402>,  <47.717674, 34.206448, 36.492165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.915150, 34.443756, 35.901402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.557659, 34.286263, 35.815407>,  <47.343163, 34.191765, 35.763809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.557659, 34.286263, 35.815407>,  <47.915150, 34.443756, 35.901402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.557659, 34.286263, 35.815407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296078, 0.877747, -0.376694,
		0.337024, -0.273010, -0.901044,
		-0.893730, -0.393734, -0.214989,
		47.289539, 34.168140, 35.750912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.759167, 34.519012, 35.175419>,  <47.915150, 34.443756, 35.901402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.759167, 34.519012, 35.175419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.414658, 34.503407, 35.378075>,  <47.207951, 34.494045, 35.499668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.414658, 34.503407, 35.378075>,  <47.759167, 34.519012, 35.175419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.414658, 34.503407, 35.378075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277253, 0.871636, -0.404205,
		-0.425840, -0.488599, -0.761533,
		-0.861273, -0.039011, 0.506643,
		47.156277, 34.491703, 35.530067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.359341, 35.243565, 35.099682>,  <47.759167, 34.519012, 35.175419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.359341, 35.243565, 35.099682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.523113, 35.093620, 34.766972>,  <47.621376, 35.003654, 34.567345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.523113, 35.093620, 34.766972>,  <47.359341, 35.243565, 35.099682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.523113, 35.093620, 34.766972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905729, -0.057442, -0.419947,
		0.109644, 0.925299, -0.363043,
		0.409431, -0.374863, -0.831772,
		47.645943, 34.981163, 34.517441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.034595, 34.684681, 25.414520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.796844, 34.911289, 25.186218>,  <36.654194, 35.047256, 25.049236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.796844, 34.911289, 25.186218>,  <37.034595, 34.684681, 25.414520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796844, 34.911289, 25.186218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739619, -0.106474, 0.664551,
		0.315714, 0.817137, 0.482298,
		-0.594381, 0.566525, -0.570755,
		36.618530, 35.081245, 25.014992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738155, 35.310703, 25.823275>,  <37.034595, 34.684681, 25.414520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738155, 35.310703, 25.823275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500000, 35.188068, 25.526217>,  <36.357109, 35.114487, 25.347980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500000, 35.188068, 25.526217>,  <36.738155, 35.310703, 25.823275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500000, 35.188068, 25.526217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689567, -0.279378, 0.668165,
		-0.412329, 0.909919, -0.045074,
		-0.595384, -0.306586, -0.742646,
		36.321384, 35.096092, 25.303423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109783, 35.511528, 26.021198>,  <36.738155, 35.310703, 25.823275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109783, 35.511528, 26.021198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013245, 35.263550, 25.722557>,  <35.955322, 35.114761, 25.543373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013245, 35.263550, 25.722557>,  <36.109783, 35.511528, 26.021198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013245, 35.263550, 25.722557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801055, -0.306996, 0.513871,
		-0.547778, 0.722092, -0.422519,
		-0.241350, -0.619949, -0.746601,
		35.940838, 35.077564, 25.498577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458141, 35.554688, 25.988485>,  <36.109783, 35.511528, 26.021198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458141, 35.554688, 25.988485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.514542, 35.204266, 25.804029>,  <35.548382, 34.994011, 25.693356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.514542, 35.204266, 25.804029>,  <35.458141, 35.554688, 25.988485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514542, 35.204266, 25.804029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824647, -0.361661, 0.434924,
		-0.547792, 0.318953, -0.773429,
		0.140999, -0.876054, -0.461139,
		35.556843, 34.941448, 25.665688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746353, 35.260090, 25.834370>,  <35.458141, 35.554688, 25.988485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746353, 35.260090, 25.834370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.978760, 34.941078, 25.769407>,  <35.118202, 34.749672, 25.730431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.978760, 34.941078, 25.769407>,  <34.746353, 35.260090, 25.834370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978760, 34.941078, 25.769407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694878, -0.589967, 0.411198,
		-0.423754, -0.126061, -0.896962,
		0.581014, -0.797526, -0.162404,
		35.153065, 34.701820, 25.720686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400131, 34.740295, 25.422344>,  <34.746353, 35.260090, 25.834370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400131, 34.740295, 25.422344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.687321, 34.542568, 25.618372>,  <34.859634, 34.423931, 25.735989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.687321, 34.542568, 25.618372>,  <34.400131, 34.740295, 25.422344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687321, 34.542568, 25.618372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694766, -0.465769, 0.548050,
		-0.042650, -0.733969, -0.677843,
		0.717970, -0.494317, 0.490072,
		34.902710, 34.394272, 25.765394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157726, 33.947617, 25.423330>,  <34.400131, 34.740295, 25.422344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157726, 33.947617, 25.423330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.402035, 34.025398, 25.730354>,  <34.548618, 34.072067, 25.914568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.402035, 34.025398, 25.730354>,  <34.157726, 33.947617, 25.423330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402035, 34.025398, 25.730354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616193, -0.492044, 0.614979,
		0.497259, -0.848575, -0.180703,
		0.610770, 0.194456, 0.767560,
		34.585266, 34.083736, 25.960623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198929, 33.324932, 25.717363>,  <34.157726, 33.947617, 25.423330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198929, 33.324932, 25.717363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292877, 33.585579, 26.005873>,  <34.349247, 33.741966, 26.178978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292877, 33.585579, 26.005873>,  <34.198929, 33.324932, 25.717363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292877, 33.585579, 26.005873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635976, -0.458151, 0.620993,
		0.735100, -0.604565, 0.306805,
		0.234868, 0.651612, 0.721275,
		34.363338, 33.781063, 26.222256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386681, 32.845676, 26.332699>,  <34.198929, 33.324932, 25.717363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386681, 32.845676, 26.332699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.304951, 33.217865, 26.454338>,  <34.255913, 33.441177, 26.527321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.304951, 33.217865, 26.454338>,  <34.386681, 32.845676, 26.332699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304951, 33.217865, 26.454338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475306, -0.365875, 0.800138,
		0.855766, 0.018950, 0.517016,
		-0.204325, 0.930471, 0.304096,
		34.243652, 33.497005, 26.545567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432858, 32.886505, 27.071234>,  <34.386681, 32.845676, 26.332699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432858, 32.886505, 27.071234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268238, 33.248524, 27.028316>,  <34.169464, 33.465736, 27.002565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.268238, 33.248524, 27.028316>,  <34.432858, 32.886505, 27.071234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268238, 33.248524, 27.028316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498241, -0.124846, 0.858003,
		0.763139, 0.406571, 0.502313,
		-0.411551, 0.905049, -0.107295,
		34.144772, 33.520039, 26.996128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446434, 33.188713, 27.763800>,  <34.432858, 32.886505, 27.071234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446434, 33.188713, 27.763800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.174618, 33.397045, 27.557127>,  <34.011528, 33.522045, 27.433125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.174618, 33.397045, 27.557127>,  <34.446434, 33.188713, 27.763800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174618, 33.397045, 27.557127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567091, 0.073897, 0.820333,
		0.465435, 0.850456, 0.245142,
		-0.679542, 0.520829, -0.516680,
		33.970757, 33.553295, 27.402122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405037, 33.848835, 28.065393>,  <34.446434, 33.188713, 27.763800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405037, 33.848835, 28.065393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.060570, 33.763912, 27.880648>,  <33.853889, 33.712959, 27.769800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.060570, 33.763912, 27.880648>,  <34.405037, 33.848835, 28.065393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060570, 33.763912, 27.880648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496736, 0.158576, 0.853292,
		-0.107922, 0.964250, -0.242023,
		-0.861166, -0.212310, -0.461863,
		33.802219, 33.700218, 27.742088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943924, 34.310547, 28.482574>,  <34.405037, 33.848835, 28.065393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943924, 34.310547, 28.482574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.731510, 34.027725, 28.295780>,  <33.604061, 33.858032, 28.183704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.731510, 34.027725, 28.295780>,  <33.943924, 34.310547, 28.482574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731510, 34.027725, 28.295780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619080, -0.052559, 0.783567,
		-0.578570, 0.705202, -0.409814,
		-0.531034, -0.707056, -0.466985,
		33.572201, 33.815609, 28.155685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297710, 34.513729, 28.703489>,  <33.943924, 34.310547, 28.482574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297710, 34.513729, 28.703489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.277679, 34.133888, 28.579710>,  <33.265663, 33.905983, 28.505444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.277679, 34.133888, 28.579710>,  <33.297710, 34.513729, 28.703489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277679, 34.133888, 28.579710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722521, -0.179468, 0.667648,
		-0.689533, 0.257014, -0.677118,
		-0.050074, -0.949597, -0.309447,
		33.262657, 33.849010, 28.486876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631111, 34.383411, 28.578541>,  <33.297710, 34.513729, 28.703489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631111, 34.383411, 28.578541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.780930, 34.018688, 28.645859>,  <32.870819, 33.799854, 28.686249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.780930, 34.018688, 28.645859>,  <32.631111, 34.383411, 28.578541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780930, 34.018688, 28.645859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730699, -0.178530, 0.658943,
		-0.570783, -0.369777, -0.733125,
		0.374546, -0.911807, 0.168294,
		32.893295, 33.745148, 28.696346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044819, 33.939957, 28.636583>,  <32.631111, 34.383411, 28.578541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044819, 33.939957, 28.636583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.355625, 33.762974, 28.815685>,  <32.542107, 33.656784, 28.923147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.355625, 33.762974, 28.815685>,  <32.044819, 33.939957, 28.636583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355625, 33.762974, 28.815685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591064, -0.268113, 0.760762,
		-0.216551, -0.855776, -0.469844,
		0.777013, -0.442452, 0.447758,
		32.588730, 33.630238, 28.950012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608784, 33.356190, 28.898424>,  <32.044819, 33.939957, 28.636583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608784, 33.356190, 28.898424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.966022, 33.405891, 29.071371>,  <32.180367, 33.435711, 29.175138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.966022, 33.405891, 29.071371>,  <31.608784, 33.356190, 28.898424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966022, 33.405891, 29.071371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408116, -0.180561, 0.894896,
		0.189262, -0.975684, -0.110549,
		0.893097, 0.124253, 0.432365,
		32.233952, 33.443169, 29.201080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611712, 32.852257, 29.484938>,  <31.608784, 33.356190, 28.898424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611712, 32.852257, 29.484938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.909403, 33.101540, 29.581059>,  <32.088017, 33.251110, 29.638731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.909403, 33.101540, 29.581059>,  <31.611712, 32.852257, 29.484938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909403, 33.101540, 29.581059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326977, 0.026222, 0.944668,
		0.582419, -0.781621, 0.223288,
		0.744227, 0.623202, 0.240300,
		32.132671, 33.288502, 29.653149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056046, 32.545372, 30.065407>,  <31.611712, 32.852257, 29.484938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056046, 32.545372, 30.065407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.077568, 32.942558, 30.107582>,  <32.090481, 33.180870, 30.132887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.077568, 32.942558, 30.107582>,  <32.056046, 32.545372, 30.065407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077568, 32.942558, 30.107582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422748, -0.073006, 0.903302,
		0.904648, -0.093180, 0.415847,
		0.053810, 0.992969, 0.105437,
		32.093712, 33.240448, 30.139214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194252, 32.527863, 30.811077>,  <32.056046, 32.545372, 30.065407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194252, 32.527863, 30.811077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.160454, 32.922253, 30.753500>,  <32.140175, 33.158886, 30.718954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.160454, 32.922253, 30.753500>,  <32.194252, 32.527863, 30.811077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160454, 32.922253, 30.753500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511718, 0.081018, 0.855325,
		0.854989, 0.145925, 0.497694,
		-0.084491, 0.985973, -0.143942,
		32.135105, 33.218044, 30.710318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460011, 32.937202, 31.368355>,  <32.194252, 32.527863, 30.811077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460011, 32.937202, 31.368355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.213505, 33.201790, 31.197392>,  <32.065601, 33.360542, 31.094814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.213505, 33.201790, 31.197392>,  <32.460011, 32.937202, 31.368355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213505, 33.201790, 31.197392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396137, 0.208696, 0.894160,
		0.680660, 0.720347, 0.133423,
		-0.616261, 0.661472, -0.427407,
		32.028625, 33.400230, 31.069170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376060, 33.445736, 31.842760>,  <32.460011, 32.937202, 31.368355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376060, 33.445736, 31.842760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.058678, 33.526905, 31.613237>,  <31.868248, 33.575607, 31.475523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.058678, 33.526905, 31.613237>,  <32.376060, 33.445736, 31.842760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058678, 33.526905, 31.613237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494918, 0.333613, 0.802346,
		0.354241, 0.920612, -0.164278,
		-0.793454, 0.202920, -0.573807,
		31.820641, 33.587780, 31.441095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859184, 33.571980, 32.349575>,  <32.376060, 33.445736, 31.842760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859184, 33.571980, 32.349575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.160652, 33.546768, 32.611263>,  <32.341534, 33.531643, 32.768276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.160652, 33.546768, 32.611263>,  <31.859184, 33.571980, 32.349575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160652, 33.546768, 32.611263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598882, 0.475942, -0.644065,
		-0.270777, 0.877215, 0.396451,
		0.753671, -0.063029, 0.654222,
		32.386753, 33.527859, 32.807529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259743, 34.216496, 32.281841>,  <31.859184, 33.571980, 32.349575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259743, 34.216496, 32.281841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.512707, 33.944237, 32.429775>,  <32.664486, 33.780884, 32.518536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.512707, 33.944237, 32.429775>,  <32.259743, 34.216496, 32.281841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512707, 33.944237, 32.429775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747193, 0.410051, -0.523030,
		0.204347, 0.607108, 0.767894,
		0.632412, -0.680645, 0.369834,
		32.702431, 33.740044, 32.540726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869442, 34.590969, 32.536972>,  <32.259743, 34.216496, 32.281841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869442, 34.590969, 32.536972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.987015, 34.211220, 32.492615>,  <33.057560, 33.983372, 32.466000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.987015, 34.211220, 32.492615>,  <32.869442, 34.590969, 32.536972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987015, 34.211220, 32.492615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800937, 0.307955, -0.513482,
		0.521635, 0.062113, 0.850905,
		0.293934, -0.949371, -0.110892,
		33.075195, 33.926407, 32.459347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598755, 34.555515, 32.795822>,  <32.869442, 34.590969, 32.536972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598755, 34.555515, 32.795822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.543507, 34.239185, 32.557320>,  <33.510357, 34.049389, 32.414219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.543507, 34.239185, 32.557320>,  <33.598755, 34.555515, 32.795822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543507, 34.239185, 32.557320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768159, 0.294481, -0.568518,
		0.625183, -0.536546, 0.566802,
		-0.138124, -0.790822, -0.596257,
		33.502068, 34.001938, 32.378441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255459, 34.231529, 32.813667>,  <33.598755, 34.555515, 32.795822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255459, 34.231529, 32.813667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.095177, 34.060043, 32.489780>,  <33.999008, 33.957153, 32.295448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.095177, 34.060043, 32.489780>,  <34.255459, 34.231529, 32.813667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095177, 34.060043, 32.489780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836411, 0.189562, -0.514278,
		0.373971, -0.883328, 0.282625,
		-0.400701, -0.428716, -0.809717,
		33.974968, 33.931427, 32.246864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824516, 33.957298, 32.483273>,  <34.255459, 34.231529, 32.813667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824516, 33.957298, 32.483273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545647, 33.953468, 32.196537>,  <34.378323, 33.951172, 32.024498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545647, 33.953468, 32.196537>,  <34.824516, 33.957298, 32.483273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545647, 33.953468, 32.196537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675114, 0.327621, -0.660974,
		0.241175, -0.944761, -0.221950,
		-0.697178, -0.009569, -0.716835,
		34.336494, 33.950596, 31.981487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134109, 33.647045, 31.866903>,  <34.824516, 33.957298, 32.483273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134109, 33.647045, 31.866903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.837570, 33.862709, 31.707050>,  <34.659645, 33.992107, 31.611139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.837570, 33.862709, 31.707050>,  <35.134109, 33.647045, 31.866903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837570, 33.862709, 31.707050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645525, 0.409995, -0.644361,
		-0.183567, -0.735670, -0.651992,
		-0.741350, 0.539160, -0.399632,
		34.615166, 34.024456, 31.587160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116123, 33.576962, 31.139376>,  <35.134109, 33.647045, 31.866903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116123, 33.576962, 31.139376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932476, 33.931122, 31.168415>,  <34.822289, 34.143620, 31.185839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.932476, 33.931122, 31.168415>,  <35.116123, 33.576962, 31.139376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932476, 33.931122, 31.168415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548457, 0.346784, -0.760878,
		-0.698860, -0.309517, -0.644821,
		-0.459118, 0.885404, 0.072597,
		34.794739, 34.196743, 31.190193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900684, 33.730679, 30.496029>,  <35.116123, 33.576962, 31.139376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900684, 33.730679, 30.496029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.916000, 34.081097, 30.688309>,  <34.925190, 34.291348, 30.803677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.916000, 34.081097, 30.688309>,  <34.900684, 33.730679, 30.496029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916000, 34.081097, 30.688309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399583, 0.427494, -0.810915,
		-0.915897, 0.223132, -0.333684,
		0.038293, 0.876049, 0.480700,
		34.927486, 34.343910, 30.832520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567616, 34.205257, 30.027067>,  <34.900684, 33.730679, 30.496029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567616, 34.205257, 30.027067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.812401, 34.390240, 30.283703>,  <34.959270, 34.501228, 30.437685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.812401, 34.390240, 30.283703>,  <34.567616, 34.205257, 30.027067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812401, 34.390240, 30.283703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288705, 0.624624, -0.725599,
		-0.736312, 0.629268, 0.248731,
		0.611959, 0.462457, 0.641591,
		34.995987, 34.528976, 30.476181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425282, 34.906891, 29.819935>,  <34.567616, 34.205257, 30.027067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425282, 34.906891, 29.819935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776173, 34.904484, 30.011948>,  <34.986710, 34.903038, 30.127155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776173, 34.904484, 30.011948>,  <34.425282, 34.906891, 29.819935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776173, 34.904484, 30.011948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439724, 0.411316, -0.798412,
		-0.192641, 0.911473, 0.363465,
		0.877230, -0.006018, 0.480033,
		35.039341, 34.902679, 30.155958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791397, 35.425121, 29.535851>,  <34.425282, 34.906891, 29.819935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791397, 35.425121, 29.535851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.084049, 35.232376, 29.728735>,  <35.259640, 35.116730, 29.844465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.084049, 35.232376, 29.728735>,  <34.791397, 35.425121, 29.535851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084049, 35.232376, 29.728735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644001, 0.256573, -0.720717,
		0.223563, 0.837842, 0.498036,
		0.731630, -0.481861, 0.482211,
		35.303539, 35.087818, 29.873398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385628, 35.850811, 29.499176>,  <34.791397, 35.425121, 29.535851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385628, 35.850811, 29.499176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512287, 35.476036, 29.558336>,  <35.588284, 35.251171, 29.593832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512287, 35.476036, 29.558336>,  <35.385628, 35.850811, 29.499176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512287, 35.476036, 29.558336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854847, 0.214311, -0.472554,
		0.411058, 0.276068, 0.868803,
		0.316651, -0.936940, 0.147901,
		35.607281, 35.194954, 29.602707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035141, 36.002720, 29.377670>,  <35.385628, 35.850811, 29.499176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035141, 36.002720, 29.377670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009163, 35.603909, 29.394243>,  <35.993576, 35.364620, 29.404186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.009163, 35.603909, 29.394243>,  <36.035141, 36.002720, 29.377670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009163, 35.603909, 29.394243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805765, -0.076886, -0.587223,
		0.588663, -0.004752, 0.808364,
		-0.064942, -0.997029, 0.041430,
		35.989681, 35.304798, 29.406672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645622, 35.680592, 29.534746>,  <36.035141, 36.002720, 29.377670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645622, 35.680592, 29.534746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475613, 35.358356, 29.369635>,  <36.373608, 35.165016, 29.270567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475613, 35.358356, 29.369635>,  <36.645622, 35.680592, 29.534746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475613, 35.358356, 29.369635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720421, -0.024958, -0.693088,
		0.548039, -0.591954, 0.590968,
		-0.425025, -0.805585, -0.412778,
		36.348106, 35.116680, 29.245802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170673, 35.110897, 29.472158>,  <36.645622, 35.680592, 29.534746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170673, 35.110897, 29.472158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.878029, 35.102356, 29.199602>,  <36.702442, 35.097233, 29.036068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.878029, 35.102356, 29.199602>,  <37.170673, 35.110897, 29.472158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878029, 35.102356, 29.199602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679879, -0.096324, -0.726971,
		-0.050111, -0.995121, 0.084989,
		-0.731610, -0.021353, -0.681388,
		36.658546, 35.095951, 28.995186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294010, 34.591595, 29.096710>,  <37.170673, 35.110897, 29.472158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294010, 34.591595, 29.096710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.074554, 34.819435, 28.851910>,  <36.942879, 34.956139, 28.705029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.074554, 34.819435, 28.851910>,  <37.294010, 34.591595, 29.096710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074554, 34.819435, 28.851910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616777, -0.218434, -0.756223,
		-0.564426, -0.792365, -0.231474,
		-0.548643, 0.569600, -0.612003,
		36.909962, 34.990314, 28.668308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428661, 34.303658, 28.529568>,  <37.294010, 34.591595, 29.096710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428661, 34.303658, 28.529568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274326, 34.663589, 28.448149>,  <37.181725, 34.879551, 28.399298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274326, 34.663589, 28.448149>,  <37.428661, 34.303658, 28.529568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274326, 34.663589, 28.448149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799781, 0.216262, -0.559983,
		-0.459872, -0.378854, -0.803111,
		-0.385834, 0.899834, -0.203548,
		37.158577, 34.933540, 28.387085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.198662, 34.184895, 27.427715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.213638, 34.553623, 27.582039>,  <37.222626, 34.774860, 27.674633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.213638, 34.553623, 27.582039>,  <37.198662, 34.184895, 27.427715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213638, 34.553623, 27.582039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750625, 0.228915, -0.619807,
		-0.659667, 0.312806, -0.683368,
		0.037446, 0.921819, 0.385808,
		37.224873, 34.830170, 27.697781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125217, 34.513855, 26.853745>,  <37.198662, 34.184895, 27.427715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125217, 34.513855, 26.853745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267681, 34.796650, 27.098143>,  <37.353161, 34.966328, 27.244781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267681, 34.796650, 27.098143>,  <37.125217, 34.513855, 26.853745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267681, 34.796650, 27.098143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598348, 0.329684, -0.730266,
		-0.717726, 0.625681, -0.305604,
		0.356160, 0.706988, 0.610998,
		37.374531, 35.008747, 27.281443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185566, 35.055527, 26.398426>,  <37.125217, 34.513855, 26.853745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185566, 35.055527, 26.398426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.408646, 35.171036, 26.709703>,  <37.542492, 35.240341, 26.896469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.408646, 35.171036, 26.709703>,  <37.185566, 35.055527, 26.398426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408646, 35.171036, 26.709703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672239, 0.392811, -0.627531,
		-0.486899, 0.873102, 0.024942,
		0.557696, 0.288777, 0.778192,
		37.575954, 35.257668, 26.943161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434677, 35.718021, 26.265005>,  <37.185566, 35.055527, 26.398426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434677, 35.718021, 26.265005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.685913, 35.556995, 26.531372>,  <37.836655, 35.460381, 26.691193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.685913, 35.556995, 26.531372>,  <37.434677, 35.718021, 26.265005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685913, 35.556995, 26.531372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773165, 0.226212, -0.592490,
		0.087879, 0.886999, 0.453333,
		0.628087, -0.402568, 0.665917,
		37.874340, 35.436226, 26.731148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038387, 36.228527, 26.221504>,  <37.434677, 35.718021, 26.265005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038387, 36.228527, 26.221504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.172874, 35.886444, 26.379278>,  <38.253567, 35.681194, 26.473944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.172874, 35.886444, 26.379278>,  <38.038387, 36.228527, 26.221504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172874, 35.886444, 26.379278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808526, 0.047338, -0.586554,
		0.482952, 0.516123, 0.707371,
		0.336220, -0.855205, 0.394437,
		38.273739, 35.629883, 26.497610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730083, 36.401836, 26.476046>,  <38.038387, 36.228527, 26.221504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730083, 36.401836, 26.476046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.706852, 36.006397, 26.420483>,  <38.692913, 35.769135, 26.387146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.706852, 36.006397, 26.420483>,  <38.730083, 36.401836, 26.476046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706852, 36.006397, 26.420483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865171, 0.019578, -0.501095,
		0.498102, -0.149281, 0.854172,
		-0.058081, -0.988601, -0.138905,
		38.689426, 35.709816, 26.378811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352375, 36.149590, 26.480173>,  <38.730083, 36.401836, 26.476046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352375, 36.149590, 26.480173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175037, 35.825935, 26.325899>,  <39.068634, 35.631744, 26.233335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.175037, 35.825935, 26.325899>,  <39.352375, 36.149590, 26.480173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175037, 35.825935, 26.325899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731803, -0.078265, -0.677007,
		0.517603, -0.582390, 0.626824,
		-0.443340, -0.809133, -0.385685,
		39.042034, 35.583195, 26.210194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888393, 35.684216, 26.391966>,  <39.352375, 36.149590, 26.480173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888393, 35.684216, 26.391966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.597885, 35.544838, 26.154945>,  <39.423580, 35.461212, 26.012733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.597885, 35.544838, 26.154945>,  <39.888393, 35.684216, 26.391966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597885, 35.544838, 26.154945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644312, -0.044649, -0.763459,
		0.239566, -0.936266, 0.256934,
		-0.726272, -0.348444, -0.592551,
		39.380005, 35.440304, 25.977180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109646, 35.031170, 26.253717>,  <39.888393, 35.684216, 26.391966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109646, 35.031170, 26.253717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888111, 35.193848, 25.963100>,  <39.755188, 35.291454, 25.788731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888111, 35.193848, 25.963100>,  <40.109646, 35.031170, 26.253717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888111, 35.193848, 25.963100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720710, -0.202794, -0.662911,
		-0.416938, -0.890774, -0.180790,
		-0.553841, 0.406690, -0.726543,
		39.721958, 35.315853, 25.745138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313026, 34.708427, 25.749203>,  <40.109646, 35.031170, 26.253717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313026, 34.708427, 25.749203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.143215, 35.031925, 25.586376>,  <40.041328, 35.226025, 25.488680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.143215, 35.031925, 25.586376>,  <40.313026, 34.708427, 25.749203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143215, 35.031925, 25.586376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705979, 0.014176, -0.708090,
		-0.566897, -0.587984, -0.576978,
		-0.424525, 0.808748, -0.407068,
		40.015858, 35.274551, 25.464256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270382, 34.579144, 24.977207>,  <40.313026, 34.708427, 25.749203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270382, 34.579144, 24.977207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.227501, 34.975517, 25.009604>,  <40.201771, 35.213341, 25.029041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.227501, 34.975517, 25.009604>,  <40.270382, 34.579144, 24.977207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227501, 34.975517, 25.009604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581656, 0.128573, -0.803210,
		-0.806340, -0.038999, -0.590165,
		-0.107203, 0.990933, 0.080990,
		40.195339, 35.272797, 25.033901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233997, 34.775425, 24.233610>,  <40.270382, 34.579144, 24.977207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233997, 34.775425, 24.233610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.321003, 35.104492, 24.443720>,  <40.373207, 35.301933, 24.569786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.321003, 35.104492, 24.443720>,  <40.233997, 34.775425, 24.233610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321003, 35.104492, 24.443720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602598, 0.310164, -0.735305,
		-0.767829, 0.476469, -0.428270,
		0.217516, 0.822664, 0.525272,
		40.386257, 35.351292, 24.601301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103916, 35.319057, 23.800369>,  <40.233997, 34.775425, 24.233610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103916, 35.319057, 23.800369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369392, 35.452515, 24.068157>,  <40.528679, 35.532589, 24.228830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369392, 35.452515, 24.068157>,  <40.103916, 35.319057, 23.800369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369392, 35.452515, 24.068157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580971, 0.333811, -0.742323,
		-0.471150, 0.881618, 0.027710,
		0.663694, 0.333647, 0.669469,
		40.568501, 35.552608, 24.268997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354347, 36.033058, 23.592772>,  <40.103916, 35.319057, 23.800369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354347, 36.033058, 23.592772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.642765, 35.913677, 23.842899>,  <40.815815, 35.842049, 23.992975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.642765, 35.913677, 23.842899>,  <40.354347, 36.033058, 23.592772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642765, 35.913677, 23.842899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679281, 0.482467, -0.552995,
		-0.136654, 0.823500, 0.550611,
		0.721043, -0.298450, 0.625319,
		40.859077, 35.824142, 24.030495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790630, 36.601017, 23.603058>,  <40.354347, 36.033058, 23.592772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790630, 36.601017, 23.603058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.013702, 36.312904, 23.768072>,  <41.147545, 36.140038, 23.867081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.013702, 36.312904, 23.768072>,  <40.790630, 36.601017, 23.603058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013702, 36.312904, 23.768072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829868, 0.473238, -0.295575,
		0.017670, 0.507186, 0.861655,
		0.557680, -0.720283, 0.412536,
		41.181007, 36.096821, 23.891832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238266, 36.936340, 24.102661>,  <40.790630, 36.601017, 23.603058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238266, 36.936340, 24.102661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.406147, 36.592247, 23.986832>,  <41.506878, 36.385792, 23.917334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.406147, 36.592247, 23.986832>,  <41.238266, 36.936340, 24.102661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406147, 36.592247, 23.986832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766681, 0.506760, -0.394201,
		0.485848, -0.056563, 0.872211,
		0.419705, -0.860230, -0.289574,
		41.532059, 36.334179, 23.899960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994381, 37.036736, 24.255836>,  <41.238266, 36.936340, 24.102661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994381, 37.036736, 24.255836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.946487, 36.729427, 24.004305>,  <41.917751, 36.545044, 23.853386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.946487, 36.729427, 24.004305>,  <41.994381, 37.036736, 24.255836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946487, 36.729427, 24.004305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773044, 0.325281, -0.544606,
		0.622950, -0.551319, 0.554960,
		-0.119733, -0.768271, -0.628828,
		41.910568, 36.498947, 23.815657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700653, 36.671658, 24.217852>,  <41.994381, 37.036736, 24.255836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700653, 36.671658, 24.217852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.493660, 36.571629, 23.890518>,  <42.369465, 36.511612, 23.694118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.493660, 36.571629, 23.890518>,  <42.700653, 36.671658, 24.217852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493660, 36.571629, 23.890518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727661, 0.374594, -0.574620,
		0.450241, -0.892828, -0.011877,
		-0.517486, -0.250076, -0.818334,
		42.338413, 36.496605, 23.645018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201485, 36.552757, 23.719557>,  <42.700653, 36.671658, 24.217852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201485, 36.552757, 23.719557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.876495, 36.607971, 23.492987>,  <42.681503, 36.641098, 23.357044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.876495, 36.607971, 23.492987>,  <43.201485, 36.552757, 23.719557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876495, 36.607971, 23.492987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577026, 0.329134, -0.747471,
		0.083252, -0.934140, -0.347062,
		-0.812472, 0.138035, -0.566424,
		42.632755, 36.649380, 23.323059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282608, 36.092796, 23.000479>,  <43.201485, 36.552757, 23.719557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282608, 36.092796, 23.000479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.025379, 36.392113, 22.935345>,  <42.871040, 36.571701, 22.896265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.025379, 36.392113, 22.935345>,  <43.282608, 36.092796, 23.000479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025379, 36.392113, 22.935345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550921, 0.304356, -0.777081,
		-0.531923, -0.589430, -0.607972,
		-0.643075, 0.748291, -0.162836,
		42.832458, 36.616600, 22.886494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214115, 36.195824, 22.266594>,  <43.282608, 36.092796, 23.000479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214115, 36.195824, 22.266594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.061024, 36.534431, 22.414608>,  <42.969170, 36.737595, 22.503416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.061024, 36.534431, 22.414608>,  <43.214115, 36.195824, 22.266594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061024, 36.534431, 22.414608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382329, 0.509750, -0.770701,
		-0.841039, -0.153491, -0.518743,
		-0.382725, 0.846520, 0.370035,
		42.946205, 36.788387, 22.525620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904476, 36.587460, 21.650871>,  <43.214115, 36.195824, 22.266594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904476, 36.587460, 21.650871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.998367, 36.827778, 21.956537>,  <43.054703, 36.971970, 22.139936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.998367, 36.827778, 21.956537>,  <42.904476, 36.587460, 21.650871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.998367, 36.827778, 21.956537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457514, 0.625329, -0.632175,
		-0.857661, 0.498006, -0.128088,
		0.234730, 0.600794, 0.764165,
		43.068787, 37.008015, 22.185787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623024, 37.287090, 21.426702>,  <42.904476, 36.587460, 21.650871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623024, 37.287090, 21.426702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.910889, 37.314274, 21.703098>,  <43.083607, 37.330585, 21.868937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.910889, 37.314274, 21.703098>,  <42.623024, 37.287090, 21.426702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910889, 37.314274, 21.703098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506361, 0.629557, -0.589285,
		-0.475065, 0.773977, 0.418657,
		0.719661, 0.067958, 0.690992,
		43.126785, 37.334660, 21.910397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765572, 38.016273, 21.547108>,  <42.623024, 37.287090, 21.426702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765572, 38.016273, 21.547108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.082310, 37.799847, 21.660406>,  <43.272350, 37.669991, 21.728386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.082310, 37.799847, 21.660406>,  <42.765572, 38.016273, 21.547108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082310, 37.799847, 21.660406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610397, 0.716374, -0.337971,
		-0.020044, 0.440512, 0.897523,
		0.791842, -0.541071, 0.283246,
		43.319862, 37.637524, 21.745380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553799, 38.718746, 21.707537>,  <42.765572, 38.016273, 21.547108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553799, 38.718746, 21.707537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.354450, 38.833641, 21.380337>,  <42.234840, 38.902580, 21.184017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.354450, 38.833641, 21.380337>,  <42.553799, 38.718746, 21.707537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354450, 38.833641, 21.380337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866707, -0.188104, 0.461990,
		-0.021166, 0.939206, 0.342700,
		-0.498368, 0.287242, -0.817999,
		42.204941, 38.919815, 21.134937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020412, 39.063980, 21.907278>,  <42.553799, 38.718746, 21.707537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020412, 39.063980, 21.907278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.906334, 38.948204, 21.541790>,  <41.837887, 38.878738, 21.322496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.906334, 38.948204, 21.541790>,  <42.020412, 39.063980, 21.907278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906334, 38.948204, 21.541790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920150, -0.184175, 0.345550,
		-0.268301, 0.939310, -0.213804,
		-0.285201, -0.289443, -0.913720,
		41.820774, 38.861370, 21.267673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459122, 39.411346, 21.795303>,  <42.020412, 39.063980, 21.907278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459122, 39.411346, 21.795303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.437775, 39.096191, 21.549902>,  <41.424965, 38.907101, 21.402660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.437775, 39.096191, 21.549902>,  <41.459122, 39.411346, 21.795303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437775, 39.096191, 21.549902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928487, -0.186960, 0.320871,
		-0.367511, 0.586757, -0.721562,
		-0.053370, -0.787885, -0.613506,
		41.421764, 38.859825, 21.365850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828915, 39.457596, 21.483950>,  <41.459122, 39.411346, 21.795303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828915, 39.457596, 21.483950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.943192, 39.075157, 21.457825>,  <41.011757, 38.845695, 21.442150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.943192, 39.075157, 21.457825>,  <40.828915, 39.457596, 21.483950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943192, 39.075157, 21.457825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945362, -0.292340, 0.144321,
		-0.157078, 0.020511, -0.987373,
		0.285688, -0.956095, -0.065311,
		41.028896, 38.788330, 21.438231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309055, 39.114090, 21.093695>,  <40.828915, 39.457596, 21.483950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309055, 39.114090, 21.093695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.504456, 38.831371, 21.298361>,  <40.621696, 38.661739, 21.421162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.504456, 38.831371, 21.298361>,  <40.309055, 39.114090, 21.093695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504456, 38.831371, 21.298361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871482, -0.366040, 0.326394,
		-0.043405, -0.605353, -0.794773,
		0.488502, -0.706798, 0.511667,
		40.651005, 38.619331, 21.451860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768578, 38.659245, 21.101954>,  <40.309055, 39.114090, 21.093695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768578, 38.659245, 21.101954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.027264, 38.464161, 21.336523>,  <40.182476, 38.347111, 21.477264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.027264, 38.464161, 21.336523>,  <39.768578, 38.659245, 21.101954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027264, 38.464161, 21.336523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759752, -0.344038, 0.551737,
		-0.067336, -0.802356, -0.593036,
		0.646717, -0.487712, 0.586425,
		40.221279, 38.317848, 21.512451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490139, 37.907421, 21.179609>,  <39.768578, 38.659245, 21.101954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490139, 37.907421, 21.179609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.742195, 37.988281, 21.479492>,  <39.893429, 38.036797, 21.659422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.742195, 37.988281, 21.479492>,  <39.490139, 37.907421, 21.179609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742195, 37.988281, 21.479492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638294, -0.414952, 0.648379,
		0.442162, -0.887102, -0.132446,
		0.630137, 0.202149, 0.749708,
		39.931236, 38.048927, 21.704405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527149, 37.310833, 21.548300>,  <39.490139, 37.907421, 21.179609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527149, 37.310833, 21.548300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649868, 37.575233, 21.822222>,  <39.723499, 37.733875, 21.986574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649868, 37.575233, 21.822222>,  <39.527149, 37.310833, 21.548300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649868, 37.575233, 21.822222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378996, -0.575155, 0.724954,
		0.873064, -0.481949, 0.074063,
		0.306793, 0.661001, 0.684804,
		39.741905, 37.773533, 22.027662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968029, 36.966591, 21.957554>,  <39.527149, 37.310833, 21.548300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968029, 36.966591, 21.957554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.852421, 37.277882, 22.180563>,  <39.783054, 37.464657, 22.314369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.852421, 37.277882, 22.180563>,  <39.968029, 36.966591, 21.957554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852421, 37.277882, 22.180563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347702, -0.627940, 0.696272,
		0.891948, 0.007385, 0.452078,
		-0.289020, 0.778227, 0.557522,
		39.765717, 37.511349, 22.347820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182243, 36.824997, 22.689985>,  <39.968029, 36.966591, 21.957554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182243, 36.824997, 22.689985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.870861, 37.074371, 22.719210>,  <39.684032, 37.223995, 22.736744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.870861, 37.074371, 22.719210>,  <40.182243, 36.824997, 22.689985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870861, 37.074371, 22.719210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331500, -0.507156, 0.795551,
		0.533028, 0.595080, 0.601466,
		-0.778453, 0.623437, 0.073059,
		39.637325, 37.261402, 22.741127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057167, 37.004025, 23.423809>,  <40.182243, 36.824997, 22.689985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057167, 37.004025, 23.423809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.718536, 37.082363, 23.225840>,  <39.515358, 37.129364, 23.107058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.718536, 37.082363, 23.225840>,  <40.057167, 37.004025, 23.423809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718536, 37.082363, 23.225840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524938, -0.460949, 0.715518,
		-0.088005, 0.865547, 0.493035,
		-0.846579, 0.195843, -0.494924,
		39.464561, 37.141117, 23.077362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513988, 37.115925, 23.994434>,  <40.057167, 37.004025, 23.423809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513988, 37.115925, 23.994434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.315781, 37.067677, 23.650362>,  <39.196857, 37.038727, 23.443918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.315781, 37.067677, 23.650362>,  <39.513988, 37.115925, 23.994434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315781, 37.067677, 23.650362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633385, -0.627488, 0.452859,
		-0.594379, 0.769226, 0.234531,
		-0.495517, -0.120621, -0.860182,
		39.167126, 37.031490, 23.392307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857090, 37.267864, 24.185963>,  <39.513988, 37.115925, 23.994434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857090, 37.267864, 24.185963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.826057, 37.077423, 23.835579>,  <38.807438, 36.963158, 23.625349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.826057, 37.077423, 23.835579>,  <38.857090, 37.267864, 24.185963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826057, 37.077423, 23.835579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723425, -0.577692, 0.378059,
		-0.686031, 0.663019, -0.299612,
		-0.077577, -0.476106, -0.875959,
		38.802784, 36.934589, 23.572792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135075, 37.165745, 23.990759>,  <38.857090, 37.267864, 24.185963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135075, 37.165745, 23.990759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302338, 36.873035, 23.775482>,  <38.402695, 36.697411, 23.646317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302338, 36.873035, 23.775482>,  <38.135075, 37.165745, 23.990759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302338, 36.873035, 23.775482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771063, -0.599156, 0.215579,
		-0.480216, 0.324834, -0.814786,
		0.418157, -0.731776, -0.538192,
		38.427784, 36.653503, 23.614025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609116, 36.866070, 23.650759>,  <38.135075, 37.165745, 23.990759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609116, 36.866070, 23.650759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.885403, 36.577106, 23.637836>,  <38.051174, 36.403728, 23.630083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.885403, 36.577106, 23.637836>,  <37.609116, 36.866070, 23.650759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885403, 36.577106, 23.637836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704437, -0.682284, 0.195594,
		-0.163339, -0.112343, -0.980153,
		0.690716, -0.722404, -0.032305,
		38.092617, 36.360386, 23.628145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434422, 36.415043, 23.087286>,  <37.609116, 36.866070, 23.650759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434422, 36.415043, 23.087286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658695, 36.207668, 23.345543>,  <37.793259, 36.083244, 23.500498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658695, 36.207668, 23.345543>,  <37.434422, 36.415043, 23.087286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658695, 36.207668, 23.345543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827481, -0.379237, 0.414070,
		0.030182, -0.766420, -0.641630,
		0.560682, -0.518439, 0.645645,
		37.826900, 36.052135, 23.539236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189644, 35.636658, 23.101343>,  <37.434422, 36.415043, 23.087286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189644, 35.636658, 23.101343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.370056, 35.722061, 23.447981>,  <37.478302, 35.773304, 23.655964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.370056, 35.722061, 23.447981>,  <37.189644, 35.636658, 23.101343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370056, 35.722061, 23.447981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711171, -0.500691, 0.493501,
		0.539264, -0.838881, -0.073984,
		0.451032, 0.213512, 0.866592,
		37.505367, 35.786114, 23.707958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144032, 35.025158, 23.527382>,  <37.189644, 35.636658, 23.101343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144032, 35.025158, 23.527382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.213566, 35.295151, 23.814205>,  <37.255287, 35.457146, 23.986300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.213566, 35.295151, 23.814205>,  <37.144032, 35.025158, 23.527382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213566, 35.295151, 23.814205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565749, -0.527541, 0.633742,
		0.806045, -0.515843, 0.290167,
		0.173837, 0.674986, 0.717059,
		37.265717, 35.497646, 24.029324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332939, 34.638264, 24.111860>,  <37.144032, 35.025158, 23.527382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332939, 34.638264, 24.111860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.225216, 35.002506, 24.237251>,  <37.160580, 35.221050, 24.312487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.225216, 35.002506, 24.237251>,  <37.332939, 34.638264, 24.111860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225216, 35.002506, 24.237251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492126, -0.409921, 0.767969,
		0.827819, 0.052553, 0.558529,
		-0.269312, 0.910605, 0.313478,
		37.144421, 35.275688, 24.331295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363560, 34.590477, 24.723999>,  <37.332939, 34.638264, 24.111860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363560, 34.590477, 24.723999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.134407, 34.915485, 24.680870>,  <36.996918, 35.110489, 24.654993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.134407, 34.915485, 24.680870>,  <37.363560, 34.590477, 24.723999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134407, 34.915485, 24.680870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558848, -0.290976, 0.776545,
		0.599584, 0.505121, 0.620768,
		-0.572877, 0.812518, -0.107822,
		36.962543, 35.159241, 24.648523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.319653, 34.508362, 30.408802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.022144, 34.729073, 30.257881>,  <35.843639, 34.861500, 30.167328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.022144, 34.729073, 30.257881>,  <36.319653, 34.508362, 30.408802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022144, 34.729073, 30.257881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530508, -0.143865, 0.835383,
		0.406660, 0.821493, 0.399721,
		-0.743767, 0.551772, -0.377304,
		35.799015, 34.894604, 30.144690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182549, 35.002502, 30.972363>,  <36.319653, 34.508362, 30.408802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182549, 35.002502, 30.972363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.863106, 34.944118, 30.738808>,  <35.671440, 34.909088, 30.598675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.863106, 34.944118, 30.738808>,  <36.182549, 35.002502, 30.972363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863106, 34.944118, 30.738808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584819, -0.041009, 0.810127,
		-0.142193, 0.988440, -0.052612,
		-0.798604, -0.145963, -0.583889,
		35.623524, 34.900330, 30.563641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548332, 35.461269, 31.154572>,  <36.182549, 35.002502, 30.972363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548332, 35.461269, 31.154572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.383579, 35.162312, 30.946051>,  <35.284729, 34.982937, 30.820938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.383579, 35.162312, 30.946051>,  <35.548332, 35.461269, 31.154572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383579, 35.162312, 30.946051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748348, -0.048984, 0.661496,
		-0.519935, 0.662571, -0.539137,
		-0.411878, -0.747396, -0.521302,
		35.260017, 34.938091, 30.789660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832554, 35.532612, 31.407774>,  <35.548332, 35.461269, 31.154572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832554, 35.532612, 31.407774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.849522, 35.168957, 31.242039>,  <34.859703, 34.950764, 31.142597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.849522, 35.168957, 31.242039>,  <34.832554, 35.532612, 31.407774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849522, 35.168957, 31.242039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701118, -0.322540, 0.635926,
		-0.711782, 0.263521, -0.651094,
		0.042424, -0.909134, -0.414337,
		34.862247, 34.896217, 31.117737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200447, 35.280033, 31.463396>,  <34.832554, 35.532612, 31.407774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200447, 35.280033, 31.463396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.356297, 34.932846, 31.340219>,  <34.449806, 34.724533, 31.266314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.356297, 34.932846, 31.340219>,  <34.200447, 35.280033, 31.463396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356297, 34.932846, 31.340219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680898, -0.496625, 0.538275,
		-0.620136, -0.000049, -0.784494,
		0.389626, -0.867965, -0.307942,
		34.473183, 34.672455, 31.247837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729137, 34.790020, 31.165798>,  <34.200447, 35.280033, 31.463396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729137, 34.790020, 31.165798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.000542, 34.528866, 31.300482>,  <34.163383, 34.372173, 31.381292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.000542, 34.528866, 31.300482>,  <33.729137, 34.790020, 31.165798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000542, 34.528866, 31.300482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722163, -0.508860, 0.468553,
		-0.134574, -0.561074, -0.816753,
		0.678506, -0.652884, 0.336708,
		34.204094, 34.333000, 31.401495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374165, 34.220341, 31.103245>,  <33.729137, 34.790020, 31.165798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374165, 34.220341, 31.103245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.663197, 34.127422, 31.363682>,  <33.836617, 34.071671, 31.519943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.663197, 34.127422, 31.363682>,  <33.374165, 34.220341, 31.103245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663197, 34.127422, 31.363682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664485, -0.493122, 0.561508,
		0.190631, -0.838373, -0.510676,
		0.722579, -0.232296, 0.651090,
		33.879971, 34.057732, 31.559010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347019, 33.572227, 31.198503>,  <33.374165, 34.220341, 31.103245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347019, 33.572227, 31.198503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.550423, 33.690445, 31.522003>,  <33.672466, 33.761375, 31.716103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.550423, 33.690445, 31.522003>,  <33.347019, 33.572227, 31.198503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550423, 33.690445, 31.522003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621414, -0.524204, 0.582284,
		0.596040, -0.798663, -0.082906,
		0.508508, 0.295545, 0.808747,
		33.702976, 33.779110, 31.764627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425491, 32.954895, 31.647524>,  <33.347019, 33.572227, 31.198503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425491, 32.954895, 31.647524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.437702, 33.289837, 31.865849>,  <33.445026, 33.490803, 31.996843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.437702, 33.289837, 31.865849>,  <33.425491, 32.954895, 31.647524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437702, 33.289837, 31.865849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558094, -0.438739, 0.704301,
		0.829216, -0.326111, 0.453929,
		0.030524, 0.837353, 0.545810,
		33.446861, 33.541042, 32.029591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555405, 32.724808, 32.332237>,  <33.425491, 32.954895, 31.647524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555405, 32.724808, 32.332237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.400249, 33.091789, 32.367599>,  <33.307156, 33.311977, 32.388817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.400249, 33.091789, 32.367599>,  <33.555405, 32.724808, 32.332237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400249, 33.091789, 32.367599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537908, -0.303213, 0.786585,
		0.748463, 0.257555, 0.611121,
		-0.387889, 0.917457, 0.088403,
		33.283882, 33.367027, 32.394119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597279, 32.945145, 33.019035>,  <33.555405, 32.724808, 32.332237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597279, 32.945145, 33.019035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.305294, 33.168095, 32.860798>,  <33.130104, 33.301865, 32.765858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.305294, 33.168095, 32.860798>,  <33.597279, 32.945145, 33.019035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305294, 33.168095, 32.860798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627772, -0.317854, 0.710543,
		0.270301, 0.767007, 0.581926,
		-0.729958, 0.557378, -0.395589,
		33.086308, 33.335308, 32.742123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255531, 33.293133, 33.634178>,  <33.597279, 32.945145, 33.019035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255531, 33.293133, 33.634178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.990902, 33.281845, 33.334438>,  <32.832123, 33.275074, 33.154594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.990902, 33.281845, 33.334438>,  <33.255531, 33.293133, 33.634178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990902, 33.281845, 33.334438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715853, -0.273845, 0.642311,
		-0.223328, 0.961360, 0.160971,
		-0.661573, -0.028215, -0.749349,
		32.792431, 33.273380, 33.109634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554478, 33.245918, 34.275337>,  <33.255531, 33.293133, 33.634178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554478, 33.245918, 34.275337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.748112, 33.557468, 34.115829>,  <33.864292, 33.744396, 34.020123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.748112, 33.557468, 34.115829>,  <33.554478, 33.245918, 34.275337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748112, 33.557468, 34.115829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190269, 0.538518, 0.820850,
		0.854085, -0.321486, 0.408884,
		0.484084, 0.778874, -0.398771,
		33.893337, 33.791130, 33.996197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312164, 33.309143, 34.514267>,  <33.554478, 33.245918, 34.275337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312164, 33.309143, 34.514267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.119179, 33.085011, 34.783566>,  <34.003387, 32.950531, 34.945145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.119179, 33.085011, 34.783566>,  <34.312164, 33.309143, 34.514267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119179, 33.085011, 34.783566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640697, 0.749865, 0.164954,
		-0.597271, -0.351762, -0.720784,
		-0.482466, -0.560327, 0.673246,
		33.974438, 32.916912, 34.985538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088425, 33.806633, 35.134842>,  <34.312164, 33.309143, 34.514267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088425, 33.806633, 35.134842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.874306, 34.076046, 35.338730>,  <33.745834, 34.237694, 35.461063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.874306, 34.076046, 35.338730>,  <34.088425, 33.806633, 35.134842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874306, 34.076046, 35.338730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199139, 0.687080, -0.698759,
		-0.820853, -0.272540, -0.501919,
		-0.535299, 0.673530, 0.509718,
		33.713715, 34.278107, 35.491646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660919, 34.200710, 34.643818>,  <34.088425, 33.806633, 35.134842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660919, 34.200710, 34.643818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.668491, 34.443211, 34.961838>,  <33.673035, 34.588711, 35.152649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.668491, 34.443211, 34.961838>,  <33.660919, 34.200710, 34.643818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668491, 34.443211, 34.961838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030475, 0.794471, -0.606537,
		-0.999356, 0.035713, -0.003433,
		0.018934, 0.606251, 0.795048,
		33.674171, 34.625084, 35.200352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318275, 34.833389, 34.345688>,  <33.660919, 34.200710, 34.643818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318275, 34.833389, 34.345688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.537285, 34.915081, 34.670284>,  <33.668690, 34.964096, 34.865040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.537285, 34.915081, 34.670284>,  <33.318275, 34.833389, 34.345688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537285, 34.915081, 34.670284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297396, 0.858957, -0.416832,
		-0.782163, 0.469557, 0.409559,
		0.547519, 0.204229, 0.811488,
		33.701542, 34.976349, 34.913731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137051, 35.495655, 34.585678>,  <33.318275, 34.833389, 34.345688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137051, 35.495655, 34.585678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.506374, 35.418739, 34.718662>,  <33.727966, 35.372589, 34.798454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.506374, 35.418739, 34.718662>,  <33.137051, 35.495655, 34.585678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506374, 35.418739, 34.718662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313363, 0.877663, -0.362644,
		-0.222056, 0.439013, 0.870608,
		0.923306, -0.192290, 0.332461,
		33.783367, 35.361053, 34.818401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386303, 36.134598, 34.572113>,  <33.137051, 35.495655, 34.585678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386303, 36.134598, 34.572113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.714245, 35.910412, 34.618965>,  <33.911011, 35.775902, 34.647076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.714245, 35.910412, 34.618965>,  <33.386303, 36.134598, 34.572113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714245, 35.910412, 34.618965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551229, 0.717276, -0.426218,
		0.154865, 0.414002, 0.897006,
		0.819856, -0.560462, 0.117128,
		33.960201, 35.742275, 34.654102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914459, 36.606888, 34.784874>,  <33.386303, 36.134598, 34.572113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914459, 36.606888, 34.784874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.077682, 36.289288, 34.604630>,  <34.175617, 36.098728, 34.496483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.077682, 36.289288, 34.604630>,  <33.914459, 36.606888, 34.784874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077682, 36.289288, 34.604630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572801, 0.606999, -0.550864,
		0.710907, -0.033326, 0.702496,
		0.408056, -0.794003, -0.450610,
		34.200100, 36.051086, 34.469448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643623, 36.740482, 34.737568>,  <33.914459, 36.606888, 34.784874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643623, 36.740482, 34.737568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.593323, 36.463524, 34.453377>,  <34.563141, 36.297348, 34.282864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.593323, 36.463524, 34.453377>,  <34.643623, 36.740482, 34.737568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593323, 36.463524, 34.453377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569889, 0.535786, -0.623024,
		0.812042, -0.483237, 0.327214,
		-0.125752, -0.692397, -0.710473,
		34.555595, 36.255806, 34.240234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259171, 36.701904, 34.490849>,  <34.643623, 36.740482, 34.737568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259171, 36.701904, 34.490849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.031467, 36.521786, 34.215698>,  <34.894844, 36.413715, 34.050610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.031467, 36.521786, 34.215698>,  <35.259171, 36.701904, 34.490849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031467, 36.521786, 34.215698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573846, 0.381537, -0.724659,
		0.588763, -0.807255, 0.041208,
		-0.569261, -0.450299, -0.687875,
		34.860687, 36.386696, 34.009335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682377, 36.297737, 34.143917>,  <35.259171, 36.701904, 34.490849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682377, 36.297737, 34.143917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.386017, 36.338322, 33.878353>,  <35.208202, 36.362671, 33.719013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.386017, 36.338322, 33.878353>,  <35.682377, 36.297737, 34.143917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386017, 36.338322, 33.878353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665040, 0.248851, -0.704128,
		0.093773, -0.963213, -0.251849,
		-0.740898, 0.101461, -0.663910,
		35.163746, 36.368759, 33.679180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802956, 35.822510, 33.573822>,  <35.682377, 36.297737, 34.143917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802956, 35.822510, 33.573822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.569752, 36.102413, 33.408691>,  <35.429829, 36.270355, 33.309612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.569752, 36.102413, 33.408691>,  <35.802956, 35.822510, 33.573822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569752, 36.102413, 33.408691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717219, 0.204562, -0.666146,
		-0.381696, -0.684460, -0.621146,
		-0.583013, 0.699763, -0.412828,
		35.394848, 36.312344, 33.284843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940742, 35.840996, 32.903282>,  <35.802956, 35.822510, 33.573822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940742, 35.840996, 32.903282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.760475, 36.196899, 32.932182>,  <35.652313, 36.410442, 32.949520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.760475, 36.196899, 32.932182>,  <35.940742, 35.840996, 32.903282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760475, 36.196899, 32.932182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640189, 0.378538, -0.668480,
		-0.622137, -0.255012, -0.740212,
		-0.450669, 0.889763, 0.072247,
		35.625275, 36.463829, 32.953857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819057, 36.071751, 32.190941>,  <35.940742, 35.840996, 32.903282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819057, 36.071751, 32.190941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.803822, 36.406540, 32.409309>,  <35.794682, 36.607414, 32.540329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.803822, 36.406540, 32.409309>,  <35.819057, 36.071751, 32.190941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803822, 36.406540, 32.409309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493290, 0.490857, -0.718140,
		-0.869031, 0.241945, -0.431564,
		-0.038086, 0.836972, 0.545918,
		35.792397, 36.657631, 32.573086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697346, 36.549637, 31.658422>,  <35.819057, 36.071751, 32.190941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697346, 36.549637, 31.658422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.850628, 36.756363, 31.964640>,  <35.942596, 36.880398, 32.148369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.850628, 36.756363, 31.964640>,  <35.697346, 36.549637, 31.658422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850628, 36.756363, 31.964640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539002, 0.547938, -0.639719,
		-0.750086, 0.657774, -0.068590,
		0.383207, 0.516815, 0.765542,
		35.965591, 36.911407, 32.194302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660206, 37.183643, 31.390562>,  <35.697346, 36.549637, 31.658422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660206, 37.183643, 31.390562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.936695, 37.209198, 31.678486>,  <36.102589, 37.224529, 31.851240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.936695, 37.209198, 31.678486>,  <35.660206, 37.183643, 31.390562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936695, 37.209198, 31.678486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519773, 0.648057, -0.556649,
		-0.502039, 0.758908, 0.414748,
		0.691226, 0.063884, 0.719809,
		36.144062, 37.228363, 31.894428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118755, 37.434418, 31.839405>,  <35.660206, 37.183643, 31.390562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118755, 37.434418, 31.839405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.873795, 37.679379, 31.639435>,  <34.726818, 37.826355, 31.519453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.873795, 37.679379, 31.639435>,  <35.118755, 37.434418, 31.839405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873795, 37.679379, 31.639435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787283, -0.415021, 0.456006,
		0.071780, 0.672842, 0.736295,
		-0.612399, 0.612405, -0.499927,
		34.690075, 37.863102, 31.489456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606369, 37.795235, 32.376049>,  <35.118755, 37.434418, 31.839405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606369, 37.795235, 32.376049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.445408, 37.789204, 32.009914>,  <34.348831, 37.785583, 31.790234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.445408, 37.789204, 32.009914>,  <34.606369, 37.795235, 32.376049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445408, 37.789204, 32.009914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800750, -0.478810, 0.359918,
		-0.443698, 0.877789, 0.180604,
		-0.402407, -0.015076, -0.915337,
		34.324684, 37.784679, 31.735313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914490, 37.931465, 32.495029>,  <34.606369, 37.795235, 32.376049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914490, 37.931465, 32.495029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.910522, 37.786072, 32.122410>,  <33.908142, 37.698833, 31.898838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.910522, 37.786072, 32.122410>,  <33.914490, 37.931465, 32.495029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910522, 37.786072, 32.122410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865987, -0.462665, 0.189755,
		-0.499967, 0.808590, -0.310185,
		-0.009923, -0.363487, -0.931546,
		33.907547, 37.677025, 31.842945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274315, 38.074467, 32.190372>,  <33.914490, 37.931465, 32.495029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274315, 38.074467, 32.190372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.389557, 37.755001, 31.979046>,  <33.458702, 37.563320, 31.852249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.389557, 37.755001, 31.979046>,  <33.274315, 38.074467, 32.190372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389557, 37.755001, 31.979046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865129, -0.453620, 0.213964,
		-0.410543, 0.395420, -0.821643,
		0.288108, -0.798669, -0.528321,
		33.475990, 37.515400, 31.820549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732407, 37.881252, 31.707872>,  <33.274315, 38.074467, 32.190372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732407, 37.881252, 31.707872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.961212, 37.553284, 31.698706>,  <33.098495, 37.356503, 31.693205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.961212, 37.553284, 31.698706>,  <32.732407, 37.881252, 31.707872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961212, 37.553284, 31.698706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818520, -0.572404, 0.048767,
		-0.053103, -0.009138, -0.998547,
		0.572018, -0.819921, -0.022917,
		33.132816, 37.307308, 31.691830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470036, 37.365002, 31.219324>,  <32.732407, 37.881252, 31.707872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470036, 37.365002, 31.219324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.695328, 37.143436, 31.464584>,  <32.830502, 37.010498, 31.611740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.695328, 37.143436, 31.464584>,  <32.470036, 37.365002, 31.219324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695328, 37.143436, 31.464584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780087, -0.601126, 0.173528,
		0.272460, -0.576046, -0.770673,
		0.563232, -0.553912, 0.613149,
		32.864296, 36.977264, 31.648529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367508, 36.718460, 31.003487>,  <32.470036, 37.365002, 31.219324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367508, 36.718460, 31.003487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.513748, 36.648487, 31.369162>,  <32.601490, 36.606503, 31.588566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.513748, 36.648487, 31.369162>,  <32.367508, 36.718460, 31.003487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513748, 36.648487, 31.369162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790575, -0.576748, 0.205800,
		0.491254, -0.797973, -0.349154,
		0.365596, -0.174932, 0.914187,
		32.623428, 36.596008, 31.643417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393112, 36.013199, 31.070848>,  <32.367508, 36.718460, 31.003487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393112, 36.013199, 31.070848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.402454, 36.162319, 31.441895>,  <32.408062, 36.251793, 31.664522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.402454, 36.162319, 31.441895>,  <32.393112, 36.013199, 31.070848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402454, 36.162319, 31.441895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574979, -0.754041, 0.317524,
		0.817835, -0.540776, 0.196743,
		0.023358, 0.372805, 0.927616,
		32.409462, 36.274162, 31.720179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174969, 35.429363, 31.322100>,  <32.393112, 36.013199, 31.070848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174969, 35.429363, 31.322100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.148220, 35.707241, 31.608576>,  <32.132172, 35.873966, 31.780460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.148220, 35.707241, 31.608576>,  <32.174969, 35.429363, 31.322100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148220, 35.707241, 31.608576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642948, -0.578901, 0.501489,
		0.762984, -0.426935, 0.485367,
		-0.066876, 0.694695, 0.716189,
		32.128159, 35.915649, 31.823433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983788, 35.063366, 31.965281>,  <32.174969, 35.429363, 31.322100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983788, 35.063366, 31.965281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.856215, 35.434959, 32.040398>,  <31.779671, 35.657917, 32.085468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.856215, 35.434959, 32.040398>,  <31.983788, 35.063366, 31.965281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856215, 35.434959, 32.040398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816339, -0.369926, 0.443561,
		0.481532, -0.011838, 0.876349,
		-0.318934, 0.928986, 0.187795,
		31.760534, 35.713654, 32.096737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527639, 35.003159, 32.600548>,  <31.983788, 35.063366, 31.965281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527639, 35.003159, 32.600548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.407976, 35.341206, 32.423332>,  <31.336178, 35.544033, 32.317005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.407976, 35.341206, 32.423332>,  <31.527639, 35.003159, 32.600548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407976, 35.341206, 32.423332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945526, -0.200074, 0.256811,
		0.128395, 0.495728, 0.858934,
		-0.299159, 0.845118, -0.443035,
		31.318228, 35.594742, 32.290421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887794, 35.269005, 32.981010>,  <31.527639, 35.003159, 32.600548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887794, 35.269005, 32.981010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.890120, 35.445702, 32.622162>,  <30.891516, 35.551720, 32.406853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.890120, 35.445702, 32.622162>,  <30.887794, 35.269005, 32.981010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890120, 35.445702, 32.622162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995055, -0.086399, -0.048991,
		-0.099152, 0.892974, 0.439052,
		0.005814, 0.441739, -0.897125,
		30.891863, 35.578224, 32.353024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.694870, 40.092525, 29.494692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428715, 40.053082, 29.198711>,  <36.269020, 40.029415, 29.021122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428715, 40.053082, 29.198711>,  <36.694870, 40.092525, 29.494692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428715, 40.053082, 29.198711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652527, -0.404617, 0.640698,
		-0.362579, 0.909154, 0.204880,
		-0.665390, -0.098614, -0.739953,
		36.229099, 40.023499, 28.976725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048546, 40.367111, 29.793724>,  <36.694870, 40.092525, 29.494692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048546, 40.367111, 29.793724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948067, 40.164703, 29.463669>,  <35.887779, 40.043259, 29.265636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948067, 40.164703, 29.463669>,  <36.048546, 40.367111, 29.793724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948067, 40.164703, 29.463669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812615, -0.352908, 0.463803,
		-0.525889, 0.787023, -0.322547,
		-0.251194, -0.506015, -0.825137,
		35.872707, 40.012897, 29.216127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296410, 40.491619, 29.749432>,  <36.048546, 40.367111, 29.793724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296410, 40.491619, 29.749432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409229, 40.163349, 29.550655>,  <35.476921, 39.966389, 29.431391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409229, 40.163349, 29.550655>,  <35.296410, 40.491619, 29.749432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409229, 40.163349, 29.550655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607124, -0.553739, 0.569889,
		-0.742866, 0.140968, -0.654430,
		0.282047, -0.820671, -0.496939,
		35.493843, 39.917149, 29.401573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601276, 40.057140, 29.738991>,  <35.296410, 40.491619, 29.749432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601276, 40.057140, 29.738991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884525, 39.803207, 29.615349>,  <35.054474, 39.650848, 29.541164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884525, 39.803207, 29.615349>,  <34.601276, 40.057140, 29.738991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884525, 39.803207, 29.615349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295756, -0.664195, 0.686567,
		-0.641160, -0.394757, -0.658089,
		0.708126, -0.634833, -0.309103,
		35.096962, 39.612759, 29.522617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265484, 39.396873, 29.651363>,  <34.601276, 40.057140, 29.738991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265484, 39.396873, 29.651363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652645, 39.334595, 29.730278>,  <34.884941, 39.297230, 29.777626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652645, 39.334595, 29.730278>,  <34.265484, 39.396873, 29.651363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652645, 39.334595, 29.730278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246338, -0.743282, 0.621973,
		0.049803, -0.650609, -0.757778,
		0.967904, -0.155694, 0.197287,
		34.943016, 39.287888, 29.789465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298092, 38.666660, 29.726166>,  <34.265484, 39.396873, 29.651363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298092, 38.666660, 29.726166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639008, 38.790100, 29.895103>,  <34.843555, 38.864166, 29.996466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639008, 38.790100, 29.895103>,  <34.298092, 38.666660, 29.726166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639008, 38.790100, 29.895103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142827, -0.639441, 0.755457,
		0.503201, -0.704187, -0.500909,
		0.852285, 0.308603, 0.422344,
		34.894691, 38.882683, 30.021807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667213, 37.998066, 29.790874>,  <34.298092, 38.666660, 29.726166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667213, 37.998066, 29.790874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786152, 38.272648, 30.056316>,  <34.857513, 38.437397, 30.215582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786152, 38.272648, 30.056316>,  <34.667213, 37.998066, 29.790874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786152, 38.272648, 30.056316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322140, -0.582154, 0.746541,
		0.898784, -0.435753, 0.048034,
		0.297344, 0.686452, 0.663604,
		34.875355, 38.478584, 30.255398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994717, 37.604259, 30.279966>,  <34.667213, 37.998066, 29.790874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994717, 37.604259, 30.279966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948967, 37.953724, 30.469124>,  <34.921516, 38.163403, 30.582619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948967, 37.953724, 30.469124>,  <34.994717, 37.604259, 30.279966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948967, 37.953724, 30.469124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320655, -0.483004, 0.814793,
		0.940265, -0.058443, 0.335389,
		-0.114375, 0.873666, 0.472892,
		34.914654, 38.215824, 30.610991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447365, 37.613583, 30.836197>,  <34.994717, 37.604259, 30.279966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447365, 37.613583, 30.836197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169792, 37.881813, 30.941109>,  <35.003250, 38.042751, 31.004057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169792, 37.881813, 30.941109>,  <35.447365, 37.613583, 30.836197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169792, 37.881813, 30.941109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271598, -0.581116, 0.767163,
		0.666855, 0.461123, 0.585380,
		-0.693930, 0.670574, 0.262280,
		34.961613, 38.082985, 31.019793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012531, 37.913429, 31.260977>,  <35.447365, 37.613583, 30.836197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012531, 37.913429, 31.260977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276672, 37.746616, 31.510784>,  <36.435158, 37.646530, 31.660669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276672, 37.746616, 31.510784>,  <36.012531, 37.913429, 31.260977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276672, 37.746616, 31.510784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750325, 0.332285, -0.571488,
		0.030810, 0.845974, 0.532333,
		0.660351, -0.417030, 0.624518,
		36.474777, 37.621506, 31.698139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507996, 38.430904, 31.478512>,  <36.012531, 37.913429, 31.260977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507996, 38.430904, 31.478512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675350, 38.071136, 31.529099>,  <36.775764, 37.855274, 31.559450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675350, 38.071136, 31.529099>,  <36.507996, 38.430904, 31.478512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675350, 38.071136, 31.529099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838955, 0.329346, -0.433227,
		0.348002, 0.287357, 0.892368,
		0.418389, -0.899420, 0.126466,
		36.800865, 37.801311, 31.567038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167538, 38.688004, 31.482201>,  <36.507996, 38.430904, 31.478512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167538, 38.688004, 31.482201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270306, 38.304447, 31.433992>,  <37.331966, 38.074314, 31.405067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270306, 38.304447, 31.433992>,  <37.167538, 38.688004, 31.482201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270306, 38.304447, 31.433992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950475, 0.273270, -0.148055,
		0.174904, -0.076516, 0.981608,
		0.256916, -0.958889, -0.120523,
		37.347382, 38.016781, 31.397835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705257, 38.567936, 31.964251>,  <37.167538, 38.688004, 31.482201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705257, 38.567936, 31.964251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720936, 38.300320, 31.667374>,  <37.730343, 38.139751, 31.489248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720936, 38.300320, 31.667374>,  <37.705257, 38.567936, 31.964251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720936, 38.300320, 31.667374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977522, 0.179660, -0.110335,
		0.207161, -0.721184, 0.661044,
		0.039192, -0.669041, -0.742191,
		37.732693, 38.099606, 31.444715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418991, 38.318993, 31.988163>,  <37.705257, 38.567936, 31.964251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418991, 38.318993, 31.988163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301388, 38.147831, 31.646296>,  <38.230827, 38.045135, 31.441175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301388, 38.147831, 31.646296>,  <38.418991, 38.318993, 31.988163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301388, 38.147831, 31.646296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949365, -0.027119, -0.313002,
		0.110756, -0.903418, 0.414208,
		-0.294005, -0.427901, -0.854671,
		38.213188, 38.019459, 31.389894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903240, 37.883785, 31.784908>,  <38.418991, 38.318993, 31.988163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903240, 37.883785, 31.784908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710258, 37.937214, 31.438637>,  <38.594471, 37.969269, 31.230873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710258, 37.937214, 31.438637>,  <38.903240, 37.883785, 31.784908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710258, 37.937214, 31.438637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875305, 0.036418, -0.482198,
		-0.032881, -0.990370, -0.134485,
		-0.482452, 0.133570, -0.865678,
		38.565521, 37.977283, 31.178934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029556, 37.296909, 31.305498>,  <38.903240, 37.883785, 31.784908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029556, 37.296909, 31.305498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935627, 37.607880, 31.072100>,  <38.879269, 37.794460, 30.932060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935627, 37.607880, 31.072100>,  <39.029556, 37.296909, 31.305498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935627, 37.607880, 31.072100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822634, -0.160829, -0.545351,
		-0.517813, -0.608065, -0.601770,
		-0.234827, 0.777426, -0.583494,
		38.865177, 37.841106, 30.897051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203022, 37.145737, 30.583593>,  <39.029556, 37.296909, 31.305498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203022, 37.145737, 30.583593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170341, 37.540024, 30.524693>,  <39.150734, 37.776596, 30.489351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170341, 37.540024, 30.524693>,  <39.203022, 37.145737, 30.583593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170341, 37.540024, 30.524693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697611, -0.048958, -0.714802,
		-0.711803, -0.161126, -0.683649,
		-0.081703, 0.985719, -0.147252,
		39.145832, 37.835739, 30.480516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115452, 37.380512, 29.823502>,  <39.203022, 37.145737, 30.583593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115452, 37.380512, 29.823502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296837, 37.675900, 30.023115>,  <39.405666, 37.853134, 30.142883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296837, 37.675900, 30.023115>,  <39.115452, 37.380512, 29.823502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296837, 37.675900, 30.023115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704159, 0.046407, -0.708524,
		-0.546384, 0.672685, -0.498958,
		0.453459, 0.738472, 0.499033,
		39.432873, 37.897442, 30.172825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243050, 37.972866, 29.350891>,  <39.115452, 37.380512, 29.823502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243050, 37.972866, 29.350891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509068, 38.014332, 29.646719>,  <39.668678, 38.039211, 29.824217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509068, 38.014332, 29.646719>,  <39.243050, 37.972866, 29.350891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509068, 38.014332, 29.646719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720109, 0.173383, -0.671849,
		-0.197878, 0.979383, 0.040657,
		0.665047, 0.103667, 0.739571,
		39.708580, 38.045433, 29.868589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606045, 38.474384, 29.138887>,  <39.243050, 37.972866, 29.350891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606045, 38.474384, 29.138887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860954, 38.326382, 29.409288>,  <40.013901, 38.237579, 29.571529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860954, 38.326382, 29.409288>,  <39.606045, 38.474384, 29.138887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860954, 38.326382, 29.409288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766834, 0.217431, -0.603895,
		0.076460, 0.903228, 0.422295,
		0.637275, -0.370004, 0.676001,
		40.052135, 38.215382, 29.612089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947388, 39.044491, 29.196604>,  <39.606045, 38.474384, 29.138887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947388, 39.044491, 29.196604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167641, 38.768188, 29.384075>,  <40.299793, 38.602409, 29.496557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167641, 38.768188, 29.384075>,  <39.947388, 39.044491, 29.196604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167641, 38.768188, 29.384075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745395, 0.154146, -0.648556,
		0.375748, 0.706469, 0.599763,
		0.550636, -0.690754, 0.468678,
		40.332832, 38.560963, 29.524679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540661, 39.482594, 29.228769>,  <39.947388, 39.044491, 29.196604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540661, 39.482594, 29.228769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604656, 39.090660, 29.276667>,  <40.643055, 38.855499, 29.305405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604656, 39.090660, 29.276667>,  <40.540661, 39.482594, 29.228769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604656, 39.090660, 29.276667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734485, 0.037121, -0.677609,
		0.659496, 0.196359, 0.725609,
		0.159990, -0.979829, 0.119741,
		40.652653, 38.796711, 29.312590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266876, 39.377651, 29.164955>,  <40.540661, 39.482594, 29.228769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266876, 39.377651, 29.164955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099224, 39.024635, 29.079672>,  <40.998631, 38.812828, 29.028502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099224, 39.024635, 29.079672>,  <41.266876, 39.377651, 29.164955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099224, 39.024635, 29.079672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618844, -0.105866, -0.778347,
		0.664348, -0.458174, 0.590524,
		-0.419134, -0.882536, -0.213206,
		40.973484, 38.759876, 29.015709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.636261, 37.106407, 22.046146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.672493, 37.219978, 22.427969>,  <35.694233, 37.288120, 22.657063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.672493, 37.219978, 22.427969>,  <35.636261, 37.106407, 22.046146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672493, 37.219978, 22.427969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616423, -0.736834, 0.277667,
		0.782187, -0.613562, 0.108278,
		0.090583, 0.283932, 0.954556,
		35.699669, 37.305157, 22.714336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641727, 36.498970, 22.369446>,  <35.636261, 37.106407, 22.046146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641727, 36.498970, 22.369446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.554417, 36.754616, 22.664440>,  <35.502029, 36.908005, 22.841436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.554417, 36.754616, 22.664440>,  <35.641727, 36.498970, 22.369446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554417, 36.754616, 22.664440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612232, -0.678176, 0.406509,
		0.759952, -0.362780, 0.539318,
		-0.218279, 0.639115, 0.737486,
		35.488934, 36.946350, 22.885687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624825, 36.152946, 23.040054>,  <35.641727, 36.498970, 22.369446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624825, 36.152946, 23.040054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.417866, 36.491909, 23.087719>,  <35.293690, 36.695286, 23.116318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.417866, 36.491909, 23.087719>,  <35.624825, 36.152946, 23.040054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417866, 36.491909, 23.087719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645782, -0.478012, 0.595374,
		0.561485, 0.231094, 0.794563,
		-0.517398, 0.847408, 0.119161,
		35.262646, 36.746132, 23.123466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400036, 36.105549, 23.737112>,  <35.624825, 36.152946, 23.040054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400036, 36.105549, 23.737112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.178379, 36.401897, 23.585306>,  <35.045383, 36.579708, 23.494223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.178379, 36.401897, 23.585306>,  <35.400036, 36.105549, 23.737112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178379, 36.401897, 23.585306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781374, -0.305756, 0.544029,
		0.287017, 0.598015, 0.748331,
		-0.554144, 0.740872, -0.379517,
		35.012135, 36.624161, 23.471451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244831, 36.421169, 24.303190>,  <35.400036, 36.105549, 23.737112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244831, 36.421169, 24.303190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.976173, 36.509945, 24.020449>,  <34.814980, 36.563210, 23.850803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.976173, 36.509945, 24.020449>,  <35.244831, 36.421169, 24.303190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976173, 36.509945, 24.020449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739789, -0.252563, 0.623638,
		-0.040117, 0.941783, 0.333818,
		-0.671642, 0.221936, -0.706853,
		34.774681, 36.576527, 23.808393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797489, 36.834621, 24.682728>,  <35.244831, 36.421169, 24.303190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797489, 36.834621, 24.682728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.593365, 36.734371, 24.353662>,  <34.470890, 36.674221, 24.156223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.593365, 36.734371, 24.353662>,  <34.797489, 36.834621, 24.682728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593365, 36.734371, 24.353662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761365, -0.313143, 0.567683,
		-0.399886, 0.916040, -0.031017,
		-0.510308, -0.250623, -0.822663,
		34.440273, 36.659184, 24.106863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125561, 37.235996, 24.616467>,  <34.797489, 36.834621, 24.682728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125561, 37.235996, 24.616467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.074238, 36.889114, 24.424011>,  <34.043446, 36.680984, 24.308538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.074238, 36.889114, 24.424011>,  <34.125561, 37.235996, 24.616467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074238, 36.889114, 24.424011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725749, -0.248534, 0.641498,
		-0.675888, 0.431495, -0.597484,
		-0.128308, -0.867204, -0.481138,
		34.035744, 36.628952, 24.279671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427017, 37.089794, 24.655598>,  <34.125561, 37.235996, 24.616467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427017, 37.089794, 24.655598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.565781, 36.730431, 24.547888>,  <33.649040, 36.514812, 24.483263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.565781, 36.730431, 24.547888>,  <33.427017, 37.089794, 24.655598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565781, 36.730431, 24.547888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719781, -0.439093, 0.537691,
		-0.601305, 0.007288, -0.798986,
		0.346910, -0.898412, -0.269275,
		33.669853, 36.460907, 24.467106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820980, 36.736034, 24.394770>,  <33.427017, 37.089794, 24.655598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820980, 36.736034, 24.394770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.093708, 36.456032, 24.479727>,  <33.257343, 36.288029, 24.530701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.093708, 36.456032, 24.479727>,  <32.820980, 36.736034, 24.394770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093708, 36.456032, 24.479727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688567, -0.516110, 0.509418,
		-0.246978, -0.493578, -0.833896,
		0.681819, -0.700008, 0.212393,
		33.298252, 36.246029, 24.543446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408096, 36.063545, 24.417866>,  <32.820980, 36.736034, 24.394770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408096, 36.063545, 24.417866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.738533, 36.013939, 24.637756>,  <32.936794, 35.984177, 24.769690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.738533, 36.013939, 24.637756>,  <32.408096, 36.063545, 24.417866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738533, 36.013939, 24.637756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542876, -0.436866, 0.717241,
		0.151207, -0.890937, -0.428215,
		0.826089, -0.124016, 0.549725,
		32.986359, 35.976734, 24.802673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230324, 35.462475, 24.661930>,  <32.408096, 36.063545, 24.417866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230324, 35.462475, 24.661930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.524162, 35.575489, 24.908680>,  <32.700466, 35.643299, 25.056730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.524162, 35.575489, 24.908680>,  <32.230324, 35.462475, 24.661930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524162, 35.575489, 24.908680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509756, -0.370202, 0.776594,
		0.447788, -0.884942, -0.127923,
		0.734598, 0.282540, 0.616877,
		32.744541, 35.660252, 25.093742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334892, 34.962315, 25.097956>,  <32.230324, 35.462475, 24.661930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334892, 34.962315, 25.097956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.499649, 35.249302, 25.322662>,  <32.598503, 35.421494, 25.457485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.499649, 35.249302, 25.322662>,  <32.334892, 34.962315, 25.097956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499649, 35.249302, 25.322662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318969, -0.463965, 0.826435,
		0.853582, -0.519590, 0.037746,
		0.411895, 0.717470, 0.561765,
		32.623219, 35.464542, 25.491192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534901, 34.563740, 25.612366>,  <32.334892, 34.962315, 25.097956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534901, 34.563740, 25.612366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.515404, 34.948132, 25.721289>,  <32.503704, 35.178764, 25.786642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.515404, 34.948132, 25.721289>,  <32.534901, 34.563740, 25.612366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515404, 34.948132, 25.721289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577955, -0.249488, 0.776997,
		0.814612, -0.119509, 0.567561,
		-0.048742, 0.960975, 0.272306,
		32.500782, 35.236423, 25.802980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765125, 34.542149, 26.284147>,  <32.534901, 34.563740, 25.612366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765125, 34.542149, 26.284147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.529964, 34.864040, 26.251230>,  <32.388866, 35.057175, 26.231480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.529964, 34.864040, 26.251230>,  <32.765125, 34.542149, 26.284147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529964, 34.864040, 26.251230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585309, -0.352957, 0.729956,
		0.558374, 0.477311, 0.678522,
		-0.587905, 0.804733, -0.082292,
		32.353592, 35.105461, 26.226542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433685, 34.547050, 26.805473>,  <32.765125, 34.542149, 26.284147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433685, 34.547050, 26.805473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.643089, 34.217503, 26.892357>,  <33.768730, 34.019775, 26.944487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.643089, 34.217503, 26.892357>,  <33.433685, 34.547050, 26.805473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643089, 34.217503, 26.892357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719139, 0.290548, -0.631206,
		0.456922, 0.486645, 0.744580,
		0.523509, -0.823868, 0.217207,
		33.800140, 33.970341, 26.957520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046444, 34.684341, 27.135414>,  <33.433685, 34.547050, 26.805473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046444, 34.684341, 27.135414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.074600, 34.345009, 26.925508>,  <34.091492, 34.141407, 26.799566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.074600, 34.345009, 26.925508>,  <34.046444, 34.684341, 27.135414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074600, 34.345009, 26.925508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716931, 0.408800, -0.564706,
		0.693582, -0.336470, 0.636971,
		0.070387, -0.848334, -0.524762,
		34.095715, 34.090508, 26.768080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772694, 34.721210, 27.025780>,  <34.046444, 34.684341, 27.135414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772694, 34.721210, 27.025780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.652771, 34.412994, 26.800787>,  <34.580818, 34.228065, 26.665791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.652771, 34.412994, 26.800787>,  <34.772694, 34.721210, 27.025780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652771, 34.412994, 26.800787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744236, 0.179964, -0.643215,
		0.596847, -0.611463, 0.519506,
		-0.299810, -0.770536, -0.562484,
		34.562828, 34.181835, 26.632042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340256, 34.270500, 26.993982>,  <34.772694, 34.721210, 27.025780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340256, 34.270500, 26.993982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.106449, 34.217129, 26.673847>,  <34.966167, 34.185104, 26.481766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.106449, 34.217129, 26.673847>,  <35.340256, 34.270500, 26.993982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106449, 34.217129, 26.673847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797928, 0.084363, -0.596820,
		0.147154, -0.987461, 0.057159,
		-0.584514, -0.133433, -0.800337,
		34.931095, 34.177097, 26.433746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843628, 34.047592, 26.546011>,  <35.340256, 34.270500, 26.993982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843628, 34.047592, 26.546011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.539387, 34.127628, 26.298967>,  <35.356842, 34.175652, 26.150742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.539387, 34.127628, 26.298967>,  <35.843628, 34.047592, 26.546011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539387, 34.127628, 26.298967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645390, 0.129945, -0.752719,
		-0.070360, -0.971121, -0.227976,
		-0.760606, 0.200094, -0.617609,
		35.311207, 34.187656, 26.113684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957104, 33.661083, 25.829712>,  <35.843628, 34.047592, 26.546011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957104, 33.661083, 25.829712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.706715, 33.971626, 25.800243>,  <35.556480, 34.157951, 25.782562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.706715, 33.971626, 25.800243>,  <35.957104, 33.661083, 25.829712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706715, 33.971626, 25.800243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557483, 0.379427, -0.738409,
		-0.545314, -0.503297, -0.670317,
		-0.625976, 0.776355, -0.073672,
		35.518921, 34.204533, 25.778141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789619, 33.781818, 25.094057>,  <35.957104, 33.661083, 25.829712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789619, 33.781818, 25.094057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.709358, 34.138718, 25.255861>,  <35.661201, 34.352856, 25.352943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.709358, 34.138718, 25.255861>,  <35.789619, 33.781818, 25.094057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709358, 34.138718, 25.255861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608509, 0.437109, -0.662308,
		-0.767760, 0.113256, -0.630648,
		-0.200651, 0.892249, 0.404512,
		35.649162, 34.406391, 25.377214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633209, 34.298981, 24.563644>,  <35.789619, 33.781818, 25.094057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633209, 34.298981, 24.563644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.725334, 34.539906, 24.869371>,  <35.780609, 34.684460, 25.052807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.725334, 34.539906, 24.869371>,  <35.633209, 34.298981, 24.563644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725334, 34.539906, 24.869371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544037, 0.571525, -0.614315,
		-0.806834, 0.557299, -0.196051,
		0.230310, 0.602310, 0.764317,
		35.794426, 34.720600, 25.098667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643562, 34.843346, 24.218874>,  <35.633209, 34.298981, 24.563644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643562, 34.843346, 24.218874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.846962, 34.916641, 24.555410>,  <35.969002, 34.960617, 24.757332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.846962, 34.916641, 24.555410>,  <35.643562, 34.843346, 24.218874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846962, 34.916641, 24.555410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696272, 0.487359, -0.526959,
		-0.506593, 0.853760, 0.120238,
		0.508496, 0.183235, 0.841342,
		35.999512, 34.971611, 24.807814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845104, 35.612362, 24.130178>,  <35.643562, 34.843346, 24.218874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845104, 35.612362, 24.130178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.097050, 35.473324, 24.408014>,  <36.248215, 35.389900, 24.574715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.097050, 35.473324, 24.408014>,  <35.845104, 35.612362, 24.130178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097050, 35.473324, 24.408014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770751, 0.390256, -0.503630,
		-0.096008, 0.852572, 0.513716,
		0.629861, -0.347595, 0.694588,
		36.286007, 35.369045, 24.616390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241806, 36.217720, 24.467077>,  <35.845104, 35.612362, 24.130178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241806, 36.217720, 24.467077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.447773, 35.878372, 24.516277>,  <36.571354, 35.674763, 24.545797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.447773, 35.878372, 24.516277>,  <36.241806, 36.217720, 24.467077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447773, 35.878372, 24.516277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805035, 0.429255, -0.409462,
		0.294575, 0.309860, 0.903998,
		0.514921, -0.848367, 0.123001,
		36.602249, 35.623863, 24.553177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809410, 36.395008, 24.787870>,  <36.241806, 36.217720, 24.467077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809410, 36.395008, 24.787870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.891689, 36.035084, 24.633974>,  <36.941055, 35.819130, 24.541637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.891689, 36.035084, 24.633974>,  <36.809410, 36.395008, 24.787870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891689, 36.035084, 24.633974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922030, 0.309944, -0.231937,
		0.327948, -0.307033, 0.893410,
		0.205695, -0.899814, -0.384740,
		36.953400, 35.765141, 24.518553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462746, 36.318508, 24.982807>,  <36.809410, 36.395008, 24.787870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462746, 36.318508, 24.982807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.412598, 36.078690, 24.666624>,  <37.382507, 35.934799, 24.476915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.412598, 36.078690, 24.666624>,  <37.462746, 36.318508, 24.982807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412598, 36.078690, 24.666624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909044, 0.249717, -0.333586,
		0.397392, -0.760382, 0.513711,
		-0.125371, -0.599550, -0.790456,
		37.374985, 35.898823, 24.429487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103764, 35.872177, 24.872570>,  <37.462746, 36.318508, 24.982807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103764, 35.872177, 24.872570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925426, 35.867825, 24.514553>,  <37.818424, 35.865211, 24.299742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925426, 35.867825, 24.514553>,  <38.103764, 35.872177, 24.872570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925426, 35.867825, 24.514553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817046, 0.403453, -0.411900,
		0.365591, -0.914935, -0.170984,
		-0.445846, -0.010885, -0.895043,
		37.791672, 35.864559, 24.246040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369907, 35.179459, 25.193806>,  <38.103764, 35.872177, 24.872570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369907, 35.179459, 25.193806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.677197, 35.246071, 25.441063>,  <38.861568, 35.286037, 25.589417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.677197, 35.246071, 25.441063>,  <38.369907, 35.179459, 25.193806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677197, 35.246071, 25.441063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581172, -0.223500, 0.782487,
		0.268460, -0.960373, -0.074917,
		0.768224, 0.166527, 0.618143,
		38.907665, 35.296028, 25.626505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342987, 34.630047, 25.684425>,  <38.369907, 35.179459, 25.193806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342987, 34.630047, 25.684425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.564491, 34.927269, 25.834743>,  <38.697395, 35.105602, 25.924934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.564491, 34.927269, 25.834743>,  <38.342987, 34.630047, 25.684425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564491, 34.927269, 25.834743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508730, -0.055372, 0.859144,
		0.659196, -0.666940, 0.347349,
		0.553764, 0.743052, 0.375793,
		38.730621, 35.150185, 25.947481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597847, 34.383183, 26.230951>,  <38.342987, 34.630047, 25.684425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597847, 34.383183, 26.230951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.595730, 34.781528, 26.267227>,  <38.594460, 35.020535, 26.288994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.595730, 34.781528, 26.267227>,  <38.597847, 34.383183, 26.230951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595730, 34.781528, 26.267227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645813, -0.072645, 0.760032,
		0.763477, -0.054548, 0.643527,
		-0.005290, 0.995865, 0.090691,
		38.594143, 35.080288, 26.294434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726849, 34.545235, 26.975849>,  <38.597847, 34.383183, 26.230951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726849, 34.545235, 26.975849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.557816, 34.861496, 26.798635>,  <38.456394, 35.051254, 26.692307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.557816, 34.861496, 26.798635>,  <38.726849, 34.545235, 26.975849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557816, 34.861496, 26.798635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666139, 0.060504, 0.743369,
		0.614556, 0.609262, 0.501120,
		-0.422587, 0.790657, -0.443036,
		38.431038, 35.098694, 26.665724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715038, 34.881382, 27.593632>,  <38.726849, 34.545235, 26.975849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715038, 34.881382, 27.593632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.479927, 35.082642, 27.340221>,  <38.338860, 35.203400, 27.188175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.479927, 35.082642, 27.340221>,  <38.715038, 34.881382, 27.593632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479927, 35.082642, 27.340221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775845, -0.128605, 0.617678,
		0.229312, 0.854574, 0.465960,
		-0.587776, 0.503153, -0.633526,
		38.303593, 35.233589, 27.150164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435295, 35.381855, 27.954300>,  <38.715038, 34.881382, 27.593632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435295, 35.381855, 27.954300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.178677, 35.353790, 27.648752>,  <38.024704, 35.336952, 27.465424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.178677, 35.353790, 27.648752>,  <38.435295, 35.381855, 27.954300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178677, 35.353790, 27.648752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750928, -0.145858, 0.644075,
		-0.156609, 0.986814, 0.040885,
		-0.641546, -0.070166, -0.763869,
		37.986214, 35.332741, 27.419592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807587, 35.899345, 28.175755>,  <38.435295, 35.381855, 27.954300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807587, 35.899345, 28.175755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.688026, 35.629898, 27.905376>,  <37.616291, 35.468231, 27.743149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.688026, 35.629898, 27.905376>,  <37.807587, 35.899345, 28.175755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688026, 35.629898, 27.905376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812787, -0.191452, 0.550203,
		-0.500036, 0.713855, -0.490280,
		-0.298900, -0.673614, -0.675945,
		37.598358, 35.427814, 27.702593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152180, 36.060555, 28.077641>,  <37.807587, 35.899345, 28.175755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152180, 36.060555, 28.077641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186001, 35.671467, 27.991238>,  <37.206295, 35.438015, 27.939396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186001, 35.671467, 27.991238>,  <37.152180, 36.060555, 28.077641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186001, 35.671467, 27.991238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803665, -0.194734, 0.562319,
		-0.589045, 0.126051, -0.798209,
		0.084557, -0.972723, -0.216009,
		37.211369, 35.379650, 27.926435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614891, 35.805775, 27.694258>,  <37.152180, 36.060555, 28.077641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614891, 35.805775, 27.694258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.761730, 35.511261, 27.921637>,  <36.849834, 35.334553, 28.058064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.761730, 35.511261, 27.921637>,  <36.614891, 35.805775, 27.694258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761730, 35.511261, 27.921637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855096, -0.026576, 0.517788,
		-0.366131, -0.676153, -0.639348,
		0.367095, -0.736282, 0.568445,
		36.871861, 35.290375, 28.092171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021729, 35.532761, 27.963989>,  <36.614891, 35.805775, 27.694258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021729, 35.532761, 27.963989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.283596, 35.318485, 28.177320>,  <36.440716, 35.189919, 28.305319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.283596, 35.318485, 28.177320>,  <36.021729, 35.532761, 27.963989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283596, 35.318485, 28.177320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712746, -0.202439, 0.671574,
		-0.251794, -0.819785, -0.514347,
		0.654670, -0.535697, 0.533325,
		36.479996, 35.157776, 28.337318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704800, 34.824898, 28.153151>,  <36.021729, 35.532761, 27.963989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704800, 34.824898, 28.153151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.002518, 34.910145, 28.406326>,  <36.181149, 34.961292, 28.558231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.002518, 34.910145, 28.406326>,  <35.704800, 34.824898, 28.153151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002518, 34.910145, 28.406326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591167, -0.230701, 0.772851,
		0.310729, -0.949398, -0.045720,
		0.744291, 0.213119, 0.632938,
		36.225803, 34.974079, 28.596209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657787, 34.280941, 28.605623>,  <35.704800, 34.824898, 28.153151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657787, 34.280941, 28.605623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874939, 34.578014, 28.762444>,  <36.005230, 34.756256, 28.856537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874939, 34.578014, 28.762444>,  <35.657787, 34.280941, 28.605623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874939, 34.578014, 28.762444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424181, -0.160418, 0.891256,
		0.724810, -0.650148, 0.227942,
		0.542883, 0.742680, 0.392053,
		36.037804, 34.800819, 28.880060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894962, 34.028812, 29.186647>,  <35.657787, 34.280941, 28.605623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894962, 34.028812, 29.186647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.924305, 34.419724, 29.266199>,  <35.941910, 34.654270, 29.313931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.924305, 34.419724, 29.266199>,  <35.894962, 34.028812, 29.186647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924305, 34.419724, 29.266199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338029, -0.163250, 0.926869,
		0.938273, -0.135216, 0.318373,
		0.073353, 0.977275, 0.198880,
		35.946312, 34.712906, 29.325863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026531, 34.052128, 29.895767>,  <35.894962, 34.028812, 29.186647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026531, 34.052128, 29.895767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.910492, 34.421284, 29.794483>,  <35.840870, 34.642776, 29.733713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.910492, 34.421284, 29.794483>,  <36.026531, 34.052128, 29.895767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910492, 34.421284, 29.794483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746721, -0.052807, 0.663038,
		0.598541, 0.381421, 0.704462,
		-0.290097, 0.922892, -0.253208,
		35.823463, 34.698151, 29.718521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.842979, 38.830536, 29.102669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.521824, 38.672623, 28.923998>,  <41.329132, 38.577873, 28.816795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.521824, 38.672623, 28.923998>,  <41.842979, 38.830536, 29.102669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521824, 38.672623, 28.923998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518784, -0.093599, -0.849766,
		0.293666, -0.913994, 0.279958,
		-0.802884, -0.394785, -0.446679,
		41.280960, 38.554188, 28.789993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131866, 38.301792, 28.790337>,  <41.842979, 38.830536, 29.102669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131866, 38.301792, 28.790337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.798454, 38.401333, 28.593033>,  <41.598408, 38.461056, 28.474651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.798454, 38.401333, 28.593033>,  <42.131866, 38.301792, 28.790337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798454, 38.401333, 28.593033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486446, -0.092697, -0.868779,
		-0.261922, -0.964095, -0.043788,
		-0.833527, 0.248853, -0.493260,
		41.548397, 38.475990, 28.445055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180439, 37.945133, 28.234587>,  <42.131866, 38.301792, 28.790337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180439, 37.945133, 28.234587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.907967, 38.215782, 28.122749>,  <41.744484, 38.378174, 28.055647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.907967, 38.215782, 28.122749>,  <42.180439, 37.945133, 28.234587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907967, 38.215782, 28.122749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361692, -0.021018, -0.932061,
		-0.636532, -0.736027, -0.230413,
		-0.681179, 0.676625, -0.279594,
		41.703613, 38.418770, 28.038872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716949, 37.720032, 27.721752>,  <42.180439, 37.945133, 28.234587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716949, 37.720032, 27.721752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.684566, 38.115417, 27.670559>,  <41.665134, 38.352650, 27.639843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.684566, 38.115417, 27.670559>,  <41.716949, 37.720032, 27.721752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684566, 38.115417, 27.670559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166699, -0.113166, -0.979492,
		-0.982678, -0.100634, -0.155614,
		-0.080960, 0.988466, -0.127982,
		41.660278, 38.411957, 27.632164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257843, 37.833942, 27.249092>,  <41.716949, 37.720032, 27.721752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257843, 37.833942, 27.249092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.459713, 38.179256, 27.251621>,  <41.580833, 38.386444, 27.253138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.459713, 38.179256, 27.251621>,  <41.257843, 37.833942, 27.249092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459713, 38.179256, 27.251621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075321, -0.036735, -0.996482,
		-0.860018, 0.503374, -0.083563,
		0.504673, 0.863287, 0.006322,
		41.611115, 38.438244, 27.253517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066540, 38.188477, 26.671520>,  <41.257843, 37.833942, 27.249092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066540, 38.188477, 26.671520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.420227, 38.349243, 26.766697>,  <41.632439, 38.445702, 26.823803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.420227, 38.349243, 26.766697>,  <41.066540, 38.188477, 26.671520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420227, 38.349243, 26.766697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233987, 0.059718, -0.970404,
		-0.404231, 0.913727, -0.041240,
		0.884221, 0.401917, 0.237940,
		41.685493, 38.469818, 26.838079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130013, 38.591225, 26.184027>,  <41.066540, 38.188477, 26.671520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130013, 38.591225, 26.184027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.512054, 38.591892, 26.302532>,  <41.741280, 38.592293, 26.373634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.512054, 38.591892, 26.302532>,  <41.130013, 38.591225, 26.184027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512054, 38.591892, 26.302532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295474, -0.078446, -0.952125,
		0.021655, 0.996917, -0.075416,
		0.955105, 0.001665, 0.296261,
		41.798588, 38.592392, 26.391411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462608, 39.132580, 25.871315>,  <41.130013, 38.591225, 26.184027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462608, 39.132580, 25.871315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.748356, 38.870800, 25.970406>,  <41.919804, 38.713730, 26.029860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.748356, 38.870800, 25.970406>,  <41.462608, 39.132580, 25.871315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748356, 38.870800, 25.970406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371140, 0.054229, -0.926992,
		0.593239, 0.754155, 0.281633,
		0.714369, -0.654453, 0.247727,
		41.962666, 38.674465, 26.044724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066166, 39.513607, 25.671024>,  <41.462608, 39.132580, 25.871315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066166, 39.513607, 25.671024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.171104, 39.127823, 25.683657>,  <42.234070, 38.896355, 25.691236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.171104, 39.127823, 25.683657>,  <42.066166, 39.513607, 25.671024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171104, 39.127823, 25.683657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560305, 0.125604, -0.818707,
		0.785641, 0.232482, 0.573342,
		0.262349, -0.964456, 0.031581,
		42.249809, 38.838486, 25.693130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744984, 39.534790, 25.539894>,  <42.066166, 39.513607, 25.671024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744984, 39.534790, 25.539894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.640148, 39.155720, 25.466995>,  <42.577248, 38.928276, 25.423256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.640148, 39.155720, 25.466995>,  <42.744984, 39.534790, 25.539894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640148, 39.155720, 25.466995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447460, 0.047987, -0.893015,
		0.855038, -0.315595, 0.411472,
		-0.262086, -0.947680, -0.182247,
		42.561523, 38.871414, 25.412321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336819, 39.156208, 25.149572>,  <42.744984, 39.534790, 25.539894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336819, 39.156208, 25.149572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.011559, 38.933540, 25.081575>,  <42.816402, 38.799938, 25.040777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.011559, 38.933540, 25.081575>,  <43.336819, 39.156208, 25.149572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011559, 38.933540, 25.081575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306280, -0.160883, -0.938248,
		0.494947, -0.815006, 0.301320,
		-0.813155, -0.556671, -0.169992,
		42.767612, 38.766541, 25.030579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589867, 38.580643, 24.855686>,  <43.336819, 39.156208, 25.149572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589867, 38.580643, 24.855686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.210171, 38.626137, 24.738373>,  <42.982353, 38.653435, 24.667984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.210171, 38.626137, 24.738373>,  <43.589867, 38.580643, 24.855686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210171, 38.626137, 24.738373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271879, -0.172322, -0.946777,
		-0.158209, -0.978454, 0.132656,
		-0.949237, 0.113722, -0.293284,
		42.925400, 38.660255, 24.650387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388618, 37.962620, 24.368261>,  <43.589867, 38.580643, 24.855686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388618, 37.962620, 24.368261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.246113, 38.334320, 24.329145>,  <43.160610, 38.557343, 24.305676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.246113, 38.334320, 24.329145>,  <43.388618, 37.962620, 24.368261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246113, 38.334320, 24.329145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213470, -0.020944, -0.976725,
		-0.909672, -0.368851, -0.190906,
		-0.356267, 0.929253, -0.097790,
		43.139233, 38.613094, 24.299809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881428, 38.035107, 23.721197>,  <43.388618, 37.962620, 24.368261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881428, 38.035107, 23.721197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.056122, 38.384407, 23.807640>,  <43.160938, 38.593987, 23.859505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.056122, 38.384407, 23.807640>,  <42.881428, 38.035107, 23.721197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056122, 38.384407, 23.807640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083743, 0.199720, -0.976268,
		-0.895685, 0.444466, 0.014096,
		0.436733, 0.873248, 0.216107,
		43.187141, 38.646381, 23.872473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257469, 37.926334, 23.077112>,  <42.881428, 38.035107, 23.721197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257469, 37.926334, 23.077112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.144444, 37.653313, 22.807512>,  <43.076626, 37.489498, 22.645752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.144444, 37.653313, 22.807512>,  <43.257469, 37.926334, 23.077112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144444, 37.653313, 22.807512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744234, -0.287309, 0.602968,
		-0.605204, 0.671991, -0.426797,
		-0.282567, -0.682556, -0.673999,
		43.059673, 37.448547, 22.605312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507130, 37.858459, 23.134649>,  <43.257469, 37.926334, 23.077112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507130, 37.858459, 23.134649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.646168, 37.544819, 22.928982>,  <42.729591, 37.356636, 22.805582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.646168, 37.544819, 22.928982>,  <42.507130, 37.858459, 23.134649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646168, 37.544819, 22.928982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672071, -0.590725, 0.446503,
		-0.653833, 0.190353, -0.732304,
		0.347597, -0.784098, -0.514166,
		42.750446, 37.309589, 22.774733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983177, 37.550579, 22.774334>,  <42.507130, 37.858459, 23.134649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983177, 37.550579, 22.774334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.253735, 37.256939, 22.798283>,  <42.416069, 37.080753, 22.812651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.253735, 37.256939, 22.798283>,  <41.983177, 37.550579, 22.774334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253735, 37.256939, 22.798283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642747, -0.548610, 0.534700,
		-0.359679, -0.400149, -0.842918,
		0.676393, -0.734103, 0.059871,
		42.456654, 37.036709, 22.816244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664608, 36.908417, 22.477510>,  <41.983177, 37.550579, 22.774334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664608, 36.908417, 22.477510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.958633, 36.810741, 22.730511>,  <42.135048, 36.752136, 22.882311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.958633, 36.810741, 22.730511>,  <41.664608, 36.908417, 22.477510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958633, 36.810741, 22.730511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645445, -0.537634, 0.542540,
		0.207572, -0.807045, -0.552804,
		0.735061, -0.244188, 0.632502,
		42.179153, 36.737484, 22.920261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531712, 36.212257, 22.575171>,  <41.664608, 36.908417, 22.477510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531712, 36.212257, 22.575171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.757778, 36.319012, 22.887417>,  <41.893417, 36.383064, 23.074764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.757778, 36.319012, 22.887417>,  <41.531712, 36.212257, 22.575171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757778, 36.319012, 22.887417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436064, -0.706594, 0.557290,
		0.700309, -0.655361, -0.282967,
		0.565169, 0.266883, 0.780614,
		41.927330, 36.399078, 23.121601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797993, 35.540913, 22.888285>,  <41.531712, 36.212257, 22.575171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797993, 35.540913, 22.888285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.829517, 35.820396, 23.172705>,  <41.848431, 35.988087, 23.343357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.829517, 35.820396, 23.172705>,  <41.797993, 35.540913, 22.888285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829517, 35.820396, 23.172705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605919, -0.532820, 0.590732,
		0.791613, -0.477396, 0.381369,
		0.078812, 0.698710, 0.711051,
		41.853161, 36.030010, 23.386021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860504, 35.135429, 23.500937>,  <41.797993, 35.540913, 22.888285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860504, 35.135429, 23.500937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.770611, 35.507584, 23.616779>,  <41.716675, 35.730877, 23.686285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.770611, 35.507584, 23.616779>,  <41.860504, 35.135429, 23.500937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770611, 35.507584, 23.616779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738020, -0.356587, 0.572863,
		0.636255, -0.084992, 0.766783,
		-0.224736, 0.930388, 0.289606,
		41.703190, 35.786701, 23.703661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024971, 35.135967, 24.264303>,  <41.860504, 35.135429, 23.500937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024971, 35.135967, 24.264303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.757256, 35.413982, 24.159246>,  <41.596626, 35.580791, 24.096212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.757256, 35.413982, 24.159246>,  <42.024971, 35.135967, 24.264303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757256, 35.413982, 24.159246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639429, -0.358778, 0.680007,
		0.378398, 0.623061, 0.684551,
		-0.669287, 0.695035, -0.262642,
		41.556469, 35.622494, 24.080454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703777, 35.348045, 24.877333>,  <42.024971, 35.135967, 24.264303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703777, 35.348045, 24.877333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.452236, 35.507191, 24.610126>,  <41.301311, 35.602680, 24.449802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.452236, 35.507191, 24.610126>,  <41.703777, 35.348045, 24.877333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452236, 35.507191, 24.610126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759053, -0.127992, 0.638324,
		0.168467, 0.908472, 0.382490,
		-0.628854, 0.397866, -0.668016,
		41.263580, 35.626549, 24.409721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407494, 36.008190, 25.191053>,  <41.703777, 35.348045, 24.877333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407494, 36.008190, 25.191053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.151043, 35.868298, 24.917807>,  <40.997173, 35.784363, 24.753859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.151043, 35.868298, 24.917807>,  <41.407494, 36.008190, 25.191053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151043, 35.868298, 24.917807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731273, 0.008372, 0.682033,
		-0.232808, 0.936813, -0.261115,
		-0.641124, -0.349730, -0.683117,
		40.958706, 35.763378, 24.712872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855209, 36.414143, 25.246637>,  <41.407494, 36.008190, 25.191053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855209, 36.414143, 25.246637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.701767, 36.099091, 25.053772>,  <40.609699, 35.910057, 24.938053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.701767, 36.099091, 25.053772>,  <40.855209, 36.414143, 25.246637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701767, 36.099091, 25.053772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789423, 0.008740, 0.613787,
		-0.479224, 0.616084, -0.625127,
		-0.383609, -0.787632, -0.482163,
		40.586685, 35.862801, 24.909122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214291, 36.577225, 25.078770>,  <40.855209, 36.414143, 25.246637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214291, 36.577225, 25.078770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.224579, 36.177364, 25.081148>,  <40.230751, 35.937447, 25.082575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.224579, 36.177364, 25.081148>,  <40.214291, 36.577225, 25.078770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224579, 36.177364, 25.081148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852336, -0.018818, 0.522657,
		-0.522363, -0.018509, -0.852522,
		0.025716, -0.999652, 0.005946,
		40.232292, 35.877468, 25.082932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479378, 36.403610, 25.180082>,  <40.214291, 36.577225, 25.078770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479378, 36.403610, 25.180082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.661640, 36.052597, 25.239841>,  <39.770996, 35.841991, 25.275698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.661640, 36.052597, 25.239841>,  <39.479378, 36.403610, 25.180082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661640, 36.052597, 25.239841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864101, -0.395731, 0.311008,
		-0.213797, -0.270808, -0.938592,
		0.455653, -0.877531, 0.149399,
		39.798336, 35.789337, 25.284660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147102, 35.858402, 24.790203>,  <39.479378, 36.403610, 25.180082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147102, 35.858402, 24.790203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.329861, 35.748123, 25.128489>,  <39.439518, 35.681957, 25.331461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.329861, 35.748123, 25.128489>,  <39.147102, 35.858402, 24.790203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329861, 35.748123, 25.128489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885246, -0.234002, 0.401972,
		0.087076, -0.932327, -0.350976,
		0.456899, -0.275698, 0.845715,
		39.466930, 35.665413, 25.382204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636395, 35.431103, 24.346710>,  <39.147102, 35.858402, 24.790203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636395, 35.431103, 24.346710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.393997, 35.620331, 24.090906>,  <38.248558, 35.733868, 23.937424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.393997, 35.620331, 24.090906>,  <38.636395, 35.431103, 24.346710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393997, 35.620331, 24.090906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764852, 0.567408, -0.305039,
		0.218561, -0.673985, -0.705674,
		-0.605997, 0.473067, -0.639512,
		38.212196, 35.762249, 23.899052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102543, 35.565990, 23.731236>,  <38.636395, 35.431103, 24.346710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102543, 35.565990, 23.731236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.789761, 35.813820, 23.703888>,  <38.602093, 35.962517, 23.687479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.789761, 35.813820, 23.703888>,  <39.102543, 35.565990, 23.731236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789761, 35.813820, 23.703888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608026, 0.733986, -0.302605,
		-0.137305, -0.278193, -0.950661,
		-0.781954, 0.619575, -0.068369,
		38.555176, 35.999691, 23.683378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184296, 35.793072, 23.008951>,  <39.102543, 35.565990, 23.731236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184296, 35.793072, 23.008951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.931549, 36.058853, 23.168571>,  <38.779900, 36.218323, 23.264343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.931549, 36.058853, 23.168571>,  <39.184296, 35.793072, 23.008951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931549, 36.058853, 23.168571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465273, 0.736943, -0.490344,
		-0.619888, -0.124166, -0.774805,
		-0.631871, 0.664454, 0.399050,
		38.741989, 36.258190, 23.288286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799282, 36.226883, 22.465645>,  <39.184296, 35.793072, 23.008951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799282, 36.226883, 22.465645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.795589, 36.440678, 22.803696>,  <38.793373, 36.568954, 23.006527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.795589, 36.440678, 22.803696>,  <38.799282, 36.226883, 22.465645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795589, 36.440678, 22.803696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292421, 0.809662, -0.508859,
		-0.956245, 0.242438, -0.163766,
		-0.009228, 0.534483, 0.845129,
		38.792820, 36.601021, 23.057234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447742, 36.898548, 22.406050>,  <38.799282, 36.226883, 22.465645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447742, 36.898548, 22.406050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714466, 36.918827, 22.703449>,  <38.874500, 36.930996, 22.881889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714466, 36.918827, 22.703449>,  <38.447742, 36.898548, 22.406050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714466, 36.918827, 22.703449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365331, 0.847335, -0.385429,
		-0.649533, 0.528633, 0.546493,
		0.666814, 0.050698, 0.743498,
		38.914509, 36.934036, 22.926498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358177, 37.580559, 22.571928>,  <38.447742, 36.898548, 22.406050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358177, 37.580559, 22.571928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.708546, 37.454662, 22.718189>,  <38.918766, 37.379124, 22.805946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.708546, 37.454662, 22.718189>,  <38.358177, 37.580559, 22.571928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708546, 37.454662, 22.718189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472315, 0.714002, -0.516837,
		-0.098404, 0.625410, 0.774067,
		0.875920, -0.314744, 0.365651,
		38.971321, 37.360241, 22.827885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725391, 38.178257, 22.802416>,  <38.358177, 37.580559, 22.571928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725391, 38.178257, 22.802416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.008694, 37.896858, 22.778879>,  <39.178677, 37.728020, 22.764757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.008694, 37.896858, 22.778879>,  <38.725391, 38.178257, 22.802416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008694, 37.896858, 22.778879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523862, 0.579614, -0.624193,
		0.473224, 0.411264, 0.779051,
		0.708257, -0.703498, -0.058842,
		39.221172, 37.685810, 22.761227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321350, 38.778606, 23.129709>,  <38.725391, 38.178257, 22.802416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321350, 38.778606, 23.129709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.111858, 38.986439, 22.859674>,  <37.986164, 39.111137, 22.697653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.111858, 38.986439, 22.859674>,  <38.321350, 38.778606, 23.129709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111858, 38.986439, 22.859674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841945, -0.436397, 0.317311,
		-0.129739, 0.734573, 0.666010,
		-0.523733, 0.519577, -0.675088,
		37.954739, 39.142311, 22.657148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734406, 38.916538, 23.462183>,  <38.321350, 38.778606, 23.129709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734406, 38.916538, 23.462183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.600918, 38.983696, 23.091143>,  <37.520824, 39.023991, 22.868519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.600918, 38.983696, 23.091143>,  <37.734406, 38.916538, 23.462183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600918, 38.983696, 23.091143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835238, -0.508877, 0.208379,
		-0.437049, 0.844307, 0.310054,
		-0.333715, 0.167897, -0.927602,
		37.500805, 39.034065, 22.812862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020351, 38.937748, 23.480465>,  <37.734406, 38.916538, 23.462183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020351, 38.937748, 23.480465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.088932, 38.834641, 23.100117>,  <37.130081, 38.772778, 22.871906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.088932, 38.834641, 23.100117>,  <37.020351, 38.937748, 23.480465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088932, 38.834641, 23.100117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866107, -0.499426, -0.020779,
		-0.469535, 0.827120, -0.308884,
		0.171451, -0.257770, -0.950873,
		37.140366, 38.757309, 22.814856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515224, 39.179092, 23.042099>,  <37.020351, 38.937748, 23.480465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515224, 39.179092, 23.042099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.671894, 38.861813, 22.855581>,  <36.765896, 38.671444, 22.743670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.671894, 38.861813, 22.855581>,  <36.515224, 39.179092, 23.042099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671894, 38.861813, 22.855581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890554, -0.454211, 0.024598,
		-0.231308, 0.405627, -0.884287,
		0.391675, -0.793196, -0.466295,
		36.789398, 38.623856, 22.715693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031288, 39.048325, 22.511267>,  <36.515224, 39.179092, 23.042099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031288, 39.048325, 22.511267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.236961, 38.710777, 22.572592>,  <36.360367, 38.508251, 22.609386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.236961, 38.710777, 22.572592>,  <36.031288, 39.048325, 22.511267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236961, 38.710777, 22.572592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853332, -0.521314, -0.007484,
		0.086240, -0.126979, -0.988149,
		0.514185, -0.843865, 0.153313,
		36.391216, 38.457619, 22.618586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673336, 38.485325, 22.251350>,  <36.031288, 39.048325, 22.511267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673336, 38.485325, 22.251350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921986, 38.269291, 22.478292>,  <36.071175, 38.139671, 22.614458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.921986, 38.269291, 22.478292>,  <35.673336, 38.485325, 22.251350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921986, 38.269291, 22.478292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745635, -0.629928, 0.217298,
		0.240034, -0.558118, -0.794284,
		0.621620, -0.540088, 0.567357,
		36.108471, 38.107265, 22.648500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465382, 37.803024, 22.114552>,  <35.673336, 38.485325, 22.251350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465382, 37.803024, 22.114552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691868, 37.753944, 22.440582>,  <35.827759, 37.724499, 22.636200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691868, 37.753944, 22.440582>,  <35.465382, 37.803024, 22.114552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691868, 37.753944, 22.440582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558521, -0.784345, 0.269921,
		0.606182, -0.608070, -0.512635,
		0.566213, -0.122696, 0.815075,
		35.861732, 37.717136, 22.685104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.519051, 40.607430, 23.756498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.750431, 40.341637, 23.945751>,  <40.889259, 40.182159, 24.059303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.750431, 40.341637, 23.945751>,  <40.519051, 40.607430, 23.756498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750431, 40.341637, 23.945751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629217, 0.005643, 0.777209,
		-0.519114, -0.747280, -0.414842,
		0.578452, -0.664485, 0.473130,
		40.923965, 40.142292, 24.087690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250114, 39.866947, 23.755775>,  <40.519051, 40.607430, 23.756498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250114, 39.866947, 23.755775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.488266, 39.895016, 24.075926>,  <40.631157, 39.911858, 24.268017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.488266, 39.895016, 24.075926>,  <40.250114, 39.866947, 23.755775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488266, 39.895016, 24.075926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775295, -0.211209, 0.595239,
		0.210813, -0.974919, -0.071348,
		0.595379, 0.070169, 0.800375,
		40.666882, 39.916065, 24.316038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998310, 39.346069, 24.285322>,  <40.250114, 39.866947, 23.755775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998310, 39.346069, 24.285322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.240246, 39.595848, 24.483002>,  <40.385406, 39.745716, 24.601608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.240246, 39.595848, 24.483002>,  <39.998310, 39.346069, 24.285322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240246, 39.595848, 24.483002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575707, -0.085895, 0.813132,
		0.550210, -0.776327, 0.307548,
		0.604839, 0.624451, 0.494197,
		40.421700, 39.783184, 24.631260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841423, 39.174927, 24.959988>,  <39.998310, 39.346069, 24.285322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841423, 39.174927, 24.959988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.041229, 39.512417, 25.038591>,  <40.161114, 39.714909, 25.085754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.041229, 39.512417, 25.038591>,  <39.841423, 39.174927, 24.959988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041229, 39.512417, 25.038591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493530, 0.090726, 0.864984,
		0.711978, -0.529057, 0.461721,
		0.499515, 0.843723, 0.196510,
		40.191086, 39.765533, 25.097544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085808, 39.159760, 25.615343>,  <39.841423, 39.174927, 24.959988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085808, 39.159760, 25.615343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.054420, 39.550423, 25.535364>,  <40.035587, 39.784821, 25.487377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.054420, 39.550423, 25.535364>,  <40.085808, 39.159760, 25.615343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054420, 39.550423, 25.535364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564054, 0.121881, 0.816693,
		0.822001, 0.176861, 0.541326,
		-0.078464, 0.976660, -0.199945,
		40.030880, 39.843422, 25.475380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975311, 39.482590, 26.361549>,  <40.085808, 39.159760, 25.615343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975311, 39.482590, 26.361549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.871296, 39.773281, 26.107225>,  <39.808887, 39.947697, 25.954632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.871296, 39.773281, 26.107225>,  <39.975311, 39.482590, 26.361549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871296, 39.773281, 26.107225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701672, 0.310140, 0.641459,
		0.663354, 0.612930, 0.429276,
		-0.260034, 0.726726, -0.635808,
		39.793285, 39.991299, 25.916483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889515, 40.034103, 26.769880>,  <39.975311, 39.482590, 26.361549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889515, 40.034103, 26.769880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.683983, 40.133038, 26.441294>,  <39.560665, 40.192398, 26.244143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.683983, 40.133038, 26.441294>,  <39.889515, 40.034103, 26.769880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683983, 40.133038, 26.441294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736313, 0.364241, 0.570237,
		0.440252, 0.897860, -0.005041,
		-0.513829, 0.247337, -0.821464,
		39.529835, 40.207237, 26.194855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708714, 40.684177, 26.908159>,  <39.889515, 40.034103, 26.769880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708714, 40.684177, 26.908159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.460594, 40.560101, 26.619989>,  <39.311722, 40.485657, 26.447088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.460594, 40.560101, 26.619989>,  <39.708714, 40.684177, 26.908159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460594, 40.560101, 26.619989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760001, 0.464832, 0.454235,
		0.193977, 0.829285, -0.524080,
		-0.620299, -0.310190, -0.720424,
		39.274506, 40.467045, 26.403862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253918, 41.167133, 26.795614>,  <39.708714, 40.684177, 26.908159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253918, 41.167133, 26.795614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038490, 40.880253, 26.618721>,  <38.909233, 40.708122, 26.512585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038490, 40.880253, 26.618721>,  <39.253918, 41.167133, 26.795614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038490, 40.880253, 26.618721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826388, 0.347199, 0.443323,
		-0.164411, 0.604213, -0.779677,
		-0.538564, -0.717203, -0.442231,
		38.876923, 40.665092, 26.486052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664486, 41.508289, 26.550602>,  <39.253918, 41.167133, 26.795614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664486, 41.508289, 26.550602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567596, 41.121326, 26.580135>,  <38.509464, 40.889149, 26.597855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567596, 41.121326, 26.580135>,  <38.664486, 41.508289, 26.550602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567596, 41.121326, 26.580135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858568, 0.249167, 0.448081,
		-0.451874, 0.045142, -0.890939,
		-0.242220, -0.967408, 0.073834,
		38.494930, 40.831104, 26.602285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924473, 41.365604, 26.326271>,  <38.664486, 41.508289, 26.550602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924473, 41.365604, 26.326271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.017483, 41.060711, 26.567911>,  <38.073288, 40.877777, 26.712894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.017483, 41.060711, 26.567911>,  <37.924473, 41.365604, 26.326271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017483, 41.060711, 26.567911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858273, 0.131356, 0.496099,
		-0.457493, -0.633839, -0.623657,
		0.232526, -0.762230, 0.604101,
		38.087242, 40.832043, 26.749142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324356, 40.966576, 26.317612>,  <37.924473, 41.365604, 26.326271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324356, 40.966576, 26.317612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.523487, 40.835918, 26.638977>,  <37.642963, 40.757523, 26.831797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.523487, 40.835918, 26.638977>,  <37.324356, 40.966576, 26.317612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523487, 40.835918, 26.638977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838291, 0.056270, 0.542311,
		-0.222350, -0.943472, -0.245809,
		0.497823, -0.326642, 0.803416,
		37.672832, 40.737926, 26.880001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859680, 41.020760, 25.856661>,  <37.324356, 40.966576, 26.317612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859680, 41.020760, 25.856661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.543789, 41.228622, 25.726254>,  <36.354256, 41.353340, 25.648008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.543789, 41.228622, 25.726254>,  <36.859680, 41.020760, 25.856661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543789, 41.228622, 25.726254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531306, 0.313720, -0.786952,
		-0.306664, -0.794695, -0.523849,
		-0.789729, 0.519654, -0.326019,
		36.306870, 41.384518, 25.628448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685066, 40.802906, 25.155113>,  <36.859680, 41.020760, 25.856661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685066, 40.802906, 25.155113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.543125, 41.173538, 25.204960>,  <36.457958, 41.395916, 25.234867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.543125, 41.173538, 25.204960>,  <36.685066, 40.802906, 25.155113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543125, 41.173538, 25.204960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594756, 0.326572, -0.734586,
		-0.721348, -0.186557, -0.666974,
		-0.354857, 0.926578, 0.124616,
		36.436668, 41.451511, 25.242344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735493, 41.110516, 24.517126>,  <36.685066, 40.802906, 25.155113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735493, 41.110516, 24.517126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.673836, 41.439659, 24.735901>,  <36.636841, 41.637146, 24.867167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.673836, 41.439659, 24.735901>,  <36.735493, 41.110516, 24.517126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673836, 41.439659, 24.735901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543984, 0.532779, -0.648250,
		-0.824817, 0.197604, -0.529746,
		-0.154140, 0.822860, 0.546939,
		36.627594, 41.686516, 24.899982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546520, 41.659779, 24.128258>,  <36.735493, 41.110516, 24.517126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546520, 41.659779, 24.128258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.719971, 41.828835, 24.446590>,  <36.824039, 41.930267, 24.637590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.719971, 41.828835, 24.446590>,  <36.546520, 41.659779, 24.128258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719971, 41.828835, 24.446590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508426, 0.614415, -0.603322,
		-0.743958, 0.666235, 0.051544,
		0.433624, 0.422640, 0.795830,
		36.850060, 41.955627, 24.685339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640930, 42.307320, 23.928118>,  <36.546520, 41.659779, 24.128258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640930, 42.307320, 23.928118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.875595, 42.288639, 24.251513>,  <37.016392, 42.277431, 24.445549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.875595, 42.288639, 24.251513>,  <36.640930, 42.307320, 23.928118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875595, 42.288639, 24.251513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626890, 0.658199, -0.416873,
		-0.512677, 0.751395, 0.415413,
		0.586660, -0.046697, 0.808486,
		37.051594, 42.274632, 24.494059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717384, 43.012833, 24.192450>,  <36.640930, 42.307320, 23.928118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717384, 43.012833, 24.192450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.036896, 42.788925, 24.280645>,  <37.228603, 42.654583, 24.333563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.036896, 42.788925, 24.280645>,  <36.717384, 43.012833, 24.192450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036896, 42.788925, 24.280645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594793, 0.679684, -0.429245,
		0.090413, 0.474018, 0.875861,
		0.798779, -0.559765, 0.220490,
		37.276531, 42.620995, 24.346792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347366, 43.464481, 24.104795>,  <36.717384, 43.012833, 24.192450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347366, 43.464481, 24.104795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.518032, 43.107059, 24.160677>,  <37.620430, 42.892605, 24.194206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.518032, 43.107059, 24.160677>,  <37.347366, 43.464481, 24.104795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518032, 43.107059, 24.160677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778261, 0.284051, -0.560022,
		0.460728, 0.347668, 0.816613,
		0.426662, -0.893556, 0.139706,
		37.646030, 42.838993, 24.202589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102695, 43.575478, 24.225103>,  <37.347366, 43.464481, 24.104795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102695, 43.575478, 24.225103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.088139, 43.195679, 24.100437>,  <38.079407, 42.967800, 24.025637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.088139, 43.195679, 24.100437>,  <38.102695, 43.575478, 24.225103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088139, 43.195679, 24.100437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836041, 0.141926, -0.529993,
		0.547459, -0.279852, 0.788652,
		-0.036390, -0.949495, -0.311666,
		38.077221, 42.910831, 24.006937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702160, 43.246662, 24.372059>,  <38.102695, 43.575478, 24.225103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702160, 43.246662, 24.372059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.564426, 43.005592, 24.084110>,  <38.481785, 42.860950, 23.911341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.564426, 43.005592, 24.084110>,  <38.702160, 43.246662, 24.372059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564426, 43.005592, 24.084110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852085, 0.121322, -0.509148,
		0.394188, -0.788710, 0.471755,
		-0.344335, -0.602676, -0.719872,
		38.461124, 42.824791, 23.868149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301693, 42.898014, 24.140423>,  <38.702160, 43.246662, 24.372059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301693, 42.898014, 24.140423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.050335, 42.842239, 23.834305>,  <38.899521, 42.808773, 23.650635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.050335, 42.842239, 23.834305>,  <39.301693, 42.898014, 24.140423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050335, 42.842239, 23.834305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723386, 0.257038, -0.640816,
		0.286066, -0.956288, -0.060651,
		-0.628394, -0.139442, -0.765295,
		38.861816, 42.800407, 23.604715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618504, 42.398079, 23.707832>,  <39.301693, 42.898014, 24.140423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618504, 42.398079, 23.707832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.339172, 42.592510, 23.497665>,  <39.171574, 42.709167, 23.371565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.339172, 42.592510, 23.497665>,  <39.618504, 42.398079, 23.707832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339172, 42.592510, 23.497665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686816, 0.248364, -0.683081,
		-0.201536, -0.837881, -0.507286,
		-0.698332, 0.486077, -0.525416,
		39.129673, 42.738335, 23.340040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705746, 42.175308, 22.926632>,  <39.618504, 42.398079, 23.707832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705746, 42.175308, 22.926632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.469940, 42.497570, 22.903315>,  <39.328457, 42.690926, 22.889324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.469940, 42.497570, 22.903315>,  <39.705746, 42.175308, 22.926632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469940, 42.497570, 22.903315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576017, 0.368701, -0.729564,
		-0.566281, -0.463667, -0.681424,
		-0.589516, 0.805650, -0.058292,
		39.293087, 42.739265, 22.885826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444599, 42.147850, 22.343271>,  <39.705746, 42.175308, 22.926632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444599, 42.147850, 22.343271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.416946, 42.537449, 22.429567>,  <39.400356, 42.771210, 22.481344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.416946, 42.537449, 22.429567>,  <39.444599, 42.147850, 22.343271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416946, 42.537449, 22.429567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715776, 0.199065, -0.669357,
		-0.694900, 0.108148, -0.710928,
		-0.069131, 0.974000, 0.215740,
		39.396206, 42.829651, 22.494289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509995, 42.473976, 21.713278>,  <39.444599, 42.147850, 22.343271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509995, 42.473976, 21.713278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.582176, 42.796345, 21.938816>,  <39.625484, 42.989765, 22.074139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.582176, 42.796345, 21.938816>,  <39.509995, 42.473976, 21.713278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582176, 42.796345, 21.938816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778412, 0.233410, -0.582747,
		-0.601257, 0.544065, -0.585220,
		0.180456, 0.805923, 0.563847,
		39.636314, 43.038120, 22.107969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951077, 41.981869, 21.675812>,  <39.509995, 42.473976, 21.713278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951077, 41.981869, 21.675812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170033, 41.673775, 21.544907>,  <39.301407, 41.488918, 21.466364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170033, 41.673775, 21.544907>,  <38.951077, 41.981869, 21.675812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170033, 41.673775, 21.544907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515397, -0.618358, 0.593295,
		-0.659346, -0.156090, -0.735459,
		0.547385, -0.770240, -0.327264,
		39.334248, 41.442703, 21.446728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504234, 41.518368, 21.444452>,  <38.951077, 41.981869, 21.675812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504234, 41.518368, 21.444452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.829586, 41.303696, 21.534245>,  <39.024796, 41.174892, 21.588120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.829586, 41.303696, 21.534245>,  <38.504234, 41.518368, 21.444452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829586, 41.303696, 21.534245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581398, -0.736734, 0.345254,
		-0.019910, -0.411333, -0.911268,
		0.813376, -0.536683, 0.224479,
		39.073597, 41.142693, 21.601589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379314, 40.963551, 21.053110>,  <38.504234, 41.518368, 21.444452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379314, 40.963551, 21.053110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.648529, 40.846027, 21.324608>,  <38.810059, 40.775513, 21.487507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.648529, 40.846027, 21.324608>,  <38.379314, 40.963551, 21.053110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648529, 40.846027, 21.324608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543616, -0.818778, 0.184618,
		0.501496, -0.493231, -0.710792,
		0.673040, -0.293812, 0.678742,
		38.850441, 40.757885, 21.528231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477928, 40.275318, 20.970371>,  <38.379314, 40.963551, 21.053110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477928, 40.275318, 20.970371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.599030, 40.319504, 21.349030>,  <38.671692, 40.346016, 21.576225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.599030, 40.319504, 21.349030>,  <38.477928, 40.275318, 20.970371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599030, 40.319504, 21.349030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603905, -0.746177, 0.280213,
		0.737318, -0.656520, -0.159199,
		0.302756, 0.110465, 0.946645,
		38.689857, 40.352642, 21.633022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773075, 39.608238, 21.233196>,  <38.477928, 40.275318, 20.970371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773075, 39.608238, 21.233196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.687305, 39.822338, 21.560007>,  <38.635841, 39.950798, 21.756094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.687305, 39.822338, 21.560007>,  <38.773075, 39.608238, 21.233196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687305, 39.822338, 21.560007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440404, -0.799609, 0.408252,
		0.871818, -0.272282, 0.407182,
		-0.214426, 0.535245, 0.817028,
		38.622978, 39.982910, 21.805115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846817, 39.085701, 21.787304>,  <38.773075, 39.608238, 21.233196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846817, 39.085701, 21.787304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.669632, 39.384686, 21.985331>,  <38.563320, 39.564075, 22.104147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.669632, 39.384686, 21.985331>,  <38.846817, 39.085701, 21.787304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669632, 39.384686, 21.985331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623560, -0.653617, 0.428903,
		0.644171, -0.118717, 0.755612,
		-0.442963, 0.747457, 0.495068,
		38.536743, 39.608921, 22.133850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844990, 38.922676, 22.525242>,  <38.846817, 39.085701, 21.787304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844990, 38.922676, 22.525242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.530434, 39.161114, 22.460411>,  <38.341702, 39.304176, 22.421513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.530434, 39.161114, 22.460411>,  <38.844990, 38.922676, 22.525242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530434, 39.161114, 22.460411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596473, -0.664479, 0.450208,
		0.160671, 0.450711, 0.878091,
		-0.786387, 0.596093, -0.162075,
		38.294518, 39.339943, 22.411789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328354, 38.564163, 22.891287>,  <38.844990, 38.922676, 22.525242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328354, 38.564163, 22.891287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.479885, 38.221153, 22.752069>,  <39.570805, 38.015347, 22.668539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.479885, 38.221153, 22.752069>,  <39.328354, 38.564163, 22.891287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479885, 38.221153, 22.752069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635143, 0.514430, -0.576155,
		0.673113, -0.002792, 0.739534,
		0.378830, -0.857528, -0.348043,
		39.593533, 37.963894, 22.647657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030079, 38.705490, 22.858686>,  <39.328354, 38.564163, 22.891287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030079, 38.705490, 22.858686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.967400, 38.401154, 22.606792>,  <39.929794, 38.218552, 22.455656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.967400, 38.401154, 22.606792>,  <40.030079, 38.705490, 22.858686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967400, 38.401154, 22.606792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622550, 0.418905, -0.661023,
		0.766732, -0.495622, 0.408020,
		-0.156696, -0.760840, -0.629737,
		39.920391, 38.172901, 22.417871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707905, 38.591663, 22.573969>,  <40.030079, 38.705490, 22.858686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707905, 38.591663, 22.573969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.463142, 38.399834, 22.322392>,  <40.316284, 38.284737, 22.171444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.463142, 38.399834, 22.322392>,  <40.707905, 38.591663, 22.573969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463142, 38.399834, 22.322392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725895, -0.024750, -0.687361,
		0.314077, -0.877150, 0.363268,
		-0.611909, -0.479578, -0.628945,
		40.279572, 38.255959, 22.133707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001736, 37.862537, 22.474102>,  <40.707905, 38.591663, 22.573969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001736, 37.862537, 22.474102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.784874, 38.021572, 22.177996>,  <40.654758, 38.116993, 22.000332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.784874, 38.021572, 22.177996>,  <41.001736, 37.862537, 22.474102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784874, 38.021572, 22.177996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822538, 0.071039, -0.564255,
		-0.171751, -0.914811, -0.365543,
		-0.542154, 0.397585, -0.740266,
		40.622227, 38.140846, 21.955915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108727, 37.532219, 21.938316>,  <41.001736, 37.862537, 22.474102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108727, 37.532219, 21.938316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.978958, 37.876106, 21.780516>,  <40.901096, 38.082439, 21.685835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.978958, 37.876106, 21.780516>,  <41.108727, 37.532219, 21.938316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978958, 37.876106, 21.780516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693046, -0.067811, -0.717697,
		-0.643771, -0.506242, -0.573827,
		-0.324417, 0.859721, -0.394504,
		40.881634, 38.134022, 21.662165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453815, 37.579201, 21.276264>,  <41.108727, 37.532219, 21.938316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453815, 37.579201, 21.276264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.305492, 37.949020, 21.311394>,  <41.216499, 38.170914, 21.332472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.305492, 37.949020, 21.311394>,  <41.453815, 37.579201, 21.276264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305492, 37.949020, 21.311394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727765, 0.348020, -0.590966,
		-0.576940, -0.155220, -0.801902,
		-0.370808, 0.924548, 0.087823,
		41.194248, 38.226383, 21.337740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413071, 37.851006, 20.576427>,  <41.453815, 37.579201, 21.276264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413071, 37.851006, 20.576427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.402386, 38.161163, 20.828794>,  <41.395973, 38.347256, 20.980215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.402386, 38.161163, 20.828794>,  <41.413071, 37.851006, 20.576427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402386, 38.161163, 20.828794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717172, 0.454541, -0.528259,
		-0.696384, 0.438362, -0.568232,
		-0.026716, 0.775391, 0.630916,
		41.394371, 38.393780, 21.018068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515533, 38.426964, 20.143127>,  <41.413071, 37.851006, 20.576427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515533, 38.426964, 20.143127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.605110, 38.555042, 20.511328>,  <41.658855, 38.631889, 20.732248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.605110, 38.555042, 20.511328>,  <41.515533, 38.426964, 20.143127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605110, 38.555042, 20.511328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754760, 0.540566, -0.371653,
		-0.616595, 0.777986, -0.120617,
		0.223939, 0.320196, 0.920503,
		41.672291, 38.651100, 20.787479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526951, 39.095905, 20.091467>,  <41.515533, 38.426964, 20.143127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526951, 39.095905, 20.091467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.762051, 39.005440, 20.402182>,  <41.903111, 38.951160, 20.588612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.762051, 39.005440, 20.402182>,  <41.526951, 39.095905, 20.091467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762051, 39.005440, 20.402182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809011, 0.172738, -0.561839,
		-0.007116, 0.958652, 0.284493,
		0.587751, -0.226160, 0.776789,
		41.938377, 38.937592, 20.635218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<30.890730, 33.723911, 30.560801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.173462, 33.718636, 30.843704>,  <31.343102, 33.715469, 31.013447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.173462, 33.718636, 30.843704>,  <30.890730, 33.723911, 30.560801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173462, 33.718636, 30.843704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706209, 0.070744, -0.704460,
		-0.040743, 0.997407, 0.059319,
		0.706830, -0.013190, 0.707260,
		31.385511, 33.714680, 31.055882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279188, 34.370800, 30.598581>,  <30.890730, 33.723911, 30.560801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279188, 34.370800, 30.598581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504238, 34.067997, 30.731482>,  <31.639269, 33.886314, 30.811222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504238, 34.067997, 30.731482>,  <31.279188, 34.370800, 30.598581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504238, 34.067997, 30.731482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561345, 0.054775, -0.825767,
		0.606913, 0.651106, 0.455760,
		0.562627, -0.757007, 0.332251,
		31.673027, 33.840897, 30.831158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894554, 34.488937, 30.372980>,  <31.279188, 34.370800, 30.598581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894554, 34.488937, 30.372980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.976645, 34.109554, 30.469576>,  <32.025898, 33.881924, 30.527533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.976645, 34.109554, 30.469576>,  <31.894554, 34.488937, 30.372980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976645, 34.109554, 30.469576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596827, -0.074276, -0.798925,
		0.775681, 0.308087, 0.550819,
		0.205225, -0.948454, 0.241489,
		32.038212, 33.825020, 30.542023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600780, 34.443226, 30.286671>,  <31.894554, 34.488937, 30.372980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600780, 34.443226, 30.286671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453018, 34.074257, 30.241650>,  <32.364361, 33.852875, 30.214638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453018, 34.074257, 30.241650>,  <32.600780, 34.443226, 30.286671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453018, 34.074257, 30.241650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543840, -0.116386, -0.831079,
		0.753510, -0.368217, 0.544646,
		-0.369407, -0.922427, -0.112553,
		32.342197, 33.797527, 30.207884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111885, 34.104961, 29.883341>,  <32.600780, 34.443226, 30.286671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111885, 34.104961, 29.883341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.805489, 33.854660, 29.824432>,  <32.621651, 33.704479, 29.789087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.805489, 33.854660, 29.824432>,  <33.111885, 34.104961, 29.883341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805489, 33.854660, 29.824432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393262, -0.274906, -0.877366,
		0.508528, -0.729973, 0.456661,
		-0.765993, -0.625753, -0.147273,
		32.575691, 33.666935, 29.780251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435379, 33.541271, 29.747620>,  <33.111885, 34.104961, 29.883341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435379, 33.541271, 29.747620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068264, 33.503330, 29.593386>,  <32.847996, 33.480564, 29.500845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.068264, 33.503330, 29.593386>,  <33.435379, 33.541271, 29.747620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068264, 33.503330, 29.593386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396550, -0.269118, -0.877681,
		-0.020519, -0.958425, 0.284605,
		-0.917784, -0.094851, -0.385585,
		32.792931, 33.474876, 29.477711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569202, 32.961349, 29.456017>,  <33.435379, 33.541271, 29.747620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569202, 32.961349, 29.456017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.258133, 33.142685, 29.281797>,  <33.071491, 33.251484, 29.177265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.258133, 33.142685, 29.281797>,  <33.569202, 32.961349, 29.456017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258133, 33.142685, 29.281797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494248, 0.012739, -0.869228,
		-0.388505, -0.891248, -0.233968,
		-0.777678, 0.453337, -0.435549,
		33.024830, 33.278687, 29.151133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366848, 32.537571, 28.896688>,  <33.569202, 32.961349, 29.456017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366848, 32.537571, 28.896688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.239136, 32.908859, 28.820295>,  <33.162510, 33.131630, 28.774460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.239136, 32.908859, 28.820295>,  <33.366848, 32.537571, 28.896688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239136, 32.908859, 28.820295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386046, -0.056657, -0.920738,
		-0.865465, -0.367700, -0.340245,
		-0.319278, 0.928217, -0.190984,
		33.143353, 33.187325, 28.763000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086945, 32.519337, 28.240627>,  <33.366848, 32.537571, 28.896688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086945, 32.519337, 28.240627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139881, 32.911770, 28.297144>,  <33.171642, 33.147228, 28.331053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139881, 32.911770, 28.297144>,  <33.086945, 32.519337, 28.240627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139881, 32.911770, 28.297144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301108, 0.096016, -0.948744,
		-0.944362, 0.168101, -0.282705,
		0.132340, 0.981083, 0.141290,
		33.179585, 33.206093, 28.339531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782124, 32.889172, 27.630423>,  <33.086945, 32.519337, 28.240627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782124, 32.889172, 27.630423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029457, 33.164398, 27.782330>,  <33.177856, 33.329536, 27.873474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029457, 33.164398, 27.782330>,  <32.782124, 32.889172, 27.630423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029457, 33.164398, 27.782330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407571, 0.132420, -0.903522,
		-0.671974, 0.713461, -0.198557,
		0.618335, 0.688069, 0.379768,
		33.214958, 33.370819, 27.896259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689636, 33.446011, 27.159641>,  <32.782124, 32.889172, 27.630423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689636, 33.446011, 27.159641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.037960, 33.522526, 27.340790>,  <33.246956, 33.568436, 27.449480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.037960, 33.522526, 27.340790>,  <32.689636, 33.446011, 27.159641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037960, 33.522526, 27.340790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428410, 0.156585, -0.889913,
		-0.241140, 0.968964, 0.054408,
		0.870813, 0.191285, 0.452873,
		33.299206, 33.579910, 27.476652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933315, 34.041855, 26.779472>,  <32.689636, 33.446011, 27.159641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933315, 34.041855, 26.779472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.241951, 33.900291, 26.990906>,  <33.427132, 33.815353, 27.117765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.241951, 33.900291, 26.990906>,  <32.933315, 34.041855, 26.779472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241951, 33.900291, 26.990906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606440, 0.158378, -0.779196,
		0.192050, 0.921772, 0.336828,
		0.771587, -0.353910, 0.528583,
		33.473427, 33.794117, 27.149481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589901, 34.678955, 26.961761>,  <32.933315, 34.041855, 26.779472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589901, 34.678955, 26.961761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.323143, 34.902367, 26.764460>,  <32.163090, 35.036411, 26.646078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.323143, 34.902367, 26.764460>,  <32.589901, 34.678955, 26.961761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323143, 34.902367, 26.764460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681987, -0.190772, 0.706045,
		0.300245, 0.807251, 0.508132,
		-0.666893, 0.558527, -0.493257,
		32.123074, 35.069923, 26.616482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291752, 34.995598, 27.426155>,  <32.589901, 34.678955, 26.961761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291752, 34.995598, 27.426155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.008537, 35.042919, 27.147675>,  <31.838610, 35.071312, 26.980587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.008537, 35.042919, 27.147675>,  <32.291752, 34.995598, 27.426155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008537, 35.042919, 27.147675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697698, -0.269520, 0.663760,
		-0.109117, 0.955701, 0.273366,
		-0.708033, 0.118300, -0.696200,
		31.796127, 35.078407, 26.938814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843960, 35.478283, 27.636896>,  <32.291752, 34.995598, 27.426155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843960, 35.478283, 27.636896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.626461, 35.256878, 27.384562>,  <31.495962, 35.124035, 27.233160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.626461, 35.256878, 27.384562>,  <31.843960, 35.478283, 27.636896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626461, 35.256878, 27.384562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727508, -0.063876, 0.683119,
		-0.418413, 0.830385, -0.367956,
		-0.543748, -0.553517, -0.630838,
		31.463337, 35.090824, 27.195311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050180, 35.649525, 27.756191>,  <31.843960, 35.478283, 27.636896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050180, 35.649525, 27.756191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.013571, 35.309544, 27.548655>,  <30.991606, 35.105553, 27.424133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.013571, 35.309544, 27.548655>,  <31.050180, 35.649525, 27.756191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013571, 35.309544, 27.548655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743209, -0.288474, 0.603675,
		-0.662770, 0.440858, -0.605294,
		-0.091524, -0.849957, -0.518841,
		30.986115, 35.054558, 27.393002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388523, 35.560440, 27.546080>,  <31.050180, 35.649525, 27.756191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388523, 35.560440, 27.546080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.534857, 35.188240, 27.553347>,  <30.622658, 34.964920, 27.557707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.534857, 35.188240, 27.553347>,  <30.388523, 35.560440, 27.546080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534857, 35.188240, 27.553347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772835, -0.292855, 0.562993,
		-0.518547, -0.220001, -0.826262,
		0.365834, -0.930503, 0.018166,
		30.644608, 34.909088, 27.558796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814207, 35.054199, 27.361479>,  <30.388523, 35.560440, 27.546080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814207, 35.054199, 27.361479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.097494, 34.874916, 27.579666>,  <30.267466, 34.767345, 27.710579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.097494, 34.874916, 27.579666>,  <29.814207, 35.054199, 27.361479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097494, 34.874916, 27.579666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700585, -0.350721, 0.621430,
		-0.087221, -0.822256, -0.562394,
		0.708218, -0.448207, 0.545470,
		30.309959, 34.740456, 27.743307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500984, 34.423748, 27.509794>,  <29.814207, 35.054199, 27.361479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500984, 34.423748, 27.509794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.790232, 34.419044, 27.786043>,  <29.963781, 34.416222, 27.951792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.790232, 34.419044, 27.786043>,  <29.500984, 34.423748, 27.509794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790232, 34.419044, 27.786043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674813, -0.225382, 0.702730,
		0.147391, -0.974199, -0.170913,
		0.723120, -0.011759, 0.690622,
		30.007168, 34.415516, 27.993229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391745, 33.783245, 28.010275>,  <29.500984, 34.423748, 27.509794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391745, 33.783245, 28.010275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.622915, 34.041267, 28.210236>,  <29.761618, 34.196079, 28.330212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.622915, 34.041267, 28.210236>,  <29.391745, 33.783245, 28.010275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622915, 34.041267, 28.210236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531596, -0.167211, 0.830329,
		0.619199, -0.745615, 0.246275,
		0.577926, 0.645057, 0.499903,
		29.796293, 34.234783, 28.360207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597248, 33.406021, 28.586967>,  <29.391745, 33.783245, 28.010275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597248, 33.406021, 28.586967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.613720, 33.798649, 28.661608>,  <29.623602, 34.034225, 28.706392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.613720, 33.798649, 28.661608>,  <29.597248, 33.406021, 28.586967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613720, 33.798649, 28.661608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472335, -0.145448, 0.869336,
		0.880457, -0.123935, 0.457642,
		0.041178, 0.981573, 0.186599,
		29.626074, 34.093121, 28.717588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660736, 33.400734, 29.295801>,  <29.597248, 33.406021, 28.586967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660736, 33.400734, 29.295801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.540974, 33.773796, 29.215296>,  <29.469116, 33.997635, 29.166992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.540974, 33.773796, 29.215296>,  <29.660736, 33.400734, 29.295801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540974, 33.773796, 29.215296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458954, 0.044153, 0.887362,
		0.836490, 0.358055, 0.414827,
		-0.299408, 0.932656, -0.201265,
		29.451151, 34.053593, 29.154917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825346, 33.831970, 29.885231>,  <29.660736, 33.400734, 29.295801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825346, 33.831970, 29.885231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.526453, 34.025925, 29.703449>,  <29.347116, 34.142300, 29.594379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.526453, 34.025925, 29.703449>,  <29.825346, 33.831970, 29.885231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526453, 34.025925, 29.703449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515341, 0.008990, 0.856938,
		0.419604, 0.874530, 0.243165,
		-0.747232, 0.484888, -0.454454,
		29.302284, 34.171391, 29.567114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601627, 34.133610, 30.428371>,  <29.825346, 33.831970, 29.885231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601627, 34.133610, 30.428371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.306015, 34.154491, 30.159712>,  <29.128649, 34.167019, 29.998516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.306015, 34.154491, 30.159712>,  <29.601627, 34.133610, 30.428371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306015, 34.154491, 30.159712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668637, 0.064840, 0.740757,
		0.082220, 0.996529, -0.013013,
		-0.739030, 0.052204, -0.671647,
		29.084307, 34.170155, 29.958218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179688, 34.767075, 30.548777>,  <29.601627, 34.133610, 30.428371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179688, 34.767075, 30.548777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.943113, 34.523293, 30.337582>,  <28.801168, 34.377026, 30.210865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.943113, 34.523293, 30.337582>,  <29.179688, 34.767075, 30.548777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943113, 34.523293, 30.337582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715179, 0.094023, 0.692589,
		-0.372457, 0.787227, -0.491476,
		-0.591435, -0.609453, -0.527988,
		28.765682, 34.340458, 30.179186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426821, 34.889042, 30.773790>,  <29.179688, 34.767075, 30.548777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426821, 34.889042, 30.773790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.381504, 34.556149, 30.556700>,  <28.354313, 34.356411, 30.426445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.381504, 34.556149, 30.556700>,  <28.426821, 34.889042, 30.773790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381504, 34.556149, 30.556700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621067, -0.367050, 0.692495,
		-0.775526, 0.415524, -0.475289,
		-0.113294, -0.832234, -0.542725,
		28.347515, 34.306477, 30.393883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591244, 35.573872, 31.178905>,  <28.426821, 34.889042, 30.773790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591244, 35.573872, 31.178905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.545975, 35.892826, 31.416012>,  <28.518814, 36.084198, 31.558275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.545975, 35.892826, 31.416012>,  <28.591244, 35.573872, 31.178905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545975, 35.892826, 31.416012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488776, 0.564098, -0.665501,
		-0.865038, 0.214413, -0.453582,
		-0.113173, 0.797384, 0.592766,
		28.512022, 36.132042, 31.593842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346630, 36.245987, 30.741423>,  <28.591244, 35.573872, 31.178905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346630, 36.245987, 30.741423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.506979, 36.374336, 31.084665>,  <28.603189, 36.451344, 31.290611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.506979, 36.374336, 31.084665>,  <28.346630, 36.245987, 30.741423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506979, 36.374336, 31.084665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390863, 0.787230, -0.476964,
		-0.828569, 0.526604, 0.190165,
		0.400874, 0.320869, 0.858104,
		28.627241, 36.470596, 31.342096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181198, 36.962570, 30.886009>,  <28.346630, 36.245987, 30.741423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181198, 36.962570, 30.886009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.524015, 36.858383, 31.063833>,  <28.729706, 36.795872, 31.170527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.524015, 36.858383, 31.063833>,  <28.181198, 36.962570, 30.886009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524015, 36.858383, 31.063833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430063, 0.836812, -0.338809,
		-0.283763, 0.481563, 0.829202,
		0.857044, -0.260467, 0.444559,
		28.781128, 36.780243, 31.197201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430338, 37.507042, 31.277948>,  <28.181198, 36.962570, 30.886009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430338, 37.507042, 31.277948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.715065, 37.251698, 31.160776>,  <28.885902, 37.098492, 31.090473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.715065, 37.251698, 31.160776>,  <28.430338, 37.507042, 31.277948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715065, 37.251698, 31.160776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594115, 0.769699, -0.233648,
		0.374621, -0.007719, 0.927146,
		0.711820, -0.638360, -0.292932,
		28.928612, 37.060188, 31.072897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038908, 37.736984, 31.586210>,  <28.430338, 37.507042, 31.277948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038908, 37.736984, 31.586210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.170092, 37.517414, 31.278671>,  <29.248802, 37.385674, 31.094149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.170092, 37.517414, 31.278671>,  <29.038908, 37.736984, 31.586210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170092, 37.517414, 31.278671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622937, 0.737507, -0.260832,
		0.710206, -0.393400, 0.583818,
		0.327959, -0.548926, -0.768846,
		29.268478, 37.352737, 31.048018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774288, 37.914070, 31.556427>,  <29.038908, 37.736984, 31.586210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774288, 37.914070, 31.556427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.720825, 37.745411, 31.197683>,  <29.688747, 37.644215, 30.982437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.720825, 37.745411, 31.197683>,  <29.774288, 37.914070, 31.556427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720825, 37.745411, 31.197683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631777, 0.660991, -0.404906,
		0.763540, -0.620732, 0.178040,
		-0.133656, -0.421644, -0.896857,
		29.680729, 37.618919, 30.928627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473602, 37.844322, 31.293743>,  <29.774288, 37.914070, 31.556427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473602, 37.844322, 31.293743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.242466, 37.790123, 30.971813>,  <30.103785, 37.757603, 30.778656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.242466, 37.790123, 30.971813>,  <30.473602, 37.844322, 31.293743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242466, 37.790123, 30.971813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748287, 0.305736, -0.588721,
		0.325836, -0.942425, -0.075273,
		-0.577839, -0.135500, -0.804824,
		30.069115, 37.749474, 30.730366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825903, 37.376526, 30.787992>,  <30.473602, 37.844322, 31.293743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825903, 37.376526, 30.787992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.556658, 37.588028, 30.581173>,  <30.395111, 37.714928, 30.457081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.556658, 37.588028, 30.581173>,  <30.825903, 37.376526, 30.787992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556658, 37.588028, 30.581173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732283, 0.378830, -0.565906,
		-0.103349, -0.759546, -0.642191,
		-0.673113, 0.528751, -0.517050,
		30.354723, 37.746655, 30.426058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976290, 37.242596, 30.041607>,  <30.825903, 37.376526, 30.787992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976290, 37.242596, 30.041607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.765432, 37.582161, 30.056925>,  <30.638918, 37.785900, 30.066116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.765432, 37.582161, 30.056925>,  <30.976290, 37.242596, 30.041607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765432, 37.582161, 30.056925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628645, 0.419896, -0.654594,
		-0.571772, -0.320993, -0.755010,
		-0.527146, 0.848912, 0.038294,
		30.607288, 37.836834, 30.068413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910620, 37.390919, 29.317604>,  <30.976290, 37.242596, 30.041607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910620, 37.390919, 29.317604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.820370, 37.731167, 29.507568>,  <30.766220, 37.935314, 29.621546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.820370, 37.731167, 29.507568>,  <30.910620, 37.390919, 29.317604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820370, 37.731167, 29.507568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680830, 0.486354, -0.547659,
		-0.696824, 0.199766, -0.688862,
		-0.225627, 0.850619, 0.474910,
		30.752682, 37.986351, 29.650042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801571, 37.960091, 28.799088>,  <30.910620, 37.390919, 29.317604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801571, 37.960091, 28.799088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.876610, 38.147297, 29.144520>,  <30.921633, 38.259621, 29.351778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.876610, 38.147297, 29.144520>,  <30.801571, 37.960091, 28.799088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876610, 38.147297, 29.144520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581136, 0.655920, -0.481716,
		-0.791889, 0.592226, -0.148932,
		0.187597, 0.468015, 0.863579,
		30.932888, 38.287701, 29.403593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737368, 38.622372, 28.661180>,  <30.801571, 37.960091, 28.799088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737368, 38.622372, 28.661180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.967552, 38.640469, 28.987812>,  <31.105663, 38.651325, 29.183790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.967552, 38.640469, 28.987812>,  <30.737368, 38.622372, 28.661180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967552, 38.640469, 28.987812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620247, 0.626643, -0.471818,
		-0.533047, 0.777992, 0.332550,
		0.575461, 0.045238, 0.816577,
		31.140190, 38.654041, 29.232786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937925, 39.265083, 28.791775>,  <30.737368, 38.622372, 28.661180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937925, 39.265083, 28.791775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.229687, 39.056126, 28.968445>,  <31.404743, 38.930752, 29.074448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.229687, 39.056126, 28.968445>,  <30.937925, 39.265083, 28.791775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229687, 39.056126, 28.968445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678984, 0.631542, -0.374346,
		-0.083380, 0.572939, 0.815346,
		0.729403, -0.522394, 0.441675,
		31.448507, 38.899406, 29.100946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404018, 39.790497, 28.931694>,  <30.937925, 39.265083, 28.791775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404018, 39.790497, 28.931694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.610394, 39.448448, 28.951967>,  <31.734219, 39.243217, 28.964130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.610394, 39.448448, 28.951967>,  <31.404018, 39.790497, 28.931694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610394, 39.448448, 28.951967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819571, 0.475540, -0.319632,
		0.249224, 0.206449, 0.946185,
		0.515937, -0.855126, 0.050684,
		31.765175, 39.191910, 28.967173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105232, 39.975433, 29.299973>,  <31.404018, 39.790497, 28.931694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105232, 39.975433, 29.299973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.145981, 39.629597, 29.103157>,  <32.170429, 39.422096, 28.985067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.145981, 39.629597, 29.103157>,  <32.105232, 39.975433, 29.299973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145981, 39.629597, 29.103157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852221, 0.330995, -0.405169,
		0.513169, -0.378053, 0.770541,
		0.101870, -0.864592, -0.492040,
		32.176540, 39.370220, 28.955545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901932, 39.844463, 29.275303>,  <32.105232, 39.975433, 29.299973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901932, 39.844463, 29.275303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749695, 39.618443, 28.982491>,  <32.658352, 39.482830, 28.806803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749695, 39.618443, 28.982491>,  <32.901932, 39.844463, 29.275303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749695, 39.618443, 28.982491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849401, 0.099356, -0.518310,
		0.365602, -0.819054, 0.442138,
		-0.380595, -0.565048, -0.732030,
		32.635517, 39.448929, 28.762882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404831, 39.408260, 29.072672>,  <32.901932, 39.844463, 29.275303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404831, 39.408260, 29.072672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173222, 39.380863, 28.747702>,  <33.034256, 39.364426, 28.552719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.173222, 39.380863, 28.747702>,  <33.404831, 39.408260, 29.072672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173222, 39.380863, 28.747702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764975, 0.299054, -0.570421,
		0.282030, -0.951775, -0.120764,
		-0.579028, -0.068495, -0.812426,
		32.999512, 39.360313, 28.503973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936790, 39.356293, 28.576897>,  <33.404831, 39.408260, 29.072672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936790, 39.356293, 28.576897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619827, 39.411644, 28.339264>,  <33.429649, 39.444855, 28.196684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619827, 39.411644, 28.339264>,  <33.936790, 39.356293, 28.576897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619827, 39.411644, 28.339264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599130, 0.359489, -0.715410,
		0.114569, -0.922832, -0.367770,
		-0.792413, 0.138378, -0.594082,
		33.382103, 39.453156, 28.161039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005348, 38.967281, 28.011175>,  <33.936790, 39.356293, 28.576897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005348, 38.967281, 28.011175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.774719, 39.278179, 27.910423>,  <33.636341, 39.464718, 27.849972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.774719, 39.278179, 27.910423>,  <34.005348, 38.967281, 28.011175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774719, 39.278179, 27.910423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686206, 0.293328, -0.665643,
		-0.443487, -0.556635, -0.702479,
		-0.576577, 0.777249, -0.251879,
		33.601746, 39.511353, 27.834860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985462, 38.950455, 27.227896>,  <34.005348, 38.967281, 28.011175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985462, 38.950455, 27.227896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873608, 39.318348, 27.338091>,  <33.806496, 39.539085, 27.404207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873608, 39.318348, 27.338091>,  <33.985462, 38.950455, 27.227896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873608, 39.318348, 27.338091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587170, 0.390841, -0.708855,
		-0.759630, -0.036462, -0.649333,
		-0.279632, 0.919736, 0.275486,
		33.789719, 39.594269, 27.420736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750839, 39.315224, 26.612980>,  <33.985462, 38.950455, 27.227896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750839, 39.315224, 26.612980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831196, 39.616043, 26.864080>,  <33.879410, 39.796535, 27.014740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.831196, 39.616043, 26.864080>,  <33.750839, 39.315224, 26.612980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831196, 39.616043, 26.864080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631094, 0.390762, -0.670094,
		-0.749243, 0.530782, -0.396113,
		0.200888, 0.752047, 0.627749,
		33.891460, 39.841656, 27.052404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717655, 39.948227, 26.151737>,  <33.750839, 39.315224, 26.612980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717655, 39.948227, 26.151737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.911575, 40.046230, 26.487581>,  <34.027927, 40.105030, 26.689087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.911575, 40.046230, 26.487581>,  <33.717655, 39.948227, 26.151737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911575, 40.046230, 26.487581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535871, 0.675479, -0.506529,
		-0.691239, 0.695486, 0.196182,
		0.484800, 0.245004, 0.839608,
		34.057014, 40.119732, 26.739464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904278, 40.627392, 26.073206>,  <33.717655, 39.948227, 26.151737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904278, 40.627392, 26.073206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.148861, 40.526424, 26.373180>,  <34.295612, 40.465843, 26.553165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.148861, 40.526424, 26.373180>,  <33.904278, 40.627392, 26.073206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148861, 40.526424, 26.373180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654860, 0.693422, -0.300542,
		-0.444161, 0.674872, 0.589295,
		0.611457, -0.252417, 0.749937,
		34.332298, 40.450699, 26.598162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035820, 41.209709, 26.244356>,  <33.904278, 40.627392, 26.073206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035820, 41.209709, 26.244356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335911, 40.967918, 26.351507>,  <34.515965, 40.822842, 26.415798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335911, 40.967918, 26.351507>,  <34.035820, 41.209709, 26.244356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335911, 40.967918, 26.351507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649807, 0.599294, -0.467544,
		0.122083, 0.524835, 0.842404,
		0.750231, -0.604479, 0.267877,
		34.560982, 40.786575, 26.431870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553051, 41.615559, 26.503590>,  <34.035820, 41.209709, 26.244356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553051, 41.615559, 26.503590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749104, 41.280914, 26.405733>,  <34.866737, 41.080128, 26.347019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749104, 41.280914, 26.405733>,  <34.553051, 41.615559, 26.503590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749104, 41.280914, 26.405733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752568, 0.547773, -0.365495,
		0.439786, -0.004969, 0.898089,
		0.490133, -0.836612, -0.244642,
		34.896145, 41.029930, 26.332340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242680, 41.662548, 26.826855>,  <34.553051, 41.615559, 26.503590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242680, 41.662548, 26.826855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.261440, 41.394218, 26.530802>,  <35.272697, 41.233219, 26.353170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.261440, 41.394218, 26.530802>,  <35.242680, 41.662548, 26.826855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261440, 41.394218, 26.530802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825965, 0.442743, -0.348942,
		0.561767, -0.594955, 0.574844,
		0.046903, -0.670825, -0.740131,
		35.275513, 41.192970, 26.308762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921200, 41.344028, 26.820053>,  <35.242680, 41.662548, 26.826855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921200, 41.344028, 26.820053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779171, 41.283558, 26.451040>,  <35.693954, 41.247276, 26.229631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779171, 41.283558, 26.451040>,  <35.921200, 41.344028, 26.820053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779171, 41.283558, 26.451040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868096, 0.312865, -0.385389,
		0.346890, -0.937690, 0.020144,
		-0.355073, -0.151174, -0.922534,
		35.672649, 41.238205, 26.174280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432629, 41.248608, 26.403381>,  <35.921200, 41.344028, 26.820053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432629, 41.248608, 26.403381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162827, 41.291809, 26.111250>,  <36.000946, 41.317730, 25.935972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162827, 41.291809, 26.111250>,  <36.432629, 41.248608, 26.403381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162827, 41.291809, 26.111250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726845, 0.270509, -0.631286,
		0.129376, -0.956640, -0.260964,
		-0.674506, 0.108007, -0.730326,
		35.960476, 41.324211, 25.892153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752918, 40.640690, 26.618870>,  <36.432629, 41.248608, 26.403381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752918, 40.640690, 26.618870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025951, 40.623840, 26.910709>,  <37.189770, 40.613731, 27.085814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025951, 40.623840, 26.910709>,  <36.752918, 40.640690, 26.618870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025951, 40.623840, 26.910709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726839, -0.143096, 0.671736,
		0.076104, -0.988812, -0.128294,
		0.682579, -0.042127, 0.729597,
		37.230724, 40.611202, 27.129589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575508, 40.018524, 27.031450>,  <36.752918, 40.640690, 26.618870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575508, 40.018524, 27.031450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.818829, 40.218651, 27.277912>,  <36.964821, 40.338726, 27.425789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.818829, 40.218651, 27.277912>,  <36.575508, 40.018524, 27.031450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818829, 40.218651, 27.277912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596843, -0.223394, 0.770632,
		0.523205, -0.836528, 0.162719,
		0.608305, 0.500316, 0.616157,
		37.001320, 40.368744, 27.462759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939709, 39.624752, 27.565990>,  <36.575508, 40.018524, 27.031450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939709, 39.624752, 27.565990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.918095, 39.986950, 27.734348>,  <36.905125, 40.204269, 27.835363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.918095, 39.986950, 27.734348>,  <36.939709, 39.624752, 27.565990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918095, 39.986950, 27.734348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420524, -0.402944, 0.812893,
		0.905671, -0.133072, 0.402557,
		-0.054034, 0.905499, 0.420895,
		36.901886, 40.258598, 27.860617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247318, 39.549168, 28.227173>,  <36.939709, 39.624752, 27.565990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247318, 39.549168, 28.227173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009224, 39.870174, 28.210882>,  <36.866367, 40.062778, 28.201109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.009224, 39.870174, 28.210882>,  <37.247318, 39.549168, 28.227173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009224, 39.870174, 28.210882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442686, -0.285206, 0.850110,
		0.670613, 0.524045, 0.525028,
		-0.595237, 0.802517, -0.040724,
		36.830654, 40.110931, 28.198666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102707, 39.646179, 28.923151>,  <37.247318, 39.549168, 28.227173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102707, 39.646179, 28.923151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.806610, 39.842243, 28.739071>,  <36.628952, 39.959881, 28.628624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.806610, 39.842243, 28.739071>,  <37.102707, 39.646179, 28.923151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806610, 39.842243, 28.739071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602038, -0.178528, 0.778253,
		0.299307, 0.853156, 0.427247,
		-0.740246, 0.490156, -0.460198,
		36.584538, 39.989288, 28.601011>
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
