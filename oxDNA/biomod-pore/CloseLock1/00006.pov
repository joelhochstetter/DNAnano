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
	<24.644932, 34.933704, 34.930973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.278524, 34.923588, 35.091106>,  <24.058680, 34.917519, 35.187187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.278524, 34.923588, 35.091106>,  <24.644932, 34.933704, 34.930973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.278524, 34.923588, 35.091106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025641, -0.992278, -0.121359,
		0.400316, -0.121432, 0.908296,
		-0.916019, -0.025293, 0.400338,
		24.003719, 34.916000, 35.211208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.594118, 34.444733, 35.398209>,  <24.644932, 34.933704, 34.930973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.594118, 34.444733, 35.398209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.217344, 34.489792, 35.271675>,  <23.991280, 34.516827, 35.195755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.217344, 34.489792, 35.271675>,  <24.594118, 34.444733, 35.398209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.217344, 34.489792, 35.271675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066794, -0.986081, -0.152259,
		-0.329082, -0.122289, 0.936350,
		-0.941936, 0.112648, -0.316334,
		23.934763, 34.523586, 35.176773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229031, 34.366322, 35.848602>,  <24.594118, 34.444733, 35.398209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229031, 34.366322, 35.848602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107399, 34.178883, 35.516830>,  <25.034420, 34.066418, 35.317768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107399, 34.178883, 35.516830>,  <25.229031, 34.366322, 35.848602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.107399, 34.178883, 35.516830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048748, -0.877171, 0.477698,
		-0.951398, 0.104825, 0.289573,
		-0.304080, -0.468597, -0.829429,
		25.016174, 34.038303, 35.268002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.628860, 33.983654, 35.996151>,  <25.229031, 34.366322, 35.848602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.628860, 33.983654, 35.996151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.844707, 33.790077, 35.720581>,  <24.974216, 33.673931, 35.555241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.844707, 33.790077, 35.720581>,  <24.628860, 33.983654, 35.996151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.844707, 33.790077, 35.720581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072480, -0.841951, 0.534663,
		-0.838762, -0.238601, -0.489437,
		0.539653, -0.483929, -0.688902,
		25.006594, 33.644894, 35.513905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.133062, 33.400494, 35.786953>,  <24.628860, 33.983654, 35.996151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.133062, 33.400494, 35.786953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525595, 33.337700, 35.742504>,  <24.761114, 33.300026, 35.715836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525595, 33.337700, 35.742504>,  <24.133062, 33.400494, 35.786953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.525595, 33.337700, 35.742504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041390, -0.736593, 0.675069,
		-0.187826, -0.657866, -0.729338,
		0.981330, -0.156982, -0.111122,
		24.819994, 33.290604, 35.709167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.237579, 32.662975, 35.696621>,  <24.133062, 33.400494, 35.786953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.237579, 32.662975, 35.696621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582109, 32.824070, 35.820503>,  <24.788828, 32.920727, 35.894833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.582109, 32.824070, 35.820503>,  <24.237579, 32.662975, 35.696621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.582109, 32.824070, 35.820503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098804, -0.730738, 0.675470,
		0.498351, -0.551201, -0.669197,
		0.861327, 0.402740, 0.309703,
		24.840508, 32.944893, 35.913414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.676600, 32.102440, 35.845562>,  <24.237579, 32.662975, 35.696621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.676600, 32.102440, 35.845562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843893, 32.405666, 36.045731>,  <24.944269, 32.587601, 36.165833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843893, 32.405666, 36.045731>,  <24.676600, 32.102440, 35.845562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843893, 32.405666, 36.045731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306522, -0.636386, 0.707854,
		0.855058, -0.142660, -0.498522,
		0.418235, 0.758064, 0.500418,
		24.969364, 32.633087, 36.195854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307808, 31.859978, 35.897045>,  <24.676600, 32.102440, 35.845562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307808, 31.859978, 35.897045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243807, 32.136482, 36.178913>,  <25.205406, 32.302383, 36.348034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.243807, 32.136482, 36.178913>,  <25.307808, 31.859978, 35.897045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243807, 32.136482, 36.178913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251127, -0.661872, 0.706301,
		0.954638, 0.289970, -0.067694,
		-0.160002, 0.691262, 0.704668,
		25.195807, 32.343861, 36.390312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.852798, 31.767836, 36.293308>,  <25.307808, 31.859978, 35.897045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.852798, 31.767836, 36.293308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620863, 31.990168, 36.531582>,  <25.481701, 32.123566, 36.674545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620863, 31.990168, 36.531582>,  <25.852798, 31.767836, 36.293308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620863, 31.990168, 36.531582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225689, -0.592953, 0.772963,
		0.782848, 0.582634, 0.218373,
		-0.579839, 0.555828, 0.595686,
		25.446911, 32.156918, 36.710289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310509, 32.055641, 36.899586>,  <25.852798, 31.767836, 36.293308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310509, 32.055641, 36.899586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926853, 32.042255, 37.011967>,  <25.696659, 32.034222, 37.079395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926853, 32.042255, 37.011967>,  <26.310509, 32.055641, 36.899586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926853, 32.042255, 37.011967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255839, -0.526631, 0.810683,
		0.120825, 0.849435, 0.513674,
		-0.959139, -0.033467, 0.280948,
		25.639111, 32.032215, 37.096252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368746, 32.309814, 37.576347>,  <26.310509, 32.055641, 36.899586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368746, 32.309814, 37.576347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031094, 32.096306, 37.556240>,  <25.828503, 31.968201, 37.544174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031094, 32.096306, 37.556240>,  <26.368746, 32.309814, 37.576347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031094, 32.096306, 37.556240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193259, -0.390403, 0.900132,
		-0.500091, 0.750115, 0.432708,
		-0.844133, -0.533772, -0.050270,
		25.777853, 31.936174, 37.541161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216246, 32.328064, 38.231098>,  <26.368746, 32.309814, 37.576347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216246, 32.328064, 38.231098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977304, 32.029644, 38.113403>,  <25.833941, 31.850592, 38.042786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977304, 32.029644, 38.113403>,  <26.216246, 32.328064, 38.231098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977304, 32.029644, 38.113403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281046, -0.538364, 0.794467,
		-0.751121, 0.391882, 0.531268,
		-0.597353, -0.746051, -0.294240,
		25.798100, 31.805828, 38.025131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767813, 32.229694, 38.714779>,  <26.216246, 32.328064, 38.231098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767813, 32.229694, 38.714779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775181, 31.875624, 38.528824>,  <25.779602, 31.663181, 38.417252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775181, 31.875624, 38.528824>,  <25.767813, 32.229694, 38.714779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775181, 31.875624, 38.528824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227893, -0.449009, 0.863977,
		-0.973512, -0.121859, 0.193455,
		0.018420, -0.885179, -0.464886,
		25.780706, 31.610069, 38.389359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361160, 31.839088, 39.085510>,  <25.767813, 32.229694, 38.714779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361160, 31.839088, 39.085510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550463, 31.545782, 38.890228>,  <25.664043, 31.369799, 38.773060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550463, 31.545782, 38.890228>,  <25.361160, 31.839088, 39.085510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550463, 31.545782, 38.890228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213813, -0.442015, 0.871152,
		-0.854584, -0.516662, -0.052404,
		0.473255, -0.733268, -0.488208,
		25.692440, 31.325802, 38.743767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.030506, 31.165340, 39.203541>,  <25.361160, 31.839088, 39.085510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.030506, 31.165340, 39.203541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409254, 31.097988, 39.093937>,  <25.636503, 31.057577, 39.028175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409254, 31.097988, 39.093937>,  <25.030506, 31.165340, 39.203541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409254, 31.097988, 39.093937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158018, -0.498484, 0.852376,
		-0.280113, -0.850389, -0.445393,
		0.946872, -0.168382, -0.274008,
		25.693316, 31.047474, 39.011734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139839, 30.414690, 39.203495>,  <25.030506, 31.165340, 39.203541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139839, 30.414690, 39.203495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525101, 30.522270, 39.203796>,  <25.756258, 30.586819, 39.203976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525101, 30.522270, 39.203796>,  <25.139839, 30.414690, 39.203495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.525101, 30.522270, 39.203796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207180, -0.743713, 0.635584,
		0.171498, -0.612009, -0.772032,
		0.963153, 0.268951, 0.000749,
		25.814047, 30.602955, 39.204021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533928, 29.784781, 39.113327>,  <25.139839, 30.414690, 39.203495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533928, 29.784781, 39.113327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795649, 30.052189, 39.254730>,  <25.952681, 30.212635, 39.339573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795649, 30.052189, 39.254730>,  <25.533928, 29.784781, 39.113327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795649, 30.052189, 39.254730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506160, -0.734451, 0.452087,
		0.561862, -0.116872, -0.818933,
		0.654303, 0.668522, 0.353504,
		25.991940, 30.252745, 39.360783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140665, 29.555672, 38.892960>,  <25.533928, 29.784781, 39.113327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140665, 29.555672, 38.892960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160587, 29.755575, 39.238853>,  <26.172541, 29.875517, 39.446388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160587, 29.755575, 39.238853>,  <26.140665, 29.555672, 38.892960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160587, 29.755575, 39.238853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505903, -0.759139, 0.409597,
		0.861152, 0.417070, -0.290637,
		0.049803, 0.499759, 0.864731,
		26.175528, 29.905502, 39.498272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829552, 29.711708, 38.851265>,  <26.140665, 29.555672, 38.892960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829552, 29.711708, 38.851265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750141, 29.756472, 39.240738>,  <26.702496, 29.783329, 39.474422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750141, 29.756472, 39.240738>,  <26.829552, 29.711708, 38.851265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750141, 29.756472, 39.240738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646539, -0.731687, 0.215918,
		0.736596, 0.672392, 0.072906,
		-0.198526, 0.111908, 0.973686,
		26.690582, 29.790045, 39.532845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521404, 29.594507, 39.170006>,  <26.829552, 29.711708, 38.851265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521404, 29.594507, 39.170006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279047, 29.576233, 39.487701>,  <27.133633, 29.565268, 39.678318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279047, 29.576233, 39.487701>,  <27.521404, 29.594507, 39.170006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279047, 29.576233, 39.487701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611140, -0.665883, 0.427912,
		0.509318, 0.744656, 0.431373,
		-0.605891, -0.045686, 0.794235,
		27.097281, 29.562527, 39.725971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947950, 29.577768, 39.816925>,  <27.521404, 29.594507, 39.170006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947950, 29.577768, 39.816925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584852, 29.468231, 39.944054>,  <27.366993, 29.402508, 40.020329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584852, 29.468231, 39.944054>,  <27.947950, 29.577768, 39.816925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584852, 29.468231, 39.944054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419129, -0.559162, 0.715310,
		-0.018172, 0.782526, 0.622353,
		-0.907745, -0.273845, 0.317818,
		27.312529, 29.386078, 40.039398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937555, 29.678564, 40.614922>,  <27.947950, 29.577768, 39.816925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937555, 29.678564, 40.614922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662954, 29.412720, 40.496933>,  <27.498194, 29.253214, 40.426140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662954, 29.412720, 40.496933>,  <27.937555, 29.678564, 40.614922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662954, 29.412720, 40.496933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327386, -0.644739, 0.690746,
		-0.649254, 0.377632, 0.660200,
		-0.686504, -0.664609, -0.294968,
		27.457003, 29.213337, 40.408443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671297, 29.418396, 41.270824>,  <27.937555, 29.678564, 40.614922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671297, 29.418396, 41.270824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566786, 29.154884, 40.988621>,  <27.504080, 28.996778, 40.819298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566786, 29.154884, 40.988621>,  <27.671297, 29.418396, 41.270824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566786, 29.154884, 40.988621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295404, -0.750403, 0.591297,
		-0.918950, -0.053918, 0.390670,
		-0.261278, -0.658778, -0.705511,
		27.488401, 28.957251, 40.776966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383204, 28.962334, 41.639481>,  <27.671297, 29.418396, 41.270824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383204, 28.962334, 41.639481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487282, 28.790033, 41.293823>,  <27.549728, 28.686653, 41.086430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487282, 28.790033, 41.293823>,  <27.383204, 28.962334, 41.639481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.487282, 28.790033, 41.293823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393921, -0.769750, 0.502306,
		-0.881546, -0.471105, -0.030606,
		0.260198, -0.430750, -0.864148,
		27.565342, 28.660809, 41.034580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249811, 28.218466, 41.799316>,  <27.383204, 28.962334, 41.639481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249811, 28.218466, 41.799316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471027, 28.211143, 41.466137>,  <27.603758, 28.206751, 41.266228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471027, 28.211143, 41.466137>,  <27.249811, 28.218466, 41.799316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471027, 28.211143, 41.466137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423816, -0.854561, 0.300175,
		-0.717304, -0.519028, -0.464851,
		0.553043, -0.018305, -0.832952,
		27.636940, 28.205652, 41.216251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316755, 27.565071, 41.689587>,  <27.249811, 28.218466, 41.799316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316755, 27.565071, 41.689587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599268, 27.687305, 41.434155>,  <27.768776, 27.760647, 41.280895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599268, 27.687305, 41.434155>,  <27.316755, 27.565071, 41.689587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599268, 27.687305, 41.434155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463366, -0.881519, 0.090647,
		-0.535220, -0.359919, -0.764198,
		0.706280, 0.305587, -0.638581,
		27.811152, 27.778982, 41.242580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302876, 27.059917, 41.142891>,  <27.316755, 27.565071, 41.689587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302876, 27.059917, 41.142891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653494, 27.242744, 41.203236>,  <27.863865, 27.352440, 41.239445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.653494, 27.242744, 41.203236>,  <27.302876, 27.059917, 41.142891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.653494, 27.242744, 41.203236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469898, -0.880500, -0.062576,
		0.104236, 0.125743, -0.986572,
		0.876545, 0.457065, 0.150866,
		27.916458, 27.379864, 41.248497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882898, 26.913782, 40.637234>,  <27.302876, 27.059917, 41.142891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882898, 26.913782, 40.637234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039297, 26.972734, 41.000641>,  <28.133137, 27.008106, 41.218685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039297, 26.972734, 41.000641>,  <27.882898, 26.913782, 40.637234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039297, 26.972734, 41.000641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333119, -0.942836, 0.009585,
		0.857993, 0.298896, -0.417742,
		0.390997, 0.147382, 0.908515,
		28.156597, 27.016949, 41.273197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602142, 26.428724, 40.084419>,  <27.882898, 26.913782, 40.637234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602142, 26.428724, 40.084419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960875, 26.281815, 39.985786>,  <28.176113, 26.193668, 39.926605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960875, 26.281815, 39.985786>,  <27.602142, 26.428724, 40.084419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960875, 26.281815, 39.985786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309111, -0.121526, -0.943229,
		0.316457, 0.922139, -0.222517,
		0.896831, -0.367274, -0.246586,
		28.229923, 26.171633, 39.911812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941877, 26.887157, 39.622486>,  <27.602142, 26.428724, 40.084419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941877, 26.887157, 39.622486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068661, 26.513577, 39.556435>,  <28.144732, 26.289427, 39.516804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068661, 26.513577, 39.556435>,  <27.941877, 26.887157, 39.622486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068661, 26.513577, 39.556435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566380, -0.046731, -0.822818,
		0.760757, 0.354327, -0.543784,
		0.316958, -0.933953, -0.165133,
		28.163748, 26.233391, 39.506893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293665, 26.866829, 39.042439>,  <27.941877, 26.887157, 39.622486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293665, 26.866829, 39.042439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124874, 26.508923, 39.100861>,  <28.023600, 26.294180, 39.135914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124874, 26.508923, 39.100861>,  <28.293665, 26.866829, 39.042439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124874, 26.508923, 39.100861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505637, 0.098557, -0.857099,
		0.752507, -0.435526, -0.494015,
		-0.421977, -0.894764, 0.146053,
		27.998281, 26.240494, 39.144676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484921, 26.300419, 38.541946>,  <28.293665, 26.866829, 39.042439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484921, 26.300419, 38.541946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119278, 26.251606, 38.696617>,  <27.899893, 26.222319, 38.789421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119278, 26.251606, 38.696617>,  <28.484921, 26.300419, 38.541946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119278, 26.251606, 38.696617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400478, 0.122399, -0.908095,
		0.063492, -0.984950, -0.160759,
		-0.914104, -0.122037, 0.386679,
		27.845047, 26.214996, 38.812622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171738, 26.001829, 38.031986>,  <28.484921, 26.300419, 38.541946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171738, 26.001829, 38.031986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885771, 26.179312, 38.248142>,  <27.714191, 26.285801, 38.377834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885771, 26.179312, 38.248142>,  <28.171738, 26.001829, 38.031986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885771, 26.179312, 38.248142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520442, 0.178437, -0.835045,
		-0.466939, -0.878228, 0.103356,
		-0.714918, 0.443706, 0.540387,
		27.671295, 26.312424, 38.410259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522642, 25.682478, 37.842472>,  <28.171738, 26.001829, 38.031986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522642, 25.682478, 37.842472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490509, 26.056234, 37.981304>,  <27.471230, 26.280487, 38.064602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490509, 26.056234, 37.981304>,  <27.522642, 25.682478, 37.842472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490509, 26.056234, 37.981304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433914, 0.280697, -0.856112,
		-0.897366, -0.219377, 0.382896,
		-0.080333, 0.934389, 0.347079,
		27.466410, 26.336552, 38.085426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882984, 25.633120, 37.142952>,  <27.522642, 25.682478, 37.842472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882984, 25.633120, 37.142952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016113, 25.915636, 36.893028>,  <28.095991, 26.085146, 36.743076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016113, 25.915636, 36.893028>,  <27.882984, 25.633120, 37.142952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016113, 25.915636, 36.893028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913974, -0.404709, 0.029370,
		-0.232122, -0.580832, -0.780227,
		0.332824, 0.706289, -0.624807,
		28.115961, 26.127523, 36.705585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209362, 25.589001, 36.684719>,  <27.882984, 25.633120, 37.142952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209362, 25.589001, 36.684719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923386, 25.742321, 36.918621>,  <26.751799, 25.834314, 37.058964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923386, 25.742321, 36.918621>,  <27.209362, 25.589001, 36.684719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923386, 25.742321, 36.918621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109979, 0.887578, -0.447336,
		-0.690480, -0.255508, -0.676722,
		-0.714942, 0.383302, 0.584754,
		26.708902, 25.857311, 37.094048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713974, 25.901125, 36.215908>,  <27.209362, 25.589001, 36.684719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713974, 25.901125, 36.215908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692896, 26.071253, 36.577312>,  <26.680250, 26.173330, 36.794155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692896, 26.071253, 36.577312>,  <26.713974, 25.901125, 36.215908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692896, 26.071253, 36.577312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023617, 0.905043, -0.424664,
		-0.998331, -0.001039, -0.057734,
		-0.052693, 0.425319, 0.903508,
		26.677088, 26.198849, 36.848366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148695, 26.323318, 36.188011>,  <26.713974, 25.901125, 36.215908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148695, 26.323318, 36.188011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390219, 26.447981, 36.481483>,  <26.535133, 26.522778, 36.657566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390219, 26.447981, 36.481483>,  <26.148695, 26.323318, 36.188011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390219, 26.447981, 36.481483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019772, 0.925975, -0.377066,
		-0.796883, 0.213170, 0.565275,
		0.603810, 0.311654, 0.733679,
		26.571362, 26.541477, 36.701588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974773, 27.035376, 36.127300>,  <26.148695, 26.323318, 36.188011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974773, 27.035376, 36.127300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278006, 27.048185, 36.387848>,  <26.459946, 27.055872, 36.544178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.278006, 27.048185, 36.387848>,  <25.974773, 27.035376, 36.127300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278006, 27.048185, 36.387848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133729, 0.969936, -0.203323,
		-0.638300, 0.241243, 0.731009,
		0.758083, 0.032024, 0.651372,
		26.505430, 27.057793, 36.583260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894190, 27.667097, 36.422112>,  <25.974773, 27.035376, 36.127300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894190, 27.667097, 36.422112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276628, 27.563860, 36.477631>,  <26.506092, 27.501917, 36.510944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276628, 27.563860, 36.477631>,  <25.894190, 27.667097, 36.422112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276628, 27.563860, 36.477631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258353, 0.965910, 0.016473,
		-0.138320, 0.020110, 0.990183,
		0.956097, -0.258095, 0.138800,
		26.563457, 27.486431, 36.519272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105204, 28.052652, 36.966045>,  <25.894190, 27.667097, 36.422112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105204, 28.052652, 36.966045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454582, 27.953190, 36.798592>,  <26.664209, 27.893513, 36.698120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454582, 27.953190, 36.798592>,  <26.105204, 28.052652, 36.966045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454582, 27.953190, 36.798592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256315, 0.965811, -0.038884,
		0.413993, -0.073340, 0.907320,
		0.873448, -0.248658, -0.418637,
		26.716618, 27.878593, 36.673000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613403, 28.564346, 37.330959>,  <26.105204, 28.052652, 36.966045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613403, 28.564346, 37.330959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812292, 28.430595, 37.010719>,  <26.931625, 28.350346, 36.818577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812292, 28.430595, 37.010719>,  <26.613403, 28.564346, 37.330959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812292, 28.430595, 37.010719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491210, 0.869113, -0.057918,
		0.715179, -0.364465, 0.596392,
		0.497223, -0.334376, -0.800601,
		26.961458, 28.330282, 36.770538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362619, 28.680937, 37.440079>,  <26.613403, 28.564346, 37.330959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362619, 28.680937, 37.440079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276167, 28.686172, 37.049568>,  <27.224297, 28.689314, 36.815262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.276167, 28.686172, 37.049568>,  <27.362619, 28.680937, 37.440079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276167, 28.686172, 37.049568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466299, 0.879890, -0.091432,
		0.857819, -0.474998, -0.196274,
		-0.216129, 0.013090, -0.976277,
		27.211329, 28.690100, 36.756683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979321, 28.791365, 37.162182>,  <27.362619, 28.680937, 37.440079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979321, 28.791365, 37.162182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740290, 28.862312, 36.849403>,  <27.596872, 28.904881, 36.661736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.740290, 28.862312, 36.849403>,  <27.979321, 28.791365, 37.162182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740290, 28.862312, 36.849403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528159, 0.820835, -0.217435,
		0.603283, -0.542927, -0.584191,
		-0.597576, 0.177370, -0.781948,
		27.561016, 28.915524, 36.614819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451200, 29.087843, 36.672409>,  <27.979321, 28.791365, 37.162182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451200, 29.087843, 36.672409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088669, 29.190256, 36.537937>,  <27.871151, 29.251703, 36.457253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088669, 29.190256, 36.537937>,  <28.451200, 29.087843, 36.672409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088669, 29.190256, 36.537937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342681, 0.910817, -0.230180,
		0.247263, -0.323820, -0.913237,
		-0.906328, 0.256034, -0.336178,
		27.816771, 29.267067, 36.437084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541111, 29.487488, 36.083401>,  <28.451200, 29.087843, 36.672409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541111, 29.487488, 36.083401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170444, 29.596045, 36.187428>,  <27.948044, 29.661179, 36.249844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170444, 29.596045, 36.187428>,  <28.541111, 29.487488, 36.083401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170444, 29.596045, 36.187428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197953, 0.940516, -0.276125,
		-0.319539, -0.204394, -0.925267,
		-0.926666, 0.271392, 0.260071,
		27.892445, 29.677462, 36.265450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343250, 29.993473, 35.589294>,  <28.541111, 29.487488, 36.083401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343250, 29.993473, 35.589294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086966, 30.054199, 35.890343>,  <27.933195, 30.090635, 36.070972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086966, 30.054199, 35.890343>,  <28.343250, 29.993473, 35.589294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086966, 30.054199, 35.890343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008414, 0.978809, -0.204600,
		-0.767738, -0.137422, -0.625855,
		-0.640709, 0.151813, 0.752625,
		27.894753, 30.099743, 36.116131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867388, 30.364511, 35.281475>,  <28.343250, 29.993473, 35.589294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867388, 30.364511, 35.281475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783316, 30.440685, 35.665051>,  <27.732872, 30.486389, 35.895195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783316, 30.440685, 35.665051>,  <27.867388, 30.364511, 35.281475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783316, 30.440685, 35.665051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020640, 0.981492, -0.190388,
		-0.977444, -0.020224, -0.210223,
		-0.210183, 0.190433, 0.958936,
		27.720261, 30.497816, 35.952732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295105, 30.852892, 35.278816>,  <27.867388, 30.364511, 35.281475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295105, 30.852892, 35.278816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453930, 30.899246, 35.642994>,  <27.549225, 30.927059, 35.861500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453930, 30.899246, 35.642994>,  <27.295105, 30.852892, 35.278816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453930, 30.899246, 35.642994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132186, 0.988874, -0.068222,
		-0.908224, -0.093260, 0.407961,
		0.397060, 0.115888, 0.910447,
		27.573048, 30.934013, 35.916126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913239, 31.375648, 35.575233>,  <27.295105, 30.852892, 35.278816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913239, 31.375648, 35.575233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257961, 31.336327, 35.774281>,  <27.464794, 31.312733, 35.893707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257961, 31.336327, 35.774281>,  <26.913239, 31.375648, 35.575233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257961, 31.336327, 35.774281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051241, 0.992894, 0.107406,
		-0.504642, -0.067065, 0.860720,
		0.861807, -0.098306, 0.497619,
		27.516502, 31.306835, 35.923565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887136, 31.853201, 36.107109>,  <26.913239, 31.375648, 35.575233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887136, 31.853201, 36.107109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279604, 31.777729, 36.090584>,  <27.515085, 31.732447, 36.080669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279604, 31.777729, 36.090584>,  <26.887136, 31.853201, 36.107109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279604, 31.777729, 36.090584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188705, 0.982028, -0.003341,
		0.041201, -0.004518, 0.999141,
		0.981169, -0.188680, -0.041313,
		27.573956, 31.721125, 36.078190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.109821, 32.242809, 36.590588>,  <26.887136, 31.853201, 36.107109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.109821, 32.242809, 36.590588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420990, 32.182167, 36.346668>,  <27.607691, 32.145782, 36.200317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420990, 32.182167, 36.346668>,  <27.109821, 32.242809, 36.590588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420990, 32.182167, 36.346668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141459, 0.987800, -0.065122,
		0.612233, -0.035602, 0.789876,
		0.777921, -0.151605, -0.609799,
		27.654366, 32.136684, 36.163727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731421, 32.662342, 36.779812>,  <27.109821, 32.242809, 36.590588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731421, 32.662342, 36.779812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814877, 32.569977, 36.399673>,  <27.864950, 32.514557, 36.171593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814877, 32.569977, 36.399673>,  <27.731421, 32.662342, 36.779812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814877, 32.569977, 36.399673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321746, 0.933842, -0.156266,
		0.923553, -0.273166, 0.269130,
		0.208638, -0.230911, -0.950342,
		27.877468, 32.500702, 36.114571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321281, 33.002525, 36.747997>,  <27.731421, 32.662342, 36.779812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321281, 33.002525, 36.747997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161285, 32.926231, 36.389416>,  <28.065289, 32.880455, 36.174267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161285, 32.926231, 36.389416>,  <28.321281, 33.002525, 36.747997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161285, 32.926231, 36.389416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131368, 0.956075, -0.262035,
		0.907056, -0.222577, -0.357364,
		-0.399990, -0.190734, -0.896454,
		28.041288, 32.869011, 36.120480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590250, 33.497784, 36.342091>,  <28.321281, 33.002525, 36.747997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590250, 33.497784, 36.342091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299416, 33.356812, 36.106419>,  <28.124914, 33.272228, 35.965015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299416, 33.356812, 36.106419>,  <28.590250, 33.497784, 36.342091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299416, 33.356812, 36.106419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103205, 0.904541, -0.413707,
		0.678743, -0.239994, -0.694053,
		-0.727087, -0.352431, -0.589183,
		28.081289, 33.251083, 35.929665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714649, 33.814850, 35.620628>,  <28.590250, 33.497784, 36.342091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714649, 33.814850, 35.620628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333752, 33.706333, 35.676678>,  <28.105213, 33.641224, 35.710308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333752, 33.706333, 35.676678>,  <28.714649, 33.814850, 35.620628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333752, 33.706333, 35.676678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304752, 0.815984, -0.491219,
		0.018921, -0.510464, -0.859691,
		-0.952244, -0.271287, 0.140126,
		28.048079, 33.624947, 35.718716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859310, 34.460510, 35.239845>,  <28.714649, 33.814850, 35.620628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859310, 34.460510, 35.239845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159061, 34.707344, 35.143814>,  <29.338911, 34.855446, 35.086197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159061, 34.707344, 35.143814>,  <28.859310, 34.460510, 35.239845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159061, 34.707344, 35.143814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221940, 0.107514, 0.969115,
		0.623842, -0.779513, -0.056388,
		0.749375, 0.617089, -0.240077,
		29.383875, 34.892471, 35.071793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560555, 34.226772, 35.322052>,  <28.859310, 34.460510, 35.239845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560555, 34.226772, 35.322052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578932, 34.622215, 35.379395>,  <29.589958, 34.859482, 35.413799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578932, 34.622215, 35.379395>,  <29.560555, 34.226772, 35.322052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578932, 34.622215, 35.379395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285628, -0.150519, 0.946446,
		0.957239, -0.002536, -0.289288,
		0.045944, 0.988604, 0.143358,
		29.592714, 34.918797, 35.422401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462862, 33.675713, 35.798897>,  <29.560555, 34.226772, 35.322052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462862, 33.675713, 35.798897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661446, 33.353363, 35.927956>,  <29.780596, 33.159954, 36.005390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661446, 33.353363, 35.927956>,  <29.462862, 33.675713, 35.798897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661446, 33.353363, 35.927956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809455, 0.295521, -0.507395,
		0.313546, 0.513068, 0.799031,
		0.496459, -0.805871, 0.322646,
		29.810383, 33.111603, 36.024750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171799, 33.919395, 36.150143>,  <29.462862, 33.675713, 35.798897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171799, 33.919395, 36.150143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171041, 33.557632, 35.979477>,  <30.170588, 33.340576, 35.877079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171041, 33.557632, 35.979477>,  <30.171799, 33.919395, 36.150143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171041, 33.557632, 35.979477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845513, 0.226371, -0.483595,
		0.533952, -0.361667, 0.764260,
		-0.001894, -0.904408, -0.426665,
		30.170473, 33.286308, 35.851479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701603, 33.410225, 36.380131>,  <30.171799, 33.919395, 36.150143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701603, 33.410225, 36.380131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617956, 33.346245, 35.994244>,  <30.567768, 33.307858, 35.762711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617956, 33.346245, 35.994244>,  <30.701603, 33.410225, 36.380131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617956, 33.346245, 35.994244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946127, 0.216303, -0.240948,
		0.247211, -0.963136, 0.106098,
		-0.209116, -0.159947, -0.964721,
		30.555222, 33.298260, 35.704826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901911, 32.707485, 36.064926>,  <30.701603, 33.410225, 36.380131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901911, 32.707485, 36.064926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909273, 32.982113, 35.774193>,  <30.913691, 33.146889, 35.599754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909273, 32.982113, 35.774193>,  <30.901911, 32.707485, 36.064926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909273, 32.982113, 35.774193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973866, -0.176906, -0.142442,
		-0.226377, -0.705217, -0.671880,
		0.018408, 0.686567, -0.726834,
		30.914795, 33.188084, 35.556141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289181, 32.310535, 35.681213>,  <30.901911, 32.707485, 36.064926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289181, 32.310535, 35.681213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310894, 32.685295, 35.543076>,  <31.323921, 32.910152, 35.460194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310894, 32.685295, 35.543076>,  <31.289181, 32.310535, 35.681213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310894, 32.685295, 35.543076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998478, -0.054307, 0.009608,
		-0.009753, -0.345344, -0.938426,
		0.054281, 0.936904, -0.345348,
		31.327179, 32.966366, 35.439472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699099, 32.356449, 35.069454>,  <31.289181, 32.310535, 35.681213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699099, 32.356449, 35.069454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737612, 32.681244, 35.299728>,  <31.760719, 32.876122, 35.437893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737612, 32.681244, 35.299728>,  <31.699099, 32.356449, 35.069454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737612, 32.681244, 35.299728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963686, -0.220776, 0.150223,
		0.249076, 0.540314, -0.803755,
		0.096282, 0.811984, 0.575683,
		31.766497, 32.924839, 35.472435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130260, 31.888081, 35.498466>,  <31.699099, 32.356449, 35.069454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130260, 31.888081, 35.498466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352814, 31.616976, 35.690750>,  <32.486343, 31.454313, 35.806122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352814, 31.616976, 35.690750>,  <32.130260, 31.888081, 35.498466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352814, 31.616976, 35.690750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424958, 0.265043, 0.865542,
		-0.714040, -0.685851, -0.140555,
		0.556380, -0.677762, 0.480709,
		32.519730, 31.413647, 35.834961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722502, 31.580723, 36.002251>,  <32.130260, 31.888081, 35.498466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722502, 31.580723, 36.002251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109531, 31.554510, 36.099823>,  <32.341751, 31.538782, 36.158367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109531, 31.554510, 36.099823>,  <31.722502, 31.580723, 36.002251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109531, 31.554510, 36.099823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215299, 0.290997, 0.932184,
		-0.132073, -0.954477, 0.267452,
		0.967576, -0.065534, 0.243931,
		32.399803, 31.534851, 36.173000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753254, 31.229336, 36.646534>,  <31.722502, 31.580723, 36.002251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753254, 31.229336, 36.646534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093872, 31.438503, 36.631443>,  <32.298244, 31.564005, 36.622387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093872, 31.438503, 36.631443>,  <31.753254, 31.229336, 36.646534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093872, 31.438503, 36.631443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151688, 0.314623, 0.937018,
		0.501857, -0.792191, 0.347237,
		0.851546, 0.522921, -0.037729,
		32.349335, 31.595379, 36.620125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151527, 31.026470, 37.208340>,  <31.753254, 31.229336, 36.646534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151527, 31.026470, 37.208340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271969, 31.393833, 37.105690>,  <32.344234, 31.614252, 37.044098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271969, 31.393833, 37.105690>,  <32.151527, 31.026470, 37.208340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271969, 31.393833, 37.105690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190369, 0.321594, 0.927543,
		0.934395, -0.230436, 0.271671,
		0.301107, 0.918410, -0.256628,
		32.362301, 31.669355, 37.028702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618324, 31.325596, 37.772709>,  <32.151527, 31.026470, 37.208340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618324, 31.325596, 37.772709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488258, 31.646292, 37.572117>,  <32.410217, 31.838709, 37.451763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488258, 31.646292, 37.572117>,  <32.618324, 31.325596, 37.772709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488258, 31.646292, 37.572117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054378, 0.513569, 0.856323,
		0.944092, 0.305717, -0.123399,
		-0.325167, 0.801738, -0.501481,
		32.390709, 31.886812, 37.421673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002914, 31.872374, 38.070068>,  <32.618324, 31.325596, 37.772709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002914, 31.872374, 38.070068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671135, 32.007095, 37.891823>,  <32.472069, 32.087929, 37.784874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671135, 32.007095, 37.891823>,  <33.002914, 31.872374, 38.070068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671135, 32.007095, 37.891823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321373, 0.364763, 0.873881,
		0.456874, 0.868049, -0.194312,
		-0.829449, 0.336806, -0.445618,
		32.422298, 32.108139, 37.758137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942551, 32.519428, 38.530602>,  <33.002914, 31.872374, 38.070068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942551, 32.519428, 38.530602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631767, 32.499149, 38.279598>,  <32.445297, 32.486980, 38.128994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631767, 32.499149, 38.279598>,  <32.942551, 32.519428, 38.530602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631767, 32.499149, 38.279598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561045, 0.507939, 0.653625,
		0.285599, 0.859900, -0.423090,
		-0.776956, -0.050698, -0.627510,
		32.398682, 32.483940, 38.091347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666332, 33.196671, 38.451443>,  <32.942551, 32.519428, 38.530602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666332, 33.196671, 38.451443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381138, 32.934605, 38.351517>,  <32.210022, 32.777367, 38.291561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381138, 32.934605, 38.351517>,  <32.666332, 33.196671, 38.451443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381138, 32.934605, 38.351517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620740, 0.424093, 0.659414,
		-0.326078, 0.625226, -0.709060,
		-0.712990, -0.655162, -0.249815,
		32.167240, 32.738056, 38.276573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139961, 33.580349, 38.612228>,  <32.666332, 33.196671, 38.451443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139961, 33.580349, 38.612228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974554, 33.216221, 38.604980>,  <31.875311, 32.997746, 38.600632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974554, 33.216221, 38.604980>,  <32.139961, 33.580349, 38.612228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974554, 33.216221, 38.604980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346556, 0.138961, 0.927679,
		-0.841965, 0.389887, -0.372939,
		-0.413514, -0.910318, -0.018118,
		31.850500, 32.943127, 38.599545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383564, 33.510044, 38.797791>,  <32.139961, 33.580349, 38.612228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383564, 33.510044, 38.797791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561808, 33.165806, 38.896427>,  <31.668753, 32.959263, 38.955608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561808, 33.165806, 38.896427>,  <31.383564, 33.510044, 38.797791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561808, 33.165806, 38.896427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241774, 0.149529, 0.958742,
		-0.861962, -0.486843, -0.141439,
		0.445607, -0.860596, 0.246594,
		31.695490, 32.907627, 38.970406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019075, 33.255600, 39.318348>,  <31.383564, 33.510044, 38.797791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019075, 33.255600, 39.318348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342506, 33.023491, 39.357304>,  <31.536566, 32.884224, 39.380676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342506, 33.023491, 39.357304>,  <31.019075, 33.255600, 39.318348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342506, 33.023491, 39.357304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054004, 0.091634, 0.994327,
		-0.585907, -0.809250, 0.042756,
		0.808577, -0.580275, 0.097391,
		31.585079, 32.849407, 39.386520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841314, 32.846703, 39.882393>,  <31.019075, 33.255600, 39.318348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841314, 32.846703, 39.882393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233175, 32.782013, 39.834854>,  <31.468292, 32.743198, 39.806332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233175, 32.782013, 39.834854>,  <30.841314, 32.846703, 39.882393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233175, 32.782013, 39.834854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123899, 0.021503, 0.992062,
		-0.157884, -0.986602, 0.041103,
		0.979654, -0.161724, -0.118845,
		31.527071, 32.733498, 39.799202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034925, 32.189384, 40.179329>,  <30.841314, 32.846703, 39.882393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034925, 32.189384, 40.179329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364222, 32.416237, 40.189384>,  <31.561800, 32.552349, 40.195419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364222, 32.416237, 40.189384>,  <31.034925, 32.189384, 40.179329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364222, 32.416237, 40.189384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086359, -0.168884, 0.981845,
		0.561084, -0.806125, -0.188010,
		0.823242, 0.567134, 0.025142,
		31.611195, 32.586376, 40.196926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437025, 31.839964, 40.706570>,  <31.034925, 32.189384, 40.179329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437025, 31.839964, 40.706570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596916, 32.201469, 40.645348>,  <31.692852, 32.418373, 40.608616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596916, 32.201469, 40.645348>,  <31.437025, 31.839964, 40.706570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596916, 32.201469, 40.645348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147049, 0.101587, 0.983899,
		0.904761, -0.415801, -0.092290,
		0.399730, 0.903764, -0.153055,
		31.716835, 32.472599, 40.599430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979372, 31.822292, 41.214935>,  <31.437025, 31.839964, 40.706570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979372, 31.822292, 41.214935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880180, 32.198933, 41.123814>,  <31.820665, 32.424915, 41.069141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880180, 32.198933, 41.123814>,  <31.979372, 31.822292, 41.214935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880180, 32.198933, 41.123814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153994, 0.270474, 0.950331,
		0.956448, 0.200581, -0.212073,
		-0.247979, 0.941600, -0.227806,
		31.805786, 32.481411, 41.055473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543907, 32.254074, 41.390625>,  <31.979372, 31.822292, 41.214935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543907, 32.254074, 41.390625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217819, 32.485355, 41.377384>,  <32.022167, 32.624123, 41.369438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217819, 32.485355, 41.377384>,  <32.543907, 32.254074, 41.390625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217819, 32.485355, 41.377384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173995, 0.299032, 0.938246,
		0.552395, 0.759119, -0.344381,
		-0.815221, 0.578204, -0.033101,
		31.973253, 32.658817, 41.367455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615967, 32.588207, 41.985538>,  <32.543907, 32.254074, 41.390625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615967, 32.588207, 41.985538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239632, 32.690907, 41.897076>,  <32.013832, 32.752525, 41.843998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239632, 32.690907, 41.897076>,  <32.615967, 32.588207, 41.985538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239632, 32.690907, 41.897076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164140, 0.225668, 0.960277,
		0.296460, 0.939762, -0.170173,
		-0.940835, 0.256751, -0.221154,
		31.957382, 32.767933, 41.830730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483868, 33.261490, 42.216595>,  <32.615967, 32.588207, 41.985538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483868, 33.261490, 42.216595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130199, 33.075100, 42.203236>,  <31.917999, 32.963268, 42.195221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130199, 33.075100, 42.203236>,  <32.483868, 33.261490, 42.216595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130199, 33.075100, 42.203236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154748, 0.224669, 0.962069,
		-0.440793, 0.855800, -0.270754,
		-0.884169, -0.465972, -0.033401,
		31.864948, 32.935307, 42.193214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016243, 33.740677, 42.570683>,  <32.483868, 33.261490, 42.216595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016243, 33.740677, 42.570683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819590, 33.392365, 42.573048>,  <31.701599, 33.183376, 42.574467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819590, 33.392365, 42.573048>,  <32.016243, 33.740677, 42.570683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819590, 33.392365, 42.573048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240366, 0.142222, 0.960207,
		-0.836973, 0.470647, -0.279228,
		-0.491630, -0.870784, 0.005908,
		31.672100, 33.131130, 42.574821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282101, 33.813736, 42.727814>,  <32.016243, 33.740677, 42.570683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282101, 33.813736, 42.727814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336464, 33.424179, 42.800541>,  <31.369081, 33.190445, 42.844177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336464, 33.424179, 42.800541>,  <31.282101, 33.813736, 42.727814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336464, 33.424179, 42.800541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362728, 0.121867, 0.923892,
		-0.921931, -0.191516, -0.336696,
		0.135908, -0.973894, 0.181821,
		31.377237, 33.132011, 42.855087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575813, 33.536167, 42.828941>,  <31.282101, 33.813736, 42.727814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575813, 33.536167, 42.828941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851080, 33.311184, 43.012272>,  <31.016241, 33.176193, 43.122269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851080, 33.311184, 43.012272>,  <30.575813, 33.536167, 42.828941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851080, 33.311184, 43.012272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527769, 0.045418, 0.848173,
		-0.497880, -0.825575, -0.265595,
		0.688168, -0.562461, 0.458326,
		31.057531, 33.142445, 43.149769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187799, 33.119564, 43.263302>,  <30.575813, 33.536167, 42.828941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187799, 33.119564, 43.263302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560163, 33.095070, 43.407333>,  <30.783581, 33.080372, 43.493752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560163, 33.095070, 43.407333>,  <30.187799, 33.119564, 43.263302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560163, 33.095070, 43.407333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360406, 0.006024, 0.932776,
		-0.059293, -0.998105, -0.016464,
		0.930909, -0.061241, 0.360081,
		30.839436, 33.076698, 43.515358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095160, 32.684540, 43.868195>,  <30.187799, 33.119564, 43.263302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095160, 32.684540, 43.868195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449045, 32.865723, 43.912209>,  <30.661377, 32.974434, 43.938618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449045, 32.865723, 43.912209>,  <30.095160, 32.684540, 43.868195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449045, 32.865723, 43.912209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182304, 0.118978, 0.976017,
		0.429005, -0.883556, 0.187838,
		0.884715, 0.452960, 0.110034,
		30.714460, 33.001610, 43.945217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357307, 32.383129, 44.437084>,  <30.095160, 32.684540, 43.868195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357307, 32.383129, 44.437084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584248, 32.710171, 44.397823>,  <30.720411, 32.906395, 44.374268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584248, 32.710171, 44.397823>,  <30.357307, 32.383129, 44.437084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584248, 32.710171, 44.397823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005582, 0.115368, 0.993307,
		0.823458, -0.564101, 0.060890,
		0.567350, 0.817607, -0.098150,
		30.754452, 32.955452, 44.368378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975952, 32.285732, 44.945312>,  <30.357307, 32.383129, 44.437084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975952, 32.285732, 44.945312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887287, 32.669083, 44.873337>,  <30.834087, 32.899094, 44.830151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887287, 32.669083, 44.873337>,  <30.975952, 32.285732, 44.945312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887287, 32.669083, 44.873337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208570, 0.226856, 0.951333,
		0.952556, 0.173347, -0.250175,
		-0.221665, 0.958377, -0.179938,
		30.820787, 32.956596, 44.819355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533737, 32.656509, 45.233856>,  <30.975952, 32.285732, 44.945312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533737, 32.656509, 45.233856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269966, 32.952469, 45.180637>,  <31.111704, 33.130047, 45.148705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269966, 32.952469, 45.180637>,  <31.533737, 32.656509, 45.233856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269966, 32.952469, 45.180637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103908, 0.264985, 0.958637,
		0.744554, 0.618326, -0.251620,
		-0.659426, 0.739902, -0.133047,
		31.072138, 33.174438, 45.140724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890541, 33.198380, 45.483658>,  <31.533737, 32.656509, 45.233856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890541, 33.198380, 45.483658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503017, 33.297459, 45.480789>,  <31.270502, 33.356907, 45.479069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503017, 33.297459, 45.480789>,  <31.890541, 33.198380, 45.483658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503017, 33.297459, 45.480789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057981, 0.254730, 0.965273,
		0.240924, 0.934750, -0.261146,
		-0.968810, 0.247699, -0.007173,
		31.212374, 33.371769, 45.478638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830320, 33.861599, 45.888531>,  <31.890541, 33.198380, 45.483658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830320, 33.861599, 45.888531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467308, 33.694195, 45.902603>,  <31.249500, 33.593750, 45.911045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467308, 33.694195, 45.902603>,  <31.830320, 33.861599, 45.888531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467308, 33.694195, 45.902603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099240, 0.295080, 0.950305,
		-0.408096, 0.858938, -0.309327,
		-0.907529, -0.418513, 0.035180,
		31.195049, 33.568642, 45.913158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322676, 34.428864, 46.085484>,  <31.830320, 33.861599, 45.888531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322676, 34.428864, 46.085484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197981, 34.060116, 46.177544>,  <31.123163, 33.838867, 46.232780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197981, 34.060116, 46.177544>,  <31.322676, 34.428864, 46.085484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197981, 34.060116, 46.177544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153203, 0.287818, 0.945352,
		-0.937736, 0.259442, -0.230957,
		-0.311738, -0.921874, 0.230150,
		31.104460, 33.783554, 46.246590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803038, 34.561108, 46.560799>,  <31.322676, 34.428864, 46.085484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803038, 34.561108, 46.560799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878956, 34.173672, 46.625053>,  <30.924507, 33.941208, 46.663605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878956, 34.173672, 46.625053>,  <30.803038, 34.561108, 46.560799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878956, 34.173672, 46.625053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020608, 0.159644, 0.986960,
		-0.981607, -0.190630, 0.010339,
		0.189795, -0.968594, 0.160636,
		30.935894, 33.883095, 46.673244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370178, 34.423641, 47.135635>,  <30.803038, 34.561108, 46.560799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370178, 34.423641, 47.135635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620670, 34.111965, 47.125061>,  <30.770966, 33.924961, 47.118717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620670, 34.111965, 47.125061>,  <30.370178, 34.423641, 47.135635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620670, 34.111965, 47.125061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006417, -0.028754, 0.999566,
		-0.779613, -0.626126, -0.013006,
		0.626228, -0.779191, -0.026435,
		30.808538, 33.878208, 47.117130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045137, 33.897472, 47.563046>,  <30.370178, 34.423641, 47.135635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045137, 33.897472, 47.563046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428673, 33.786491, 47.538898>,  <30.658794, 33.719902, 47.524410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428673, 33.786491, 47.538898>,  <30.045137, 33.897472, 47.563046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428673, 33.786491, 47.538898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022925, -0.287549, 0.957491,
		-0.282977, -0.916710, -0.282077,
		0.958853, -0.277415, -0.060354,
		30.716326, 33.703255, 47.520790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079857, 33.169075, 47.813984>,  <30.045137, 33.897472, 47.563046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079857, 33.169075, 47.813984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442827, 33.330708, 47.860107>,  <30.660610, 33.427685, 47.887783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442827, 33.330708, 47.860107>,  <30.079857, 33.169075, 47.813984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442827, 33.330708, 47.860107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025993, -0.327860, 0.944369,
		0.419405, -0.853949, -0.308012,
		0.907427, 0.404078, 0.115310,
		30.715055, 33.451931, 47.894699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498344, 32.681816, 48.082409>,  <30.079857, 33.169075, 47.813984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498344, 32.681816, 48.082409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693262, 33.016136, 48.183582>,  <30.810213, 33.216728, 48.244286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693262, 33.016136, 48.183582>,  <30.498344, 32.681816, 48.082409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693262, 33.016136, 48.183582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127723, -0.354757, 0.926193,
		0.863845, -0.419025, -0.279623,
		0.487296, 0.835802, 0.252936,
		30.839451, 33.266876, 48.259464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099354, 32.488091, 48.472675>,  <30.498344, 32.681816, 48.082409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099354, 32.488091, 48.472675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999954, 32.860626, 48.579147>,  <30.940315, 33.084148, 48.643032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999954, 32.860626, 48.579147>,  <31.099354, 32.488091, 48.472675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999954, 32.860626, 48.579147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270725, -0.197069, 0.942269,
		0.930030, 0.306215, -0.203166,
		-0.248500, 0.931341, 0.266181,
		30.925404, 33.140030, 48.659000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706869, 32.694584, 48.806519>,  <31.099354, 32.488091, 48.472675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706869, 32.694584, 48.806519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390581, 32.905128, 48.931553>,  <31.200808, 33.031456, 49.006573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390581, 32.905128, 48.931553>,  <31.706869, 32.694584, 48.806519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390581, 32.905128, 48.931553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248254, -0.191038, 0.949671,
		0.559582, 0.828525, 0.020388,
		-0.790720, 0.526357, 0.312586,
		31.153364, 33.063034, 49.025330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939266, 33.099812, 49.351849>,  <31.706869, 32.694584, 48.806519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939266, 33.099812, 49.351849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541624, 33.112240, 49.393406>,  <31.303040, 33.119698, 49.418343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541624, 33.112240, 49.393406>,  <31.939266, 33.099812, 49.351849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541624, 33.112240, 49.393406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106320, 0.090691, 0.990188,
		0.021340, 0.995394, -0.093459,
		-0.994103, 0.031067, 0.103895,
		31.243393, 33.121559, 49.424576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765413, 33.657093, 49.845261>,  <31.939266, 33.099812, 49.351849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765413, 33.657093, 49.845261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480185, 33.376854, 49.855766>,  <31.309048, 33.208710, 49.862072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480185, 33.376854, 49.855766>,  <31.765413, 33.657093, 49.845261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480185, 33.376854, 49.855766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085668, -0.049886, 0.995074,
		-0.695836, 0.711811, 0.095592,
		-0.713073, -0.700597, 0.026267,
		31.266262, 33.166676, 49.863647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725065, 33.704990, 50.483551>,  <31.765413, 33.657093, 49.845261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725065, 33.704990, 50.483551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491131, 33.386822, 50.419975>,  <31.350769, 33.195919, 50.381828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491131, 33.386822, 50.419975>,  <31.725065, 33.704990, 50.483551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491131, 33.386822, 50.419975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023256, -0.212305, 0.976927,
		-0.810817, 0.567648, 0.142663,
		-0.584838, -0.795426, -0.158939,
		31.315680, 33.148193, 50.372295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186186, 33.764610, 51.032982>,  <31.725065, 33.704990, 50.483551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186186, 33.764610, 51.032982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238214, 33.395538, 50.887794>,  <31.269432, 33.174095, 50.800682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238214, 33.395538, 50.887794>,  <31.186186, 33.764610, 51.032982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238214, 33.395538, 50.887794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146020, -0.344259, 0.927450,
		-0.980693, -0.173634, 0.089952,
		0.130070, -0.922679, -0.362967,
		31.277235, 33.118736, 50.778904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768017, 33.264160, 51.421761>,  <31.186186, 33.764610, 51.032982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768017, 33.264160, 51.421761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062914, 33.046951, 51.260963>,  <31.239851, 32.916626, 51.164486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062914, 33.046951, 51.260963>,  <30.768017, 33.264160, 51.421761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062914, 33.046951, 51.260963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077130, -0.523454, 0.848556,
		-0.671213, -0.656595, -0.344028,
		0.737241, -0.543027, -0.401993,
		31.284086, 32.884045, 51.140366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597174, 32.500027, 51.395477>,  <30.768017, 33.264160, 51.421761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597174, 32.500027, 51.395477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990334, 32.563351, 51.433102>,  <31.226229, 32.601345, 51.455677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990334, 32.563351, 51.433102>,  <30.597174, 32.500027, 51.395477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990334, 32.563351, 51.433102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006896, -0.478789, 0.877903,
		0.184015, -0.863539, -0.469509,
		0.982899, 0.158310, 0.094059,
		31.285204, 32.610844, 51.461319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991650, 31.827093, 51.344849>,  <30.597174, 32.500027, 51.395477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991650, 31.827093, 51.344849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167509, 32.104343, 51.573334>,  <31.273026, 32.270695, 51.710426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167509, 32.104343, 51.573334>,  <30.991650, 31.827093, 51.344849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167509, 32.104343, 51.573334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083178, -0.601822, 0.794287,
		0.894310, -0.396720, -0.206938,
		0.439650, 0.693126, 0.571213,
		31.299404, 32.312283, 51.744698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597733, 31.610794, 51.668968>,  <30.991650, 31.827093, 51.344849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597733, 31.610794, 51.668968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468367, 31.880417, 51.934612>,  <31.390747, 32.042191, 52.093998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468367, 31.880417, 51.934612>,  <31.597733, 31.610794, 51.668968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468367, 31.880417, 51.934612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205055, -0.635232, 0.744602,
		0.923772, 0.376996, 0.067225,
		-0.323415, 0.674058, 0.664115,
		31.371342, 32.082634, 52.133846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198563, 31.819637, 52.094872>,  <31.597733, 31.610794, 51.668968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198563, 31.819637, 52.094872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842104, 31.849632, 52.273861>,  <31.628227, 31.867630, 52.381252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842104, 31.849632, 52.273861>,  <32.198563, 31.819637, 52.094872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842104, 31.849632, 52.273861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258164, -0.727214, 0.636012,
		0.373100, 0.682303, 0.628697,
		-0.891150, 0.074989, 0.447469,
		31.574759, 31.872129, 52.408100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301731, 32.016777, 52.839752>,  <32.198563, 31.819637, 52.094872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301731, 32.016777, 52.839752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997145, 31.771416, 52.755936>,  <31.814392, 31.624201, 52.705647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997145, 31.771416, 52.755936>,  <32.301731, 32.016777, 52.839752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997145, 31.771416, 52.755936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508633, -0.765822, 0.393457,
		-0.401821, 0.193023, 0.895143,
		-0.761467, -0.613399, -0.209546,
		31.768705, 31.587397, 52.693073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115532, 31.575489, 53.367546>,  <32.301731, 32.016777, 52.839752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115532, 31.575489, 53.367546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055882, 31.383333, 53.021832>,  <32.020092, 31.268040, 52.814404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055882, 31.383333, 53.021832>,  <32.115532, 31.575489, 53.367546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055882, 31.383333, 53.021832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816268, -0.553127, 0.166604,
		-0.558094, -0.680642, 0.474613,
		-0.149124, -0.480392, -0.864284,
		32.011143, 31.239216, 52.762547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856922, 31.707457, 53.573818>,  <32.115532, 31.575489, 53.367546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856922, 31.707457, 53.573818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623386, 31.385225, 53.533466>,  <32.483265, 31.191887, 53.509254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623386, 31.385225, 53.533466>,  <32.856922, 31.707457, 53.573818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623386, 31.385225, 53.533466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293765, -0.093785, -0.951266,
		0.756860, -0.585017, 0.291406,
		-0.583836, -0.805580, -0.100875,
		32.448235, 31.143551, 53.503204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297585, 31.141752, 53.251373>,  <32.856922, 31.707457, 53.573818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297585, 31.141752, 53.251373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902485, 31.168755, 53.195110>,  <32.665424, 31.184956, 53.161350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902485, 31.168755, 53.195110>,  <33.297585, 31.141752, 53.251373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902485, 31.168755, 53.195110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150082, 0.164743, -0.974851,
		-0.042638, -0.984024, -0.172857,
		-0.987754, 0.067509, -0.140660,
		32.606159, 31.189007, 53.152912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076885, 30.691753, 52.756088>,  <33.297585, 31.141752, 53.251373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076885, 30.691753, 52.756088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841991, 31.014124, 52.726055>,  <32.701054, 31.207546, 52.708035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841991, 31.014124, 52.726055>,  <33.076885, 30.691753, 52.756088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841991, 31.014124, 52.726055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337941, 0.159829, -0.927497,
		-0.735492, -0.570034, -0.366213,
		-0.587236, 0.805925, -0.075085,
		32.665821, 31.255901, 52.703529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761276, 30.704140, 52.054829>,  <33.076885, 30.691753, 52.756088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761276, 30.704140, 52.054829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465717, 30.964182, 51.983959>,  <32.288380, 31.120207, 51.941437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.465717, 30.964182, 51.983959>,  <32.761276, 30.704140, 52.054829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465717, 30.964182, 51.983959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009082, -0.253301, -0.967345,
		-0.673755, -0.716380, 0.181259,
		-0.738899, 0.650107, -0.177169,
		32.244049, 31.159214, 51.930809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169189, 30.366686, 51.854050>,  <32.761276, 30.704140, 52.054829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169189, 30.366686, 51.854050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150707, 30.736959, 51.703865>,  <32.139618, 30.959124, 51.613754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150707, 30.736959, 51.703865>,  <32.169189, 30.366686, 51.854050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150707, 30.736959, 51.703865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291370, -0.347030, -0.891445,
		-0.955494, -0.150591, -0.253681,
		-0.046209, 0.925685, -0.375463,
		32.136845, 31.014666, 51.591225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883039, 30.309711, 51.206562>,  <32.169189, 30.366686, 51.854050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883039, 30.309711, 51.206562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048725, 30.673756, 51.202129>,  <32.148136, 30.892181, 51.199471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048725, 30.673756, 51.202129>,  <31.883039, 30.309711, 51.206562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048725, 30.673756, 51.202129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381920, -0.184849, -0.905521,
		-0.826173, 0.370848, -0.424158,
		0.414216, 0.910111, -0.011083,
		32.172989, 30.946789, 51.198803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723989, 30.586208, 50.537952>,  <31.883039, 30.309711, 51.206562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723989, 30.586208, 50.537952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035900, 30.798485, 50.670811>,  <32.223045, 30.925850, 50.750526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035900, 30.798485, 50.670811>,  <31.723989, 30.586208, 50.537952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035900, 30.798485, 50.670811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409854, -0.031679, -0.911601,
		-0.473256, 0.846974, -0.242208,
		0.779775, 0.530690, 0.332143,
		32.269833, 30.957691, 50.770454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777338, 31.158516, 50.032871>,  <31.723989, 30.586208, 50.537952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777338, 31.158516, 50.032871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131233, 31.110115, 50.212914>,  <32.343571, 31.081076, 50.320938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131233, 31.110115, 50.212914>,  <31.777338, 31.158516, 50.032871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131233, 31.110115, 50.212914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456563, 0.030731, -0.889160,
		0.093757, 0.992177, 0.082433,
		0.884737, -0.121001, 0.450110,
		32.396656, 31.073814, 50.347946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199432, 31.625837, 49.602123>,  <31.777338, 31.158516, 50.032871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199432, 31.625837, 49.602123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444698, 31.380888, 49.801735>,  <32.591858, 31.233919, 49.921501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444698, 31.380888, 49.801735>,  <32.199432, 31.625837, 49.602123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444698, 31.380888, 49.801735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684408, 0.096350, -0.722705,
		0.394482, 0.784677, 0.478190,
		0.613163, -0.612371, 0.499031,
		32.628647, 31.197176, 49.951443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863087, 32.095772, 49.712109>,  <32.199432, 31.625837, 49.602123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863087, 32.095772, 49.712109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952457, 31.706779, 49.738503>,  <33.006081, 31.473383, 49.754337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952457, 31.706779, 49.738503>,  <32.863087, 32.095772, 49.712109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952457, 31.706779, 49.738503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727534, 0.121334, -0.675257,
		0.648672, 0.198873, 0.734625,
		0.223425, -0.972485, 0.065981,
		33.019485, 31.415033, 49.758297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610561, 32.022766, 49.713776>,  <32.863087, 32.095772, 49.712109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610561, 32.022766, 49.713776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465031, 31.670383, 49.592754>,  <33.377712, 31.458954, 49.520142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465031, 31.670383, 49.592754>,  <33.610561, 32.022766, 49.713776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465031, 31.670383, 49.592754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689807, -0.036552, -0.723070,
		0.625936, -0.471779, 0.620990,
		-0.363827, -0.880959, -0.302557,
		33.355881, 31.406096, 49.501987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184494, 31.628819, 49.352871>,  <33.610561, 32.022766, 49.713776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184494, 31.628819, 49.352871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855686, 31.438313, 49.228004>,  <33.658401, 31.324009, 49.153084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855686, 31.438313, 49.228004>,  <34.184494, 31.628819, 49.352871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855686, 31.438313, 49.228004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411162, -0.117123, -0.904007,
		0.393985, -0.871466, 0.292100,
		-0.822023, -0.476266, -0.312169,
		33.609081, 31.295433, 49.134354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416618, 31.010048, 48.981903>,  <34.184494, 31.628819, 49.352871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416618, 31.010048, 48.981903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044998, 31.068550, 48.845978>,  <33.822025, 31.103651, 48.764423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044998, 31.068550, 48.845978>,  <34.416618, 31.010048, 48.981903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044998, 31.068550, 48.845978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339775, -0.026008, -0.940147,
		-0.146339, -0.988905, -0.025531,
		-0.929052, 0.146255, -0.339811,
		33.766281, 31.112427, 48.744034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360771, 30.551119, 48.493916>,  <34.416618, 31.010048, 48.981903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360771, 30.551119, 48.493916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061001, 30.802839, 48.411606>,  <33.881138, 30.953871, 48.362221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061001, 30.802839, 48.411606>,  <34.360771, 30.551119, 48.493916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061001, 30.802839, 48.411606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187590, -0.096244, -0.977521,
		-0.634960, -0.771179, -0.045923,
		-0.749424, 0.629301, -0.205776,
		33.836174, 30.991629, 48.349873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903530, 30.242943, 48.090366>,  <34.360771, 30.551119, 48.493916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903530, 30.242943, 48.090366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859104, 30.634508, 48.021786>,  <33.832447, 30.869448, 47.980637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859104, 30.634508, 48.021786>,  <33.903530, 30.242943, 48.090366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859104, 30.634508, 48.021786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248055, -0.139749, -0.958613,
		-0.962358, -0.148999, -0.227303,
		-0.111067, 0.978913, -0.171449,
		33.825783, 30.928183, 47.970352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521713, 30.178646, 47.372570>,  <33.903530, 30.242943, 48.090366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521713, 30.178646, 47.372570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625076, 30.563799, 47.403763>,  <33.687092, 30.794891, 47.422478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625076, 30.563799, 47.403763>,  <33.521713, 30.178646, 47.372570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625076, 30.563799, 47.403763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119992, 0.048107, -0.991609,
		-0.958556, 0.265593, -0.103107,
		0.258404, 0.962884, 0.077982,
		33.702599, 30.852665, 47.427158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168999, 30.490990, 46.899822>,  <33.521713, 30.178646, 47.372570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168999, 30.490990, 46.899822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475876, 30.740416, 46.959938>,  <33.660004, 30.890070, 46.996006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475876, 30.740416, 46.959938>,  <33.168999, 30.490990, 46.899822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475876, 30.740416, 46.959938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222223, -0.038609, -0.974231,
		-0.601693, 0.780819, -0.168191,
		0.767192, 0.623563, 0.150285,
		33.706032, 30.927485, 47.005024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022923, 30.918917, 46.462090>,  <33.168999, 30.490990, 46.899822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022923, 30.918917, 46.462090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408649, 30.983582, 46.545956>,  <33.640087, 31.022381, 46.596275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408649, 30.983582, 46.545956>,  <33.022923, 30.918917, 46.462090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408649, 30.983582, 46.545956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185962, 0.150077, -0.971028,
		-0.188443, 0.975368, 0.114659,
		0.964317, 0.161662, 0.209663,
		33.697945, 31.032080, 46.608856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264729, 31.538740, 46.082668>,  <33.022923, 30.918917, 46.462090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264729, 31.538740, 46.082668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608662, 31.346878, 46.152657>,  <33.815022, 31.231760, 46.194649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608662, 31.346878, 46.152657>,  <33.264729, 31.538740, 46.082668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608662, 31.346878, 46.152657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289658, 0.176062, -0.940798,
		0.420454, 0.859612, 0.290320,
		0.859835, -0.479656, 0.174967,
		33.866611, 31.202982, 46.205147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791485, 31.956263, 45.833649>,  <33.264729, 31.538740, 46.082668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791485, 31.956263, 45.833649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930664, 31.582203, 45.860287>,  <34.014172, 31.357767, 45.876270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930664, 31.582203, 45.860287>,  <33.791485, 31.956263, 45.833649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930664, 31.582203, 45.860287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367097, 0.070536, -0.927504,
		0.862656, 0.347167, 0.367832,
		0.347944, -0.935147, 0.066596,
		34.035046, 31.301659, 45.880264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370071, 31.972231, 45.387146>,  <33.791485, 31.956263, 45.833649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370071, 31.972231, 45.387146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284634, 31.585985, 45.446430>,  <34.233372, 31.354239, 45.482002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284634, 31.585985, 45.446430>,  <34.370071, 31.972231, 45.387146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284634, 31.585985, 45.446430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223688, -0.196023, -0.954745,
		0.950970, -0.170771, 0.257865,
		-0.213590, -0.965615, 0.148212,
		34.220558, 31.296301, 45.490894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842373, 31.624657, 44.967415>,  <34.370071, 31.972231, 45.387146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842373, 31.624657, 44.967415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544647, 31.362394, 45.018173>,  <34.366013, 31.205036, 45.048630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544647, 31.362394, 45.018173>,  <34.842373, 31.624657, 44.967415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544647, 31.362394, 45.018173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047675, -0.241695, -0.969180,
		0.666121, -0.715329, 0.211157,
		-0.744319, -0.655658, 0.126895,
		34.321350, 31.165697, 45.056240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107479, 31.131489, 44.548294>,  <34.842373, 31.624657, 44.967415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107479, 31.131489, 44.548294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722469, 31.034040, 44.595959>,  <34.491463, 30.975571, 44.624557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722469, 31.034040, 44.595959>,  <35.107479, 31.131489, 44.548294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722469, 31.034040, 44.595959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024338, -0.360007, -0.932632,
		0.270109, -0.900579, 0.340585,
		-0.962522, -0.243623, 0.119160,
		34.433712, 30.960953, 44.631706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163769, 30.660131, 44.216846>,  <35.107479, 31.131489, 44.548294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163769, 30.660131, 44.216846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774231, 30.750946, 44.220280>,  <34.540508, 30.805435, 44.222340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774231, 30.750946, 44.220280>,  <35.163769, 30.660131, 44.216846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774231, 30.750946, 44.220280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086497, -0.335550, -0.938043,
		-0.210090, -0.914254, 0.346413,
		-0.973848, 0.227037, 0.008585,
		34.482075, 30.819057, 44.222855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799381, 30.073038, 43.863068>,  <35.163769, 30.660131, 44.216846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799381, 30.073038, 43.863068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542656, 30.379694, 43.855686>,  <34.388622, 30.563686, 43.851257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542656, 30.379694, 43.855686>,  <34.799381, 30.073038, 43.863068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542656, 30.379694, 43.855686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280851, -0.257379, -0.924597,
		-0.713581, -0.588236, 0.380501,
		-0.641814, 0.766638, -0.018454,
		34.350113, 30.609686, 43.850151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228958, 29.813190, 43.495583>,  <34.799381, 30.073038, 43.863068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228958, 29.813190, 43.495583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196098, 30.211821, 43.491890>,  <34.176380, 30.450998, 43.489674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196098, 30.211821, 43.491890>,  <34.228958, 29.813190, 43.495583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196098, 30.211821, 43.491890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208522, -0.026244, -0.977665,
		-0.974561, -0.078395, 0.209965,
		-0.082154, 0.996577, -0.009229,
		34.171452, 30.510794, 43.489120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541222, 29.944767, 43.173256>,  <34.228958, 29.813190, 43.495583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541222, 29.944767, 43.173256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795319, 30.252604, 43.147346>,  <33.947777, 30.437305, 43.131802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795319, 30.252604, 43.147346>,  <33.541222, 29.944767, 43.173256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795319, 30.252604, 43.147346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235442, 0.113097, -0.965286,
		-0.735550, 0.628441, 0.253038,
		0.635242, 0.769592, -0.064773,
		33.985893, 30.483480, 43.127914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178944, 30.560955, 42.895695>,  <33.541222, 29.944767, 43.173256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178944, 30.560955, 42.895695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561756, 30.613577, 42.792328>,  <33.791443, 30.645149, 42.730309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561756, 30.613577, 42.792328>,  <33.178944, 30.560955, 42.895695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561756, 30.613577, 42.792328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268347, 0.064047, -0.961191,
		-0.109899, 0.989238, 0.096598,
		0.957033, 0.131555, -0.258420,
		33.848866, 30.653044, 42.714802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151714, 30.894585, 42.195770>,  <33.178944, 30.560955, 42.895695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151714, 30.894585, 42.195770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542480, 30.832359, 42.254345>,  <33.776939, 30.795025, 42.289490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542480, 30.832359, 42.254345>,  <33.151714, 30.894585, 42.195770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542480, 30.832359, 42.254345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119387, -0.170943, -0.978021,
		0.177178, 0.972922, -0.148424,
		0.976911, -0.155564, 0.146441,
		33.835552, 30.785690, 42.298279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519749, 31.383926, 41.821819>,  <33.151714, 30.894585, 42.195770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519749, 31.383926, 41.821819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752445, 31.061054, 41.861889>,  <33.892063, 30.867331, 41.885933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752445, 31.061054, 41.861889>,  <33.519749, 31.383926, 41.821819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752445, 31.061054, 41.861889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183783, 0.010469, -0.982911,
		0.792337, 0.590213, 0.154436,
		0.581743, -0.807180, 0.100176,
		33.926968, 30.818901, 41.891941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963673, 31.562929, 41.310501>,  <33.519749, 31.383926, 41.821819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963673, 31.562929, 41.310501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024445, 31.173763, 41.380196>,  <34.060909, 30.940264, 41.422012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024445, 31.173763, 41.380196>,  <33.963673, 31.562929, 41.310501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024445, 31.173763, 41.380196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205042, -0.141420, -0.968483,
		0.966890, 0.182865, 0.178003,
		0.151929, -0.972914, 0.174233,
		34.070023, 30.881889, 41.432465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454159, 31.390955, 40.728275>,  <33.963673, 31.562929, 41.310501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454159, 31.390955, 40.728275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282757, 31.056511, 40.865273>,  <34.179916, 30.855844, 40.947472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282757, 31.056511, 40.865273>,  <34.454159, 31.390955, 40.728275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282757, 31.056511, 40.865273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015631, -0.385862, -0.922424,
		0.903406, -0.389907, 0.178411,
		-0.428502, -0.836112, 0.342495,
		34.154205, 30.805677, 40.968021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857735, 30.802572, 40.520802>,  <34.454159, 31.390955, 40.728275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857735, 30.802572, 40.520802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497078, 30.651436, 40.604965>,  <34.280682, 30.560753, 40.655464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497078, 30.651436, 40.604965>,  <34.857735, 30.802572, 40.520802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497078, 30.651436, 40.604965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042964, -0.405857, -0.912926,
		0.430338, -0.832175, 0.349705,
		-0.901644, -0.377842, 0.210409,
		34.226585, 30.538084, 40.668087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980404, 30.132418, 40.363804>,  <34.857735, 30.802572, 40.520802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980404, 30.132418, 40.363804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586098, 30.199213, 40.356026>,  <34.349514, 30.239290, 40.351357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586098, 30.199213, 40.356026>,  <34.980404, 30.132418, 40.363804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586098, 30.199213, 40.356026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047106, -0.385398, -0.921547,
		-0.161383, -0.907515, 0.387779,
		-0.985767, 0.166989, -0.019447,
		34.290367, 30.249310, 40.350193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696018, 29.568481, 40.036293>,  <34.980404, 30.132418, 40.363804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696018, 29.568481, 40.036293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397671, 29.833534, 40.009171>,  <34.218662, 29.992565, 39.992897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397671, 29.833534, 40.009171>,  <34.696018, 29.568481, 40.036293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397671, 29.833534, 40.009171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205219, -0.325447, -0.923022,
		-0.633689, -0.674541, 0.378726,
		-0.745871, 0.662630, -0.067803,
		34.173908, 30.032324, 39.988831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065708, 29.270601, 39.760483>,  <34.696018, 29.568481, 40.036293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065708, 29.270601, 39.760483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033501, 29.658936, 39.670151>,  <34.014175, 29.891935, 39.615952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033501, 29.658936, 39.670151>,  <34.065708, 29.270601, 39.760483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033501, 29.658936, 39.670151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209896, -0.237999, -0.948314,
		-0.974403, -0.028955, 0.222937,
		-0.080517, 0.970834, -0.225830,
		34.009346, 29.950186, 39.602402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563602, 29.288542, 39.268559>,  <34.065708, 29.270601, 39.760483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563602, 29.288542, 39.268559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775402, 29.624399, 39.220173>,  <33.902481, 29.825914, 39.191143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775402, 29.624399, 39.220173>,  <33.563602, 29.288542, 39.268559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775402, 29.624399, 39.220173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041941, -0.116508, -0.992304,
		-0.847276, 0.530493, -0.026474,
		0.529495, 0.839645, -0.120964,
		33.934250, 29.876293, 39.183884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240715, 29.576004, 38.635548>,  <33.563602, 29.288542, 39.268559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240715, 29.576004, 38.635548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594273, 29.760118, 38.668682>,  <33.806408, 29.870586, 38.688560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594273, 29.760118, 38.668682>,  <33.240715, 29.576004, 38.635548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594273, 29.760118, 38.668682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080122, 0.025466, -0.996460,
		-0.460766, 0.887405, -0.014370,
		0.883898, 0.460286, 0.082834,
		33.859444, 29.898205, 38.693531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212997, 29.883875, 38.081215>,  <33.240715, 29.576004, 38.635548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212997, 29.883875, 38.081215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592068, 29.978813, 38.166603>,  <33.819511, 30.035776, 38.217838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592068, 29.978813, 38.166603>,  <33.212997, 29.883875, 38.081215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592068, 29.978813, 38.166603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197146, 0.090812, -0.976159,
		-0.251072, 0.967172, 0.039269,
		0.947680, 0.237344, 0.213475,
		33.876373, 30.050016, 38.230644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252758, 30.486540, 37.888565>,  <33.212997, 29.883875, 38.081215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252758, 30.486540, 37.888565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614788, 30.318298, 37.863506>,  <33.832008, 30.217354, 37.848469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614788, 30.318298, 37.863506>,  <33.252758, 30.486540, 37.888565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614788, 30.318298, 37.863506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004873, 0.137057, -0.990551,
		0.425217, 0.896832, 0.121998,
		0.905079, -0.420604, -0.062650,
		33.886311, 30.192118, 37.844711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747681, 30.832121, 37.415363>,  <33.252758, 30.486540, 37.888565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747681, 30.832121, 37.415363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848156, 30.444971, 37.410969>,  <33.908440, 30.212681, 37.408333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848156, 30.444971, 37.410969>,  <33.747681, 30.832121, 37.415363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848156, 30.444971, 37.410969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030747, 0.019323, -0.999340,
		0.967450, 0.250685, 0.034613,
		0.251189, -0.967876, -0.010986,
		33.923512, 30.154608, 37.407673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145256, 30.786404, 36.839298>,  <33.747681, 30.832121, 37.415363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145256, 30.786404, 36.839298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067173, 30.397894, 36.893730>,  <34.020325, 30.164787, 36.926392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067173, 30.397894, 36.893730>,  <34.145256, 30.786404, 36.839298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067173, 30.397894, 36.893730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083119, -0.121870, -0.989060,
		0.977233, -0.204384, -0.056942,
		-0.195208, -0.971275, 0.136083,
		34.008610, 30.106512, 36.934555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627361, 30.335655, 36.471516>,  <34.145256, 30.786404, 36.839298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627361, 30.335655, 36.471516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273647, 30.152807, 36.509613>,  <34.061417, 30.043098, 36.532471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273647, 30.152807, 36.509613>,  <34.627361, 30.335655, 36.471516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273647, 30.152807, 36.509613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064537, -0.082366, -0.994510,
		0.462458, -0.885581, 0.043334,
		-0.884289, -0.457123, 0.095244,
		34.008362, 30.015671, 36.538185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121002, 30.856424, 36.835056>,  <34.627361, 30.335655, 36.471516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121002, 30.856424, 36.835056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496902, 30.790417, 36.715294>,  <35.722443, 30.750813, 36.643436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496902, 30.790417, 36.715294>,  <35.121002, 30.856424, 36.835056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496902, 30.790417, 36.715294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190232, -0.475272, 0.859028,
		-0.284054, -0.864226, -0.415244,
		0.939747, -0.165018, -0.299406,
		35.778828, 30.740911, 36.625473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288322, 30.182844, 37.074303>,  <35.121002, 30.856424, 36.835056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288322, 30.182844, 37.074303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626865, 30.386801, 37.012730>,  <35.829990, 30.509174, 36.975784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626865, 30.386801, 37.012730>,  <35.288322, 30.182844, 37.074303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626865, 30.386801, 37.012730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443868, -0.515487, 0.732976,
		0.294388, -0.688683, -0.662609,
		0.846355, 0.509891, -0.153931,
		35.880772, 30.539768, 36.966549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790161, 29.704855, 37.282291>,  <35.288322, 30.182844, 37.074303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790161, 29.704855, 37.282291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017872, 30.033318, 37.266144>,  <36.154499, 30.230394, 37.256454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017872, 30.033318, 37.266144>,  <35.790161, 29.704855, 37.282291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017872, 30.033318, 37.266144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563533, -0.353985, 0.746409,
		0.598629, -0.447659, -0.664263,
		0.569275, 0.821156, -0.040365,
		36.188656, 30.279665, 37.254036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482964, 29.519625, 37.174820>,  <35.790161, 29.704855, 37.282291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482964, 29.519625, 37.174820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518066, 29.887745, 37.327316>,  <36.539127, 30.108618, 37.418816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518066, 29.887745, 37.327316>,  <36.482964, 29.519625, 37.174820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518066, 29.887745, 37.327316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703035, -0.328357, 0.630812,
		0.705720, 0.212673, -0.675817,
		0.087753, 0.920300, 0.381245,
		36.544392, 30.163836, 37.441689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190022, 29.583019, 37.483334>,  <36.482964, 29.519625, 37.174820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190022, 29.583019, 37.483334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975517, 29.885187, 37.633942>,  <36.846817, 30.066488, 37.724308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975517, 29.885187, 37.633942>,  <37.190022, 29.583019, 37.483334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975517, 29.885187, 37.633942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530885, -0.044929, 0.846252,
		0.656192, 0.653699, -0.376947,
		-0.536259, 0.755420, 0.376521,
		36.814640, 30.111813, 37.746899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712013, 29.976400, 37.731617>,  <37.190022, 29.583019, 37.483334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712013, 29.976400, 37.731617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380234, 30.077442, 37.930901>,  <37.181168, 30.138067, 38.050468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380234, 30.077442, 37.930901>,  <37.712013, 29.976400, 37.731617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380234, 30.077442, 37.930901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537740, 0.119716, 0.834568,
		0.151171, 0.960135, -0.235133,
		-0.829447, 0.252603, 0.498206,
		37.131401, 30.153223, 38.080360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951710, 30.545794, 38.311726>,  <37.712013, 29.976400, 37.731617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951710, 30.545794, 38.311726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583748, 30.428320, 38.415672>,  <37.362972, 30.357836, 38.478039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583748, 30.428320, 38.415672>,  <37.951710, 30.545794, 38.311726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583748, 30.428320, 38.415672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294656, -0.080380, 0.952217,
		-0.258762, 0.952517, 0.160477,
		-0.919902, -0.293683, 0.259865,
		37.307777, 30.340216, 38.493633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716335, 31.025366, 38.846214>,  <37.951710, 30.545794, 38.311726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716335, 31.025366, 38.846214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510452, 30.686390, 38.898254>,  <37.386921, 30.483006, 38.929478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510452, 30.686390, 38.898254>,  <37.716335, 31.025366, 38.846214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510452, 30.686390, 38.898254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179289, 0.042005, 0.982899,
		-0.838411, 0.529230, 0.130316,
		-0.514706, -0.847438, 0.130103,
		37.356041, 30.432159, 38.937286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213329, 31.167664, 39.427151>,  <37.716335, 31.025366, 38.846214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213329, 31.167664, 39.427151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213608, 30.768257, 39.405380>,  <37.213776, 30.528612, 39.392319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213608, 30.768257, 39.405380>,  <37.213329, 31.167664, 39.427151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213608, 30.768257, 39.405380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092223, -0.054134, 0.994266,
		-0.995738, -0.005707, 0.092049,
		0.000691, -0.998517, -0.054430,
		37.213814, 30.468702, 39.389050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781872, 30.951578, 39.940586>,  <37.213329, 31.167664, 39.427151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781872, 30.951578, 39.940586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016464, 30.636423, 39.865456>,  <37.157219, 30.447330, 39.820377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016464, 30.636423, 39.865456>,  <36.781872, 30.951578, 39.940586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016464, 30.636423, 39.865456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136673, -0.132307, 0.981741,
		-0.798351, -0.601441, 0.030087,
		0.586478, -0.787886, -0.187828,
		37.192410, 30.400057, 39.809109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525024, 30.489325, 40.356396>,  <36.781872, 30.951578, 39.940586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525024, 30.489325, 40.356396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873173, 30.327991, 40.243420>,  <37.082062, 30.231192, 40.175636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873173, 30.327991, 40.243420>,  <36.525024, 30.489325, 40.356396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873173, 30.327991, 40.243420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129397, -0.366081, 0.921543,
		-0.475085, -0.838633, -0.266436,
		0.870374, -0.403335, -0.282437,
		37.134285, 30.206991, 40.158688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530689, 29.713913, 40.481186>,  <36.525024, 30.489325, 40.356396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530689, 29.713913, 40.481186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913376, 29.830202, 40.475857>,  <37.142986, 29.899977, 40.472660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913376, 29.830202, 40.475857>,  <36.530689, 29.713913, 40.481186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913376, 29.830202, 40.475857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104592, -0.300759, 0.947948,
		0.271586, -0.908308, -0.318148,
		0.956714, 0.290724, -0.013319,
		37.200390, 29.917419, 40.471863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966637, 29.123579, 40.657574>,  <36.530689, 29.713913, 40.481186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966637, 29.123579, 40.657574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160118, 29.467432, 40.723373>,  <37.276207, 29.673744, 40.762852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160118, 29.467432, 40.723373>,  <36.966637, 29.123579, 40.657574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160118, 29.467432, 40.723373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081140, -0.143094, 0.986377,
		0.871462, -0.490463, 0.000535,
		0.483705, 0.859634, 0.164497,
		37.305229, 29.725323, 40.772724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532398, 29.063969, 41.129467>,  <36.966637, 29.123579, 40.657574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532398, 29.063969, 41.129467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467266, 29.457169, 41.163410>,  <37.428185, 29.693089, 41.183777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467266, 29.457169, 41.163410>,  <37.532398, 29.063969, 41.129467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467266, 29.457169, 41.163410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062618, -0.096129, 0.993397,
		0.984665, 0.156445, 0.077207,
		-0.162834, 0.982998, 0.084859,
		37.418415, 29.752068, 41.188869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067318, 29.322113, 41.652298>,  <37.532398, 29.063969, 41.129467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067318, 29.322113, 41.652298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783337, 29.603685, 41.643810>,  <37.612949, 29.772629, 41.638718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783337, 29.603685, 41.643810>,  <38.067318, 29.322113, 41.652298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783337, 29.603685, 41.643810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019822, 0.050096, 0.998548,
		0.703973, 0.708498, -0.049518,
		-0.709950, 0.703932, -0.021222,
		37.570351, 29.814865, 41.637444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217136, 29.722075, 42.223343>,  <38.067318, 29.322113, 41.652298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217136, 29.722075, 42.223343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839218, 29.828419, 42.146729>,  <37.612469, 29.892225, 42.100758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839218, 29.828419, 42.146729>,  <38.217136, 29.722075, 42.223343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839218, 29.828419, 42.146729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125099, 0.247602, 0.960752,
		0.302850, 0.931672, -0.200674,
		-0.944792, 0.265859, -0.191538,
		37.555782, 29.908176, 42.089268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233662, 30.342535, 42.455475>,  <38.217136, 29.722075, 42.223343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233662, 30.342535, 42.455475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844643, 30.249466, 42.456692>,  <37.611229, 30.193624, 42.457420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844643, 30.249466, 42.456692>,  <38.233662, 30.342535, 42.455475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844643, 30.249466, 42.456692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070181, 0.305768, 0.949516,
		-0.221859, 0.923238, -0.313704,
		-0.972550, -0.232675, 0.003044,
		37.552879, 30.179663, 42.457603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851009, 30.962364, 42.728554>,  <38.233662, 30.342535, 42.455475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851009, 30.962364, 42.728554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586906, 30.665277, 42.773155>,  <37.428444, 30.487026, 42.799915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586906, 30.665277, 42.773155>,  <37.851009, 30.962364, 42.728554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586906, 30.665277, 42.773155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192954, 0.311238, 0.930537,
		-0.725829, 0.592879, -0.348808,
		-0.660259, -0.742714, 0.111507,
		37.388828, 30.442463, 42.806606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284157, 31.275013, 42.900238>,  <37.851009, 30.962364, 42.728554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284157, 31.275013, 42.900238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215435, 30.899158, 43.018604>,  <37.174202, 30.673645, 43.089626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215435, 30.899158, 43.018604>,  <37.284157, 31.275013, 42.900238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215435, 30.899158, 43.018604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332932, 0.338093, 0.880256,
		-0.927168, 0.052709, -0.370919,
		-0.171802, -0.939636, 0.295920,
		37.163895, 30.617268, 43.107380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711533, 31.310183, 43.247257>,  <37.284157, 31.275013, 42.900238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711533, 31.310183, 43.247257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872215, 30.968699, 43.379807>,  <36.968624, 30.763807, 43.459335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872215, 30.968699, 43.379807>,  <36.711533, 31.310183, 43.247257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872215, 30.968699, 43.379807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300192, 0.219103, 0.928374,
		-0.865168, -0.472412, -0.168261,
		0.401708, -0.853710, 0.331375,
		36.992729, 30.712585, 43.479218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141113, 30.974291, 43.680656>,  <36.711533, 31.310183, 43.247257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141113, 30.974291, 43.680656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483383, 30.796104, 43.786018>,  <36.688744, 30.689194, 43.849236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483383, 30.796104, 43.786018>,  <36.141113, 30.974291, 43.680656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483383, 30.796104, 43.786018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275835, 0.038071, 0.960451,
		-0.437875, -0.894490, -0.090299,
		0.855676, -0.445465, 0.263402,
		36.740086, 30.662466, 43.865040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875973, 30.594093, 44.203426>,  <36.141113, 30.974291, 43.680656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875973, 30.594093, 44.203426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272686, 30.613054, 44.250957>,  <36.510715, 30.624430, 44.279476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272686, 30.613054, 44.250957>,  <35.875973, 30.594093, 44.203426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272686, 30.613054, 44.250957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123740, 0.119609, 0.985080,
		0.032478, -0.991689, 0.124491,
		0.991783, 0.047398, 0.118827,
		36.570221, 30.627275, 44.286606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969112, 30.066057, 44.683922>,  <35.875973, 30.594093, 44.203426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969112, 30.066057, 44.683922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263008, 30.336985, 44.698849>,  <36.439346, 30.499542, 44.707806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263008, 30.336985, 44.698849>,  <35.969112, 30.066057, 44.683922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263008, 30.336985, 44.698849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244128, 0.212692, 0.946131,
		0.632896, -0.704272, 0.321626,
		0.734741, 0.677321, 0.037321,
		36.483429, 30.540180, 44.710045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164688, 30.051708, 45.449123>,  <35.969112, 30.066057, 44.683922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164688, 30.051708, 45.449123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329708, 30.377155, 45.285255>,  <36.428722, 30.572424, 45.186935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329708, 30.377155, 45.285255>,  <36.164688, 30.051708, 45.449123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329708, 30.377155, 45.285255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021313, 0.458222, 0.888582,
		0.910685, -0.357854, 0.206381,
		0.412551, 0.813617, -0.409669,
		36.453472, 30.621241, 45.162354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695545, 30.236494, 45.881958>,  <36.164688, 30.051708, 45.449123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695545, 30.236494, 45.881958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629356, 30.583372, 45.694088>,  <36.589645, 30.791498, 45.581367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629356, 30.583372, 45.694088>,  <36.695545, 30.236494, 45.881958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629356, 30.583372, 45.694088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113715, 0.456286, 0.882537,
		0.979637, 0.199441, 0.023112,
		-0.165468, 0.867195, -0.469674,
		36.579716, 30.843531, 45.553185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114037, 30.616198, 46.254673>,  <36.695545, 30.236494, 45.881958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114037, 30.616198, 46.254673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831047, 30.843048, 46.085987>,  <36.661251, 30.979158, 45.984776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831047, 30.843048, 46.085987>,  <37.114037, 30.616198, 46.254673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831047, 30.843048, 46.085987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034090, 0.568626, 0.821890,
		0.705913, 0.595845, -0.382957,
		-0.707478, 0.567127, -0.421713,
		36.618805, 31.013186, 45.959473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391441, 31.367352, 46.282745>,  <37.114037, 30.616198, 46.254673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391441, 31.367352, 46.282745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992897, 31.362001, 46.249069>,  <36.753769, 31.358791, 46.228863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992897, 31.362001, 46.249069>,  <37.391441, 31.367352, 46.282745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992897, 31.362001, 46.249069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064751, 0.761076, 0.645423,
		0.055441, 0.648525, -0.759171,
		-0.996360, -0.013374, -0.084187,
		36.693989, 31.357988, 46.223812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268860, 32.055595, 46.278107>,  <37.391441, 31.367352, 46.282745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268860, 32.055595, 46.278107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931484, 31.867853, 46.382660>,  <36.729061, 31.755207, 46.445393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931484, 31.867853, 46.382660>,  <37.268860, 32.055595, 46.278107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931484, 31.867853, 46.382660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019129, 0.459984, 0.887721,
		-0.536888, 0.753736, -0.378989,
		-0.843437, -0.469357, 0.261379,
		36.678452, 31.727047, 46.461075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845322, 32.512932, 46.561657>,  <37.268860, 32.055595, 46.278107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845322, 32.512932, 46.561657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710331, 32.169872, 46.716858>,  <36.629337, 31.964035, 46.809978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710331, 32.169872, 46.716858>,  <36.845322, 32.512932, 46.561657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710331, 32.169872, 46.716858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123214, 0.448879, 0.885057,
		-0.933236, 0.250877, -0.257160,
		-0.337474, -0.857653, 0.387999,
		36.609089, 31.912577, 46.833256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523182, 32.690559, 47.106441>,  <36.845322, 32.512932, 46.561657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523182, 32.690559, 47.106441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472248, 32.297832, 47.162758>,  <36.441689, 32.062195, 47.196548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472248, 32.297832, 47.162758>,  <36.523182, 32.690559, 47.106441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472248, 32.297832, 47.162758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302564, 0.173626, 0.937182,
		-0.944585, 0.076739, -0.319171,
		-0.127334, -0.981817, 0.140786,
		36.434048, 32.003288, 47.204994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796844, 32.521999, 47.442356>,  <36.523182, 32.690559, 47.106441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796844, 32.521999, 47.442356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071163, 32.245926, 47.534725>,  <36.235756, 32.080284, 47.590149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071163, 32.245926, 47.534725>,  <35.796844, 32.521999, 47.442356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071163, 32.245926, 47.534725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178780, 0.147814, 0.972722,
		-0.705489, -0.708379, -0.022020,
		0.685801, -0.690181, 0.230925,
		36.276905, 32.038872, 47.604004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504292, 32.153969, 47.887032>,  <35.796844, 32.521999, 47.442356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504292, 32.153969, 47.887032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882336, 32.043385, 47.956699>,  <36.109161, 31.977034, 47.998501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882336, 32.043385, 47.956699>,  <35.504292, 32.153969, 47.887032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882336, 32.043385, 47.956699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119265, 0.204392, 0.971596,
		-0.304212, -0.939037, 0.160200,
		0.945109, -0.276465, 0.174173,
		36.165867, 31.960445, 48.008953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416744, 31.746893, 48.431541>,  <35.504292, 32.153969, 47.887032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416744, 31.746893, 48.431541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801231, 31.857206, 48.430504>,  <36.031921, 31.923395, 48.429882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801231, 31.857206, 48.430504>,  <35.416744, 31.746893, 48.431541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801231, 31.857206, 48.430504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052802, 0.193243, 0.979729,
		0.270699, -0.941594, 0.200311,
		0.961215, 0.275788, -0.002592,
		36.089596, 31.939941, 48.429726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773388, 31.288942, 48.954517>,  <35.416744, 31.746893, 48.431541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773388, 31.288942, 48.954517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994267, 31.618893, 48.906094>,  <36.126793, 31.816864, 48.877041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994267, 31.618893, 48.906094>,  <35.773388, 31.288942, 48.954517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994267, 31.618893, 48.906094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063621, 0.186475, 0.980398,
		0.831284, -0.533669, 0.155450,
		0.552196, 0.824878, -0.121061,
		36.159924, 31.866356, 48.869774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295013, 31.268087, 49.442093>,  <35.773388, 31.288942, 48.954517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295013, 31.268087, 49.442093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262897, 31.655416, 49.347515>,  <36.243629, 31.887814, 49.290768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262897, 31.655416, 49.347515>,  <36.295013, 31.268087, 49.442093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262897, 31.655416, 49.347515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107642, 0.244245, 0.963720,
		0.990943, 0.051923, -0.123842,
		-0.080287, 0.968322, -0.236444,
		36.238811, 31.945913, 49.276581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853035, 31.651842, 49.812489>,  <36.295013, 31.268087, 49.442093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853035, 31.651842, 49.812489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584976, 31.931503, 49.712814>,  <36.424141, 32.099300, 49.653011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584976, 31.931503, 49.712814>,  <36.853035, 31.651842, 49.812489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584976, 31.931503, 49.712814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049087, 0.293242, 0.954777,
		0.740607, 0.652069, -0.162195,
		-0.670143, 0.699153, -0.249185,
		36.383934, 32.141251, 49.638058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057846, 32.301380, 50.198311>,  <36.853035, 31.651842, 49.812489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057846, 32.301380, 50.198311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674042, 32.370514, 50.109352>,  <36.443760, 32.411995, 50.055977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674042, 32.370514, 50.109352>,  <37.057846, 32.301380, 50.198311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674042, 32.370514, 50.109352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116975, 0.473752, 0.872855,
		0.256221, 0.863532, -0.434354,
		-0.959514, 0.172835, -0.222397,
		36.386189, 32.422363, 50.042633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958908, 32.949474, 50.457573>,  <37.057846, 32.301380, 50.198311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958908, 32.949474, 50.457573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591263, 32.805992, 50.392384>,  <36.370674, 32.719902, 50.353268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591263, 32.805992, 50.392384>,  <36.958908, 32.949474, 50.457573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591263, 32.805992, 50.392384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262505, 0.249058, 0.932234,
		-0.293808, 0.899611, -0.323075,
		-0.919112, -0.358707, -0.162977,
		36.315529, 32.698380, 50.343491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573357, 33.433311, 50.757835>,  <36.958908, 32.949474, 50.457573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573357, 33.433311, 50.757835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337257, 33.110924, 50.739830>,  <36.195599, 32.917492, 50.729027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337257, 33.110924, 50.739830>,  <36.573357, 33.433311, 50.757835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337257, 33.110924, 50.739830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413492, 0.253984, 0.874366,
		-0.693279, 0.534703, -0.483174,
		-0.590245, -0.805968, -0.045014,
		36.160183, 32.869133, 50.726326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264111, 33.794254, 51.073578>,  <36.573357, 33.433311, 50.757835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264111, 33.794254, 51.073578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342083, 34.181759, 51.134895>,  <37.388866, 34.414261, 51.171684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342083, 34.181759, 51.134895>,  <37.264111, 33.794254, 51.073578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342083, 34.181759, 51.134895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114558, 0.132734, -0.984509,
		-0.974104, 0.209472, -0.085106,
		0.194931, 0.968764, 0.153293,
		37.400562, 34.472389, 51.180882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786499, 34.155079, 50.653477>,  <37.264111, 33.794254, 51.073578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786499, 34.155079, 50.653477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101936, 34.397182, 50.696892>,  <37.291199, 34.542442, 50.722942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101936, 34.397182, 50.696892>,  <36.786499, 34.155079, 50.653477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101936, 34.397182, 50.696892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004732, 0.182476, -0.983199,
		-0.614891, 0.774835, 0.146764,
		0.788598, 0.605254, 0.108537,
		37.338516, 34.578758, 50.729454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697124, 34.675564, 50.167641>,  <36.786499, 34.155079, 50.653477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697124, 34.675564, 50.167641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087051, 34.743870, 50.225010>,  <37.321007, 34.784855, 50.259430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087051, 34.743870, 50.225010>,  <36.697124, 34.675564, 50.167641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087051, 34.743870, 50.225010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138523, 0.040338, -0.989537,
		-0.174763, 0.984486, 0.015667,
		0.974818, 0.170764, 0.143423,
		37.379498, 34.795097, 50.268036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904919, 35.151016, 49.548435>,  <36.697124, 34.675564, 50.167641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904919, 35.151016, 49.548435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241558, 34.985592, 49.687389>,  <37.443542, 34.886337, 49.770763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241558, 34.985592, 49.687389>,  <36.904919, 35.151016, 49.548435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241558, 34.985592, 49.687389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378429, -0.007386, -0.925601,
		0.385362, 0.910445, 0.150288,
		0.841599, -0.413565, 0.347385,
		37.494038, 34.861523, 49.791603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443161, 35.642918, 49.371407>,  <36.904919, 35.151016, 49.548435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443161, 35.642918, 49.371407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583183, 35.268856, 49.393105>,  <37.667198, 35.044418, 49.406124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583183, 35.268856, 49.393105>,  <37.443161, 35.642918, 49.371407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583183, 35.268856, 49.393105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400435, 0.097044, -0.911172,
		0.846825, 0.340681, 0.408441,
		0.350055, -0.935157, 0.054241,
		37.688198, 34.988308, 49.409378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151760, 35.600594, 49.029202>,  <37.443161, 35.642918, 49.371407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151760, 35.600594, 49.029202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051064, 35.214172, 49.052437>,  <37.990646, 34.982319, 49.066376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051064, 35.214172, 49.052437>,  <38.151760, 35.600594, 49.029202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051064, 35.214172, 49.052437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536820, -0.189326, -0.822180,
		0.805263, -0.175799, 0.566256,
		-0.251746, -0.966049, 0.058084,
		37.975540, 34.924358, 49.069862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747868, 35.254753, 48.764400>,  <38.151760, 35.600594, 49.029202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747868, 35.254753, 48.764400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477352, 34.960938, 48.742180>,  <38.315044, 34.784649, 48.728848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.477352, 34.960938, 48.742180>,  <38.747868, 35.254753, 48.764400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477352, 34.960938, 48.742180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388318, -0.291405, -0.874238,
		0.625974, -0.612809, 0.482309,
		-0.676288, -0.734539, -0.055553,
		38.274467, 34.740574, 48.725513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123886, 34.553211, 48.597397>,  <38.747868, 35.254753, 48.764400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123886, 34.553211, 48.597397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745834, 34.533352, 48.468243>,  <38.519001, 34.521435, 48.390751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745834, 34.533352, 48.468243>,  <39.123886, 34.553211, 48.597397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745834, 34.533352, 48.468243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326088, -0.203051, -0.923275,
		-0.019724, -0.977908, 0.208100,
		-0.945134, -0.049648, -0.322889,
		38.462296, 34.518459, 48.371376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059288, 33.972481, 48.224342>,  <39.123886, 34.553211, 48.597397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059288, 33.972481, 48.224342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738380, 34.178135, 48.102997>,  <38.545837, 34.301529, 48.030190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738380, 34.178135, 48.102997>,  <39.059288, 33.972481, 48.224342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738380, 34.178135, 48.102997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084276, -0.405550, -0.910179,
		-0.590987, -0.755773, 0.282030,
		-0.802267, 0.514136, -0.303369,
		38.497700, 34.332375, 48.011986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715538, 33.522816, 47.834560>,  <39.059288, 33.972481, 48.224342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715538, 33.522816, 47.834560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573074, 33.880470, 47.725998>,  <38.487595, 34.095062, 47.660862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573074, 33.880470, 47.725998>,  <38.715538, 33.522816, 47.834560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573074, 33.880470, 47.725998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066538, -0.313984, -0.947094,
		-0.932052, -0.319260, 0.171324,
		-0.356162, 0.894141, -0.271406,
		38.466225, 34.148712, 47.644577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143475, 33.314613, 47.448143>,  <38.715538, 33.522816, 47.834560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143475, 33.314613, 47.448143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232021, 33.690624, 47.344334>,  <38.285149, 33.916229, 47.282047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232021, 33.690624, 47.344334>,  <38.143475, 33.314613, 47.448143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232021, 33.690624, 47.344334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014232, -0.269208, -0.962977,
		-0.975086, 0.209481, -0.072973,
		0.221370, 0.940024, -0.259520,
		38.298431, 33.972630, 47.266479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756035, 33.469906, 46.836830>,  <38.143475, 33.314613, 47.448143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756035, 33.469906, 46.836830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030247, 33.758835, 46.800381>,  <38.194775, 33.932194, 46.778511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030247, 33.758835, 46.800381>,  <37.756035, 33.469906, 46.836830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030247, 33.758835, 46.800381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063243, -0.183767, -0.980933,
		-0.725294, 0.666694, -0.171659,
		0.685528, 0.722322, -0.091121,
		38.235905, 33.975533, 46.773045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509628, 34.138710, 46.337509>,  <37.756035, 33.469906, 46.836830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509628, 34.138710, 46.337509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898342, 34.044361, 46.338238>,  <38.131569, 33.987751, 46.338673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898342, 34.044361, 46.338238>,  <37.509628, 34.138710, 46.337509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898342, 34.044361, 46.338238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003562, -0.022385, -0.999743,
		0.235851, 0.971527, -0.022593,
		0.971783, -0.235871, 0.001819,
		38.189877, 33.973598, 46.338783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894276, 34.576809, 45.863289>,  <37.509628, 34.138710, 46.337509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894276, 34.576809, 45.863289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129990, 34.255672, 45.899502>,  <38.271416, 34.062992, 45.921230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129990, 34.255672, 45.899502>,  <37.894276, 34.576809, 45.863289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129990, 34.255672, 45.899502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050226, -0.075437, -0.995885,
		0.806364, 0.591406, -0.004130,
		0.589283, -0.802838, 0.090534,
		38.306774, 34.014820, 45.926662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354187, 34.598072, 45.352551>,  <37.894276, 34.576809, 45.863289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354187, 34.598072, 45.352551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345215, 34.214130, 45.464390>,  <38.339832, 33.983765, 45.531494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345215, 34.214130, 45.464390>,  <38.354187, 34.598072, 45.352551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345215, 34.214130, 45.464390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075846, -0.280501, -0.956852,
		0.996867, -0.000254, 0.079092,
		-0.022429, -0.959854, 0.279603,
		38.338486, 33.926174, 45.548271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831558, 34.265614, 44.976788>,  <38.354187, 34.598072, 45.352551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831558, 34.265614, 44.976788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610775, 33.952442, 45.091583>,  <38.478306, 33.764538, 45.160461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610775, 33.952442, 45.091583>,  <38.831558, 34.265614, 44.976788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610775, 33.952442, 45.091583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125278, -0.418121, -0.899711,
		0.824406, -0.460651, 0.328870,
		-0.551960, -0.782928, 0.286992,
		38.445187, 33.717564, 45.177681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988495, 33.838165, 44.496384>,  <38.831558, 34.265614, 44.976788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988495, 33.838165, 44.496384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682507, 33.612316, 44.620331>,  <38.498913, 33.476807, 44.694698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682507, 33.612316, 44.620331>,  <38.988495, 33.838165, 44.496384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682507, 33.612316, 44.620331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035952, -0.442934, -0.895833,
		0.643060, -0.696428, 0.318532,
		-0.764972, -0.564622, 0.309871,
		38.453014, 33.442928, 44.713291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169037, 33.169010, 44.352642>,  <38.988495, 33.838165, 44.496384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169037, 33.169010, 44.352642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770271, 33.167366, 44.383991>,  <38.531013, 33.166382, 44.402802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770271, 33.167366, 44.383991>,  <39.169037, 33.169010, 44.352642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770271, 33.167366, 44.383991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052168, -0.711407, -0.700841,
		0.058638, -0.702768, 0.708998,
		-0.996915, -0.004109, 0.078378,
		38.471195, 33.166134, 44.407505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974636, 32.412163, 44.222595>,  <39.169037, 33.169010, 44.352642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974636, 32.412163, 44.222595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634354, 32.618057, 44.180008>,  <38.430183, 32.741596, 44.154457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634354, 32.618057, 44.180008>,  <38.974636, 32.412163, 44.222595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634354, 32.618057, 44.180008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099455, -0.356519, -0.928980,
		-0.516142, -0.779703, 0.354488,
		-0.850710, 0.514741, -0.106469,
		38.379139, 32.772480, 44.148067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443298, 31.992998, 43.960869>,  <38.974636, 32.412163, 44.222595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443298, 31.992998, 43.960869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329674, 32.360867, 43.852413>,  <38.261501, 32.581589, 43.787338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329674, 32.360867, 43.852413>,  <38.443298, 31.992998, 43.960869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329674, 32.360867, 43.852413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247706, -0.343578, -0.905868,
		-0.926258, -0.190155, 0.325404,
		-0.284057, 0.919671, -0.271139,
		38.244457, 32.636768, 43.771072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765083, 31.854437, 43.630527>,  <38.443298, 31.992998, 43.960869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765083, 31.854437, 43.630527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899086, 32.214039, 43.517700>,  <37.979488, 32.429798, 43.450005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899086, 32.214039, 43.517700>,  <37.765083, 31.854437, 43.630527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899086, 32.214039, 43.517700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189107, -0.229116, -0.954853,
		-0.923042, 0.373226, 0.093252,
		0.335010, 0.899004, -0.282064,
		37.999588, 32.483742, 43.433083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212215, 32.113014, 43.229706>,  <37.765083, 31.854437, 43.630527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212215, 32.113014, 43.229706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531803, 32.328892, 43.123585>,  <37.723557, 32.458420, 43.059914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531803, 32.328892, 43.123585>,  <37.212215, 32.113014, 43.229706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531803, 32.328892, 43.123585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119612, -0.289731, -0.949605,
		-0.589361, 0.790435, -0.166931,
		0.798966, 0.539693, -0.265302,
		37.771492, 32.490799, 43.043995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038567, 32.459721, 42.558834>,  <37.212215, 32.113014, 43.229706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038567, 32.459721, 42.558834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437199, 32.458992, 42.591888>,  <37.676376, 32.458557, 42.611721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437199, 32.458992, 42.591888>,  <37.038567, 32.459721, 42.558834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437199, 32.458992, 42.591888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077618, -0.323181, -0.943149,
		0.028423, 0.946335, -0.321933,
		0.996578, -0.001819, 0.082639,
		37.736172, 32.458447, 42.616680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326340, 32.803516, 41.867485>,  <37.038567, 32.459721, 42.558834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326340, 32.803516, 41.867485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600533, 32.565086, 42.034725>,  <37.765049, 32.422028, 42.135071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600533, 32.565086, 42.034725>,  <37.326340, 32.803516, 41.867485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600533, 32.565086, 42.034725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344419, -0.240458, -0.907500,
		0.641469, 0.766080, 0.040468,
		0.685487, -0.596071, 0.418099,
		37.806179, 32.386265, 42.160156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897156, 33.062458, 41.569618>,  <37.326340, 32.803516, 41.867485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897156, 33.062458, 41.569618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999458, 32.701920, 41.709427>,  <38.060841, 32.485596, 41.793312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999458, 32.701920, 41.709427>,  <37.897156, 33.062458, 41.569618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999458, 32.701920, 41.709427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465046, -0.202255, -0.861873,
		0.847538, 0.382970, 0.367440,
		0.255755, -0.901347, 0.349518,
		38.076183, 32.431515, 41.814281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565353, 33.053406, 41.424805>,  <37.897156, 33.062458, 41.569618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565353, 33.053406, 41.424805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429089, 32.678555, 41.455097>,  <38.347328, 32.453644, 41.473274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429089, 32.678555, 41.455097>,  <38.565353, 33.053406, 41.424805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429089, 32.678555, 41.455097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373185, -0.208713, -0.903975,
		0.862948, -0.279692, 0.420824,
		-0.340666, -0.937129, 0.075732,
		38.326889, 32.397415, 41.477818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158012, 32.655373, 41.364574>,  <38.565353, 33.053406, 41.424805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158012, 32.655373, 41.364574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848225, 32.422447, 41.265690>,  <38.662354, 32.282692, 41.206360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848225, 32.422447, 41.265690>,  <39.158012, 32.655373, 41.364574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848225, 32.422447, 41.265690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416723, -0.175584, -0.891915,
		0.475967, -0.793777, 0.378647,
		-0.774466, -0.582313, -0.247212,
		38.615887, 32.247753, 41.191525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454498, 32.106895, 41.146744>,  <39.158012, 32.655373, 41.364574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454498, 32.106895, 41.146744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089329, 32.065815, 40.988750>,  <38.870228, 32.041168, 40.893955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089329, 32.065815, 40.988750>,  <39.454498, 32.106895, 41.146744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089329, 32.065815, 40.988750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407478, -0.175066, -0.896278,
		0.022899, -0.979186, 0.201670,
		-0.912928, -0.102700, -0.394987,
		38.815449, 32.035004, 40.870255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450710, 31.581472, 40.650070>,  <39.454498, 32.106895, 41.146744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450710, 31.581472, 40.650070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124092, 31.787510, 40.545822>,  <38.928120, 31.911133, 40.483273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124092, 31.787510, 40.545822>,  <39.450710, 31.581472, 40.650070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124092, 31.787510, 40.545822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189301, -0.187579, -0.963836,
		-0.545354, -0.836356, 0.055659,
		-0.816550, 0.515095, -0.260620,
		38.879128, 31.942038, 40.467636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100788, 31.198179, 40.207436>,  <39.450710, 31.581472, 40.650070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100788, 31.198179, 40.207436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963776, 31.559519, 40.104187>,  <38.881569, 31.776323, 40.042236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963776, 31.559519, 40.104187>,  <39.100788, 31.198179, 40.207436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963776, 31.559519, 40.104187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176891, -0.207817, -0.962040,
		-0.922702, -0.375193, -0.088610,
		-0.342536, 0.903351, -0.258122,
		38.861015, 31.830524, 40.026749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886131, 31.075159, 39.539242>,  <39.100788, 31.198179, 40.207436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886131, 31.075159, 39.539242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889046, 31.474977, 39.550953>,  <38.890797, 31.714869, 39.557980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889046, 31.474977, 39.550953>,  <38.886131, 31.075159, 39.539242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889046, 31.474977, 39.550953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237406, 0.026709, -0.971043,
		-0.971383, 0.014029, -0.237103,
		0.007290, 0.999545, 0.029275,
		38.891232, 31.774841, 39.559734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396156, 31.325624, 38.889454>,  <38.886131, 31.075159, 39.539242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396156, 31.325624, 38.889454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654217, 31.619707, 38.972637>,  <38.809055, 31.796156, 39.022549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654217, 31.619707, 38.972637>,  <38.396156, 31.325624, 38.889454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654217, 31.619707, 38.972637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156703, 0.139073, -0.977805,
		-0.747809, 0.663424, -0.025486,
		0.645155, 0.735205, 0.207961,
		38.847763, 31.840269, 39.035027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142914, 31.989353, 38.483036>,  <38.396156, 31.325624, 38.889454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142914, 31.989353, 38.483036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527729, 32.041321, 38.579037>,  <38.758617, 32.072502, 38.636639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527729, 32.041321, 38.579037>,  <38.142914, 31.989353, 38.483036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527729, 32.041321, 38.579037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184878, 0.336639, -0.923306,
		-0.200749, 0.932628, 0.299841,
		0.962040, 0.129919, 0.240002,
		38.816341, 32.080296, 38.651039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121815, 32.464005, 37.948685>,  <38.142914, 31.989353, 38.483036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121815, 32.464005, 37.948685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488155, 32.378761, 38.084805>,  <38.707958, 32.327614, 38.166477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.488155, 32.378761, 38.084805>,  <38.121815, 32.464005, 37.948685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488155, 32.378761, 38.084805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399558, 0.400067, -0.824803,
		0.039633, 0.891364, 0.451552,
		0.915851, -0.213110, 0.340296,
		38.762909, 32.314827, 38.186893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430195, 32.999722, 37.830185>,  <38.121815, 32.464005, 37.948685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430195, 32.999722, 37.830185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729877, 32.738308, 37.873211>,  <38.909687, 32.581459, 37.899025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729877, 32.738308, 37.873211>,  <38.430195, 32.999722, 37.830185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729877, 32.738308, 37.873211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493197, 0.442085, -0.749211,
		0.442085, 0.614368, 0.653538,
		0.749211, -0.653538, 0.107565,
		38.954639, 32.542248, 37.905479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003326, 33.399487, 37.791084>,  <38.430195, 32.999722, 37.830185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003326, 33.399487, 37.791084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126534, 33.033798, 37.685768>,  <39.200459, 32.814384, 37.622578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126534, 33.033798, 37.685768>,  <39.003326, 33.399487, 37.791084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126534, 33.033798, 37.685768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540177, 0.395868, -0.742628,
		0.783154, 0.086524, 0.615778,
		0.308023, -0.914222, -0.263288,
		39.218941, 32.759533, 37.606781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691364, 33.439842, 37.709183>,  <39.003326, 33.399487, 37.791084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691364, 33.439842, 37.709183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565998, 33.128685, 37.491322>,  <39.490780, 32.941990, 37.360603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565998, 33.128685, 37.491322>,  <39.691364, 33.439842, 37.709183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565998, 33.128685, 37.491322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530219, 0.332472, -0.779955,
		0.787807, -0.533234, 0.308255,
		-0.313412, -0.777897, -0.544655,
		39.471973, 32.895317, 37.327927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239609, 33.249001, 37.350418>,  <39.691364, 33.439842, 37.709183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239609, 33.249001, 37.350418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938835, 33.083252, 37.145325>,  <39.758373, 32.983803, 37.022266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938835, 33.083252, 37.145325>,  <40.239609, 33.249001, 37.350418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938835, 33.083252, 37.145325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450346, 0.245140, -0.858542,
		0.481445, -0.876474, 0.002280,
		-0.751931, -0.414367, -0.512738,
		39.713257, 32.958942, 36.991505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654102, 32.936794, 36.871941>,  <40.239609, 33.249001, 37.350418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654102, 32.936794, 36.871941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277096, 32.939781, 36.738312>,  <40.050892, 32.941574, 36.658134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277096, 32.939781, 36.738312>,  <40.654102, 32.936794, 36.871941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277096, 32.939781, 36.738312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288214, 0.524050, -0.801439,
		0.169085, -0.851655, -0.496079,
		-0.942519, 0.007465, -0.334068,
		39.994339, 32.942020, 36.638092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666576, 32.653545, 36.165321>,  <40.654102, 32.936794, 36.871941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666576, 32.653545, 36.165321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332664, 32.870739, 36.201794>,  <40.132317, 33.001057, 36.223679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332664, 32.870739, 36.201794>,  <40.666576, 32.653545, 36.165321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332664, 32.870739, 36.201794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273859, 0.553151, -0.786782,
		-0.477647, -0.631817, -0.610459,
		-0.834778, 0.542984, 0.091182,
		40.082230, 33.033634, 36.229149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103386, 32.410152, 35.672932>,  <40.666576, 32.653545, 36.165321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103386, 32.410152, 35.672932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186668, 32.630741, 35.349815>,  <41.236637, 32.763096, 35.155945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186668, 32.630741, 35.349815>,  <41.103386, 32.410152, 35.672932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186668, 32.630741, 35.349815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600762, 0.723844, 0.339313,
		0.771837, 0.414644, 0.482014,
		0.208209, 0.551471, -0.807793,
		41.249130, 32.796181, 35.107479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525776, 32.998695, 35.811733>,  <41.103386, 32.410152, 35.672932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525776, 32.998695, 35.811733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273518, 33.065453, 35.508568>,  <41.122162, 33.105507, 35.326668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.273518, 33.065453, 35.508568>,  <41.525776, 32.998695, 35.811733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273518, 33.065453, 35.508568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233885, 0.890328, 0.390659,
		0.739992, 0.423631, -0.522444,
		-0.630642, 0.166893, -0.757917,
		41.084324, 33.115520, 35.281193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136749, 33.169415, 35.931862>,  <41.525776, 32.998695, 35.811733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136749, 33.169415, 35.931862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045666, 33.333725, 35.578724>,  <41.991016, 33.432312, 35.366840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.045666, 33.333725, 35.578724>,  <42.136749, 33.169415, 35.931862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045666, 33.333725, 35.578724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933452, 0.350154, -0.077839,
		0.277156, -0.841814, -0.463178,
		-0.227710, 0.410781, -0.882841,
		41.977352, 33.456959, 35.313873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677467, 32.941170, 35.423828>,  <42.136749, 33.169415, 35.931862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677467, 32.941170, 35.423828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494976, 33.294102, 35.377621>,  <42.385483, 33.505863, 35.349895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494976, 33.294102, 35.377621>,  <42.677467, 32.941170, 35.423828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494976, 33.294102, 35.377621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881175, 0.466044, 0.079585,
		0.124058, -0.065484, -0.990112,
		-0.456225, 0.882335, -0.115519,
		42.358109, 33.558804, 35.342964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104057, 33.238281, 34.883991>,  <42.677467, 32.941170, 35.423828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104057, 33.238281, 34.883991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910213, 33.489803, 35.127224>,  <42.793907, 33.640717, 35.273163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910213, 33.489803, 35.127224>,  <43.104057, 33.238281, 34.883991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910213, 33.489803, 35.127224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819052, 0.570242, 0.063071,
		-0.307093, 0.528614, -0.791366,
		-0.484611, 0.628801, 0.608080,
		42.764832, 33.678444, 35.309647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583149, 33.758789, 34.865166>,  <43.104057, 33.238281, 34.883991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583149, 33.758789, 34.865166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323517, 33.891685, 35.138901>,  <43.167740, 33.971424, 35.303143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323517, 33.891685, 35.138901>,  <43.583149, 33.758789, 34.865166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323517, 33.891685, 35.138901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682404, 0.651855, 0.330772,
		-0.336192, 0.681690, -0.649826,
		-0.649076, 0.332240, 0.684337,
		43.128796, 33.991356, 35.344200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.526112, 34.509922, 34.756664>,  <43.583149, 33.758789, 34.865166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.526112, 34.509922, 34.756664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465874, 34.359364, 35.122318>,  <43.429729, 34.269028, 35.341709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465874, 34.359364, 35.122318>,  <43.526112, 34.509922, 34.756664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465874, 34.359364, 35.122318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785970, 0.515288, 0.341656,
		-0.599642, 0.769936, 0.218237,
		-0.150598, -0.376400, 0.914135,
		43.420692, 34.246445, 35.396561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478645, 35.299187, 34.495861>,  <43.526112, 34.509922, 34.756664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478645, 35.299187, 34.495861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831474, 35.393967, 34.658737>,  <44.043171, 35.450836, 34.756462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831474, 35.393967, 34.658737>,  <43.478645, 35.299187, 34.495861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831474, 35.393967, 34.658737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143095, 0.958227, -0.247639,
		-0.448862, 0.160168, 0.879130,
		0.882070, 0.236955, 0.407193,
		44.096096, 35.465054, 34.780895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331623, 35.772560, 35.062046>,  <43.478645, 35.299187, 34.495861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331623, 35.772560, 35.062046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714157, 35.830505, 34.960506>,  <43.943676, 35.865273, 34.899582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714157, 35.830505, 34.960506>,  <43.331623, 35.772560, 35.062046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714157, 35.830505, 34.960506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175393, 0.979204, -0.101962,
		0.233801, 0.142033, 0.961854,
		0.956334, 0.144863, -0.253850,
		44.001057, 35.873966, 34.884350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424782, 36.360062, 35.435173>,  <43.331623, 35.772560, 35.062046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424782, 36.360062, 35.435173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724571, 36.330608, 35.172005>,  <43.904446, 36.312939, 35.014103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724571, 36.330608, 35.172005>,  <43.424782, 36.360062, 35.435173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724571, 36.330608, 35.172005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112576, 0.965149, -0.236251,
		0.652391, 0.251131, 0.715067,
		0.749475, -0.073629, -0.657925,
		43.949413, 36.308521, 34.974628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.813663, 36.955753, 35.592052>,  <43.424782, 36.360062, 35.435173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.813663, 36.955753, 35.592052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911736, 36.826183, 35.226547>,  <43.970577, 36.748444, 35.007244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911736, 36.826183, 35.226547>,  <43.813663, 36.955753, 35.592052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911736, 36.826183, 35.226547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055446, 0.936302, -0.346790,
		0.967891, 0.135690, 0.211602,
		0.245180, -0.323923, -0.913762,
		43.985291, 36.729008, 34.952419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170609, 37.490376, 35.475300>,  <43.813663, 36.955753, 35.592052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170609, 37.490376, 35.475300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.111526, 37.324051, 35.116348>,  <44.076077, 37.224255, 34.900978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.111526, 37.324051, 35.116348>,  <44.170609, 37.490376, 35.475300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.111526, 37.324051, 35.116348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014580, 0.906314, -0.422354,
		0.988923, -0.075469, -0.127808,
		-0.147709, -0.415812, -0.897375,
		44.067215, 37.199306, 34.847137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.699432, 37.712219, 35.012611>,  <44.170609, 37.490376, 35.475300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.699432, 37.712219, 35.012611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380592, 37.606575, 34.795403>,  <44.189289, 37.543190, 34.665077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380592, 37.606575, 34.795403>,  <44.699432, 37.712219, 35.012611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380592, 37.606575, 34.795403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105203, 0.946263, -0.305810,
		0.594610, -0.186634, -0.782053,
		-0.797102, -0.264111, -0.543023,
		44.141460, 37.527340, 34.632496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.815121, 38.081890, 34.343704>,  <44.699432, 37.712219, 35.012611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.815121, 38.081890, 34.343704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423592, 38.000278, 34.337078>,  <44.188675, 37.951313, 34.333103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423592, 38.000278, 34.337078>,  <44.815121, 38.081890, 34.343704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423592, 38.000278, 34.337078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199268, 0.968251, -0.150937,
		0.046839, -0.144439, -0.988405,
		-0.978825, -0.204027, -0.016570,
		44.129944, 37.939072, 34.332108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583393, 38.374435, 33.751568>,  <44.815121, 38.081890, 34.343704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583393, 38.374435, 33.751568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245090, 38.349068, 33.963486>,  <44.042110, 38.333847, 34.090637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245090, 38.349068, 33.963486>,  <44.583393, 38.374435, 33.751568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245090, 38.349068, 33.963486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197814, 0.959422, -0.200945,
		-0.495550, -0.274751, -0.823980,
		-0.845754, -0.063417, 0.529791,
		43.991364, 38.330044, 34.122421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038544, 38.628811, 33.283768>,  <44.583393, 38.374435, 33.751568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038544, 38.628811, 33.283768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932636, 38.668865, 33.667408>,  <43.869091, 38.692898, 33.897591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.932636, 38.668865, 33.667408>,  <44.038544, 38.628811, 33.283768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932636, 38.668865, 33.667408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244332, 0.955172, -0.167175,
		-0.932845, -0.278602, -0.228432,
		-0.264767, 0.100135, 0.959099,
		43.853207, 38.698906, 33.955139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420208, 39.143707, 33.216885>,  <44.038544, 38.628811, 33.283768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420208, 39.143707, 33.216885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544895, 39.119820, 33.596203>,  <43.619709, 39.105488, 33.823795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544895, 39.119820, 33.596203>,  <43.420208, 39.143707, 33.216885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544895, 39.119820, 33.596203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233654, 0.962559, 0.137423,
		-0.920997, -0.264411, 0.286097,
		0.311721, -0.059718, 0.948295,
		43.638412, 39.101906, 33.880692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848434, 39.418186, 33.612949>,  <43.420208, 39.143707, 33.216885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848434, 39.418186, 33.612949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187840, 39.457699, 33.820900>,  <43.391483, 39.481407, 33.945671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187840, 39.457699, 33.820900>,  <42.848434, 39.418186, 33.612949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187840, 39.457699, 33.820900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236647, 0.949544, 0.205825,
		-0.473314, -0.297672, 0.829075,
		0.848512, 0.098778, 0.519876,
		43.442394, 39.487331, 33.976864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785137, 39.548256, 34.437073>,  <42.848434, 39.418186, 33.612949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785137, 39.548256, 34.437073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131130, 39.705738, 34.312618>,  <43.338726, 39.800228, 34.237946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131130, 39.705738, 34.312618>,  <42.785137, 39.548256, 34.437073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131130, 39.705738, 34.312618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341573, 0.916166, 0.209686,
		0.367606, -0.075099, 0.926944,
		0.864982, 0.393701, -0.311136,
		43.390625, 39.823849, 34.219276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945511, 39.978031, 34.874111>,  <42.785137, 39.548256, 34.437073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945511, 39.978031, 34.874111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238190, 40.118568, 34.640469>,  <43.413795, 40.202892, 34.500282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238190, 40.118568, 34.640469>,  <42.945511, 39.978031, 34.874111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238190, 40.118568, 34.640469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123333, 0.911019, 0.393488,
		0.670380, -0.215875, 0.709922,
		0.731696, 0.351343, -0.584105,
		43.457699, 40.223972, 34.465237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288433, 40.474739, 35.399147>,  <42.945511, 39.978031, 34.874111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288433, 40.474739, 35.399147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414425, 40.548370, 35.026718>,  <43.490021, 40.592548, 34.803261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414425, 40.548370, 35.026718>,  <43.288433, 40.474739, 35.399147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414425, 40.548370, 35.026718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000770, 0.981060, 0.193703,
		0.949097, -0.060296, 0.309158,
		0.314982, 0.184081, -0.931075,
		43.508919, 40.603596, 34.747395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879993, 40.873299, 35.425308>,  <43.288433, 40.474739, 35.399147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879993, 40.873299, 35.425308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736374, 40.954311, 35.060875>,  <43.650204, 41.002918, 34.842216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736374, 40.954311, 35.060875>,  <43.879993, 40.873299, 35.425308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736374, 40.954311, 35.060875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211895, 0.968369, 0.131761,
		0.908948, -0.145745, -0.390604,
		-0.359046, 0.202531, -0.911080,
		43.628658, 41.015072, 34.787552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505344, 40.992756, 35.061245>,  <43.879993, 40.873299, 35.425308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.505344, 40.992756, 35.061245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163303, 41.156475, 34.933945>,  <43.958080, 41.254707, 34.857567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163303, 41.156475, 34.933945>,  <44.505344, 40.992756, 35.061245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163303, 41.156475, 34.933945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438385, 0.898510, -0.022338,
		0.276805, -0.158616, -0.947745,
		-0.855101, 0.409294, -0.318247,
		43.906773, 41.279263, 34.838470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713020, 41.664539, 34.705769>,  <44.505344, 40.992756, 35.061245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713020, 41.664539, 34.705769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316402, 41.696945, 34.746319>,  <44.078430, 41.716389, 34.770649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316402, 41.696945, 34.746319>,  <44.713020, 41.664539, 34.705769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316402, 41.696945, 34.746319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093522, 0.987687, 0.125412,
		-0.089967, 0.133833, -0.986912,
		-0.991544, 0.081015, 0.101375,
		44.018940, 41.721249, 34.776730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.437317, 42.224655, 34.235992>,  <44.713020, 41.664539, 34.705769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.437317, 42.224655, 34.235992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159271, 42.175766, 34.519367>,  <43.992443, 42.146431, 34.689392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159271, 42.175766, 34.519367>,  <44.437317, 42.224655, 34.235992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159271, 42.175766, 34.519367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061996, 0.991961, 0.110314,
		-0.716222, 0.032760, -0.697103,
		-0.695113, -0.122227, 0.708434,
		43.950737, 42.139099, 34.731895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893456, 42.670048, 33.939182>,  <44.437317, 42.224655, 34.235992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893456, 42.670048, 33.939182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832397, 42.617302, 34.330959>,  <43.795765, 42.585655, 34.566025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832397, 42.617302, 34.330959>,  <43.893456, 42.670048, 33.939182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832397, 42.617302, 34.330959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086361, 0.989047, 0.119702,
		-0.984501, -0.066314, -0.162358,
		-0.152641, -0.131868, 0.979444,
		43.786606, 42.577740, 34.624794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429672, 43.135334, 34.127888>,  <43.893456, 42.670048, 33.939182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429672, 43.135334, 34.127888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588467, 43.060020, 34.487209>,  <43.683743, 43.014832, 34.702801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588467, 43.060020, 34.487209>,  <43.429672, 43.135334, 34.127888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588467, 43.060020, 34.487209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030047, 0.980875, 0.192307,
		-0.917331, -0.049353, 0.395054,
		0.396989, -0.188279, 0.898304,
		43.707565, 43.003536, 34.756702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041103, 43.562126, 34.567097>,  <43.429672, 43.135334, 34.127888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041103, 43.562126, 34.567097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394699, 43.474373, 34.732227>,  <43.606857, 43.421719, 34.831306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394699, 43.474373, 34.732227>,  <43.041103, 43.562126, 34.567097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394699, 43.474373, 34.732227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078927, 0.940413, 0.330747,
		-0.460793, -0.259794, 0.848633,
		0.883991, -0.219386, 0.412831,
		43.659897, 43.408558, 34.856075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074070, 43.890659, 35.144138>,  <43.041103, 43.562126, 34.567097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074070, 43.890659, 35.144138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462429, 43.859802, 35.053452>,  <43.695446, 43.841290, 34.999039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462429, 43.859802, 35.053452>,  <43.074070, 43.890659, 35.144138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462429, 43.859802, 35.053452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159624, 0.914195, 0.372516,
		0.178526, -0.397866, 0.899906,
		0.970901, -0.077143, -0.226716,
		43.753700, 43.836658, 34.985435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462151, 44.491199, 35.419376>,  <43.074070, 43.890659, 35.144138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462151, 44.491199, 35.419376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.769196, 44.293182, 35.256546>,  <43.953423, 44.174374, 35.158848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.769196, 44.293182, 35.256546>,  <43.462151, 44.491199, 35.419376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769196, 44.293182, 35.256546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621163, 0.731092, 0.282241,
		0.157886, -0.469510, 0.868696,
		0.767612, -0.495040, -0.407072,
		43.999477, 44.144669, 35.134426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922199, 45.174999, 35.471458>,  <43.462151, 44.491199, 35.419376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922199, 45.174999, 35.471458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682632, 45.303864, 35.764717>,  <43.538891, 45.381184, 35.940674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682632, 45.303864, 35.764717>,  <43.922199, 45.174999, 35.471458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682632, 45.303864, 35.764717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083806, -0.885268, 0.457468,
		0.796414, 0.335428, 0.503203,
		-0.598917, 0.322163, 0.733150,
		43.502956, 45.400513, 35.984661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.279831, 45.393665, 36.110382>,  <43.922199, 45.174999, 35.471458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.279831, 45.393665, 36.110382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916851, 45.233971, 36.162750>,  <43.699062, 45.138153, 36.194172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916851, 45.233971, 36.162750>,  <44.279831, 45.393665, 36.110382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916851, 45.233971, 36.162750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412109, -0.785080, 0.462402,
		-0.081824, 0.473561, 0.876952,
		-0.907453, -0.399235, 0.130921,
		43.644615, 45.114201, 36.202026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050644, 45.289520, 36.827438>,  <44.279831, 45.393665, 36.110382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050644, 45.289520, 36.827438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860229, 45.013256, 36.609676>,  <43.745979, 44.847496, 36.479019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860229, 45.013256, 36.609676>,  <44.050644, 45.289520, 36.827438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860229, 45.013256, 36.609676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293847, -0.708385, 0.641752,
		-0.828881, 0.145525, 0.540165,
		-0.476036, -0.690662, -0.544404,
		43.717419, 44.806057, 36.446354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594109, 44.891750, 37.234047>,  <44.050644, 45.289520, 36.827438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594109, 44.891750, 37.234047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707348, 44.680386, 36.913887>,  <43.775291, 44.553566, 36.721790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707348, 44.680386, 36.913887>,  <43.594109, 44.891750, 37.234047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707348, 44.680386, 36.913887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477025, -0.646417, 0.595477,
		-0.832046, -0.550390, 0.069064,
		0.283100, -0.528409, -0.800398,
		43.792278, 44.521862, 36.673767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470516, 44.063942, 37.301086>,  <43.594109, 44.891750, 37.234047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470516, 44.063942, 37.301086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.769188, 44.226276, 37.090271>,  <43.948391, 44.323677, 36.963783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.769188, 44.226276, 37.090271>,  <43.470516, 44.063942, 37.301086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769188, 44.226276, 37.090271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655681, -0.582491, 0.480403,
		-0.112030, -0.704275, -0.701033,
		0.746680, 0.405834, -0.527036,
		43.993191, 44.348026, 36.932159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942764, 43.515022, 36.839249>,  <43.470516, 44.063942, 37.301086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942764, 43.515022, 36.839249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112137, 43.845005, 36.988995>,  <44.213760, 44.042995, 37.078842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112137, 43.845005, 36.988995>,  <43.942764, 43.515022, 36.839249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112137, 43.845005, 36.988995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639314, -0.564893, 0.521702,
		0.641861, 0.018435, -0.766600,
		0.423429, 0.824958, 0.374368,
		44.239166, 44.092491, 37.101307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793861, 43.618843, 36.827263>,  <43.942764, 43.515022, 36.839249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793861, 43.618843, 36.827263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652893, 43.853378, 37.119019>,  <44.568314, 43.994099, 37.294071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652893, 43.853378, 37.119019>,  <44.793861, 43.618843, 36.827263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652893, 43.853378, 37.119019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418089, -0.598650, 0.683242,
		0.837259, 0.545739, -0.034163,
		-0.352420, 0.586334, 0.729392,
		44.547169, 44.029278, 37.337837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.398605, 43.837952, 37.194538>,  <44.793861, 43.618843, 36.827263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.398605, 43.837952, 37.194538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072823, 43.786385, 37.420826>,  <44.877354, 43.755444, 37.556599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072823, 43.786385, 37.420826>,  <45.398605, 43.837952, 37.194538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.072823, 43.786385, 37.420826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464311, -0.729519, 0.502211,
		0.347961, 0.671700, 0.654019,
		-0.814456, -0.128918, 0.565723,
		44.828487, 43.747707, 37.590542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.576889, 43.635036, 37.927887>,  <45.398605, 43.837952, 37.194538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.576889, 43.635036, 37.927887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214123, 43.485104, 37.850941>,  <44.996464, 43.395145, 37.804771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214123, 43.485104, 37.850941>,  <45.576889, 43.635036, 37.927887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.214123, 43.485104, 37.850941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280071, -0.877470, 0.389367,
		-0.314745, 0.299246, 0.900771,
		-0.906916, -0.374831, -0.192369,
		44.942047, 43.372654, 37.793228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377071, 43.199539, 38.497490>,  <45.576889, 43.635036, 37.927887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377071, 43.199539, 38.497490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132179, 43.081749, 38.203972>,  <44.985245, 43.011074, 38.027859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.132179, 43.081749, 38.203972>,  <45.377071, 43.199539, 38.497490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132179, 43.081749, 38.203972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213203, -0.955166, 0.205434,
		-0.761394, -0.030675, 0.647563,
		-0.612228, -0.294479, -0.733797,
		44.948509, 42.993404, 37.983833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.856949, 42.769760, 38.795567>,  <45.377071, 43.199539, 38.497490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.856949, 42.769760, 38.795567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907425, 42.687798, 38.407322>,  <44.937710, 42.638618, 38.174374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907425, 42.687798, 38.407322>,  <44.856949, 42.769760, 38.795567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907425, 42.687798, 38.407322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070879, -0.974070, 0.214854,
		-0.989470, -0.095909, -0.108396,
		0.126192, -0.204909, -0.970612,
		44.945282, 42.626324, 38.116138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675568, 42.171093, 38.866829>,  <44.856949, 42.769760, 38.795567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675568, 42.171093, 38.866829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867474, 42.177639, 38.515930>,  <44.982616, 42.181568, 38.305389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.867474, 42.177639, 38.515930>,  <44.675568, 42.171093, 38.866829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867474, 42.177639, 38.515930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087041, -0.995782, 0.029022,
		-0.873070, -0.090280, -0.479164,
		0.479763, 0.016368, -0.877246,
		45.011402, 42.182549, 38.252758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.483932, 41.570477, 38.648106>,  <44.675568, 42.171093, 38.866829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.483932, 41.570477, 38.648106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800652, 41.667992, 38.424095>,  <44.990681, 41.726501, 38.289688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800652, 41.667992, 38.424095>,  <44.483932, 41.570477, 38.648106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800652, 41.667992, 38.424095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210998, -0.969619, -0.123773,
		-0.573186, -0.020162, -0.819177,
		0.791794, 0.243789, -0.560025,
		45.038189, 41.741127, 38.256088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.540447, 41.010597, 38.137581>,  <44.483932, 41.570477, 38.648106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.540447, 41.010597, 38.137581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890091, 41.194160, 38.073914>,  <45.099876, 41.304298, 38.035713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890091, 41.194160, 38.073914>,  <44.540447, 41.010597, 38.137581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890091, 41.194160, 38.073914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422249, -0.879886, -0.217961,
		-0.240069, 0.123315, -0.962892,
		0.874112, 0.458906, -0.159164,
		45.152325, 41.331833, 38.026165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785427, 40.759586, 37.543461>,  <44.540447, 41.010597, 38.137581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785427, 40.759586, 37.543461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112904, 40.896927, 37.727573>,  <45.309391, 40.979332, 37.838039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112904, 40.896927, 37.727573>,  <44.785427, 40.759586, 37.543461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112904, 40.896927, 37.727573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473786, -0.856783, -0.203592,
		0.324455, 0.384752, -0.864115,
		0.818692, 0.343349, 0.460277,
		45.358513, 40.999931, 37.865658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283390, 40.823139, 37.135632>,  <44.785427, 40.759586, 37.543461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283390, 40.823139, 37.135632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500729, 40.791046, 37.469898>,  <45.631130, 40.771790, 37.670460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500729, 40.791046, 37.469898>,  <45.283390, 40.823139, 37.135632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.500729, 40.791046, 37.469898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461259, -0.803179, -0.377020,
		0.701438, 0.590311, -0.399397,
		0.543346, -0.080231, 0.835666,
		45.663731, 40.766975, 37.720596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003269, 40.758297, 36.942371>,  <45.283390, 40.823139, 37.135632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003269, 40.758297, 36.942371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.994724, 40.609207, 37.313450>,  <45.989597, 40.519753, 37.536098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.994724, 40.609207, 37.313450>,  <46.003269, 40.758297, 36.942371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.994724, 40.609207, 37.313450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383747, -0.859889, -0.336643,
		0.923191, 0.348811, 0.161398,
		-0.021360, -0.372722, 0.927697,
		45.988316, 40.497391, 37.591759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.641190, 40.308403, 36.859768>,  <46.003269, 40.758297, 36.942371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.641190, 40.308403, 36.859768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432884, 40.209530, 37.186619>,  <46.307899, 40.150204, 37.382729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432884, 40.209530, 37.186619>,  <46.641190, 40.308403, 36.859768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.432884, 40.209530, 37.186619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265154, -0.956659, -0.120406,
		0.811477, 0.153961, 0.563738,
		-0.520767, -0.247184, 0.817130,
		46.276653, 40.135376, 37.431759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075798, 39.987442, 37.185127>,  <46.641190, 40.308403, 36.859768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075798, 39.987442, 37.185127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.726135, 39.870636, 37.340340>,  <46.516338, 39.800552, 37.433468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.726135, 39.870636, 37.340340>,  <47.075798, 39.987442, 37.185127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.726135, 39.870636, 37.340340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172282, -0.933523, -0.314411,
		0.454051, -0.207994, 0.866358,
		-0.874160, -0.292017, 0.388034,
		46.463886, 39.783031, 37.456749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.265697, 39.444454, 37.664730>,  <47.075798, 39.987442, 37.185127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.265697, 39.444454, 37.664730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.891960, 39.410873, 37.526192>,  <46.667717, 39.390724, 37.443069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.891960, 39.410873, 37.526192>,  <47.265697, 39.444454, 37.664730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.891960, 39.410873, 37.526192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238110, -0.870150, -0.431442,
		-0.265152, -0.485583, 0.833009,
		-0.934344, -0.083950, -0.346344,
		46.611656, 39.385689, 37.422287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.993656, 38.811665, 37.832848>,  <47.265697, 39.444454, 37.664730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.993656, 38.811665, 37.832848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.745831, 38.909149, 37.534386>,  <46.597134, 38.967640, 37.355309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.745831, 38.909149, 37.534386>,  <46.993656, 38.811665, 37.832848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.745831, 38.909149, 37.534386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014062, -0.953873, -0.299882,
		-0.784819, -0.175304, 0.594414,
		-0.619566, 0.243712, -0.746152,
		46.559959, 38.982262, 37.310539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.365795, 38.329605, 37.768356>,  <46.993656, 38.811665, 37.832848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.365795, 38.329605, 37.768356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.400333, 38.492779, 37.404789>,  <46.421055, 38.590683, 37.186649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.400333, 38.492779, 37.404789>,  <46.365795, 38.329605, 37.768356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.400333, 38.492779, 37.404789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050411, -0.909370, -0.412923,
		-0.994989, 0.081475, -0.057957,
		0.086347, 0.407932, -0.908920,
		46.426239, 38.615158, 37.132114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071518, 37.937702, 37.336437>,  <46.365795, 38.329605, 37.768356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.071518, 37.937702, 37.336437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.269165, 38.136562, 37.051147>,  <46.387753, 38.255878, 36.879974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.269165, 38.136562, 37.051147>,  <46.071518, 37.937702, 37.336437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.269165, 38.136562, 37.051147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027384, -0.828864, -0.558779,
		-0.868964, 0.256571, -0.423169,
		0.494117, 0.497147, -0.713227,
		46.417400, 38.285706, 36.837181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635193, 37.787323, 36.634335>,  <46.071518, 37.937702, 37.336437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635193, 37.787323, 36.634335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.996117, 37.919750, 36.523891>,  <46.212669, 37.999207, 36.457626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.996117, 37.919750, 36.523891>,  <45.635193, 37.787323, 36.634335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.996117, 37.919750, 36.523891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021654, -0.674477, -0.737978,
		-0.430546, 0.659906, -0.615755,
		0.902309, 0.331067, -0.276104,
		46.266808, 38.019070, 36.441059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595562, 37.786072, 35.932671>,  <45.635193, 37.787323, 36.634335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595562, 37.786072, 35.932671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.986866, 37.791767, 36.015430>,  <46.221649, 37.795185, 36.065086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.986866, 37.791767, 36.015430>,  <45.595562, 37.786072, 35.932671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.986866, 37.791767, 36.015430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185246, -0.508528, -0.840882,
		0.093241, 0.860927, -0.500110,
		0.978259, 0.014239, 0.206899,
		46.280342, 37.796040, 36.077499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879406, 37.692982, 35.291782>,  <45.595562, 37.786072, 35.932671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879406, 37.692982, 35.291782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180458, 37.604622, 35.539898>,  <46.361088, 37.551605, 35.688766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.180458, 37.604622, 35.539898>,  <45.879406, 37.692982, 35.291782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180458, 37.604622, 35.539898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242359, -0.782972, -0.572902,
		0.612218, 0.581514, -0.535752,
		0.752630, -0.220896, 0.620285,
		46.406246, 37.538353, 35.725983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.415016, 37.457821, 34.832344>,  <45.879406, 37.692982, 35.291782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.415016, 37.457821, 34.832344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495449, 37.323742, 35.200520>,  <46.543709, 37.243294, 35.421425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495449, 37.323742, 35.200520>,  <46.415016, 37.457821, 34.832344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.495449, 37.323742, 35.200520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353350, -0.851550, -0.387307,
		0.913625, 0.403116, -0.052784,
		0.201078, -0.335202, 0.920439,
		46.555771, 37.223183, 35.476650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.054043, 37.066460, 34.773830>,  <46.415016, 37.457821, 34.832344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.054043, 37.066460, 34.773830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.894421, 36.917149, 35.108833>,  <46.798649, 36.827564, 35.309834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.894421, 36.917149, 35.108833>,  <47.054043, 37.066460, 34.773830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.894421, 36.917149, 35.108833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342185, -0.908026, -0.241659,
		0.850684, 0.190147, 0.490082,
		-0.399056, -0.373274, 0.837508,
		46.774704, 36.805168, 35.360085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.624863, 36.704750, 35.168129>,  <47.054043, 37.066460, 34.773830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.624863, 36.704750, 35.168129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268940, 36.533146, 35.230339>,  <47.055386, 36.430183, 35.267666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268940, 36.533146, 35.230339>,  <47.624863, 36.704750, 35.168129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.268940, 36.533146, 35.230339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349875, -0.860188, -0.371030,
		0.292955, -0.275732, 0.915505,
		-0.889812, -0.429008, 0.155525,
		47.001995, 36.404442, 35.276997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.568249, 36.191525, 35.771084>,  <47.624863, 36.704750, 35.168129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.568249, 36.191525, 35.771084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.350620, 36.090797, 35.450939>,  <47.220043, 36.030361, 35.258854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.350620, 36.090797, 35.450939>,  <47.568249, 36.191525, 35.771084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.350620, 36.090797, 35.450939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529552, -0.842968, -0.094760,
		-0.650817, -0.475388, 0.591982,
		-0.544070, -0.251814, -0.800361,
		47.187401, 36.015255, 35.210831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.354656, 35.570404, 35.924393>,  <47.568249, 36.191525, 35.771084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.354656, 35.570404, 35.924393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386868, 35.665245, 35.537136>,  <47.406197, 35.722149, 35.304783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386868, 35.665245, 35.537136>,  <47.354656, 35.570404, 35.924393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.386868, 35.665245, 35.537136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721406, -0.684112, -0.107536,
		-0.687814, -0.689762, -0.226142,
		0.080532, 0.237105, -0.968140,
		47.411026, 35.736378, 35.246693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.409031, 34.994446, 35.473942>,  <47.354656, 35.570404, 35.924393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.409031, 34.994446, 35.473942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.559708, 35.274189, 35.230957>,  <47.650116, 35.442036, 35.085167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.559708, 35.274189, 35.230957>,  <47.409031, 34.994446, 35.473942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.559708, 35.274189, 35.230957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756683, -0.610580, -0.233717,
		-0.534353, -0.371613, -0.759191,
		0.376695, 0.699354, -0.607459,
		47.672714, 35.483994, 35.048717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.536064, 34.665192, 34.832645>,  <47.409031, 34.994446, 35.473942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.536064, 34.665192, 34.832645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.763336, 34.994083, 34.846001>,  <47.899700, 35.191418, 34.854012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.763336, 34.994083, 34.846001>,  <47.536064, 34.665192, 34.832645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.763336, 34.994083, 34.846001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804032, -0.546046, -0.235299,
		-0.175240, 0.160534, -0.971349,
		0.568176, 0.822230, 0.033385,
		47.933788, 35.240753, 34.856018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.850960, 34.467930, 44.512054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.488712, 34.637207, 44.523121>,  <33.271362, 34.738773, 44.529762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.488712, 34.637207, 44.523121>,  <33.850960, 34.467930, 44.512054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488712, 34.637207, 44.523121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194291, -0.356018, -0.914058,
		-0.376981, -0.833158, 0.404639,
		-0.905614, 0.423201, 0.027664,
		33.217026, 34.764164, 44.531422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426579, 33.977352, 44.284832>,  <33.850960, 34.467930, 44.512054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426579, 33.977352, 44.284832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.266182, 34.337387, 44.216660>,  <33.169945, 34.553410, 44.175758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.266182, 34.337387, 44.216660>,  <33.426579, 33.977352, 44.284832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266182, 34.337387, 44.216660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217819, -0.274383, -0.936627,
		-0.889811, -0.338454, 0.306081,
		-0.400989, 0.900090, -0.170427,
		33.145885, 34.607414, 44.165531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868843, 33.885155, 43.825310>,  <33.426579, 33.977352, 44.284832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868843, 33.885155, 43.825310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.986389, 34.266129, 43.793034>,  <33.056915, 34.494713, 43.773666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.986389, 34.266129, 43.793034>,  <32.868843, 33.885155, 43.825310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986389, 34.266129, 43.793034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127247, -0.044685, -0.990864,
		-0.947339, 0.301448, 0.108063,
		0.293865, 0.952435, -0.080690,
		33.074547, 34.551861, 43.768826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446125, 34.149067, 43.303879>,  <32.868843, 33.885155, 43.825310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446125, 34.149067, 43.303879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.750778, 34.407352, 43.325691>,  <32.933571, 34.562325, 43.338779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.750778, 34.407352, 43.325691>,  <32.446125, 34.149067, 43.303879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750778, 34.407352, 43.325691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034298, 0.043859, -0.998449,
		-0.647099, 0.762323, 0.011258,
		0.761634, 0.645710, 0.054527,
		32.979267, 34.601067, 43.342049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288368, 34.545174, 42.789066>,  <32.446125, 34.149067, 43.303879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288368, 34.545174, 42.789066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.678238, 34.619743, 42.838478>,  <32.912159, 34.664486, 42.868126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.678238, 34.619743, 42.838478>,  <32.288368, 34.545174, 42.789066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678238, 34.619743, 42.838478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097564, 0.142581, -0.984963,
		-0.201234, 0.972068, 0.120781,
		0.974672, 0.186424, 0.123531,
		32.970638, 34.675671, 42.875538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462952, 34.920166, 42.165241>,  <32.288368, 34.545174, 42.789066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462952, 34.920166, 42.165241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.839550, 34.877697, 42.293190>,  <33.065510, 34.852215, 42.369961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.839550, 34.877697, 42.293190>,  <32.462952, 34.920166, 42.165241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839550, 34.877697, 42.293190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267194, -0.343345, -0.900401,
		0.205429, 0.933189, -0.294886,
		0.941491, -0.106177, 0.319876,
		33.121998, 34.845844, 42.389153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740654, 35.236538, 41.680138>,  <32.462952, 34.920166, 42.165241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740654, 35.236538, 41.680138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.007610, 34.985348, 41.840256>,  <33.167782, 34.834633, 41.936329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.007610, 34.985348, 41.840256>,  <32.740654, 35.236538, 41.680138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007610, 34.985348, 41.840256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267081, -0.299931, -0.915811,
		0.695169, 0.718113, -0.032450,
		0.667389, -0.627976, 0.400297,
		33.207829, 34.796955, 41.960346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412312, 35.193707, 41.283215>,  <32.740654, 35.236538, 41.680138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412312, 35.193707, 41.283215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.454132, 34.843967, 41.472775>,  <33.479225, 34.634125, 41.586510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.454132, 34.843967, 41.472775>,  <33.412312, 35.193707, 41.283215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454132, 34.843967, 41.472775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515401, -0.359889, -0.777716,
		0.850547, 0.325559, 0.413014,
		0.104553, -0.874352, 0.473896,
		33.485497, 34.581661, 41.614944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185867, 34.939781, 41.159664>,  <33.412312, 35.193707, 41.283215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185867, 34.939781, 41.159664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.993958, 34.608894, 41.276649>,  <33.878811, 34.410362, 41.346840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.993958, 34.608894, 41.276649>,  <34.185867, 34.939781, 41.159664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993958, 34.608894, 41.276649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403908, -0.504141, -0.763348,
		0.778896, -0.248104, 0.575991,
		-0.479770, -0.827216, 0.292462,
		33.850025, 34.360729, 41.364388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754005, 34.482407, 41.202301>,  <34.185867, 34.939781, 41.159664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754005, 34.482407, 41.202301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.406086, 34.293465, 41.145264>,  <34.197334, 34.180099, 41.111042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.406086, 34.293465, 41.145264>,  <34.754005, 34.482407, 41.202301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406086, 34.293465, 41.145264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378802, -0.454096, -0.806415,
		0.316160, -0.755435, 0.573900,
		-0.869800, -0.472350, -0.142593,
		34.145145, 34.151760, 41.102486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900578, 33.794281, 41.052361>,  <34.754005, 34.482407, 41.202301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900578, 33.794281, 41.052361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.519291, 33.813915, 40.933048>,  <34.290520, 33.825695, 40.861462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.519291, 33.813915, 40.933048>,  <34.900578, 33.794281, 41.052361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519291, 33.813915, 40.933048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245367, -0.450734, -0.858274,
		-0.176573, -0.891308, 0.417603,
		-0.953214, 0.049082, -0.298285,
		34.233326, 33.828640, 40.843563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638371, 33.133823, 40.793964>,  <34.900578, 33.794281, 41.052361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638371, 33.133823, 40.793964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.389523, 33.401745, 40.631817>,  <34.240211, 33.562500, 40.534531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.389523, 33.401745, 40.631817>,  <34.638371, 33.133823, 40.793964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389523, 33.401745, 40.631817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266906, -0.305298, -0.914087,
		-0.736018, -0.676870, 0.011158,
		-0.622124, 0.669806, -0.405365,
		34.202885, 33.602688, 40.510208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401840, 32.867947, 40.211292>,  <34.638371, 33.133823, 40.793964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401840, 32.867947, 40.211292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.293468, 33.245251, 40.134499>,  <34.228447, 33.471634, 40.088421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.293468, 33.245251, 40.134499>,  <34.401840, 32.867947, 40.211292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293468, 33.245251, 40.134499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141117, -0.158371, -0.977243,
		-0.952199, -0.291856, -0.090203,
		-0.270929, 0.943259, -0.191987,
		34.212189, 33.528229, 40.076904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897675, 32.790581, 39.601158>,  <34.401840, 32.867947, 40.211292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897675, 32.790581, 39.601158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.061119, 33.155636, 39.605774>,  <34.159187, 33.374668, 39.608543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.061119, 33.155636, 39.605774>,  <33.897675, 32.790581, 39.601158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061119, 33.155636, 39.605774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160929, -0.059594, -0.985165,
		-0.898408, 0.404410, -0.171220,
		0.408615, 0.912634, 0.011542,
		34.183704, 33.429424, 39.609238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560333, 33.165203, 38.952957>,  <33.897675, 32.790581, 39.601158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560333, 33.165203, 38.952957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.877071, 33.376770, 39.075096>,  <34.067112, 33.503708, 39.148380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.877071, 33.376770, 39.075096>,  <33.560333, 33.165203, 38.952957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877071, 33.376770, 39.075096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280340, 0.129396, -0.951139,
		-0.542582, 0.838753, -0.045815,
		0.791842, 0.528915, 0.305344,
		34.114624, 33.535446, 39.166698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660610, 33.742188, 38.428425>,  <33.560333, 33.165203, 38.952957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660610, 33.742188, 38.428425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.012615, 33.732056, 38.618137>,  <34.223816, 33.725975, 38.731964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.012615, 33.732056, 38.618137>,  <33.660610, 33.742188, 38.428425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012615, 33.732056, 38.618137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471835, 0.160874, -0.866886,
		-0.054340, 0.986650, 0.153523,
		0.880011, -0.025331, 0.474278,
		34.276619, 33.724457, 38.760422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914997, 34.361053, 38.194492>,  <33.660610, 33.742188, 38.428425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914997, 34.361053, 38.194492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.200821, 34.110840, 38.319782>,  <34.372314, 33.960712, 38.394955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.200821, 34.110840, 38.319782>,  <33.914997, 34.361053, 38.194492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200821, 34.110840, 38.319782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512125, 0.162711, -0.843359,
		0.476588, 0.763038, 0.436620,
		0.714558, -0.625538, 0.313225,
		34.415188, 33.923180, 38.413750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505318, 34.699753, 37.930634>,  <33.914997, 34.361053, 38.194492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505318, 34.699753, 37.930634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.636169, 34.333508, 38.024132>,  <34.714680, 34.113758, 38.080231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.636169, 34.333508, 38.024132>,  <34.505318, 34.699753, 37.930634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636169, 34.333508, 38.024132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546395, -0.018548, -0.837322,
		0.771001, 0.401628, 0.494220,
		0.327125, -0.915615, 0.233748,
		34.734306, 34.058823, 38.094257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099358, 34.784119, 37.750309>,  <34.505318, 34.699753, 37.930634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099358, 34.784119, 37.750309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.996269, 34.397713, 37.758160>,  <34.934414, 34.165867, 37.762871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.996269, 34.397713, 37.758160>,  <35.099358, 34.784119, 37.750309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996269, 34.397713, 37.758160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454206, -0.139057, -0.879977,
		0.852804, -0.217876, 0.474610,
		-0.257724, -0.966019, 0.019627,
		34.918953, 34.107906, 37.764050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743244, 34.491550, 37.740665>,  <35.099358, 34.784119, 37.750309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743244, 34.491550, 37.740665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478207, 34.225075, 37.603748>,  <35.319183, 34.065189, 37.521599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478207, 34.225075, 37.603748>,  <35.743244, 34.491550, 37.740665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478207, 34.225075, 37.603748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360280, 0.117171, -0.925456,
		0.656634, -0.736523, 0.162377,
		-0.662593, -0.666187, -0.342293,
		35.279430, 34.025219, 37.501060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208813, 34.011395, 37.285034>,  <35.743244, 34.491550, 37.740665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208813, 34.011395, 37.285034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837494, 33.950920, 37.149143>,  <35.614704, 33.914635, 37.067608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837494, 33.950920, 37.149143>,  <36.208813, 34.011395, 37.285034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837494, 33.950920, 37.149143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356839, -0.105223, -0.928221,
		0.104586, -0.982889, 0.151627,
		-0.928293, -0.151185, -0.339728,
		35.559006, 33.905563, 37.047226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617336, 33.524509, 36.968906>,  <36.208813, 34.011395, 37.285034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617336, 33.524509, 36.968906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007252, 33.554668, 36.884899>,  <37.241199, 33.572765, 36.834496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007252, 33.554668, 36.884899>,  <36.617336, 33.524509, 36.968906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007252, 33.554668, 36.884899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219077, -0.144477, 0.964952,
		0.042413, -0.986631, -0.157353,
		0.974785, 0.075399, -0.210021,
		37.299686, 33.577290, 36.821892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867409, 32.992535, 37.393433>,  <36.617336, 33.524509, 36.968906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867409, 32.992535, 37.393433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151405, 33.267647, 37.332943>,  <37.321804, 33.432713, 37.296650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151405, 33.267647, 37.332943>,  <36.867409, 32.992535, 37.393433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151405, 33.267647, 37.332943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068234, 0.146539, 0.986849,
		0.700895, -0.710974, 0.057112,
		0.709993, 0.687781, -0.151221,
		37.364403, 33.473980, 37.287579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329521, 32.858978, 37.945801>,  <36.867409, 32.992535, 37.393433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329521, 32.858978, 37.945801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.406273, 33.231842, 37.822994>,  <37.452324, 33.455563, 37.749310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.406273, 33.231842, 37.822994>,  <37.329521, 32.858978, 37.945801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406273, 33.231842, 37.822994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017871, 0.309454, 0.950746,
		0.981256, -0.187913, 0.042718,
		0.191877, 0.932162, -0.307012,
		37.463837, 33.511490, 37.730892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854469, 33.094765, 38.443615>,  <37.329521, 32.858978, 37.945801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854469, 33.094765, 38.443615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.688950, 33.409653, 38.260723>,  <37.589638, 33.598583, 38.150986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.688950, 33.409653, 38.260723>,  <37.854469, 33.094765, 38.443615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688950, 33.409653, 38.260723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019492, 0.509797, 0.860074,
		0.910161, 0.346983, -0.226297,
		-0.413796, 0.787216, -0.457234,
		37.564812, 33.645817, 38.123554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322681, 33.578762, 38.540173>,  <37.854469, 33.094765, 38.443615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322681, 33.578762, 38.540173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.962864, 33.747803, 38.495930>,  <37.746975, 33.849228, 38.469383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.962864, 33.747803, 38.495930>,  <38.322681, 33.578762, 38.540173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962864, 33.747803, 38.495930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122814, 0.487643, 0.864362,
		0.419216, 0.763945, -0.490556,
		-0.899541, 0.422602, -0.110604,
		37.693001, 33.874584, 38.462749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384583, 34.208942, 38.872681>,  <38.322681, 33.578762, 38.540173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384583, 34.208942, 38.872681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986534, 34.202080, 38.833820>,  <37.747704, 34.197960, 38.810505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986534, 34.202080, 38.833820>,  <38.384583, 34.208942, 38.872681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986534, 34.202080, 38.833820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094742, 0.440729, 0.892627,
		0.027498, 0.897476, -0.440205,
		-0.995122, -0.017160, -0.097148,
		37.687996, 34.196930, 38.804676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157196, 34.844463, 39.139267>,  <38.384583, 34.208942, 38.872681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157196, 34.844463, 39.139267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.840275, 34.600418, 39.140835>,  <37.650124, 34.453991, 39.141777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.840275, 34.600418, 39.140835>,  <38.157196, 34.844463, 39.139267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840275, 34.600418, 39.140835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295691, 0.389590, 0.872231,
		-0.533689, 0.689911, -0.489079,
		-0.792302, -0.610116, 0.003920,
		37.602585, 34.417381, 39.142010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508827, 35.246048, 39.181160>,  <38.157196, 34.844463, 39.139267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508827, 35.246048, 39.181160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.454769, 34.875736, 39.322392>,  <37.422333, 34.653549, 39.407131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.454769, 34.875736, 39.322392>,  <37.508827, 35.246048, 39.181160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454769, 34.875736, 39.322392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149752, 0.371340, 0.916341,
		-0.979443, 0.070968, -0.188824,
		-0.135149, -0.925780, 0.353079,
		37.414223, 34.598003, 39.428314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984600, 35.395130, 39.616417>,  <37.508827, 35.246048, 39.181160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984600, 35.395130, 39.616417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.078571, 35.024712, 39.734566>,  <37.134953, 34.802460, 39.805454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.078571, 35.024712, 39.734566>,  <36.984600, 35.395130, 39.616417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078571, 35.024712, 39.734566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403388, 0.183585, 0.896423,
		-0.884357, -0.329744, -0.330427,
		0.234929, -0.926048, 0.295370,
		37.149052, 34.746899, 39.823177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412899, 35.148670, 40.064705>,  <36.984600, 35.395130, 39.616417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412899, 35.148670, 40.064705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724388, 34.918350, 40.164333>,  <36.911282, 34.780159, 40.224110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724388, 34.918350, 40.164333>,  <36.412899, 35.148670, 40.064705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724388, 34.918350, 40.164333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245201, 0.086093, 0.965642,
		-0.577462, -0.813044, -0.074145,
		0.778726, -0.575802, 0.249074,
		36.958008, 34.745609, 40.239056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122005, 34.642380, 40.561901>,  <36.412899, 35.148670, 40.064705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122005, 34.642380, 40.561901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.515091, 34.698929, 40.609726>,  <36.750942, 34.732857, 40.638420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.515091, 34.698929, 40.609726>,  <36.122005, 34.642380, 40.561901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515091, 34.698929, 40.609726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148515, 0.216289, 0.964968,
		0.110558, -0.966040, 0.233545,
		0.982710, 0.141369, 0.119559,
		36.809906, 34.741341, 40.645592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147842, 34.284309, 41.152794>,  <36.122005, 34.642380, 40.561901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147842, 34.284309, 41.152794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.491062, 34.487587, 41.123142>,  <36.696995, 34.609554, 41.105350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.491062, 34.487587, 41.123142>,  <36.147842, 34.284309, 41.152794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491062, 34.487587, 41.123142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056606, 0.237042, 0.969849,
		0.510443, -0.827979, 0.232160,
		0.858046, 0.508194, -0.074128,
		36.748478, 34.640045, 41.100903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562576, 34.075733, 41.690109>,  <36.147842, 34.284309, 41.152794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562576, 34.075733, 41.690109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735085, 34.425304, 41.600430>,  <36.838589, 34.635048, 41.546619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735085, 34.425304, 41.600430>,  <36.562576, 34.075733, 41.690109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735085, 34.425304, 41.600430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000099, 0.248545, 0.968620,
		0.902225, -0.417711, 0.107275,
		0.431266, 0.873924, -0.224202,
		36.864464, 34.687481, 41.533169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865383, 34.201828, 42.318058>,  <36.562576, 34.075733, 41.690109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865383, 34.201828, 42.318058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.845970, 34.557793, 42.136642>,  <36.834320, 34.771374, 42.027794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.845970, 34.557793, 42.136642>,  <36.865383, 34.201828, 42.318058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845970, 34.557793, 42.136642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033342, 0.452375, 0.891204,
		0.998265, 0.058378, 0.007715,
		-0.048536, 0.889915, -0.453537,
		36.831409, 34.824768, 42.000580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257763, 34.715748, 42.734562>,  <36.865383, 34.201828, 42.318058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257763, 34.715748, 42.734562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982918, 34.900951, 42.510601>,  <36.818008, 35.012074, 42.376225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982918, 34.900951, 42.510601>,  <37.257763, 34.715748, 42.734562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982918, 34.900951, 42.510601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337325, 0.479240, 0.810272,
		0.643493, 0.745621, -0.173108,
		-0.687116, 0.463011, -0.559904,
		36.776783, 35.039856, 42.342628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291866, 35.352375, 42.991096>,  <37.257763, 34.715748, 42.734562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291866, 35.352375, 42.991096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936283, 35.353786, 42.807907>,  <36.722931, 35.354633, 42.697994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936283, 35.353786, 42.807907>,  <37.291866, 35.352375, 42.991096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936283, 35.353786, 42.807907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369562, 0.585097, 0.721862,
		0.270505, 0.810955, -0.518824,
		-0.888960, 0.003530, -0.457971,
		36.669594, 35.354847, 42.670517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038193, 36.034683, 42.943302>,  <37.291866, 35.352375, 42.991096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038193, 36.034683, 42.943302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.719952, 35.792358, 42.944469>,  <36.529007, 35.646965, 42.945171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.719952, 35.792358, 42.944469>,  <37.038193, 36.034683, 42.943302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719952, 35.792358, 42.944469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413184, 0.546146, 0.728700,
		-0.443050, 0.578549, -0.684827,
		-0.795604, -0.605810, 0.002923,
		36.481270, 35.610615, 42.945347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465176, 36.417690, 43.300098>,  <37.038193, 36.034683, 42.943302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465176, 36.417690, 43.300098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282383, 36.062534, 43.278877>,  <36.172707, 35.849442, 43.266144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282383, 36.062534, 43.278877>,  <36.465176, 36.417690, 43.300098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282383, 36.062534, 43.278877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489125, 0.201033, 0.848730,
		-0.742914, 0.413806, -0.526159,
		-0.456985, -0.887891, -0.053053,
		36.145287, 35.796165, 43.262962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748394, 36.448811, 43.211655>,  <36.465176, 36.417690, 43.300098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748394, 36.448811, 43.211655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.815220, 36.093578, 43.382961>,  <35.855316, 35.880440, 43.485744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.815220, 36.093578, 43.382961>,  <35.748394, 36.448811, 43.211655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815220, 36.093578, 43.382961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491112, 0.301687, 0.817187,
		-0.854925, -0.346852, -0.385742,
		0.167069, -0.888076, 0.428263,
		35.865341, 35.827156, 43.511440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.138626, 36.281586, 43.562283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.390144, 36.021633, 43.733051>,  <35.541058, 35.865662, 43.835514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.390144, 36.021633, 43.733051>,  <35.138626, 36.281586, 43.562283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390144, 36.021633, 43.733051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561079, 0.000902, 0.827762,
		-0.538336, -0.760031, -0.364070,
		0.628797, -0.649886, 0.426923,
		35.578785, 35.826668, 43.861130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752102, 35.740421, 43.975201>,  <35.138626, 36.281586, 43.562283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752102, 35.740421, 43.975201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117405, 35.663246, 44.118717>,  <35.336586, 35.616940, 44.204826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117405, 35.663246, 44.118717>,  <34.752102, 35.740421, 43.975201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117405, 35.663246, 44.118717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358055, 0.039902, 0.932847,
		-0.194302, -0.980398, -0.032643,
		0.913260, -0.192942, 0.358790,
		35.391384, 35.605366, 44.226353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684021, 35.177608, 44.415634>,  <34.752102, 35.740421, 43.975201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684021, 35.177608, 44.415634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.019630, 35.352058, 44.545769>,  <35.220997, 35.456730, 44.623848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.019630, 35.352058, 44.545769>,  <34.684021, 35.177608, 44.415634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019630, 35.352058, 44.545769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347191, -0.031245, 0.937274,
		0.418933, -0.899344, 0.125204,
		0.839019, 0.436125, 0.325334,
		35.271336, 35.482895, 44.643368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993137, 34.643856, 44.984913>,  <34.684021, 35.177608, 44.415634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993137, 34.643856, 44.984913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086285, 35.030315, 45.029346>,  <35.142174, 35.262192, 45.056007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086285, 35.030315, 45.029346>,  <34.993137, 34.643856, 44.984913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086285, 35.030315, 45.029346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303607, -0.036289, 0.952106,
		0.923902, -0.255440, 0.284878,
		0.232868, 0.966144, 0.111081,
		35.156143, 35.320160, 45.062672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409840, 34.646805, 45.478279>,  <34.993137, 34.643856, 44.984913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409840, 34.646805, 45.478279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.314259, 35.034058, 45.448303>,  <35.256908, 35.266411, 45.430317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.314259, 35.034058, 45.448303>,  <35.409840, 34.646805, 45.478279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314259, 35.034058, 45.448303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074393, 0.058698, 0.995500,
		0.968177, 0.243454, 0.057996,
		-0.238954, 0.968135, -0.074942,
		35.242573, 35.324497, 45.425819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766762, 35.026081, 46.051201>,  <35.409840, 34.646805, 45.478279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766762, 35.026081, 46.051201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.461227, 35.263371, 45.949497>,  <35.277908, 35.405743, 45.888474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.461227, 35.263371, 45.949497>,  <35.766762, 35.026081, 46.051201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461227, 35.263371, 45.949497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238562, 0.106548, 0.965265,
		0.599704, 0.797959, 0.060135,
		-0.763834, 0.593219, -0.254260,
		35.232079, 35.441338, 45.873219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726433, 35.603001, 46.425701>,  <35.766762, 35.026081, 46.051201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726433, 35.603001, 46.425701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.342407, 35.585480, 46.315163>,  <35.111992, 35.574966, 46.248840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.342407, 35.585480, 46.315163>,  <35.726433, 35.603001, 46.425701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342407, 35.585480, 46.315163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273508, 0.355131, 0.893910,
		0.058983, 0.933790, -0.352927,
		-0.960060, -0.043803, -0.276346,
		35.054390, 35.572338, 46.232258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472954, 36.187996, 46.639538>,  <35.726433, 35.603001, 46.425701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472954, 36.187996, 46.639538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.164570, 35.936840, 46.596882>,  <34.979538, 35.786144, 46.571289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.164570, 35.936840, 46.596882>,  <35.472954, 36.187996, 46.639538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164570, 35.936840, 46.596882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336529, 0.259472, 0.905220,
		-0.540711, 0.733775, -0.411346,
		-0.770960, -0.627892, -0.106637,
		34.933281, 35.748474, 46.564892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860168, 36.616032, 46.675171>,  <35.472954, 36.187996, 46.639538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860168, 36.616032, 46.675171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.756199, 36.240990, 46.767544>,  <34.693817, 36.015965, 46.822968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.756199, 36.240990, 46.767544>,  <34.860168, 36.616032, 46.675171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756199, 36.240990, 46.767544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325144, 0.310168, 0.893352,
		-0.909241, 0.157122, -0.385479,
		-0.259928, -0.937608, 0.230930,
		34.678219, 35.959709, 46.836823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190506, 36.674374, 47.120865>,  <34.860168, 36.616032, 46.675171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190506, 36.674374, 47.120865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.367943, 36.323658, 47.195133>,  <34.474403, 36.113228, 47.239693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.367943, 36.323658, 47.195133>,  <34.190506, 36.674374, 47.120865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367943, 36.323658, 47.195133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152553, 0.130276, 0.979671,
		-0.883150, -0.462898, -0.075967,
		0.443592, -0.876786, 0.185670,
		34.501019, 36.060623, 47.250835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870178, 36.410419, 47.707336>,  <34.190506, 36.674374, 47.120865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870178, 36.410419, 47.707336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.188725, 36.168583, 47.700882>,  <34.379852, 36.023479, 47.697010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.188725, 36.168583, 47.700882>,  <33.870178, 36.410419, 47.707336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188725, 36.168583, 47.700882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065934, -0.113314, 0.991369,
		-0.601206, -0.788432, -0.130103,
		0.796370, -0.604595, -0.016140,
		34.427635, 35.987206, 47.696041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796051, 36.059200, 48.300220>,  <33.870178, 36.410419, 47.707336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796051, 36.059200, 48.300220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.180534, 35.999577, 48.207386>,  <34.411224, 35.963802, 48.151688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.180534, 35.999577, 48.207386>,  <33.796051, 36.059200, 48.300220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180534, 35.999577, 48.207386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204190, -0.181129, 0.962029,
		-0.185481, -0.972091, -0.143655,
		0.961199, -0.149105, -0.232087,
		34.468895, 35.954857, 48.137760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948952, 35.383591, 48.527752>,  <33.796051, 36.059200, 48.300220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948952, 35.383591, 48.527752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.297127, 35.578495, 48.499737>,  <34.506031, 35.695438, 48.482925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.297127, 35.578495, 48.499737>,  <33.948952, 35.383591, 48.527752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297127, 35.578495, 48.499737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221427, -0.260472, 0.939747,
		0.439662, -0.833503, -0.334619,
		0.870441, 0.487265, -0.070041,
		34.558258, 35.724674, 48.478725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479904, 34.966228, 48.866764>,  <33.948952, 35.383591, 48.527752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479904, 34.966228, 48.866764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629173, 35.337269, 48.873764>,  <34.718735, 35.559891, 48.877964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629173, 35.337269, 48.873764>,  <34.479904, 34.966228, 48.866764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629173, 35.337269, 48.873764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276850, -0.129336, 0.952169,
		0.885493, -0.350478, -0.305070,
		0.373171, 0.927597, 0.017496,
		34.741123, 35.615547, 48.879013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144974, 34.923916, 49.118332>,  <34.479904, 34.966228, 48.866764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144974, 34.923916, 49.118332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.043839, 35.306828, 49.174465>,  <34.983158, 35.536575, 49.208145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.043839, 35.306828, 49.174465>,  <35.144974, 34.923916, 49.118332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043839, 35.306828, 49.174465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317465, -0.054931, 0.946678,
		0.913941, 0.283910, -0.290013,
		-0.252841, 0.957276, 0.140335,
		34.967987, 35.594009, 49.216564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737019, 35.339119, 49.339344>,  <35.144974, 34.923916, 49.118332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737019, 35.339119, 49.339344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435673, 35.572323, 49.461025>,  <35.254868, 35.712246, 49.534035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435673, 35.572323, 49.461025>,  <35.737019, 35.339119, 49.339344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435673, 35.572323, 49.461025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379893, 0.008250, 0.924994,
		0.536774, 0.812421, -0.227698,
		-0.753363, 0.583013, 0.304205,
		35.209663, 35.747227, 49.552288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064644, 35.804443, 49.753265>,  <35.737019, 35.339119, 49.339344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064644, 35.804443, 49.753265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.678196, 35.844505, 49.848415>,  <35.446327, 35.868542, 49.905506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.678196, 35.844505, 49.848415>,  <36.064644, 35.804443, 49.753265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678196, 35.844505, 49.848415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241671, 0.027513, 0.969968,
		0.090605, 0.994591, -0.050786,
		-0.966119, 0.100158, 0.237871,
		35.388359, 35.874554, 49.919777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993912, 36.340496, 50.212902>,  <36.064644, 35.804443, 49.753265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993912, 36.340496, 50.212902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.663265, 36.128727, 50.289238>,  <35.464878, 36.001663, 50.335037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.663265, 36.128727, 50.289238>,  <35.993912, 36.340496, 50.212902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663265, 36.128727, 50.289238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291135, -0.112090, 0.950093,
		-0.481612, 0.840919, 0.246790,
		-0.826614, -0.529425, 0.190837,
		35.415279, 35.969898, 50.346489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674068, 36.621452, 50.874218>,  <35.993912, 36.340496, 50.212902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674068, 36.621452, 50.874218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534721, 36.247444, 50.847748>,  <35.451115, 36.023041, 50.831863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.534721, 36.247444, 50.847748>,  <35.674068, 36.621452, 50.874218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534721, 36.247444, 50.847748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012165, -0.075105, 0.997101,
		-0.937281, 0.346549, 0.037539,
		-0.348364, -0.935020, -0.066179,
		35.430214, 35.966938, 50.827892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158890, 36.640232, 51.398220>,  <35.674068, 36.621452, 50.874218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158890, 36.640232, 51.398220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195831, 36.250553, 51.315838>,  <35.217995, 36.016747, 51.266411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.195831, 36.250553, 51.315838>,  <35.158890, 36.640232, 51.398220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195831, 36.250553, 51.315838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003023, -0.206560, 0.978429,
		-0.995722, -0.090983, -0.016131,
		0.092352, -0.974194, -0.205952,
		35.223537, 35.958294, 51.254051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636463, 36.373158, 51.762829>,  <35.158890, 36.640232, 51.398220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636463, 36.373158, 51.762829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876461, 36.057137, 51.712524>,  <35.020458, 35.867523, 51.682343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876461, 36.057137, 51.712524>,  <34.636463, 36.373158, 51.762829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876461, 36.057137, 51.712524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104186, -0.233033, 0.966872,
		-0.793191, -0.567015, -0.222131,
		0.599994, -0.790057, -0.125764,
		35.056458, 35.820118, 51.674793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261524, 35.743053, 51.669167>,  <34.636463, 36.373158, 51.762829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261524, 35.743053, 51.669167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.601959, 35.737469, 51.879101>,  <34.806221, 35.734119, 52.005062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.601959, 35.737469, 51.879101>,  <34.261524, 35.743053, 51.669167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601959, 35.737469, 51.879101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511113, -0.250626, 0.822162,
		0.120060, -0.967983, -0.220440,
		0.851087, -0.013960, 0.524839,
		34.857285, 35.733280, 52.036552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675358, 35.939629, 51.867558>,  <34.261524, 35.743053, 51.669167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675358, 35.939629, 51.867558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.690216, 35.944248, 52.267254>,  <33.699131, 35.947021, 52.507072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.690216, 35.944248, 52.267254>,  <33.675358, 35.939629, 51.867558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690216, 35.944248, 52.267254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908064, 0.417831, 0.028922,
		-0.417181, -0.908451, 0.026009,
		0.037142, 0.011552, 0.999243,
		33.701359, 35.947712, 52.567028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117287, 35.563480, 52.335651>,  <33.675358, 35.939629, 51.867558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117287, 35.563480, 52.335651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281013, 35.907944, 52.456226>,  <33.379250, 36.114624, 52.528572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.281013, 35.907944, 52.456226>,  <33.117287, 35.563480, 52.335651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281013, 35.907944, 52.456226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859199, 0.474967, -0.190217,
		-0.306978, -0.181133, 0.934321,
		0.409317, 0.861160, 0.301434,
		33.403809, 36.166290, 52.546658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550777, 35.994419, 52.069603>,  <33.117287, 35.563480, 52.335651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550777, 35.994419, 52.069603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.157665, 36.035370, 52.131130>,  <31.921799, 36.059940, 52.168049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.157665, 36.035370, 52.131130>,  <32.550777, 35.994419, 52.069603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157665, 36.035370, 52.131130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175549, -0.257523, -0.950192,
		-0.057665, -0.960833, 0.271061,
		-0.982780, 0.102378, 0.153823,
		31.862831, 36.066082, 52.177277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254593, 35.328262, 51.864811>,  <32.550777, 35.994419, 52.069603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254593, 35.328262, 51.864811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.974688, 35.613537, 51.848347>,  <31.806744, 35.784702, 51.838467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.974688, 35.613537, 51.848347>,  <32.254593, 35.328262, 51.864811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974688, 35.613537, 51.848347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242474, -0.291321, -0.925386,
		-0.671961, -0.637575, 0.376785,
		-0.699768, 0.713184, -0.041161,
		31.764757, 35.827492, 51.835999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707281, 34.919380, 51.699612>,  <32.254593, 35.328262, 51.864811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707281, 34.919380, 51.699612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582226, 35.288219, 51.608410>,  <31.507193, 35.509525, 51.553688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582226, 35.288219, 51.608410>,  <31.707281, 34.919380, 51.699612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582226, 35.288219, 51.608410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163104, -0.288583, -0.943460,
		-0.935764, -0.257774, 0.240620,
		-0.312638, 0.922102, -0.228001,
		31.488434, 35.564850, 51.540009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044918, 34.794250, 51.347252>,  <31.707281, 34.919380, 51.699612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044918, 34.794250, 51.347252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.195261, 35.152283, 51.251282>,  <31.285467, 35.367100, 51.193699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.195261, 35.152283, 51.251282>,  <31.044918, 34.794250, 51.347252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195261, 35.152283, 51.251282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079042, -0.227001, -0.970682,
		-0.923300, 0.383803, -0.014571,
		0.375858, 0.895079, -0.239926,
		31.308018, 35.420807, 51.179302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615961, 35.110981, 50.736557>,  <31.044918, 34.794250, 51.347252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615961, 35.110981, 50.736557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.958433, 35.315655, 50.707912>,  <31.163918, 35.438461, 50.690727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.958433, 35.315655, 50.707912>,  <30.615961, 35.110981, 50.736557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958433, 35.315655, 50.707912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013495, -0.116407, -0.993110,
		-0.516499, 0.851249, -0.092760,
		0.856181, 0.511688, -0.071612,
		31.215288, 35.469162, 50.686428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505280, 35.493797, 50.088757>,  <30.615961, 35.110981, 50.736557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505280, 35.493797, 50.088757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899679, 35.517063, 50.151264>,  <31.136320, 35.531021, 50.188766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899679, 35.517063, 50.151264>,  <30.505280, 35.493797, 50.088757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899679, 35.517063, 50.151264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145094, 0.162493, -0.975984,
		-0.082156, 0.984994, 0.151780,
		0.986001, 0.058161, 0.156267,
		31.195480, 35.534512, 50.198143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743916, 36.067329, 49.741089>,  <30.505280, 35.493797, 50.088757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743916, 36.067329, 49.741089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.085066, 35.865025, 49.792946>,  <31.289757, 35.743641, 49.824059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.085066, 35.865025, 49.792946>,  <30.743916, 36.067329, 49.741089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085066, 35.865025, 49.792946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224150, 0.130433, -0.965787,
		0.471548, 0.852756, 0.224610,
		0.852877, -0.505762, 0.129640,
		31.340929, 35.713295, 49.831837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282173, 36.472458, 49.393429>,  <30.743916, 36.067329, 49.741089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282173, 36.472458, 49.393429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.431665, 36.104477, 49.440769>,  <31.521360, 35.883686, 49.469173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.431665, 36.104477, 49.440769>,  <31.282173, 36.472458, 49.393429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431665, 36.104477, 49.440769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326249, 0.010934, -0.945220,
		0.868266, 0.391871, 0.304221,
		0.373731, -0.919955, 0.118354,
		31.543785, 35.828491, 49.476276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027790, 36.469769, 49.142513>,  <31.282173, 36.472458, 49.393429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027790, 36.469769, 49.142513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.911230, 36.087326, 49.130142>,  <31.841295, 35.857861, 49.122719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.911230, 36.087326, 49.130142>,  <32.027790, 36.469769, 49.142513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911230, 36.087326, 49.130142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345567, -0.075066, -0.935387,
		0.892004, -0.283256, 0.352271,
		-0.291398, -0.956102, -0.030925,
		31.823811, 35.800495, 49.120865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595058, 36.052288, 48.876881>,  <32.027790, 36.469769, 49.142513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595058, 36.052288, 48.876881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304630, 35.784679, 48.813339>,  <32.130375, 35.624115, 48.775215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304630, 35.784679, 48.813339>,  <32.595058, 36.052288, 48.876881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304630, 35.784679, 48.813339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409268, -0.234824, -0.881679,
		0.552561, -0.705171, 0.444308,
		-0.726069, -0.669022, -0.158850,
		32.086811, 35.583973, 48.765686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884499, 35.318851, 48.647606>,  <32.595058, 36.052288, 48.876881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884499, 35.318851, 48.647606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.512054, 35.367680, 48.510120>,  <32.288589, 35.396976, 48.427628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.512054, 35.367680, 48.510120>,  <32.884499, 35.318851, 48.647606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512054, 35.367680, 48.510120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286458, -0.338630, -0.896254,
		-0.225795, -0.932968, 0.280334,
		-0.931106, 0.122065, -0.343717,
		32.232723, 35.404301, 48.407005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861980, 34.712982, 48.222576>,  <32.884499, 35.318851, 48.647606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861980, 34.712982, 48.222576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.570015, 34.958267, 48.101784>,  <32.394836, 35.105438, 48.029308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.570015, 34.958267, 48.101784>,  <32.861980, 34.712982, 48.222576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570015, 34.958267, 48.101784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164120, -0.271640, -0.948302,
		-0.663542, -0.741741, 0.097633,
		-0.729915, 0.613215, -0.301979,
		32.351040, 35.142231, 48.011189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561184, 34.380768, 47.678452>,  <32.861980, 34.712982, 48.222576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561184, 34.380768, 47.678452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.458096, 34.765316, 47.639790>,  <32.396244, 34.996044, 47.616592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.458096, 34.765316, 47.639790>,  <32.561184, 34.380768, 47.678452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458096, 34.765316, 47.639790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133189, -0.063734, -0.989039,
		-0.956996, -0.267768, -0.111619,
		-0.257719, 0.961373, -0.096657,
		32.380779, 35.053726, 47.610794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116386, 34.517265, 47.054188>,  <32.561184, 34.380768, 47.678452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116386, 34.517265, 47.054188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.253391, 34.886017, 47.126652>,  <32.335594, 35.107269, 47.170128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.253391, 34.886017, 47.126652>,  <32.116386, 34.517265, 47.054188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253391, 34.886017, 47.126652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341016, 0.057680, -0.938286,
		-0.875440, 0.383150, -0.294621,
		0.342511, 0.921883, 0.181156,
		32.356144, 35.162582, 47.181000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869501, 34.957726, 46.507240>,  <32.116386, 34.517265, 47.054188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869501, 34.957726, 46.507240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.182453, 35.144733, 46.671825>,  <32.370224, 35.256939, 46.770576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.182453, 35.144733, 46.671825>,  <31.869501, 34.957726, 46.507240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182453, 35.144733, 46.671825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387521, 0.151752, -0.909285,
		-0.487552, 0.870858, -0.062447,
		0.782381, 0.467523, 0.411462,
		32.417168, 35.284992, 46.795265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011005, 35.568897, 46.054474>,  <31.869501, 34.957726, 46.507240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011005, 35.568897, 46.054474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.361141, 35.526615, 46.243198>,  <32.571224, 35.501244, 46.356434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.361141, 35.526615, 46.243198>,  <32.011005, 35.568897, 46.054474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361141, 35.526615, 46.243198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483138, 0.152936, -0.862083,
		0.018973, 0.982566, 0.184943,
		0.875338, -0.105709, 0.471814,
		32.623741, 35.494904, 46.384743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492554, 36.220139, 45.984661>,  <32.011005, 35.568897, 46.054474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492554, 36.220139, 45.984661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.670860, 35.862080, 45.986092>,  <32.777843, 35.647243, 45.986950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.670860, 35.862080, 45.986092>,  <32.492554, 36.220139, 45.984661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670860, 35.862080, 45.986092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355745, 0.173488, -0.918339,
		0.821426, 0.410633, 0.395778,
		0.445763, -0.895144, 0.003573,
		32.804588, 35.593536, 45.987164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928635, 36.237602, 45.435009>,  <32.492554, 36.220139, 45.984661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928635, 36.237602, 45.435009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.940792, 35.845604, 45.513676>,  <32.948086, 35.610405, 45.560875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.940792, 35.845604, 45.513676>,  <32.928635, 36.237602, 45.435009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940792, 35.845604, 45.513676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283995, -0.180183, -0.941744,
		0.958344, 0.084479, 0.272838,
		0.030397, -0.979999, 0.196669,
		32.949909, 35.551605, 45.572678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540512, 35.963085, 45.038261>,  <32.928635, 36.237602, 45.435009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540512, 35.963085, 45.038261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.287479, 35.664955, 45.122494>,  <33.135662, 35.486076, 45.173031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.287479, 35.664955, 45.122494>,  <33.540512, 35.963085, 45.038261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287479, 35.664955, 45.122494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124951, -0.366536, -0.921975,
		0.764352, -0.556908, 0.324991,
		-0.632577, -0.745322, 0.210576,
		33.097706, 35.441360, 45.185665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860863, 35.424065, 44.673134>,  <33.540512, 35.963085, 45.038261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860863, 35.424065, 44.673134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.496502, 35.281921, 44.757027>,  <33.277885, 35.196636, 44.807362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.496502, 35.281921, 44.757027>,  <33.860863, 35.424065, 44.673134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496502, 35.281921, 44.757027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031834, -0.446236, -0.894349,
		0.411400, -0.821338, 0.395164,
		-0.910899, -0.355355, 0.209728,
		33.223232, 35.175316, 44.819946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.843559, 43.176418, 35.361069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.471500, 43.240356, 35.228836>,  <44.248264, 43.278717, 35.149498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.471500, 43.240356, 35.228836>,  <44.843559, 43.176418, 35.361069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.471500, 43.240356, 35.228836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109811, -0.980169, -0.164958,
		-0.350391, -0.117134, 0.929250,
		-0.930144, 0.159841, -0.330580,
		44.192459, 43.288307, 35.129662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.447796, 42.713726, 35.821217>,  <44.843559, 43.176418, 35.361069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.447796, 42.713726, 35.821217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232689, 42.800247, 35.495266>,  <44.103626, 42.852158, 35.299694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232689, 42.800247, 35.495266>,  <44.447796, 42.713726, 35.821217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232689, 42.800247, 35.495266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228287, -0.967781, -0.106234,
		-0.811600, 0.128897, 0.569816,
		-0.537764, 0.216301, -0.814876,
		44.071362, 42.865139, 35.250801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594707, 42.497292, 35.922188>,  <44.447796, 42.713726, 35.821217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594707, 42.497292, 35.922188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.657345, 42.506611, 35.527233>,  <43.694927, 42.512203, 35.290260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.657345, 42.506611, 35.527233>,  <43.594707, 42.497292, 35.922188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657345, 42.506611, 35.527233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359367, -0.929852, -0.078936,
		-0.919965, 0.367195, -0.137230,
		0.156589, 0.023303, -0.987389,
		43.704323, 42.513603, 35.231018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030315, 42.137753, 35.601807>,  <43.594707, 42.497292, 35.922188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030315, 42.137753, 35.601807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.322193, 42.137695, 35.328297>,  <43.497322, 42.137661, 35.164192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.322193, 42.137695, 35.328297>,  <43.030315, 42.137753, 35.601807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.322193, 42.137695, 35.328297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249888, -0.930884, -0.266480,
		-0.636473, 0.365316, -0.679298,
		0.729697, -0.000141, -0.683771,
		43.541103, 42.137653, 35.123165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742348, 41.823566, 34.986423>,  <43.030315, 42.137753, 35.601807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742348, 41.823566, 34.986423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134094, 41.798687, 34.909504>,  <43.369141, 41.783760, 34.863350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134094, 41.798687, 34.909504>,  <42.742348, 41.823566, 34.986423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134094, 41.798687, 34.909504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141772, -0.889531, -0.434323,
		-0.144046, 0.452622, -0.879991,
		0.979363, -0.062195, -0.192303,
		43.427902, 41.780029, 34.851814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850597, 41.715317, 34.238811>,  <42.742348, 41.823566, 34.986423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850597, 41.715317, 34.238811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151600, 41.577480, 34.463306>,  <43.332203, 41.494778, 34.598003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151600, 41.577480, 34.463306>,  <42.850597, 41.715317, 34.238811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151600, 41.577480, 34.463306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169181, -0.924738, -0.340936,
		0.636483, 0.161606, -0.754170,
		0.752507, -0.344592, 0.561239,
		43.377354, 41.474102, 34.631680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108356, 41.303570, 33.662075>,  <42.850597, 41.715317, 34.238811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108356, 41.303570, 33.662075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279091, 41.220612, 34.014164>,  <43.381531, 41.170837, 34.225418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279091, 41.220612, 34.014164>,  <43.108356, 41.303570, 33.662075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279091, 41.220612, 34.014164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097969, -0.957014, -0.272994,
		0.899005, 0.202759, -0.388174,
		0.426841, -0.207393, 0.880224,
		43.407143, 41.158394, 34.278233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800144, 41.030952, 33.480419>,  <43.108356, 41.303570, 33.662075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800144, 41.030952, 33.480419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683491, 40.888905, 33.835686>,  <43.613499, 40.803677, 34.048847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683491, 40.888905, 33.835686>,  <43.800144, 41.030952, 33.480419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683491, 40.888905, 33.835686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378926, -0.895456, -0.233608,
		0.878275, 0.268423, 0.395705,
		-0.291631, -0.355115, 0.888169,
		43.596001, 40.782372, 34.102135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371029, 40.569286, 33.596714>,  <43.800144, 41.030952, 33.480419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371029, 40.569286, 33.596714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.086975, 40.475029, 33.862099>,  <43.916542, 40.418476, 34.021328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.086975, 40.475029, 33.862099>,  <44.371029, 40.569286, 33.596714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086975, 40.475029, 33.862099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299009, -0.954065, -0.018814,
		0.637417, 0.185020, 0.747975,
		-0.710136, -0.235644, 0.663460,
		43.873936, 40.404335, 34.061138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630264, 40.071278, 34.060421>,  <44.371029, 40.569286, 33.596714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630264, 40.071278, 34.060421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.237907, 40.017761, 34.116928>,  <44.002495, 39.985653, 34.150833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.237907, 40.017761, 34.116928>,  <44.630264, 40.071278, 34.060421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237907, 40.017761, 34.116928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153003, -0.978925, 0.135266,
		0.120193, 0.154295, 0.980687,
		-0.980889, -0.133789, 0.141268,
		43.943642, 39.977623, 34.159309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551926, 39.645592, 34.688377>,  <44.630264, 40.071278, 34.060421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.551926, 39.645592, 34.688377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224228, 39.598412, 34.463902>,  <44.027611, 39.570103, 34.329216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224228, 39.598412, 34.463902>,  <44.551926, 39.645592, 34.688377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224228, 39.598412, 34.463902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148381, -0.988891, -0.008773,
		-0.553921, -0.090457, 0.827641,
		-0.819241, -0.117946, -0.561189,
		43.978455, 39.563026, 34.295544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076317, 39.036602, 35.046494>,  <44.551926, 39.645592, 34.688377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076317, 39.036602, 35.046494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.887970, 39.061817, 34.694515>,  <43.774963, 39.076946, 34.483326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.887970, 39.061817, 34.694515>,  <44.076317, 39.036602, 35.046494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887970, 39.061817, 34.694515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033521, -0.998002, -0.053561,
		-0.881568, 0.004277, 0.472037,
		-0.470865, 0.063041, -0.879950,
		43.746712, 39.080730, 34.430531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406307, 38.717720, 35.178619>,  <44.076317, 39.036602, 35.046494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406307, 38.717720, 35.178619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.549095, 38.713295, 34.805000>,  <43.634766, 38.710640, 34.580830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.549095, 38.713295, 34.805000>,  <43.406307, 38.717720, 35.178619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549095, 38.713295, 34.805000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103443, -0.994248, -0.027761,
		-0.928372, 0.106531, -0.356057,
		0.356966, -0.011059, -0.934052,
		43.656185, 38.709976, 34.524784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936123, 38.193836, 34.871151>,  <43.406307, 38.717720, 35.178619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936123, 38.193836, 34.871151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.255524, 38.234657, 34.633839>,  <43.447163, 38.259151, 34.491451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.255524, 38.234657, 34.633839>,  <42.936123, 38.193836, 34.871151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255524, 38.234657, 34.633839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118983, -0.992839, -0.010645,
		-0.590118, -0.062090, -0.804926,
		0.798501, 0.102054, -0.593280,
		43.495075, 38.265274, 34.455856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837505, 37.691486, 34.350121>,  <42.936123, 38.193836, 34.871151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837505, 37.691486, 34.350121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.229702, 37.767807, 34.369007>,  <43.465019, 37.813599, 34.380341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.229702, 37.767807, 34.369007>,  <42.837505, 37.691486, 34.350121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229702, 37.767807, 34.369007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195722, -0.969844, -0.145240,
		0.018080, 0.151648, -0.988269,
		0.980493, 0.190800, 0.047216,
		43.523849, 37.825047, 34.383171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113083, 37.227093, 33.893497>,  <42.837505, 37.691486, 34.350121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113083, 37.227093, 33.893497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.435215, 37.321590, 34.110985>,  <43.628494, 37.378288, 34.241478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.435215, 37.321590, 34.110985>,  <43.113083, 37.227093, 33.893497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435215, 37.321590, 34.110985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234000, -0.969371, 0.074599,
		0.544684, 0.067152, -0.835949,
		0.805334, 0.236244, 0.543714,
		43.676815, 37.392464, 34.274097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.711933, 36.756313, 33.714405>,  <43.113083, 37.227093, 33.893497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.711933, 36.756313, 33.714405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.836071, 36.874569, 34.075798>,  <43.910553, 36.945522, 34.292633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.836071, 36.874569, 34.075798>,  <43.711933, 36.756313, 33.714405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836071, 36.874569, 34.075798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292873, -0.933917, 0.204997,
		0.904386, 0.200987, -0.376419,
		0.310342, 0.295639, 0.903485,
		43.929173, 36.963261, 34.346844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386208, 36.545521, 33.718960>,  <43.711933, 36.756313, 33.714405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386208, 36.545521, 33.718960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.257824, 36.581863, 34.096050>,  <44.180794, 36.603668, 34.322304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.257824, 36.581863, 34.096050>,  <44.386208, 36.545521, 33.718960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257824, 36.581863, 34.096050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269023, -0.945641, 0.182728,
		0.908080, 0.312263, 0.279073,
		-0.320962, 0.090854, 0.942724,
		44.161533, 36.609119, 34.378868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948536, 36.288853, 34.146530>,  <44.386208, 36.545521, 33.718960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948536, 36.288853, 34.146530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.634777, 36.282307, 34.394547>,  <44.446522, 36.278378, 34.543358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.634777, 36.282307, 34.394547>,  <44.948536, 36.288853, 34.146530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.634777, 36.282307, 34.394547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338852, -0.848601, 0.406270,
		0.519521, 0.528780, 0.671185,
		-0.784396, -0.016367, 0.620044,
		44.399460, 36.277397, 34.580559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248821, 36.159702, 34.748550>,  <44.948536, 36.288853, 34.146530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248821, 36.159702, 34.748550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.864285, 36.050320, 34.761505>,  <44.633564, 35.984688, 34.769279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.864285, 36.050320, 34.761505>,  <45.248821, 36.159702, 34.748550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864285, 36.050320, 34.761505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257233, -0.849803, 0.460071,
		-0.098290, 0.450615, 0.887291,
		-0.961338, -0.273461, 0.032386,
		44.575882, 35.968281, 34.771221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.177155, 35.923092, 35.463707>,  <45.248821, 36.159702, 34.748550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.177155, 35.923092, 35.463707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.884769, 35.767761, 35.239243>,  <44.709339, 35.674564, 35.104565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.884769, 35.767761, 35.239243>,  <45.177155, 35.923092, 35.463707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.884769, 35.767761, 35.239243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250394, -0.917575, 0.308801,
		-0.634820, 0.085212, 0.767947,
		-0.730963, -0.388322, -0.561158,
		44.665482, 35.651264, 35.070896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665569, 36.344147, 35.798290>,  <45.177155, 35.923092, 35.463707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665569, 36.344147, 35.798290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.056480, 36.303005, 35.724148>,  <46.291027, 36.278320, 35.679661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.056480, 36.303005, 35.724148>,  <45.665569, 36.344147, 35.798290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056480, 36.303005, 35.724148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151236, 0.951000, 0.269678,
		0.148538, -0.291582, 0.944943,
		0.977274, -0.102852, -0.185357,
		46.349663, 36.272148, 35.668541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.989838, 36.413673, 36.410561>,  <45.665569, 36.344147, 35.798290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.989838, 36.413673, 36.410561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.263000, 36.514439, 36.136284>,  <46.426899, 36.574898, 35.971718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.263000, 36.514439, 36.136284>,  <45.989838, 36.413673, 36.410561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.263000, 36.514439, 36.136284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009753, 0.941721, 0.336253,
		0.730439, -0.222943, 0.645566,
		0.682909, 0.251909, -0.685695,
		46.467873, 36.590012, 35.930576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.520058, 36.709259, 36.720417>,  <45.989838, 36.413673, 36.410561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.520058, 36.709259, 36.720417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.570457, 36.831356, 36.342857>,  <46.600697, 36.904613, 36.116322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.570457, 36.831356, 36.342857>,  <46.520058, 36.709259, 36.720417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.570457, 36.831356, 36.342857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122882, 0.939353, 0.320180,
		0.984390, -0.156331, 0.080851,
		0.126002, 0.305247, -0.943900,
		46.608257, 36.922932, 36.059689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.256779, 36.993843, 36.607288>,  <46.520058, 36.709259, 36.720417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.256779, 36.993843, 36.607288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.015739, 37.171146, 36.341835>,  <46.871117, 37.277527, 36.182564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.015739, 37.171146, 36.341835>,  <47.256779, 36.993843, 36.607288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.015739, 37.171146, 36.341835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014668, 0.837578, 0.546121,
		0.797912, 0.319356, -0.511222,
		-0.602596, 0.443255, -0.663629,
		46.834961, 37.304123, 36.142746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.507629, 37.643509, 36.412060>,  <47.256779, 36.993843, 36.607288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.507629, 37.643509, 36.412060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.134335, 37.719849, 36.290306>,  <46.910358, 37.765652, 36.217255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.134335, 37.719849, 36.290306>,  <47.507629, 37.643509, 36.412060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.134335, 37.719849, 36.290306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004487, 0.840978, 0.541050,
		0.359237, 0.506293, -0.783975,
		-0.933236, 0.190848, -0.304382,
		46.854362, 37.777103, 36.198990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.566574, 38.314560, 36.325886>,  <47.507629, 37.643509, 36.412060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.566574, 38.314560, 36.325886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.174889, 38.238346, 36.353676>,  <46.939877, 38.192616, 36.370350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.174889, 38.238346, 36.353676>,  <47.566574, 38.314560, 36.325886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.174889, 38.238346, 36.353676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145474, 0.898586, 0.413981,
		-0.141311, 0.395270, -0.907630,
		-0.979218, -0.190537, 0.069478,
		46.881123, 38.181187, 36.374519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.166649, 38.912437, 36.027912>,  <47.566574, 38.314560, 36.325886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.166649, 38.912437, 36.027912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.922783, 38.716553, 36.277229>,  <46.776463, 38.599022, 36.426819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.922783, 38.716553, 36.277229>,  <47.166649, 38.912437, 36.027912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.922783, 38.716553, 36.277229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091883, 0.824690, 0.558071,
		-0.787319, 0.282964, -0.547778,
		-0.609661, -0.489711, 0.623294,
		46.739883, 38.569641, 36.464218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.553383, 39.467152, 36.207050>,  <47.166649, 38.912437, 36.027912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.553383, 39.467152, 36.207050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.489677, 39.171192, 36.468487>,  <46.451454, 38.993618, 36.625351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.489677, 39.171192, 36.468487>,  <46.553383, 39.467152, 36.207050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489677, 39.171192, 36.468487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300097, 0.666999, 0.681949,
		-0.940520, -0.087534, -0.328267,
		-0.159260, -0.739899, 0.653595,
		46.441898, 38.949223, 36.664566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822861, 39.539165, 36.405888>,  <46.553383, 39.467152, 36.207050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822861, 39.539165, 36.405888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.039974, 39.356823, 36.688046>,  <46.170242, 39.247417, 36.857338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.039974, 39.356823, 36.688046>,  <45.822861, 39.539165, 36.405888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.039974, 39.356823, 36.688046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245247, 0.717248, 0.652234,
		-0.803267, -0.527019, 0.277515,
		0.542786, -0.455858, 0.705391,
		46.202808, 39.220066, 36.899662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329308, 39.373253, 37.053215>,  <45.822861, 39.539165, 36.405888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329308, 39.373253, 37.053215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.708248, 39.367691, 37.181171>,  <45.935612, 39.364353, 37.257946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.708248, 39.367691, 37.181171>,  <45.329308, 39.373253, 37.053215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.708248, 39.367691, 37.181171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234690, 0.649481, 0.723253,
		-0.217818, -0.760250, 0.612025,
		0.947352, -0.013901, 0.319892,
		45.992455, 39.363522, 37.277138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262791, 39.405342, 37.732395>,  <45.329308, 39.373253, 37.053215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262791, 39.405342, 37.732395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.632233, 39.530769, 37.644180>,  <45.853897, 39.606026, 37.591251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.632233, 39.530769, 37.644180>,  <45.262791, 39.405342, 37.732395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632233, 39.530769, 37.644180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111968, 0.770850, 0.627100,
		0.366636, -0.554498, 0.747068,
		0.923603, 0.313565, -0.220535,
		45.909313, 39.624840, 37.578018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.603825, 39.564560, 38.377361>,  <45.262791, 39.405342, 37.732395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.603825, 39.564560, 38.377361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.801750, 39.760246, 38.090076>,  <45.920506, 39.877659, 37.917706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.801750, 39.760246, 38.090076>,  <45.603825, 39.564560, 38.377361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801750, 39.760246, 38.090076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033596, 0.836634, 0.546732,
		0.868351, -0.246399, 0.430411,
		0.494810, 0.489215, -0.718214,
		45.950195, 39.907009, 37.874611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.992855, 40.039768, 38.815647>,  <45.603825, 39.564560, 38.377361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.992855, 40.039768, 38.815647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.980862, 40.183914, 38.442715>,  <45.973667, 40.270401, 38.218956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.980862, 40.183914, 38.442715>,  <45.992855, 40.039768, 38.815647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.980862, 40.183914, 38.442715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155425, 0.919721, 0.360495,
		0.987393, 0.155715, 0.028435,
		-0.029982, 0.360369, -0.932328,
		45.971867, 40.292027, 38.163017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.387844, 40.551937, 38.802666>,  <45.992855, 40.039768, 38.815647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.387844, 40.551937, 38.802666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.143784, 40.623539, 38.493946>,  <45.997349, 40.666500, 38.308716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.143784, 40.623539, 38.493946>,  <46.387844, 40.551937, 38.802666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.143784, 40.623539, 38.493946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099511, 0.949112, 0.298804,
		0.786010, 0.259118, -0.561290,
		-0.610152, 0.179008, -0.771797,
		45.960739, 40.677242, 38.262405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441975, 41.366222, 38.549938>,  <46.387844, 40.551937, 38.802666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.441975, 41.366222, 38.549938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.122959, 41.251835, 38.337467>,  <45.931549, 41.183201, 38.209984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.122959, 41.251835, 38.337467>,  <46.441975, 41.366222, 38.549938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.122959, 41.251835, 38.337467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199820, 0.956026, -0.214677,
		0.569208, -0.065075, -0.819614,
		-0.797543, -0.285971, -0.531175,
		45.883698, 41.166042, 38.178116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.392464, 41.753014, 37.960735>,  <46.441975, 41.366222, 38.549938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.392464, 41.753014, 37.960735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.016102, 41.625141, 38.005466>,  <45.790283, 41.548420, 38.032307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.016102, 41.625141, 38.005466>,  <46.392464, 41.753014, 37.960735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016102, 41.625141, 38.005466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335490, 0.924957, -0.178611,
		-0.046338, -0.205573, -0.977544,
		-0.940904, -0.319679, 0.111828,
		45.733829, 41.529236, 38.039017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082092, 42.098183, 37.512291>,  <46.392464, 41.753014, 37.960735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082092, 42.098183, 37.512291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.752632, 41.983517, 37.708015>,  <45.554955, 41.914719, 37.825451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.752632, 41.983517, 37.708015>,  <46.082092, 42.098183, 37.512291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.752632, 41.983517, 37.708015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446923, 0.859244, -0.248917,
		-0.349082, -0.423705, -0.835833,
		-0.823651, -0.286661, 0.489310,
		45.505535, 41.897518, 37.854809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.594231, 42.230927, 37.065994>,  <46.082092, 42.098183, 37.512291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.594231, 42.230927, 37.065994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.426903, 42.228516, 37.429306>,  <45.326504, 42.227070, 37.647293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.426903, 42.228516, 37.429306>,  <45.594231, 42.230927, 37.065994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426903, 42.228516, 37.429306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570434, 0.779921, -0.257544,
		-0.706832, -0.625849, -0.329700,
		-0.418324, -0.006032, 0.908278,
		45.301407, 42.226707, 37.701790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888210, 42.142971, 36.969620>,  <45.594231, 42.230927, 37.065994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888210, 42.142971, 36.969620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.928116, 42.322998, 37.324581>,  <44.952061, 42.431015, 37.537560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.928116, 42.322998, 37.324581>,  <44.888210, 42.142971, 36.969620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.928116, 42.322998, 37.324581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512691, 0.787598, -0.341814,
		-0.852757, -0.420863, 0.309320,
		0.099764, 0.450070, 0.887403,
		44.958046, 42.458019, 37.590801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202480, 42.399136, 37.137814>,  <44.888210, 42.142971, 36.969620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202480, 42.399136, 37.137814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.449783, 42.594933, 37.383789>,  <44.598167, 42.712410, 37.531376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.449783, 42.594933, 37.383789>,  <44.202480, 42.399136, 37.137814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449783, 42.594933, 37.383789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549332, 0.828682, -0.107335,
		-0.562128, -0.271444, 0.781237,
		0.618261, 0.489494, 0.614938,
		44.635262, 42.741779, 37.568272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828804, 42.839729, 37.394135>,  <44.202480, 42.399136, 37.137814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828804, 42.839729, 37.394135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.178368, 43.012737, 37.482880>,  <44.388103, 43.116543, 37.536125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.178368, 43.012737, 37.482880>,  <43.828804, 42.839729, 37.394135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178368, 43.012737, 37.482880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439496, 0.898032, -0.019540,
		-0.207689, -0.080431, 0.974883,
		0.873904, 0.432515, 0.221860,
		44.440540, 43.142490, 37.549438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.388100, 35.819462, 41.335079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216560, 35.461796, 41.386555>,  <37.113636, 35.247196, 41.417439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216560, 35.461796, 41.386555>,  <37.388100, 35.819462, 41.335079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216560, 35.461796, 41.386555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431954, -0.328074, -0.840109,
		0.793415, -0.304689, 0.526931,
		-0.428845, -0.894165, 0.128687,
		37.087906, 35.193546, 41.425159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899021, 35.272629, 41.057014>,  <37.388100, 35.819462, 41.335079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899021, 35.272629, 41.057014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547295, 35.082333, 41.065685>,  <37.336258, 34.968155, 41.070889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547295, 35.082333, 41.065685>,  <37.899021, 35.272629, 41.057014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547295, 35.082333, 41.065685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212121, -0.432000, -0.876574,
		0.426384, -0.766190, 0.480780,
		-0.879319, -0.475740, 0.021673,
		37.283501, 34.939610, 41.072186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061897, 34.614178, 40.840721>,  <37.899021, 35.272629, 41.057014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061897, 34.614178, 40.840721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669693, 34.671509, 40.786968>,  <37.434372, 34.705906, 40.754715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669693, 34.671509, 40.786968>,  <38.061897, 34.614178, 40.840721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669693, 34.671509, 40.786968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050974, -0.474985, -0.878516,
		-0.189741, -0.868244, 0.458422,
		-0.980510, 0.143323, -0.134382,
		37.375542, 34.714504, 40.746655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938164, 33.926903, 40.547665>,  <38.061897, 34.614178, 40.840721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938164, 33.926903, 40.547665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640938, 34.177486, 40.453522>,  <37.462601, 34.327839, 40.397034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640938, 34.177486, 40.453522>,  <37.938164, 33.926903, 40.547665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640938, 34.177486, 40.453522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033551, -0.316380, -0.948039,
		-0.668374, -0.712354, 0.214074,
		-0.743068, 0.626462, -0.235360,
		37.418018, 34.365425, 40.382915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493385, 33.560894, 40.143360>,  <37.938164, 33.926903, 40.547665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493385, 33.560894, 40.143360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406300, 33.941921, 40.058304>,  <37.354050, 34.170536, 40.007271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406300, 33.941921, 40.058304>,  <37.493385, 33.560894, 40.143360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406300, 33.941921, 40.058304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184359, -0.254081, -0.949450,
		-0.958443, -0.167505, 0.230931,
		-0.217713, 0.952568, -0.212641,
		37.340984, 34.227692, 39.994511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824474, 33.559708, 39.834160>,  <37.493385, 33.560894, 40.143360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824474, 33.559708, 39.834160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017273, 33.888866, 39.713818>,  <37.132954, 34.086361, 39.641613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017273, 33.888866, 39.713818>,  <36.824474, 33.559708, 39.834160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017273, 33.888866, 39.713818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335238, -0.144041, -0.931057,
		-0.809504, 0.549624, 0.206440,
		0.481995, 0.822901, -0.300856,
		37.161873, 34.135738, 39.623562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497841, 33.752586, 39.215126>,  <36.824474, 33.559708, 39.834160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497841, 33.752586, 39.215126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849022, 33.942516, 39.190693>,  <37.059731, 34.056477, 39.176033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849022, 33.942516, 39.190693>,  <36.497841, 33.752586, 39.215126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849022, 33.942516, 39.190693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004117, -0.120099, -0.992754,
		-0.478724, 0.871845, -0.103486,
		0.877956, 0.474829, -0.061084,
		37.112408, 34.084965, 39.172367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466686, 34.069771, 38.540035>,  <36.497841, 33.752586, 39.215126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466686, 34.069771, 38.540035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852802, 34.108315, 38.637138>,  <37.084473, 34.131439, 38.695400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852802, 34.108315, 38.637138>,  <36.466686, 34.069771, 38.540035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852802, 34.108315, 38.637138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240158, 0.037907, -0.969993,
		-0.102668, 0.994625, 0.013450,
		0.965289, 0.096357, 0.242759,
		37.142387, 34.137222, 38.709965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654980, 34.644787, 38.148159>,  <36.466686, 34.069771, 38.540035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654980, 34.644787, 38.148159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967564, 34.415642, 38.247070>,  <37.155113, 34.278156, 38.306416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967564, 34.415642, 38.247070>,  <36.654980, 34.644787, 38.148159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967564, 34.415642, 38.247070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262660, -0.057450, -0.963177,
		0.565972, 0.817637, 0.105573,
		0.781464, -0.572861, 0.247275,
		37.202003, 34.243782, 38.321255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114750, 34.780994, 37.682720>,  <36.654980, 34.644787, 38.148159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114750, 34.780994, 37.682720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243210, 34.431553, 37.828976>,  <37.320286, 34.221889, 37.916729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243210, 34.431553, 37.828976>,  <37.114750, 34.780994, 37.682720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243210, 34.431553, 37.828976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305535, -0.269866, -0.913138,
		0.896390, 0.404964, 0.180249,
		0.321145, -0.873600, 0.365636,
		37.339554, 34.169472, 37.938667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696972, 34.735085, 37.427101>,  <37.114750, 34.780994, 37.682720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696972, 34.735085, 37.427101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632675, 34.347965, 37.504585>,  <37.594097, 34.115692, 37.551075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632675, 34.347965, 37.504585>,  <37.696972, 34.735085, 37.427101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632675, 34.347965, 37.504585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321642, -0.236913, -0.916743,
		0.933118, -0.085050, 0.349367,
		-0.160739, -0.967801, 0.193712,
		37.584454, 34.057625, 37.562698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271358, 34.393791, 37.096478>,  <37.696972, 34.735085, 37.427101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271358, 34.393791, 37.096478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975533, 34.128613, 37.143028>,  <37.798038, 33.969505, 37.170959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975533, 34.128613, 37.143028>,  <38.271358, 34.393791, 37.096478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975533, 34.128613, 37.143028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005651, -0.166772, -0.985979,
		0.673063, -0.729852, 0.119593,
		-0.739564, -0.662950, 0.116372,
		37.753662, 33.929729, 37.177940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997944, 34.222897, 37.156414>,  <38.271358, 34.393791, 37.096478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997944, 34.222897, 37.156414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934402, 34.556473, 37.367813>,  <38.896278, 34.756618, 37.494652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934402, 34.556473, 37.367813>,  <38.997944, 34.222897, 37.156414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934402, 34.556473, 37.367813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779864, 0.434254, -0.450816,
		-0.605456, 0.340542, -0.719343,
		-0.158856, 0.833939, 0.528499,
		38.886745, 34.806656, 37.526363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663086, 33.940018, 36.689266>,  <38.997944, 34.222897, 37.156414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663086, 33.940018, 36.689266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734455, 33.760315, 36.339104>,  <39.777279, 33.652493, 36.129005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734455, 33.760315, 36.339104>,  <39.663086, 33.940018, 36.689266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734455, 33.760315, 36.339104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242708, -0.882286, 0.403318,
		-0.953550, 0.140505, -0.266459,
		0.178424, -0.449256, -0.875405,
		39.787983, 33.625538, 36.076481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989502, 33.733883, 36.348782>,  <39.663086, 33.940018, 36.689266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989502, 33.733883, 36.348782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323864, 33.520699, 36.296310>,  <39.524483, 33.392788, 36.264828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323864, 33.520699, 36.296310>,  <38.989502, 33.733883, 36.348782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323864, 33.520699, 36.296310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428277, -0.782821, 0.451408,
		-0.343275, -0.321155, -0.882622,
		0.835907, -0.532964, -0.131180,
		39.574635, 33.360809, 36.256958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749527, 33.042141, 36.194443>,  <38.989502, 33.733883, 36.348782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749527, 33.042141, 36.194443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127296, 33.017128, 36.323536>,  <39.353958, 33.002121, 36.400993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127296, 33.017128, 36.323536>,  <38.749527, 33.042141, 36.194443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127296, 33.017128, 36.323536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236199, -0.811901, 0.533879,
		0.228641, -0.580436, -0.781548,
		0.944422, -0.062534, 0.322733,
		39.410622, 32.998367, 36.420357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870777, 32.296036, 36.313026>,  <38.749527, 33.042141, 36.194443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870777, 32.296036, 36.313026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132076, 32.519505, 36.517445>,  <39.288857, 32.653584, 36.640095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132076, 32.519505, 36.517445>,  <38.870777, 32.296036, 36.313026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132076, 32.519505, 36.517445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136768, -0.576786, 0.805365,
		0.744693, -0.595993, -0.300374,
		0.653243, 0.558668, 0.511041,
		39.328049, 32.687103, 36.670757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214279, 31.754269, 36.690296>,  <38.870777, 32.296036, 36.313026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214279, 31.754269, 36.690296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299946, 32.100620, 36.871132>,  <39.351345, 32.308434, 36.979633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299946, 32.100620, 36.871132>,  <39.214279, 31.754269, 36.690296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299946, 32.100620, 36.871132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162526, -0.424785, 0.890586,
		0.963181, -0.264210, 0.049754,
		0.214167, 0.865882, 0.452086,
		39.364197, 32.360386, 37.006756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617783, 31.547501, 37.266129>,  <39.214279, 31.754269, 36.690296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617783, 31.547501, 37.266129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490974, 31.909754, 37.378788>,  <39.414890, 32.127106, 37.446384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490974, 31.909754, 37.378788>,  <39.617783, 31.547501, 37.266129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490974, 31.909754, 37.378788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278108, -0.372682, 0.885305,
		0.906727, 0.202330, 0.370012,
		-0.317020, 0.905633, 0.281651,
		39.395870, 32.181442, 37.463284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893764, 31.616432, 37.900623>,  <39.617783, 31.547501, 37.266129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893764, 31.616432, 37.900623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596340, 31.883869, 37.904552>,  <39.417885, 32.044331, 37.906910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596340, 31.883869, 37.904552>,  <39.893764, 31.616432, 37.900623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596340, 31.883869, 37.904552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318570, -0.367134, 0.873914,
		0.587902, 0.646679, 0.485981,
		-0.743562, 0.668595, 0.009826,
		39.373272, 32.084446, 37.907501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022575, 31.800859, 38.568684>,  <39.893764, 31.616432, 37.900623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022575, 31.800859, 38.568684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670948, 31.962687, 38.467842>,  <39.459972, 32.059784, 38.407337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670948, 31.962687, 38.467842>,  <40.022575, 31.800859, 38.568684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670948, 31.962687, 38.467842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252059, 0.054381, 0.966183,
		0.404595, 0.912890, 0.054170,
		-0.879073, 0.404567, -0.252104,
		39.407227, 32.084057, 38.392212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999439, 32.356163, 38.926186>,  <40.022575, 31.800859, 38.568684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999439, 32.356163, 38.926186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619892, 32.273590, 38.830650>,  <39.392166, 32.224049, 38.773331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619892, 32.273590, 38.830650>,  <39.999439, 32.356163, 38.926186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619892, 32.273590, 38.830650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250448, 0.031675, 0.967612,
		-0.192179, 0.977948, -0.081755,
		-0.948864, -0.206430, -0.238838,
		39.335232, 32.211662, 38.758999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562523, 32.839977, 39.277000>,  <39.999439, 32.356163, 38.926186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562523, 32.839977, 39.277000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315334, 32.530308, 39.222214>,  <39.167023, 32.344505, 39.189342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315334, 32.530308, 39.222214>,  <39.562523, 32.839977, 39.277000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315334, 32.530308, 39.222214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409750, 0.168460, 0.896508,
		-0.670982, 0.610140, -0.421323,
		-0.617971, -0.774177, -0.136971,
		39.129944, 32.298054, 39.181122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993999, 33.043941, 39.653435>,  <39.562523, 32.839977, 39.277000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993999, 33.043941, 39.653435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935196, 32.650482, 39.611813>,  <38.899914, 32.414406, 39.586838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935196, 32.650482, 39.611813>,  <38.993999, 33.043941, 39.653435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935196, 32.650482, 39.611813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396541, -0.037766, 0.917240,
		-0.906169, 0.176108, -0.384504,
		-0.147012, -0.983646, -0.104057,
		38.891090, 32.355389, 39.580597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252258, 32.958870, 39.774208>,  <38.993999, 33.043941, 39.653435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252258, 32.958870, 39.774208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442986, 32.614693, 39.846077>,  <38.557423, 32.408188, 39.889198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442986, 32.614693, 39.846077>,  <38.252258, 32.958870, 39.774208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442986, 32.614693, 39.846077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300138, 0.032752, 0.953333,
		-0.826174, -0.508492, -0.242635,
		0.476816, -0.860443, 0.179677,
		38.586029, 32.356560, 39.899979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770370, 32.497478, 40.141052>,  <38.252258, 32.958870, 39.774208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770370, 32.497478, 40.141052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123714, 32.333729, 40.232338>,  <38.335720, 32.235477, 40.287109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123714, 32.333729, 40.232338>,  <37.770370, 32.497478, 40.141052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123714, 32.333729, 40.232338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322278, -0.177004, 0.929950,
		-0.340303, -0.895032, -0.288291,
		0.883363, -0.409375, 0.228214,
		38.388725, 32.210918, 40.300804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633667, 31.880941, 40.304996>,  <37.770370, 32.497478, 40.141052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633667, 31.880941, 40.304996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981339, 31.950813, 40.490044>,  <38.189941, 31.992737, 40.601070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981339, 31.950813, 40.490044>,  <37.633667, 31.880941, 40.304996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981339, 31.950813, 40.490044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398236, -0.307341, 0.864262,
		0.293150, -0.935430, -0.197571,
		0.869178, 0.174679, 0.462619,
		38.242092, 32.003216, 40.628830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614391, 31.462067, 40.858166>,  <37.633667, 31.880941, 40.304996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614391, 31.462067, 40.858166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899738, 31.726019, 40.952541>,  <38.070946, 31.884390, 41.009167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899738, 31.726019, 40.952541>,  <37.614391, 31.462067, 40.858166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899738, 31.726019, 40.952541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308804, -0.006232, 0.951105,
		0.629086, -0.751344, 0.199328,
		0.713365, 0.659881, 0.235939,
		38.113747, 31.923983, 41.023323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016804, 30.801432, 40.928883>,  <37.614391, 31.462067, 40.858166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016804, 30.801432, 40.928883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786953, 30.477613, 40.880806>,  <37.649044, 30.283323, 40.851959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786953, 30.477613, 40.880806>,  <38.016804, 30.801432, 40.928883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786953, 30.477613, 40.880806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214783, -0.007460, -0.976633,
		0.789730, -0.587013, 0.178163,
		-0.574625, -0.809543, -0.120189,
		37.614567, 30.234751, 40.844749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419960, 30.359619, 40.488190>,  <38.016804, 30.801432, 40.928883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419960, 30.359619, 40.488190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040474, 30.233641, 40.477253>,  <37.812782, 30.158054, 40.470692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040474, 30.233641, 40.477253>,  <38.419960, 30.359619, 40.488190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040474, 30.233641, 40.477253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038615, -0.029621, -0.998815,
		0.313764, -0.948647, 0.040263,
		-0.948716, -0.314947, -0.027338,
		37.755859, 30.139156, 40.469051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394417, 30.022165, 39.873924>,  <38.419960, 30.359619, 40.488190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394417, 30.022165, 39.873924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006802, 30.031622, 39.972237>,  <37.774231, 30.037296, 40.031223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006802, 30.031622, 39.972237>,  <38.394417, 30.022165, 39.873924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006802, 30.031622, 39.972237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241987, 0.106897, -0.964373,
		-0.049072, -0.993989, -0.097867,
		-0.969037, 0.023642, 0.245778,
		37.716091, 30.038713, 40.045971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056343, 29.483173, 39.561146>,  <38.394417, 30.022165, 39.873924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056343, 29.483173, 39.561146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775944, 29.758274, 39.636616>,  <37.607704, 29.923334, 39.681896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775944, 29.758274, 39.636616>,  <38.056343, 29.483173, 39.561146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775944, 29.758274, 39.636616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325524, -0.073177, -0.942698,
		-0.634535, -0.722249, 0.275177,
		-0.700999, 0.687751, 0.188676,
		37.565643, 29.964600, 39.693218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366558, 29.197010, 39.285755>,  <38.056343, 29.483173, 39.561146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366558, 29.197010, 39.285755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324314, 29.594391, 39.303204>,  <37.298965, 29.832819, 39.313671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324314, 29.594391, 39.303204>,  <37.366558, 29.197010, 39.285755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324314, 29.594391, 39.303204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249976, 0.015935, -0.968121,
		-0.962475, -0.113150, 0.246656,
		-0.105612, 0.993450, 0.043621,
		37.292629, 29.892426, 39.316292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768238, 29.296759, 38.919029>,  <37.366558, 29.197010, 39.285755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768238, 29.296759, 38.919029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936371, 29.659666, 38.924465>,  <37.037251, 29.877411, 38.927727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936371, 29.659666, 38.924465>,  <36.768238, 29.296759, 38.919029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936371, 29.659666, 38.924465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357387, 0.179303, -0.916583,
		-0.834023, 0.380414, 0.399613,
		0.420333, 0.907268, 0.013587,
		37.062469, 29.931847, 38.928543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258179, 29.634209, 38.614895>,  <36.768238, 29.296759, 38.919029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258179, 29.634209, 38.614895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586945, 29.861176, 38.594894>,  <36.784203, 29.997355, 38.582893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586945, 29.861176, 38.594894>,  <36.258179, 29.634209, 38.614895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586945, 29.861176, 38.594894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342560, 0.422250, -0.839260,
		-0.455096, 0.706926, 0.541426,
		0.821912, 0.567415, -0.050001,
		36.833519, 30.031401, 38.579895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014816, 30.296030, 38.752949>,  <36.258179, 29.634209, 38.614895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014816, 30.296030, 38.752949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347252, 30.259264, 38.533550>,  <36.546711, 30.237206, 38.401913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347252, 30.259264, 38.533550>,  <36.014816, 30.296030, 38.752949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347252, 30.259264, 38.533550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476903, 0.389601, -0.787893,
		0.286112, 0.916386, 0.279958,
		0.831085, -0.091913, -0.548497,
		36.596577, 30.231689, 38.368999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043850, 30.938204, 38.387035>,  <36.014816, 30.296030, 38.752949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043850, 30.938204, 38.387035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284431, 30.672354, 38.209709>,  <36.428780, 30.512844, 38.103313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284431, 30.672354, 38.209709>,  <36.043850, 30.938204, 38.387035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284431, 30.672354, 38.209709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340780, 0.288457, -0.894797,
		0.722582, 0.689251, -0.052998,
		0.601452, -0.664624, -0.443317,
		36.464867, 30.472967, 38.076714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371475, 31.375109, 37.916088>,  <36.043850, 30.938204, 38.387035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371475, 31.375109, 37.916088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419876, 30.996452, 37.796604>,  <36.448917, 30.769258, 37.724915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419876, 30.996452, 37.796604>,  <36.371475, 31.375109, 37.916088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419876, 30.996452, 37.796604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213658, 0.269035, -0.939132,
		0.969386, 0.177457, -0.169704,
		0.120999, -0.946641, -0.298714,
		36.456177, 30.712460, 37.706989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635841, 31.482544, 37.285091>,  <36.371475, 31.375109, 37.916088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635841, 31.482544, 37.285091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507683, 31.103699, 37.292244>,  <36.430786, 30.876392, 37.296535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507683, 31.103699, 37.292244>,  <36.635841, 31.482544, 37.285091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507683, 31.103699, 37.292244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198847, 0.048791, -0.978815,
		0.926177, -0.317167, -0.203963,
		-0.320399, -0.947114, 0.017879,
		36.411564, 30.819565, 37.297607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928802, 31.170877, 36.700031>,  <36.635841, 31.482544, 37.285091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928802, 31.170877, 36.700031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590092, 30.996334, 36.821728>,  <36.386864, 30.891609, 36.894745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590092, 30.996334, 36.821728>,  <36.928802, 31.170877, 36.700031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590092, 30.996334, 36.821728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398144, 0.140598, -0.906484,
		0.352775, -0.888721, -0.292788,
		-0.846777, -0.436357, 0.304239,
		36.336060, 30.865427, 36.912998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.811314, 30.712488, 44.552807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.429337, 30.635857, 44.462132>,  <37.200150, 30.589878, 44.407726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.429337, 30.635857, 44.462132>,  <37.811314, 30.712488, 44.552807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429337, 30.635857, 44.462132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282719, -0.354733, -0.891199,
		0.090323, -0.915130, 0.392911,
		-0.954941, -0.191579, -0.226684,
		37.142853, 30.578382, 44.394127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889786, 30.027388, 44.194767>,  <37.811314, 30.712488, 44.552807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889786, 30.027388, 44.194767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.546833, 30.208620, 44.097103>,  <37.341061, 30.317360, 44.038506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.546833, 30.208620, 44.097103>,  <37.889786, 30.027388, 44.194767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546833, 30.208620, 44.097103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105890, -0.308963, -0.945161,
		-0.503671, -0.836218, 0.216923,
		-0.857381, 0.453080, -0.244163,
		37.289619, 30.344543, 44.023853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553944, 29.562597, 43.814190>,  <37.889786, 30.027388, 44.194767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553944, 29.562597, 43.814190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.378971, 29.908693, 43.716206>,  <37.273987, 30.116352, 43.657413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.378971, 29.908693, 43.716206>,  <37.553944, 29.562597, 43.814190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378971, 29.908693, 43.716206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006226, -0.275318, -0.961333,
		-0.899228, -0.418996, 0.125820,
		-0.437435, 0.865241, -0.244965,
		37.247742, 30.168266, 43.642715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992226, 29.351231, 43.475201>,  <37.553944, 29.562597, 43.814190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992226, 29.351231, 43.475201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.059952, 29.733992, 43.380825>,  <37.100586, 29.963648, 43.324200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.059952, 29.733992, 43.380825>,  <36.992226, 29.351231, 43.475201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059952, 29.733992, 43.380825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041292, -0.232298, -0.971768,
		-0.984697, 0.174276, 0.000181,
		0.169314, 0.956904, -0.235939,
		37.110744, 30.021063, 43.310043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622650, 29.379099, 42.860657>,  <36.992226, 29.351231, 43.475201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622650, 29.379099, 42.860657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.841984, 29.713146, 42.843212>,  <36.973583, 29.913574, 42.832745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.841984, 29.713146, 42.843212>,  <36.622650, 29.379099, 42.860657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841984, 29.713146, 42.843212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074553, -0.100766, -0.992113,
		-0.832928, 0.540760, -0.117515,
		0.548337, 0.835120, -0.043615,
		37.006485, 29.963682, 42.830128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330238, 29.766035, 42.362835>,  <36.622650, 29.379099, 42.860657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330238, 29.766035, 42.362835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.701710, 29.910278, 42.397522>,  <36.924591, 29.996824, 42.418335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.701710, 29.910278, 42.397522>,  <36.330238, 29.766035, 42.362835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701710, 29.910278, 42.397522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126828, -0.089039, -0.987920,
		-0.348531, 0.928458, -0.128424,
		0.928677, 0.360609, 0.086721,
		36.980312, 30.018461, 42.423538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298950, 30.224695, 41.867893>,  <36.330238, 29.766035, 42.362835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298950, 30.224695, 41.867893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.680626, 30.125967, 41.935539>,  <36.909634, 30.066730, 41.976128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.680626, 30.125967, 41.935539>,  <36.298950, 30.224695, 41.867893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680626, 30.125967, 41.935539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159731, -0.057704, -0.985473,
		0.252993, 0.967342, -0.015636,
		0.954191, -0.246820, 0.169113,
		36.966885, 30.051922, 41.986275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692577, 30.709805, 41.507378>,  <36.298950, 30.224695, 41.867893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692577, 30.709805, 41.507378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946140, 30.405514, 41.563168>,  <37.098278, 30.222940, 41.596642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946140, 30.405514, 41.563168>,  <36.692577, 30.709805, 41.507378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946140, 30.405514, 41.563168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314438, 0.088735, -0.945122,
		0.706602, 0.642979, 0.295451,
		0.633911, -0.760725, 0.139476,
		37.136314, 30.177296, 41.605011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347675, 31.004322, 41.348434>,  <36.692577, 30.709805, 41.507378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347675, 31.004322, 41.348434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.336037, 30.607969, 41.295818>,  <37.329052, 30.370157, 41.264248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.336037, 30.607969, 41.295818>,  <37.347675, 31.004322, 41.348434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336037, 30.607969, 41.295818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215400, 0.122287, -0.968839,
		0.976092, -0.056523, 0.209878,
		-0.029096, -0.990884, -0.131538,
		37.327309, 30.310703, 41.256355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056213, 31.145760, 41.559784>,  <37.347675, 31.004322, 41.348434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056213, 31.145760, 41.559784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.121296, 31.540161, 41.545254>,  <38.160343, 31.776802, 41.536537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.121296, 31.540161, 41.545254>,  <38.056213, 31.145760, 41.559784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121296, 31.540161, 41.545254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135593, 0.058812, 0.989018,
		0.977314, -0.155990, 0.143264,
		0.162702, 0.986007, -0.036327,
		38.170105, 31.835962, 41.534355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425915, 31.264395, 42.146374>,  <38.056213, 31.145760, 41.559784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425915, 31.264395, 42.146374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.332779, 31.641335, 42.050236>,  <38.276897, 31.867498, 41.992554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.332779, 31.641335, 42.050236>,  <38.425915, 31.264395, 42.146374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332779, 31.641335, 42.050236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017960, 0.251261, 0.967753,
		0.972349, 0.221017, -0.075429,
		-0.232843, 0.942348, -0.240344,
		38.262928, 31.924038, 41.978134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641216, 31.683020, 42.678265>,  <38.425915, 31.264395, 42.146374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641216, 31.683020, 42.678265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.411209, 31.943586, 42.480270>,  <38.273205, 32.099926, 42.361473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.411209, 31.943586, 42.480270>,  <38.641216, 31.683020, 42.678265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411209, 31.943586, 42.480270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186731, 0.484546, 0.854603,
		0.796545, 0.583843, -0.156983,
		-0.575019, 0.651417, -0.494984,
		38.238705, 32.139011, 42.331776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008919, 32.457893, 42.729652>,  <38.641216, 31.683020, 42.678265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008919, 32.457893, 42.729652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.612621, 32.462910, 42.675579>,  <38.374844, 32.465919, 42.643135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.612621, 32.462910, 42.675579>,  <39.008919, 32.457893, 42.729652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612621, 32.462910, 42.675579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113753, 0.466886, 0.876971,
		0.074113, 0.884229, -0.461137,
		-0.990741, 0.012539, -0.135186,
		38.315399, 32.466671, 42.635025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836056, 33.122337, 42.705296>,  <39.008919, 32.457893, 42.729652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836056, 33.122337, 42.705296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.494282, 32.940189, 42.805359>,  <38.289215, 32.830902, 42.865395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.494282, 32.940189, 42.805359>,  <38.836056, 33.122337, 42.705296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494282, 32.940189, 42.805359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064786, 0.571104, 0.818317,
		-0.515499, 0.682995, -0.517474,
		-0.854438, -0.455367, 0.250155,
		38.237949, 32.803577, 42.880405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458935, 33.648369, 43.045815>,  <38.836056, 33.122337, 42.705296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458935, 33.648369, 43.045815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312023, 33.291882, 43.152271>,  <38.223877, 33.077988, 43.216145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312023, 33.291882, 43.152271>,  <38.458935, 33.648369, 43.045815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312023, 33.291882, 43.152271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154641, 0.340673, 0.927377,
		-0.917164, 0.299452, -0.262942,
		-0.367283, -0.891219, 0.266145,
		38.201839, 33.024517, 43.232113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824791, 33.765785, 43.425030>,  <38.458935, 33.648369, 43.045815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824791, 33.765785, 43.425030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.974209, 33.410236, 43.531143>,  <38.063858, 33.196907, 43.594810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.974209, 33.410236, 43.531143>,  <37.824791, 33.765785, 43.425030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974209, 33.410236, 43.531143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066896, 0.259425, 0.963444,
		-0.925199, -0.377632, 0.037444,
		0.373541, -0.888872, 0.265281,
		38.086269, 33.143574, 43.610729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381626, 33.572998, 44.049801>,  <37.824791, 33.765785, 43.425030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381626, 33.572998, 44.049801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.695087, 33.325584, 44.072819>,  <37.883163, 33.177135, 44.086628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.695087, 33.325584, 44.072819>,  <37.381626, 33.572998, 44.049801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695087, 33.325584, 44.072819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009269, 0.080983, 0.996672,
		-0.621134, -0.781575, 0.057730,
		0.783649, -0.618532, 0.057546,
		37.930183, 33.140026, 44.090084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196239, 33.218414, 44.560993>,  <37.381626, 33.572998, 44.049801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196239, 33.218414, 44.560993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.592785, 33.174538, 44.532223>,  <37.830711, 33.148212, 44.514961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.592785, 33.174538, 44.532223>,  <37.196239, 33.218414, 44.560993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592785, 33.174538, 44.532223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092877, 0.199849, 0.975415,
		-0.092617, -0.973668, 0.208309,
		0.991361, -0.109688, -0.071922,
		37.890194, 33.141632, 44.510647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374920, 32.875416, 45.161907>,  <37.196239, 33.218414, 44.560993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374920, 32.875416, 45.161907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.696655, 33.059357, 45.011402>,  <37.889698, 33.169724, 44.921101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.696655, 33.059357, 45.011402>,  <37.374920, 32.875416, 45.161907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696655, 33.059357, 45.011402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286239, 0.255040, 0.923592,
		0.520682, -0.850580, 0.073510,
		0.804337, 0.459856, -0.376264,
		37.937958, 33.197315, 44.898521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915199, 32.666569, 45.661125>,  <37.374920, 32.875416, 45.161907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915199, 32.666569, 45.661125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.053772, 32.998814, 45.486736>,  <38.136917, 33.198158, 45.382103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.053772, 32.998814, 45.486736>,  <37.915199, 32.666569, 45.661125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053772, 32.998814, 45.486736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242670, 0.369579, 0.896952,
		0.906143, -0.416530, -0.073530,
		0.346433, 0.830611, -0.435971,
		38.157703, 33.247997, 45.355946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626675, 32.659237, 45.770775>,  <37.915199, 32.666569, 45.661125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626675, 32.659237, 45.770775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.528526, 33.044373, 45.725632>,  <38.469639, 33.275455, 45.698547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.528526, 33.044373, 45.725632>,  <38.626675, 32.659237, 45.770775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528526, 33.044373, 45.725632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334198, 0.193290, 0.922470,
		0.910003, 0.188630, -0.369206,
		-0.245369, 0.962839, -0.112855,
		38.454914, 33.333225, 45.691776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067234, 33.031490, 46.202808>,  <38.626675, 32.659237, 45.770775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067234, 33.031490, 46.202808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.844395, 33.346909, 46.098625>,  <38.710690, 33.536160, 46.036118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.844395, 33.346909, 46.098625>,  <39.067234, 33.031490, 46.202808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844395, 33.346909, 46.098625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244288, 0.455367, 0.856133,
		0.793701, 0.413328, -0.446318,
		-0.557102, 0.788544, -0.260454,
		38.677265, 33.583473, 46.020489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460342, 33.684574, 46.284576>,  <39.067234, 33.031490, 46.202808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460342, 33.684574, 46.284576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.065166, 33.726250, 46.330383>,  <38.828060, 33.751255, 46.357868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.065166, 33.726250, 46.330383>,  <39.460342, 33.684574, 46.284576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065166, 33.726250, 46.330383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141289, 0.304240, 0.942059,
		0.063311, 0.946881, -0.315292,
		-0.987942, 0.104190, 0.114522,
		38.768784, 33.757507, 46.364738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.906340, 33.595242, 45.566471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.301512, 33.549244, 45.524956>,  <30.538614, 33.521645, 45.500046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.301512, 33.549244, 45.524956>,  <29.906340, 33.595242, 45.566471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301512, 33.549244, 45.524956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101703, 0.023908, -0.994528,
		0.116843, 0.993079, 0.011924,
		0.987929, -0.114990, -0.103792,
		30.597891, 33.514748, 45.493816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206652, 34.097092, 45.043579>,  <29.906340, 33.595242, 45.566471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206652, 34.097092, 45.043579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.487867, 33.814602, 45.077003>,  <30.656597, 33.645107, 45.097057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.487867, 33.814602, 45.077003>,  <30.206652, 34.097092, 45.043579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487867, 33.814602, 45.077003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024787, -0.141759, -0.989591,
		0.710719, 0.693650, -0.117168,
		0.703039, -0.706225, 0.083557,
		30.698778, 33.602734, 45.102070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718187, 34.228359, 44.522141>,  <30.206652, 34.097092, 45.043579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718187, 34.228359, 44.522141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.775156, 33.842266, 44.609821>,  <30.809338, 33.610611, 44.662430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.775156, 33.842266, 44.609821>,  <30.718187, 34.228359, 44.522141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775156, 33.842266, 44.609821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231639, -0.182807, -0.955471,
		0.962320, 0.186856, 0.197549,
		0.142422, -0.965229, 0.219202,
		30.817883, 33.552696, 44.675583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408432, 34.043571, 44.313549>,  <30.718187, 34.228359, 44.522141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408432, 34.043571, 44.313549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.197569, 33.703842, 44.324528>,  <31.071051, 33.500004, 44.331116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.197569, 33.703842, 44.324528>,  <31.408432, 34.043571, 44.313549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197569, 33.703842, 44.324528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244290, -0.182405, -0.952392,
		0.813896, -0.495356, 0.303637,
		-0.527158, -0.849324, 0.027448,
		31.039421, 33.449043, 44.332764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868740, 33.576050, 44.116684>,  <31.408432, 34.043571, 44.313549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868740, 33.576050, 44.116684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.505623, 33.416328, 44.065346>,  <31.287752, 33.320496, 44.034542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.505623, 33.416328, 44.065346>,  <31.868740, 33.576050, 44.116684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505623, 33.416328, 44.065346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320741, -0.463728, -0.825883,
		0.270262, -0.790894, 0.549041,
		-0.907791, -0.399304, -0.128344,
		31.233286, 33.296535, 44.026844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050468, 32.849144, 43.911716>,  <31.868740, 33.576050, 44.116684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050468, 32.849144, 43.911716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.666550, 32.922432, 43.826660>,  <31.436197, 32.966404, 43.775627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.666550, 32.922432, 43.826660>,  <32.050468, 32.849144, 43.911716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666550, 32.922432, 43.826660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156954, -0.277746, -0.947746,
		-0.232706, -0.943021, 0.237823,
		-0.959799, 0.183219, -0.212644,
		31.378611, 32.977398, 43.762867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774754, 32.221157, 43.721333>,  <32.050468, 32.849144, 43.911716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774754, 32.221157, 43.721333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.548801, 32.501026, 43.546352>,  <31.413231, 32.668949, 43.441364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.548801, 32.501026, 43.546352>,  <31.774754, 32.221157, 43.721333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548801, 32.501026, 43.546352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277916, -0.337846, -0.899235,
		-0.776965, -0.629534, -0.003609,
		-0.564880, 0.699676, -0.437452,
		31.379337, 32.710930, 43.415115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441727, 31.869980, 43.101242>,  <31.774754, 32.221157, 43.721333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441727, 31.869980, 43.101242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.405693, 32.262009, 43.030422>,  <31.384073, 32.497227, 42.987930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.405693, 32.262009, 43.030422>,  <31.441727, 31.869980, 43.101242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405693, 32.262009, 43.030422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099097, -0.168071, -0.980781,
		-0.990992, -0.105899, -0.081981,
		-0.090085, 0.980070, -0.177051,
		31.378668, 32.556030, 42.977306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026867, 31.976421, 42.462448>,  <31.441727, 31.869980, 43.101242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026867, 31.976421, 42.462448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.197273, 32.333252, 42.522728>,  <31.299517, 32.547352, 42.558895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.197273, 32.333252, 42.522728>,  <31.026867, 31.976421, 42.462448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197273, 32.333252, 42.522728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204204, 0.067458, -0.976602,
		-0.881370, 0.446819, -0.153428,
		0.426014, 0.892078, 0.150697,
		31.325077, 32.600876, 42.567936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617233, 32.499565, 42.074368>,  <31.026867, 31.976421, 42.462448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617233, 32.499565, 42.074368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.006458, 32.591255, 42.084164>,  <31.239994, 32.646271, 42.090042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.006458, 32.591255, 42.084164>,  <30.617233, 32.499565, 42.074368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006458, 32.591255, 42.084164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012786, 0.159748, -0.987075,
		-0.230179, 0.960174, 0.158376,
		0.973064, 0.229229, 0.024494,
		31.298378, 32.660023, 42.091511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644119, 32.974468, 41.654816>,  <30.617233, 32.499565, 42.074368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644119, 32.974468, 41.654816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.032330, 32.886604, 41.694469>,  <31.265257, 32.833885, 41.718262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.032330, 32.886604, 41.694469>,  <30.644119, 32.974468, 41.654816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032330, 32.886604, 41.694469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143028, 0.193956, -0.970528,
		0.193956, 0.956103, 0.219656,
		0.970528, -0.219656, 0.099131,
		31.323488, 32.820709, 41.724209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916374, 33.330322, 41.191349>,  <30.644119, 32.974468, 41.654816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916374, 33.330322, 41.191349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.252016, 33.120308, 41.248260>,  <31.453402, 32.994301, 41.282406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.252016, 33.120308, 41.248260>,  <30.916374, 33.330322, 41.191349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252016, 33.120308, 41.248260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193290, 0.043300, -0.980186,
		0.508468, 0.849980, 0.137816,
		0.839106, -0.525032, 0.142276,
		31.503748, 32.962799, 41.290943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547918, 33.719872, 40.813339>,  <30.916374, 33.330322, 41.191349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547918, 33.719872, 40.813339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.651825, 33.336517, 40.860699>,  <31.714169, 33.106506, 40.889114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.651825, 33.336517, 40.860699>,  <31.547918, 33.719872, 40.813339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651825, 33.336517, 40.860699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380035, -0.011255, -0.924904,
		0.887748, 0.285252, 0.361297,
		0.259765, -0.958386, 0.118398,
		31.729753, 33.049000, 40.896217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302582, 33.639393, 40.611328>,  <31.547918, 33.719872, 40.813339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302582, 33.639393, 40.611328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.121822, 33.283314, 40.588234>,  <32.013367, 33.069664, 40.574379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.121822, 33.283314, 40.588234>,  <32.302582, 33.639393, 40.611328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121822, 33.283314, 40.588234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276484, -0.078236, -0.957829,
		0.848142, -0.448802, 0.281480,
		-0.451898, -0.890200, -0.057732,
		31.986254, 33.016254, 40.570915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975471, 33.423817, 40.952431>,  <32.302582, 33.639393, 40.611328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975471, 33.423817, 40.952431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.307354, 33.645229, 40.981224>,  <33.506485, 33.778076, 40.998501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.307354, 33.645229, 40.981224>,  <32.975471, 33.423817, 40.952431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307354, 33.645229, 40.981224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211280, 0.192073, 0.958368,
		0.516664, -0.810375, 0.276316,
		0.829710, 0.553534, 0.071979,
		33.556267, 33.811291, 41.002819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181141, 33.285946, 41.670689>,  <32.975471, 33.423817, 40.952431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181141, 33.285946, 41.670689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.394707, 33.611618, 41.579437>,  <33.522846, 33.807022, 41.524685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.394707, 33.611618, 41.579437>,  <33.181141, 33.285946, 41.670689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394707, 33.611618, 41.579437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199205, 0.383335, 0.901871,
		0.821737, -0.436078, 0.366857,
		0.533916, 0.814181, -0.228131,
		33.554882, 33.855873, 41.510998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669998, 33.456387, 42.225288>,  <33.181141, 33.285946, 41.670689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669998, 33.456387, 42.225288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.596935, 33.800976, 42.035763>,  <33.553097, 34.007729, 41.922047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.596935, 33.800976, 42.035763>,  <33.669998, 33.456387, 42.225288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596935, 33.800976, 42.035763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113423, 0.460240, 0.880519,
		0.976611, 0.214578, 0.013643,
		-0.182661, 0.861473, -0.473814,
		33.542137, 34.059418, 41.893620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082962, 33.885925, 42.624374>,  <33.669998, 33.456387, 42.225288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082962, 33.885925, 42.624374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.851795, 34.149174, 42.431343>,  <33.713097, 34.307125, 42.315525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.851795, 34.149174, 42.431343>,  <34.082962, 33.885925, 42.624374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851795, 34.149174, 42.431343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112772, 0.521252, 0.845919,
		0.808266, 0.543293, -0.227023,
		-0.577918, 0.658125, -0.482579,
		33.678421, 34.346611, 42.286568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342228, 34.579773, 42.723110>,  <34.082962, 33.885925, 42.624374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342228, 34.579773, 42.723110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.953102, 34.627365, 42.643646>,  <33.719627, 34.655922, 42.595966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.953102, 34.627365, 42.643646>,  <34.342228, 34.579773, 42.723110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953102, 34.627365, 42.643646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109717, 0.518663, 0.847910,
		0.203927, 0.846659, -0.491510,
		-0.972819, 0.118984, -0.198662,
		33.661255, 34.663059, 42.584049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171200, 35.150612, 43.045727>,  <34.342228, 34.579773, 42.723110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171200, 35.150612, 43.045727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.806595, 34.992508, 43.000278>,  <33.587830, 34.897644, 42.973011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.806595, 34.992508, 43.000278>,  <34.171200, 35.150612, 43.045727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806595, 34.992508, 43.000278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285308, 0.408763, 0.866898,
		-0.296207, 0.822607, -0.485365,
		-0.911516, -0.395260, -0.113618,
		33.533142, 34.873928, 42.966194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687595, 35.680851, 43.267475>,  <34.171200, 35.150612, 43.045727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687595, 35.680851, 43.267475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477718, 35.341866, 43.299736>,  <33.351791, 35.138474, 43.319092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.477718, 35.341866, 43.299736>,  <33.687595, 35.680851, 43.267475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477718, 35.341866, 43.299736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320893, 0.284646, 0.903329,
		-0.788498, 0.448086, -0.421296,
		-0.524689, -0.847464, 0.080655,
		33.320312, 35.087627, 43.323933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165859, 35.800549, 43.609074>,  <33.687595, 35.680851, 43.267475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165859, 35.800549, 43.609074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.127789, 35.406132, 43.663719>,  <33.104946, 35.169483, 43.696507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.127789, 35.406132, 43.663719>,  <33.165859, 35.800549, 43.609074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127789, 35.406132, 43.663719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248171, 0.156405, 0.956006,
		-0.964030, 0.057082, -0.259593,
		-0.095173, -0.986042, 0.136613,
		33.099236, 35.110317, 43.704704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471294, 35.666119, 43.959557>,  <33.165859, 35.800549, 43.609074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471294, 35.666119, 43.959557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.666901, 35.325897, 44.036938>,  <32.784264, 35.121765, 44.083366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.666901, 35.325897, 44.036938>,  <32.471294, 35.666119, 43.959557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666901, 35.325897, 44.036938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230302, 0.088014, 0.969131,
		-0.841324, -0.518472, -0.152844,
		0.489014, -0.850553, 0.193453,
		32.813606, 35.070732, 44.094975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083080, 35.426216, 44.501129>,  <32.471294, 35.666119, 43.959557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083080, 35.426216, 44.501129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.425285, 35.219803, 44.518192>,  <32.630608, 35.095955, 44.528431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.425285, 35.219803, 44.518192>,  <32.083080, 35.426216, 44.501129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425285, 35.219803, 44.518192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069265, -0.032402, 0.997072,
		-0.513136, -0.855958, -0.063463,
		0.855508, -0.516029, 0.042661,
		32.681938, 35.064995, 44.530991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955730, 34.859165, 45.035908>,  <32.083080, 35.426216, 44.501129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955730, 34.859165, 45.035908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.346619, 34.928032, 44.986275>,  <32.581150, 34.969353, 44.956497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.346619, 34.928032, 44.986275>,  <31.955730, 34.859165, 45.035908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346619, 34.928032, 44.986275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094492, 0.170523, 0.980812,
		0.190029, -0.970195, 0.150370,
		0.977220, 0.172174, -0.124080,
		32.639786, 34.979683, 44.949051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287857, 34.433792, 45.401867>,  <31.955730, 34.859165, 45.035908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287857, 34.433792, 45.401867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.565704, 34.717300, 45.352631>,  <32.732414, 34.887405, 45.323090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.565704, 34.717300, 45.352631>,  <32.287857, 34.433792, 45.401867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565704, 34.717300, 45.352631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145507, 0.029146, 0.988928,
		0.704510, -0.704838, -0.082886,
		0.694618, 0.708770, -0.123092,
		32.774090, 34.929932, 45.315704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870052, 34.233051, 45.760761>,  <32.287857, 34.433792, 45.401867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870052, 34.233051, 45.760761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908226, 34.628201, 45.711788>,  <32.931129, 34.865292, 45.682404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.908226, 34.628201, 45.711788>,  <32.870052, 34.233051, 45.760761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908226, 34.628201, 45.711788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148229, 0.107524, 0.983090,
		0.984338, -0.111968, -0.136171,
		0.095433, 0.987877, -0.122437,
		32.936855, 34.924564, 45.675056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531235, 34.505791, 46.048306>,  <32.870052, 34.233051, 45.760761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531235, 34.505791, 46.048306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.267540, 34.805809, 46.027004>,  <33.109325, 34.985821, 46.014225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.267540, 34.805809, 46.027004>,  <33.531235, 34.505791, 46.048306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267540, 34.805809, 46.027004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017773, 0.086344, 0.996107,
		0.751728, 0.655720, -0.070251,
		-0.659233, 0.750050, -0.053254,
		33.069771, 35.030823, 46.011028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924366, 34.971848, 46.272301>,  <33.531235, 34.505791, 46.048306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924366, 34.971848, 46.272301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.225121, 35.213696, 46.377457>,  <34.405571, 35.358803, 46.440548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.225121, 35.213696, 46.377457>,  <33.924366, 34.971848, 46.272301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225121, 35.213696, 46.377457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241981, 0.117836, -0.963099,
		-0.613284, 0.787752, -0.057707,
		0.751883, 0.604617, 0.262888,
		34.450687, 35.395081, 46.456322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855659, 35.632179, 45.807693>,  <33.924366, 34.971848, 46.272301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855659, 35.632179, 45.807693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.229664, 35.590450, 45.943268>,  <34.454067, 35.565414, 46.024612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.229664, 35.590450, 45.943268>,  <33.855659, 35.632179, 45.807693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229664, 35.590450, 45.943268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345177, 0.048544, -0.937281,
		0.081325, 0.993358, 0.081399,
		0.935008, -0.104322, 0.338937,
		34.510166, 35.559155, 46.044949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235424, 36.135612, 45.404968>,  <33.855659, 35.632179, 45.807693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235424, 36.135612, 45.404968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536911, 35.923222, 45.559872>,  <34.717804, 35.795788, 45.652813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536911, 35.923222, 45.559872>,  <34.235424, 36.135612, 45.404968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536911, 35.923222, 45.559872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502313, 0.085475, -0.860451,
		0.423777, 0.843066, 0.331140,
		0.753721, -0.530975, 0.387261,
		34.763027, 35.763927, 45.676048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930683, 36.565075, 45.370155>,  <34.235424, 36.135612, 45.404968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930683, 36.565075, 45.370155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.049950, 36.184391, 45.399391>,  <35.121510, 35.955982, 45.416931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.049950, 36.184391, 45.399391>,  <34.930683, 36.565075, 45.370155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049950, 36.184391, 45.399391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560424, 0.112566, -0.820521,
		0.772671, 0.285613, 0.566925,
		0.298168, -0.951711, 0.073088,
		35.139400, 35.898876, 45.421318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633091, 36.589329, 45.224083>,  <34.930683, 36.565075, 45.370155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633091, 36.589329, 45.224083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509888, 36.209751, 45.196835>,  <35.435966, 35.982006, 45.180485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509888, 36.209751, 45.196835>,  <35.633091, 36.589329, 45.224083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509888, 36.209751, 45.196835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671466, -0.166105, -0.722179,
		0.673990, -0.268181, 0.688343,
		-0.308012, -0.948941, -0.068121,
		35.417484, 35.925068, 45.176399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169601, 36.165291, 45.198700>,  <35.633091, 36.589329, 45.224083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169601, 36.165291, 45.198700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.889915, 35.952103, 45.008102>,  <35.722103, 35.824188, 44.893745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.889915, 35.952103, 45.008102>,  <36.169601, 36.165291, 45.198700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889915, 35.952103, 45.008102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645798, -0.184972, -0.740763,
		0.306667, -0.825669, 0.473525,
		-0.699214, -0.532970, -0.476491,
		35.680153, 35.792213, 44.865154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496792, 35.570980, 44.812618>,  <36.169601, 36.165291, 45.198700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496792, 35.570980, 44.812618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145123, 35.604191, 44.624931>,  <35.934120, 35.624119, 44.512318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145123, 35.604191, 44.624931>,  <36.496792, 35.570980, 44.812618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145123, 35.604191, 44.624931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451246, -0.171308, -0.875803,
		-0.153096, -0.981713, 0.113143,
		-0.879169, 0.083026, -0.469221,
		35.881371, 35.629101, 44.484165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360207, 34.970535, 44.450012>,  <36.496792, 35.570980, 44.812618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360207, 34.970535, 44.450012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.120453, 35.239483, 44.276272>,  <35.976601, 35.400852, 44.172028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.120453, 35.239483, 44.276272>,  <36.360207, 34.970535, 44.450012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120453, 35.239483, 44.276272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272606, -0.338731, -0.900526,
		-0.752611, -0.658169, 0.019740,
		-0.599385, 0.672365, -0.434354,
		35.940636, 35.441193, 44.145966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121391, 34.633801, 43.915989>,  <36.360207, 34.970535, 44.450012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121391, 34.633801, 43.915989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.048599, 35.013050, 43.811726>,  <36.004925, 35.240601, 43.749168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.048599, 35.013050, 43.811726>,  <36.121391, 34.633801, 43.915989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048599, 35.013050, 43.811726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618134, -0.095850, -0.780207,
		-0.764717, -0.303106, -0.568625,
		-0.181983, 0.948124, -0.260659,
		35.994003, 35.297489, 43.733528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802460, 34.497787, 43.271751>,  <36.121391, 34.633801, 43.915989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802460, 34.497787, 43.271751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930370, 34.876419, 43.288364>,  <36.007114, 35.103600, 43.298332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930370, 34.876419, 43.288364>,  <35.802460, 34.497787, 43.271751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930370, 34.876419, 43.288364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353488, -0.078512, -0.932139,
		-0.879085, 0.312757, -0.359712,
		0.319775, 0.946583, 0.041537,
		36.026302, 35.160393, 43.300827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573898, 34.796318, 42.596638>,  <35.802460, 34.497787, 43.271751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573898, 34.796318, 42.596638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.850712, 35.059921, 42.714485>,  <36.016800, 35.218082, 42.785194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.850712, 35.059921, 42.714485>,  <35.573898, 34.796318, 42.596638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850712, 35.059921, 42.714485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311164, 0.095942, -0.945501,
		-0.651361, 0.745990, -0.138665,
		0.692031, 0.659010, 0.294618,
		36.058319, 35.257626, 42.802872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484734, 35.443825, 42.151318>,  <35.573898, 34.796318, 42.596638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484734, 35.443825, 42.151318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.857864, 35.396652, 42.287510>,  <36.081741, 35.368347, 42.369225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.857864, 35.396652, 42.287510>,  <35.484734, 35.443825, 42.151318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857864, 35.396652, 42.287510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334979, -0.064327, -0.940027,
		0.132765, 0.990936, -0.020500,
		0.932825, -0.117935, 0.340483,
		36.137711, 35.361271, 42.389656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834297, 35.648464, 41.624531>,  <35.484734, 35.443825, 42.151318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834297, 35.648464, 41.624531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.136726, 35.498055, 41.838806>,  <36.318184, 35.407810, 41.967369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.136726, 35.498055, 41.838806>,  <35.834297, 35.648464, 41.624531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136726, 35.498055, 41.838806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515965, -0.161103, -0.841324,
		0.402659, 0.912497, 0.072210,
		0.756073, -0.376024, 0.535686,
		36.363548, 35.385246, 41.999512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563026, 35.987755, 41.455986>,  <35.834297, 35.648464, 41.624531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563026, 35.987755, 41.455986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624489, 35.616348, 41.591187>,  <36.661366, 35.393505, 41.672306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624489, 35.616348, 41.591187>,  <36.563026, 35.987755, 41.455986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624489, 35.616348, 41.591187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506674, -0.219633, -0.833692,
		0.848334, 0.299357, 0.436709,
		0.153656, -0.928519, 0.337998,
		36.670586, 35.337791, 41.692585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.520334, 28.117620, 40.236717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254335, 28.143818, 40.534306>,  <28.094736, 28.159536, 40.712860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254335, 28.143818, 40.534306>,  <28.520334, 28.117620, 40.236717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254335, 28.143818, 40.534306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669625, 0.388844, -0.632773,
		-0.330732, -0.918972, -0.214723,
		-0.664995, 0.065495, 0.743970,
		28.054836, 28.163465, 40.757496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884483, 28.130537, 39.883720>,  <28.520334, 28.117620, 40.236717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884483, 28.130537, 39.883720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.807020, 28.287083, 40.243572>,  <27.760542, 28.381010, 40.459484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.807020, 28.287083, 40.243572>,  <27.884483, 28.130537, 39.883720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807020, 28.287083, 40.243572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699992, 0.587373, -0.406206,
		-0.687392, -0.708398, 0.160203,
		-0.193656, 0.391364, 0.899629,
		27.748922, 28.404491, 40.513462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148294, 28.063837, 39.894497>,  <27.884483, 28.130537, 39.883720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148294, 28.063837, 39.894497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.271982, 28.345146, 40.150555>,  <27.346195, 28.513931, 40.304192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.271982, 28.345146, 40.150555>,  <27.148294, 28.063837, 39.894497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271982, 28.345146, 40.150555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675408, 0.636287, -0.372778,
		-0.669482, -0.317090, 0.671750,
		0.309221, 0.703273, 0.640148,
		27.364748, 28.556128, 40.342598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574368, 28.281998, 40.088699>,  <27.148294, 28.063837, 39.894497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574368, 28.281998, 40.088699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.830193, 28.573046, 40.187920>,  <26.983686, 28.747675, 40.247452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.830193, 28.573046, 40.187920>,  <26.574368, 28.281998, 40.088699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830193, 28.573046, 40.187920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658445, 0.685032, -0.311739,
		-0.396752, 0.036046, 0.917218,
		0.639560, 0.727621, 0.248054,
		27.022060, 28.791332, 40.262337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233486, 28.862345, 40.514153>,  <26.574368, 28.281998, 40.088699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233486, 28.862345, 40.514153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.570192, 28.996204, 40.344711>,  <26.772217, 29.076521, 40.243046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.570192, 28.996204, 40.344711>,  <26.233486, 28.862345, 40.514153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570192, 28.996204, 40.344711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521222, 0.708126, -0.476324,
		0.140563, 0.621745, 0.770503,
		0.841766, 0.334650, -0.423603,
		26.822721, 29.096600, 40.217628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199505, 29.459612, 40.673359>,  <26.233486, 28.862345, 40.514153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199505, 29.459612, 40.673359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.469412, 29.481440, 40.378952>,  <26.631355, 29.494535, 40.202309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.469412, 29.481440, 40.378952>,  <26.199505, 29.459612, 40.673359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469412, 29.481440, 40.378952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485885, 0.783495, -0.387365,
		0.555524, 0.618998, 0.555188,
		0.674765, 0.054567, -0.736012,
		26.671841, 29.497810, 40.158150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447227, 30.137320, 40.752174>,  <26.199505, 29.459612, 40.673359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447227, 30.137320, 40.752174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.492014, 30.002445, 40.378273>,  <26.518887, 29.921520, 40.153931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.492014, 30.002445, 40.378273>,  <26.447227, 30.137320, 40.752174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492014, 30.002445, 40.378273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539112, 0.769591, -0.342181,
		0.834758, 0.542252, -0.095611,
		0.111967, -0.337183, -0.934757,
		26.525604, 29.901291, 40.097847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439938, 30.779436, 40.426548>,  <26.447227, 30.137320, 40.752174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439938, 30.779436, 40.426548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.379128, 30.511957, 40.135418>,  <26.342642, 30.351471, 39.960739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.379128, 30.511957, 40.135418>,  <26.439938, 30.779436, 40.426548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379128, 30.511957, 40.135418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275713, 0.735848, -0.618474,
		0.949142, 0.106647, -0.296237,
		-0.152027, -0.668696, -0.727828,
		26.333519, 30.311348, 39.917068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880033, 31.045570, 39.907860>,  <26.439938, 30.779436, 40.426548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880033, 31.045570, 39.907860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611517, 30.800480, 39.741039>,  <26.450407, 30.653425, 39.640945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.611517, 30.800480, 39.741039>,  <26.880033, 31.045570, 39.907860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611517, 30.800480, 39.741039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093932, 0.628467, -0.772144,
		0.735217, -0.479160, -0.479439,
		-0.671292, -0.612728, -0.417051,
		26.410130, 30.616661, 39.615925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991776, 31.068148, 39.141697>,  <26.880033, 31.045570, 39.907860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991776, 31.068148, 39.141697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.622204, 30.923590, 39.191887>,  <26.400459, 30.836855, 39.222000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.622204, 30.923590, 39.191887>,  <26.991776, 31.068148, 39.141697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622204, 30.923590, 39.191887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266939, 0.374087, -0.888145,
		0.274034, -0.854079, -0.442102,
		-0.923931, -0.361396, 0.125475,
		26.345024, 30.815170, 39.229530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855303, 30.692297, 38.562401>,  <26.991776, 31.068148, 39.141697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855303, 30.692297, 38.562401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.498674, 30.805693, 38.703671>,  <26.284697, 30.873730, 38.788433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.498674, 30.805693, 38.703671>,  <26.855303, 30.692297, 38.562401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498674, 30.805693, 38.703671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308502, 0.190740, -0.931904,
		-0.331551, -0.939814, -0.082600,
		-0.891572, 0.283491, 0.353175,
		26.231203, 30.890739, 38.809624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365282, 30.407223, 38.097317>,  <26.855303, 30.692297, 38.562401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365282, 30.407223, 38.097317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.178341, 30.707680, 38.283806>,  <26.066175, 30.887955, 38.395699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.178341, 30.707680, 38.283806>,  <26.365282, 30.407223, 38.097317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.178341, 30.707680, 38.283806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318805, 0.348685, -0.881352,
		-0.824587, -0.560537, 0.076510,
		-0.467353, 0.751144, 0.466224,
		26.038136, 30.933023, 38.423672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628677, 30.420727, 37.918606>,  <26.365282, 30.407223, 38.097317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628677, 30.420727, 37.918606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.694857, 30.788286, 38.061855>,  <25.734564, 31.008821, 38.147804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.694857, 30.788286, 38.061855>,  <25.628677, 30.420727, 37.918606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694857, 30.788286, 38.061855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504299, 0.390887, -0.769993,
		-0.847531, -0.053206, 0.528072,
		0.165448, 0.918900, 0.358121,
		25.744492, 31.063955, 38.169292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039837, 30.793772, 37.623417>,  <25.628677, 30.420727, 37.918606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039837, 30.793772, 37.623417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.266233, 31.108793, 37.720913>,  <25.402071, 31.297806, 37.779411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.266233, 31.108793, 37.720913>,  <25.039837, 30.793772, 37.623417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.266233, 31.108793, 37.720913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317878, 0.481272, -0.816903,
		-0.760662, 0.384881, 0.522742,
		0.565991, 0.787556, 0.243740,
		25.436031, 31.345060, 37.794037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.622793, 31.411039, 37.588085>,  <25.039837, 30.793772, 37.623417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.622793, 31.411039, 37.588085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.985758, 31.579136, 37.587460>,  <25.203537, 31.679993, 37.587086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.985758, 31.579136, 37.587460>,  <24.622793, 31.411039, 37.588085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985758, 31.579136, 37.587460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313661, 0.674793, -0.668035,
		-0.279679, 0.606674, 0.744128,
		0.907412, 0.420239, -0.001565,
		25.257982, 31.705208, 37.586990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.418175, 32.140598, 37.525555>,  <24.622793, 31.411039, 37.588085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.418175, 32.140598, 37.525555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.798170, 32.105465, 37.405685>,  <25.026167, 32.084385, 37.333763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.798170, 32.105465, 37.405685>,  <24.418175, 32.140598, 37.525555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798170, 32.105465, 37.405685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164425, 0.675157, -0.719116,
		0.265487, 0.732427, 0.626951,
		0.949990, -0.087829, -0.299675,
		25.083168, 32.079117, 37.315784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.741970, 32.792408, 37.628788>,  <24.418175, 32.140598, 37.525555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.741970, 32.792408, 37.628788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.952183, 32.613029, 37.339592>,  <25.078312, 32.505402, 37.166077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.952183, 32.613029, 37.339592>,  <24.741970, 32.792408, 37.628788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.952183, 32.613029, 37.339592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129900, 0.797539, -0.589116,
		0.840797, 0.403516, 0.360881,
		0.525534, -0.448448, -0.722986,
		25.109842, 32.478497, 37.122696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262175, 33.282066, 37.312733>,  <24.741970, 32.792408, 37.628788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262175, 33.282066, 37.312733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.232538, 33.025700, 37.007122>,  <25.214756, 32.871880, 36.823757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.232538, 33.025700, 37.007122>,  <25.262175, 33.282066, 37.312733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232538, 33.025700, 37.007122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060722, 0.761811, -0.644947,
		0.995401, -0.094178, -0.017525,
		-0.074091, -0.640917, -0.764026,
		25.210310, 32.833424, 36.777916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593029, 33.590652, 36.764626>,  <25.262175, 33.282066, 37.312733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593029, 33.590652, 36.764626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.416697, 33.280430, 36.583881>,  <25.310898, 33.094296, 36.475433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.416697, 33.280430, 36.583881>,  <25.593029, 33.590652, 36.764626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416697, 33.280430, 36.583881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022828, 0.512944, -0.858119,
		0.897300, -0.367970, -0.243826,
		-0.440831, -0.775556, -0.451864,
		25.284447, 33.047764, 36.448322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008198, 33.437447, 36.173031>,  <25.593029, 33.590652, 36.764626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008198, 33.437447, 36.173031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.648384, 33.279533, 36.098209>,  <25.432497, 33.184788, 36.053318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.648384, 33.279533, 36.098209>,  <26.008198, 33.437447, 36.173031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648384, 33.279533, 36.098209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040720, 0.502091, -0.863856,
		0.434951, -0.769450, -0.467722,
		-0.899533, -0.394781, -0.187053,
		25.378525, 33.161098, 36.042095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082193, 33.112030, 35.565929>,  <26.008198, 33.437447, 36.173031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082193, 33.112030, 35.565929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.690403, 33.166622, 35.625259>,  <25.455328, 33.199379, 35.660858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.690403, 33.166622, 35.625259>,  <26.082193, 33.112030, 35.565929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690403, 33.166622, 35.625259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075970, 0.431620, -0.898851,
		-0.186697, -0.891671, -0.412393,
		-0.979476, 0.136484, 0.148322,
		25.396561, 33.207569, 35.669758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773668, 33.292412, 35.700176>,  <26.082193, 33.112030, 35.565929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773668, 33.292412, 35.700176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.160543, 33.393513, 35.689861>,  <27.392668, 33.454174, 35.683674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.160543, 33.393513, 35.689861>,  <26.773668, 33.292412, 35.700176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160543, 33.393513, 35.689861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254051, -0.961094, 0.108428,
		0.002625, -0.111421, -0.993770,
		0.967187, 0.252753, -0.025783,
		27.450699, 33.469337, 35.682125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172707, 32.781784, 35.195728>,  <26.773668, 33.292412, 35.700176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172707, 32.781784, 35.195728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.470701, 32.929386, 35.418018>,  <27.649498, 33.017948, 35.551392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.470701, 32.929386, 35.418018>,  <27.172707, 32.781784, 35.195728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470701, 32.929386, 35.418018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447563, -0.894231, -0.006221,
		0.494650, 0.253357, -0.831343,
		0.744989, 0.369001, 0.555724,
		27.694199, 33.040085, 35.584736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846251, 32.690994, 34.816784>,  <27.172707, 32.781784, 35.195728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.846251, 32.690994, 34.816784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903299, 32.708309, 35.212315>,  <27.937529, 32.718697, 35.449635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903299, 32.708309, 35.212315>,  <27.846251, 32.690994, 34.816784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903299, 32.708309, 35.212315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318098, -0.948048, -0.004382,
		0.937269, 0.315170, -0.148980,
		0.142622, 0.043283, 0.988830,
		27.946085, 32.721294, 35.508965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237385, 32.139320, 34.903061>,  <27.846251, 32.690994, 34.816784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237385, 32.139320, 34.903061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.122061, 32.247272, 35.270550>,  <28.052866, 32.312042, 35.491043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.122061, 32.247272, 35.270550>,  <28.237385, 32.139320, 34.903061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122061, 32.247272, 35.270550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023702, -0.957155, 0.288605,
		0.957243, 0.104984, 0.269563,
		-0.288312, 0.269876, 0.918718,
		28.035566, 32.328236, 35.546165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704966, 31.912903, 35.318901>,  <28.237385, 32.139320, 34.903061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704966, 31.912903, 35.318901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.409008, 31.974131, 35.580933>,  <28.231434, 32.010868, 35.738152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.409008, 31.974131, 35.580933>,  <28.704966, 31.912903, 35.318901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409008, 31.974131, 35.580933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038419, -0.962566, 0.268309,
		0.671628, 0.223687, 0.706314,
		-0.739892, 0.153068, 0.655080,
		28.187040, 32.020050, 35.777458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894478, 31.602015, 35.955544>,  <28.704966, 31.912903, 35.318901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894478, 31.602015, 35.955544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.496811, 31.643993, 35.965481>,  <28.258211, 31.669182, 35.971443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.496811, 31.643993, 35.965481>,  <28.894478, 31.602015, 35.955544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496811, 31.643993, 35.965481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089444, -0.931035, 0.353798,
		0.060259, 0.349512, 0.934992,
		-0.994167, 0.104949, 0.024842,
		28.198561, 31.675478, 35.972935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630703, 31.270052, 36.580139>,  <28.894478, 31.602015, 35.955544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630703, 31.270052, 36.580139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.314112, 31.285341, 36.336136>,  <28.124157, 31.294514, 36.189735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.314112, 31.285341, 36.336136>,  <28.630703, 31.270052, 36.580139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314112, 31.285341, 36.336136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249013, -0.931620, 0.264719,
		-0.558174, 0.361418, 0.746873,
		-0.791476, 0.038222, -0.610004,
		28.076670, 31.296808, 36.153133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185347, 31.121267, 37.077103>,  <28.630703, 31.270052, 36.580139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185347, 31.121267, 37.077103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.004572, 31.058277, 36.725887>,  <27.896107, 31.020483, 36.515156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.004572, 31.058277, 36.725887>,  <28.185347, 31.121267, 37.077103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004572, 31.058277, 36.725887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271123, -0.913483, 0.303382,
		-0.849852, 0.375166, 0.370139,
		-0.451935, -0.157477, -0.878041,
		27.868992, 31.011034, 36.462475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488066, 30.843746, 37.209316>,  <28.185347, 31.121267, 37.077103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488066, 30.843746, 37.209316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.579069, 30.737532, 36.834568>,  <27.633671, 30.673803, 36.609718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.579069, 30.737532, 36.834568>,  <27.488066, 30.843746, 37.209316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579069, 30.737532, 36.834568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123558, -0.962198, 0.242711,
		-0.965905, 0.060539, -0.251720,
		0.227511, -0.265537, -0.936872,
		27.647322, 30.657871, 36.553505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144936, 30.280313, 37.160973>,  <27.488066, 30.843746, 37.209316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144936, 30.280313, 37.160973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.353586, 30.223173, 36.824520>,  <27.478777, 30.188889, 36.622650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.353586, 30.223173, 36.824520>,  <27.144936, 30.280313, 37.160973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353586, 30.223173, 36.824520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209039, -0.977232, 0.036331,
		-0.827170, 0.156878, -0.539611,
		0.521626, -0.142852, -0.841130,
		27.510075, 30.180317, 36.572182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696663, 30.012711, 36.651875>,  <27.144936, 30.280313, 37.160973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696663, 30.012711, 36.651875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065104, 29.888510, 36.557930>,  <27.286167, 29.813990, 36.501564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065104, 29.888510, 36.557930>,  <26.696663, 30.012711, 36.651875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065104, 29.888510, 36.557930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291882, -0.949969, 0.111187,
		-0.257639, -0.033861, -0.965648,
		0.921101, -0.310502, -0.234865,
		27.341434, 29.795359, 36.487469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.618547, 29.635317, 36.129166>,  <26.696663, 30.012711, 36.651875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.618547, 29.635317, 36.129166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.981138, 29.511936, 36.244514>,  <27.198692, 29.437908, 36.313725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.981138, 29.511936, 36.244514>,  <26.618547, 29.635317, 36.129166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981138, 29.511936, 36.244514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303455, -0.950756, -0.063074,
		0.293624, -0.030332, -0.955440,
		0.906477, -0.308453, 0.288369,
		27.253080, 29.419401, 36.331024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851904, 29.174360, 35.550880>,  <26.618547, 29.635317, 36.129166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851904, 29.174360, 35.550880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.058979, 29.093313, 35.883373>,  <27.183224, 29.044685, 36.082870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.058979, 29.093313, 35.883373>,  <26.851904, 29.174360, 35.550880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058979, 29.093313, 35.883373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414463, -0.909335, 0.036469,
		0.748479, -0.363394, -0.554729,
		0.517687, -0.202618, 0.831232,
		27.214285, 29.032528, 36.132744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131645, 28.558395, 35.450203>,  <26.851904, 29.174360, 35.550880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131645, 28.558395, 35.450203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.185970, 28.590170, 35.845222>,  <27.218565, 28.609234, 36.082233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.185970, 28.590170, 35.845222>,  <27.131645, 28.558395, 35.450203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185970, 28.590170, 35.845222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279323, -0.953275, 0.115092,
		0.950544, -0.291475, -0.107277,
		0.135811, 0.079435, 0.987545,
		27.226713, 28.614000, 36.141487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542336, 27.947666, 35.658146>,  <27.131645, 28.558395, 35.450203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542336, 27.947666, 35.658146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.360762, 28.072971, 35.991806>,  <27.251818, 28.148153, 36.192001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.360762, 28.072971, 35.991806>,  <27.542336, 27.947666, 35.658146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360762, 28.072971, 35.991806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080236, -0.946729, 0.311876,
		0.887415, 0.074643, 0.454889,
		-0.453936, 0.313262, 0.834152,
		27.224581, 28.166950, 36.242050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854597, 27.581875, 36.234550>,  <27.542336, 27.947666, 35.658146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854597, 27.581875, 36.234550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.481932, 27.692043, 36.329330>,  <27.258333, 27.758144, 36.386200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.481932, 27.692043, 36.329330>,  <27.854597, 27.581875, 36.234550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481932, 27.692043, 36.329330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192104, -0.926987, 0.322166,
		0.308380, 0.254631, 0.916550,
		-0.931664, 0.275423, 0.236949,
		27.202433, 27.774670, 36.400414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869591, 27.536579, 36.965916>,  <27.854597, 27.581875, 36.234550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869591, 27.536579, 36.965916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.504452, 27.483166, 36.811577>,  <27.285368, 27.451117, 36.718971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.504452, 27.483166, 36.811577>,  <27.869591, 27.536579, 36.965916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504452, 27.483166, 36.811577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101099, -0.841657, 0.530464,
		-0.395588, 0.523242, 0.754803,
		-0.912847, -0.133535, -0.385849,
		27.230598, 27.443106, 36.695824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563301, 27.108294, 37.361652>,  <27.869591, 27.536579, 36.965916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563301, 27.108294, 37.361652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.240496, 27.083158, 37.126781>,  <27.046812, 27.068077, 36.985859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.240496, 27.083158, 37.126781>,  <27.563301, 27.108294, 37.361652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240496, 27.083158, 37.126781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275019, -0.839921, 0.467866,
		-0.522585, 0.539059, 0.660545,
		-0.807013, -0.062837, -0.587181,
		26.998392, 27.064308, 36.950626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053511, 27.124409, 37.823570>,  <27.563301, 27.108294, 37.361652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053511, 27.124409, 37.823570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.919811, 26.931925, 37.499420>,  <26.839592, 26.816435, 37.304928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.919811, 26.931925, 37.499420>,  <27.053511, 27.124409, 37.823570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919811, 26.931925, 37.499420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388710, -0.712912, 0.583662,
		-0.858593, 0.510091, 0.051240,
		-0.334250, -0.481210, -0.810379,
		26.819536, 26.787561, 37.256306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417545, 26.792604, 37.985264>,  <27.053511, 27.124409, 37.823570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417545, 26.792604, 37.985264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.515226, 26.610029, 37.643028>,  <26.573835, 26.500484, 37.437687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.515226, 26.610029, 37.643028>,  <26.417545, 26.792604, 37.985264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515226, 26.610029, 37.643028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457514, -0.832159, 0.313357,
		-0.855013, 0.314921, -0.412040,
		0.244200, -0.456439, -0.855588,
		26.588488, 26.473097, 37.386353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858273, 26.437771, 37.936821>,  <26.417545, 26.792604, 37.985264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858273, 26.437771, 37.936821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.121378, 26.242245, 37.707592>,  <26.279242, 26.124929, 37.570057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.121378, 26.242245, 37.707592>,  <25.858273, 26.437771, 37.936821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121378, 26.242245, 37.707592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209461, -0.849515, 0.484200,
		-0.723516, -0.198453, -0.661166,
		0.657762, -0.488816, -0.573070,
		26.318707, 26.095600, 37.535671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.283913, 34.822155, 46.916092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.967686, 34.582394, 46.865944>,  <38.777950, 34.438538, 46.835854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.967686, 34.582394, 46.865944>,  <39.283913, 34.822155, 46.916092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967686, 34.582394, 46.865944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462802, 0.450748, 0.763309,
		-0.401022, 0.661467, -0.633752,
		-0.790567, -0.599406, -0.125368,
		38.730515, 34.402573, 46.828335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620358, 35.219795, 46.988548>,  <39.283913, 34.822155, 46.916092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620358, 35.219795, 46.988548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513298, 34.844833, 47.077667>,  <38.449062, 34.619858, 47.131138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.513298, 34.844833, 47.077667>,  <38.620358, 35.219795, 46.988548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513298, 34.844833, 47.077667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609910, 0.343840, 0.713992,
		-0.745906, 0.055210, -0.663759,
		-0.267646, -0.937404, 0.222799,
		38.433002, 34.563614, 47.144508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954739, 35.312798, 47.357483>,  <38.620358, 35.219795, 46.988548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954739, 35.312798, 47.357483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.097092, 34.946655, 47.432808>,  <38.182503, 34.726971, 47.478004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.097092, 34.946655, 47.432808>,  <37.954739, 35.312798, 47.357483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097092, 34.946655, 47.432808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286532, 0.084921, 0.954299,
		-0.889519, -0.393579, -0.232058,
		0.355885, -0.915360, 0.188312,
		38.203857, 34.672047, 47.489300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382843, 34.934509, 47.596172>,  <37.954739, 35.312798, 47.357483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382843, 34.934509, 47.596172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.717484, 34.746983, 47.709526>,  <37.918266, 34.634464, 47.777538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.717484, 34.746983, 47.709526>,  <37.382843, 34.934509, 47.596172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717484, 34.746983, 47.709526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319873, 0.001900, 0.947459,
		-0.444726, -0.883291, -0.148373,
		0.836600, -0.468820, 0.283386,
		37.968464, 34.606339, 47.794540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211472, 34.382736, 48.021973>,  <37.382843, 34.934509, 47.596172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211472, 34.382736, 48.021973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.597073, 34.425373, 48.119415>,  <37.828434, 34.450954, 48.177879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.597073, 34.425373, 48.119415>,  <37.211472, 34.382736, 48.021973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597073, 34.425373, 48.119415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243108, -0.017844, 0.969835,
		0.107722, -0.994143, 0.008711,
		0.963999, 0.106590, 0.243607,
		37.886272, 34.457352, 48.192497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313705, 33.855282, 48.625694>,  <37.211472, 34.382736, 48.021973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313705, 33.855282, 48.625694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.600681, 34.133106, 48.647129>,  <37.772865, 34.299801, 48.659988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.600681, 34.133106, 48.647129>,  <37.313705, 33.855282, 48.625694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600681, 34.133106, 48.647129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034188, -0.041727, 0.998544,
		0.695785, -0.718223, -0.006191,
		0.717436, 0.694561, 0.053588,
		37.815910, 34.341473, 48.663204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660496, 33.679951, 49.206551>,  <37.313705, 33.855282, 48.625694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660496, 33.679951, 49.206551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.781773, 34.058784, 49.164387>,  <37.854538, 34.286083, 49.139088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.781773, 34.058784, 49.164387>,  <37.660496, 33.679951, 49.206551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781773, 34.058784, 49.164387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081297, 0.135918, 0.987379,
		0.949456, -0.290795, 0.118204,
		0.303191, 0.947082, -0.105407,
		37.872730, 34.342911, 49.132763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334431, 33.874245, 49.550720>,  <37.660496, 33.679951, 49.206551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334431, 33.874245, 49.550720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.119411, 34.208721, 49.507240>,  <37.990398, 34.409409, 49.481152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.119411, 34.208721, 49.507240>,  <38.334431, 33.874245, 49.550720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119411, 34.208721, 49.507240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093551, 0.187256, 0.977846,
		0.838025, 0.515475, -0.178887,
		-0.537553, 0.836194, -0.108702,
		37.958145, 34.459579, 49.474628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560936, 34.178242, 50.095558>,  <38.334431, 33.874245, 49.550720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560936, 34.178242, 50.095558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247200, 34.415939, 50.024345>,  <38.058960, 34.558556, 49.981617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247200, 34.415939, 50.024345>,  <38.560936, 34.178242, 50.095558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247200, 34.415939, 50.024345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153030, 0.092779, 0.983857,
		0.601165, 0.798919, 0.018167,
		-0.784336, 0.594240, -0.178033,
		38.011898, 34.594212, 49.970936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639721, 34.755962, 50.568516>,  <38.560936, 34.178242, 50.095558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639721, 34.755962, 50.568516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.252567, 34.774475, 50.469681>,  <38.020275, 34.785583, 50.410381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.252567, 34.774475, 50.469681>,  <38.639721, 34.755962, 50.568516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252567, 34.774475, 50.469681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231644, 0.217604, 0.948151,
		0.097648, 0.974939, -0.199896,
		-0.967887, 0.046280, -0.247088,
		37.962200, 34.788361, 50.395554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346581, 35.386826, 50.819138>,  <38.639721, 34.755962, 50.568516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346581, 35.386826, 50.819138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.042095, 35.128208, 50.799000>,  <37.859406, 34.973038, 50.786919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.042095, 35.128208, 50.799000>,  <38.346581, 35.386826, 50.819138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042095, 35.128208, 50.799000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161475, 0.113783, 0.980295,
		-0.628079, 0.754341, -0.191014,
		-0.761211, -0.646547, -0.050343,
		37.813732, 34.934242, 50.783897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778015, 35.743763, 51.209133>,  <38.346581, 35.386826, 50.819138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778015, 35.743763, 51.209133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.685181, 35.354816, 51.199036>,  <37.629482, 35.121449, 51.192978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.685181, 35.354816, 51.199036>,  <37.778015, 35.743763, 51.209133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685181, 35.354816, 51.199036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196099, 0.021352, 0.980352,
		-0.952724, 0.232474, -0.195636,
		-0.232084, -0.972368, -0.025246,
		37.615555, 35.063107, 51.191463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128933, 35.624813, 51.467663>,  <37.778015, 35.743763, 51.209133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128933, 35.624813, 51.467663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344868, 35.294262, 51.531750>,  <37.474430, 35.095932, 51.570202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344868, 35.294262, 51.531750>,  <37.128933, 35.624813, 51.467663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344868, 35.294262, 51.531750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117935, 0.114210, 0.986431,
		-0.833465, -0.551411, -0.035804,
		0.539840, -0.826379, 0.160221,
		37.506821, 35.046349, 51.579815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795856, 35.134037, 52.014244>,  <37.128933, 35.624813, 51.467663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795856, 35.134037, 52.014244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192696, 35.084438, 52.021946>,  <37.430798, 35.054680, 52.026566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192696, 35.084438, 52.021946>,  <36.795856, 35.134037, 52.014244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192696, 35.084438, 52.021946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021037, -0.013076, 0.999693,
		-0.123710, -0.992196, -0.015581,
		0.992095, -0.124000, 0.019255,
		37.490326, 35.047237, 52.027721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163704, 35.320568, 52.070053>,  <36.795856, 35.134037, 52.014244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163704, 35.320568, 52.070053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.766449, 35.327740, 52.023808>,  <35.528095, 35.332043, 51.996059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.766449, 35.327740, 52.023808>,  <36.163704, 35.320568, 52.070053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766449, 35.327740, 52.023808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113160, 0.398084, -0.910343,
		0.029696, -0.917174, -0.397379,
		-0.993133, 0.017934, -0.115609,
		35.468510, 35.333118, 51.989124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935223, 34.909714, 51.490547>,  <36.163704, 35.320568, 52.070053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935223, 34.909714, 51.490547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.636021, 35.170723, 51.539032>,  <35.456497, 35.327328, 51.568123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.636021, 35.170723, 51.539032>,  <35.935223, 34.909714, 51.490547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636021, 35.170723, 51.539032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013516, 0.167624, -0.985758,
		-0.663551, -0.738995, -0.116565,
		-0.748009, 0.652525, 0.121215,
		35.411617, 35.366482, 51.575397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393108, 34.694408, 51.100155>,  <35.935223, 34.909714, 51.490547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393108, 34.694408, 51.100155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324726, 35.086014, 51.144520>,  <35.283695, 35.320976, 51.171139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324726, 35.086014, 51.144520>,  <35.393108, 34.694408, 51.100155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324726, 35.086014, 51.144520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024426, 0.108327, -0.993815,
		-0.984975, -0.172611, 0.005394,
		-0.170959, 0.979015, 0.110915,
		35.273438, 35.379719, 51.177795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924282, 34.770103, 50.601891>,  <35.393108, 34.694408, 51.100155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924282, 34.770103, 50.601891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060490, 35.136475, 50.686863>,  <35.142212, 35.356297, 50.737846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060490, 35.136475, 50.686863>,  <34.924282, 34.770103, 50.601891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060490, 35.136475, 50.686863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185481, 0.286932, -0.939823,
		-0.921762, 0.280622, 0.267592,
		0.340516, 0.915926, 0.212434,
		35.162643, 35.411251, 50.750591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435856, 35.160683, 50.377331>,  <34.924282, 34.770103, 50.601891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435856, 35.160683, 50.377331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.731060, 35.429199, 50.404751>,  <34.908184, 35.590309, 50.421204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.731060, 35.429199, 50.404751>,  <34.435856, 35.160683, 50.377331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731060, 35.429199, 50.404751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247921, 0.364234, -0.897702,
		-0.627592, 0.645520, 0.435238,
		0.738013, 0.671295, 0.068552,
		34.952465, 35.630589, 50.425316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144726, 35.923309, 50.221420>,  <34.435856, 35.160683, 50.377331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144726, 35.923309, 50.221420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535736, 35.908993, 50.138313>,  <34.770340, 35.900402, 50.088448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.535736, 35.908993, 50.138313>,  <34.144726, 35.923309, 50.221420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535736, 35.908993, 50.138313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176563, 0.399567, -0.899539,
		0.115214, 0.916005, 0.384267,
		0.977523, -0.035792, -0.207768,
		34.828995, 35.898254, 50.075981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222115, 36.492699, 49.837475>,  <34.144726, 35.923309, 50.221420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222115, 36.492699, 49.837475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533035, 36.254787, 49.755466>,  <34.719589, 36.112041, 49.706261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533035, 36.254787, 49.755466>,  <34.222115, 36.492699, 49.837475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533035, 36.254787, 49.755466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025313, 0.355192, -0.934450,
		0.628618, 0.721161, 0.291148,
		0.777302, -0.594782, -0.205025,
		34.766228, 36.076351, 49.693958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744675, 36.872181, 49.344814>,  <34.222115, 36.492699, 49.837475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744675, 36.872181, 49.344814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814335, 36.481232, 49.296783>,  <34.856129, 36.246662, 49.267963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814335, 36.481232, 49.296783>,  <34.744675, 36.872181, 49.344814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814335, 36.481232, 49.296783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018219, 0.125117, -0.991975,
		0.984551, 0.170564, 0.039596,
		0.174149, -0.977371, -0.120076,
		34.866581, 36.188019, 49.260761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266949, 36.822449, 48.770607>,  <34.744675, 36.872181, 49.344814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266949, 36.822449, 48.770607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108742, 36.460258, 48.832157>,  <35.013817, 36.242943, 48.869087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108742, 36.460258, 48.832157>,  <35.266949, 36.822449, 48.770607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108742, 36.460258, 48.832157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106956, -0.120987, -0.986875,
		0.912211, -0.406782, -0.048994,
		-0.395516, -0.905478, 0.153873,
		34.990086, 36.188614, 48.878319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638157, 36.403900, 48.355606>,  <35.266949, 36.822449, 48.770607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638157, 36.403900, 48.355606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300098, 36.195335, 48.402691>,  <35.097263, 36.070198, 48.430943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300098, 36.195335, 48.402691>,  <35.638157, 36.403900, 48.355606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300098, 36.195335, 48.402691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008802, -0.233763, -0.972254,
		0.534457, -0.820664, 0.202154,
		-0.845150, -0.521408, 0.117713,
		35.046555, 36.038914, 48.438004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729259, 35.806767, 47.976051>,  <35.638157, 36.403900, 48.355606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729259, 35.806767, 47.976051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.335251, 35.866371, 48.010738>,  <35.098846, 35.902134, 48.031551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.335251, 35.866371, 48.010738>,  <35.729259, 35.806767, 47.976051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335251, 35.866371, 48.010738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125802, -0.277298, -0.952512,
		-0.117890, -0.949158, 0.291892,
		-0.985025, 0.149012, 0.086715,
		35.039742, 35.911076, 48.036755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461891, 35.208004, 47.755356>,  <35.729259, 35.806767, 47.976051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461891, 35.208004, 47.755356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.149540, 35.453560, 47.709110>,  <34.962128, 35.600895, 47.681362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.149540, 35.453560, 47.709110>,  <35.461891, 35.208004, 47.755356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149540, 35.453560, 47.709110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192434, -0.412473, -0.890413,
		-0.594305, -0.673055, 0.440225,
		-0.780878, 0.613891, -0.115616,
		34.915276, 35.637726, 47.674427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991104, 34.839840, 47.354034>,  <35.461891, 35.208004, 47.755356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991104, 34.839840, 47.354034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.819077, 35.200565, 47.337177>,  <34.715862, 35.417000, 47.327061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.819077, 35.200565, 47.337177>,  <34.991104, 34.839840, 47.354034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819077, 35.200565, 47.337177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356173, -0.212381, -0.909964,
		-0.829570, -0.376332, 0.412539,
		-0.430064, 0.901814, -0.042145,
		34.690056, 35.471111, 47.324535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161972, 34.795681, 47.098709>,  <34.991104, 34.839840, 47.354034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161972, 34.795681, 47.098709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.336014, 35.143562, 47.005497>,  <34.440437, 35.352291, 46.949570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.336014, 35.143562, 47.005497>,  <34.161972, 34.795681, 47.098709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336014, 35.143562, 47.005497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072910, -0.223930, -0.971874,
		-0.897425, 0.439853, -0.034022,
		0.435100, 0.869704, -0.233029,
		34.466545, 35.404472, 46.935589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697914, 35.396198, 47.008503>,  <34.161972, 34.795681, 47.098709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697914, 35.396198, 47.008503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.363823, 35.416138, 46.789444>,  <33.163368, 35.428101, 46.658009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.363823, 35.416138, 46.789444>,  <33.697914, 35.396198, 47.008503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363823, 35.416138, 46.789444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546155, 0.040968, 0.836682,
		0.064146, 0.997916, -0.006991,
		-0.835225, 0.049851, -0.547645,
		33.113255, 35.431091, 46.625149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406593, 35.910370, 47.330898>,  <33.697914, 35.396198, 47.008503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406593, 35.910370, 47.330898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114429, 35.696484, 47.160915>,  <32.939133, 35.568153, 47.058926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114429, 35.696484, 47.160915>,  <33.406593, 35.910370, 47.330898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114429, 35.696484, 47.160915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583997, 0.166272, 0.794545,
		-0.354198, 0.828512, -0.433719,
		-0.730405, -0.534717, -0.424955,
		32.895309, 35.536068, 47.033428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855408, 36.317059, 47.329487>,  <33.406593, 35.910370, 47.330898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855408, 36.317059, 47.329487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712624, 35.943626, 47.316818>,  <32.626953, 35.719566, 47.309216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712624, 35.943626, 47.316818>,  <32.855408, 36.317059, 47.329487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712624, 35.943626, 47.316818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650195, 0.223977, 0.726004,
		-0.670690, 0.279747, -0.686961,
		-0.356961, -0.933582, -0.031671,
		32.605534, 35.663551, 47.307316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067120, 36.315205, 47.408150>,  <32.855408, 36.317059, 47.329487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067120, 36.315205, 47.408150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.161430, 35.930645, 47.464893>,  <32.218018, 35.699909, 47.498940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.161430, 35.930645, 47.464893>,  <32.067120, 36.315205, 47.408150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161430, 35.930645, 47.464893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623190, -0.037562, 0.781168,
		-0.745685, -0.272585, -0.607989,
		0.235772, -0.961398, 0.141863,
		32.232162, 35.642227, 47.507454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465578, 35.986687, 47.521633>,  <32.067120, 36.315205, 47.408150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465578, 35.986687, 47.521633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.732550, 35.728008, 47.669319>,  <31.892733, 35.572800, 47.757931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.732550, 35.728008, 47.669319>,  <31.465578, 35.986687, 47.521633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732550, 35.728008, 47.669319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588161, -0.153699, 0.794004,
		-0.456734, -0.747099, -0.482947,
		0.667429, -0.646699, 0.369215,
		31.932777, 35.534000, 47.780083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099939, 35.348618, 47.855522>,  <31.465578, 35.986687, 47.521633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099939, 35.348618, 47.855522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.462542, 35.390640, 48.019089>,  <31.680103, 35.415855, 48.117229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.462542, 35.390640, 48.019089>,  <31.099939, 35.348618, 47.855522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462542, 35.390640, 48.019089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420097, 0.128022, 0.898404,
		0.042032, -0.986192, 0.160186,
		0.906505, 0.105055, 0.408915,
		31.734493, 35.422157, 48.141762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042480, 34.907665, 48.482044>,  <31.099939, 35.348618, 47.855522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042480, 34.907665, 48.482044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.370699, 35.121162, 48.563847>,  <31.567631, 35.249260, 48.612926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.370699, 35.121162, 48.563847>,  <31.042480, 34.907665, 48.482044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370699, 35.121162, 48.563847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279063, 0.061851, 0.958279,
		0.498826, -0.843382, 0.199700,
		0.820547, 0.533743, 0.204503,
		31.616863, 35.281284, 48.625198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385193, 34.352875, 48.541229>,  <31.042480, 34.907665, 48.482044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385193, 34.352875, 48.541229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208361, 34.006874, 48.446289>,  <31.102261, 33.799274, 48.389324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208361, 34.006874, 48.446289>,  <31.385193, 34.352875, 48.541229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208361, 34.006874, 48.446289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229591, 0.146671, -0.962172,
		0.867094, -0.479852, 0.133756,
		-0.442082, -0.865003, -0.237347,
		31.075735, 33.747372, 48.375084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820869, 34.126568, 47.984863>,  <31.385193, 34.352875, 48.541229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820869, 34.126568, 47.984863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.477747, 33.921677, 47.967968>,  <31.271873, 33.798740, 47.957829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.477747, 33.921677, 47.967968>,  <31.820869, 34.126568, 47.984863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477747, 33.921677, 47.967968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102584, -0.090099, -0.990636,
		0.503629, -0.854108, 0.129834,
		-0.857808, -0.512232, -0.042241,
		31.220404, 33.768005, 47.955296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999783, 33.572563, 47.554756>,  <31.820869, 34.126568, 47.984863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999783, 33.572563, 47.554756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.602257, 33.615589, 47.543690>,  <31.363741, 33.641403, 47.537052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.602257, 33.615589, 47.543690>,  <31.999783, 33.572563, 47.554756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602257, 33.615589, 47.543690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006865, -0.189101, -0.981934,
		-0.110850, -0.976049, 0.187192,
		-0.993813, 0.107562, -0.027662,
		31.304113, 33.647858, 47.535389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768629, 33.019424, 47.094162>,  <31.999783, 33.572563, 47.554756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768629, 33.019424, 47.094162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.472868, 33.288700, 47.098110>,  <31.295410, 33.450264, 47.100479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.472868, 33.288700, 47.098110>,  <31.768629, 33.019424, 47.094162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472868, 33.288700, 47.098110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301894, -0.318408, -0.898597,
		-0.601782, -0.667407, 0.438664,
		-0.739404, 0.673189, 0.009874,
		31.251047, 33.490658, 47.101074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167488, 32.639622, 46.769596>,  <31.768629, 33.019424, 47.094162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167488, 32.639622, 46.769596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.053127, 33.022835, 46.761250>,  <30.984510, 33.252762, 46.756241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.053127, 33.022835, 46.761250>,  <31.167488, 32.639622, 46.769596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053127, 33.022835, 46.761250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385704, -0.134987, -0.912694,
		-0.877207, -0.252893, 0.408110,
		-0.285904, 0.958031, -0.020869,
		30.967356, 33.310246, 46.754990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487667, 32.700809, 46.369362>,  <31.167488, 32.639622, 46.769596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487667, 32.700809, 46.369362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.664120, 33.059025, 46.345963>,  <30.769991, 33.273952, 46.331924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.664120, 33.059025, 46.345963>,  <30.487667, 32.700809, 46.369362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664120, 33.059025, 46.345963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216294, 0.042828, -0.975388,
		-0.870988, 0.442927, 0.212592,
		0.441130, 0.895534, -0.058500,
		30.796459, 33.327686, 46.328411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010267, 33.146084, 46.104141>,  <30.487667, 32.700809, 46.369362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010267, 33.146084, 46.104141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.378393, 33.284981, 46.032097>,  <30.599270, 33.368320, 45.988869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.378393, 33.284981, 46.032097>,  <30.010267, 33.146084, 46.104141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378393, 33.284981, 46.032097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173306, -0.050846, -0.983554,
		-0.350688, 0.936396, 0.013384,
		0.920316, 0.347241, -0.180115,
		30.654488, 33.389153, 45.978062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.233040, 31.927755, 50.761219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.490810, 32.230133, 50.715160>,  <35.645473, 32.411560, 50.687527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.490810, 32.230133, 50.715160>,  <35.233040, 31.927755, 50.761219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490810, 32.230133, 50.715160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187835, -0.302465, -0.934469,
		-0.741235, 0.580570, -0.336910,
		0.644429, 0.755945, -0.115146,
		35.684139, 32.456917, 50.680618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067303, 32.309490, 50.229427>,  <35.233040, 31.927755, 50.761219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067303, 32.309490, 50.229427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.446095, 32.436779, 50.247189>,  <35.673370, 32.513153, 50.257843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.446095, 32.436779, 50.247189>,  <35.067303, 32.309490, 50.229427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446095, 32.436779, 50.247189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106544, -0.180633, -0.977763,
		-0.303124, 0.930649, -0.204959,
		0.946976, 0.318220, 0.044401,
		35.730186, 32.532246, 50.260509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155823, 32.786289, 49.796871>,  <35.067303, 32.309490, 50.229427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155823, 32.786289, 49.796871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.535522, 32.679642, 49.863609>,  <35.763344, 32.615654, 49.903652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.535522, 32.679642, 49.863609>,  <35.155823, 32.786289, 49.796871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535522, 32.679642, 49.863609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174703, 0.005866, -0.984604,
		0.261530, 0.963785, 0.052147,
		0.949253, -0.266614, 0.166842,
		35.820297, 32.599659, 49.913662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535751, 33.055248, 49.218914>,  <35.155823, 32.786289, 49.796871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535751, 33.055248, 49.218914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.801529, 32.789867, 49.356522>,  <35.960995, 32.630638, 49.439087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.801529, 32.789867, 49.356522>,  <35.535751, 33.055248, 49.218914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801529, 32.789867, 49.356522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391246, -0.083399, -0.916500,
		0.636746, 0.743554, 0.204160,
		0.664440, -0.663454, 0.344016,
		36.000862, 32.590832, 49.459728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211361, 33.186584, 48.998852>,  <35.535751, 33.055248, 49.218914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211361, 33.186584, 48.998852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.232147, 32.797428, 49.088989>,  <36.244617, 32.563934, 49.143074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.232147, 32.797428, 49.088989>,  <36.211361, 33.186584, 48.998852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232147, 32.797428, 49.088989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447139, -0.179105, -0.876349,
		0.892954, 0.146299, 0.425711,
		0.051962, -0.972892, 0.225348,
		36.247734, 32.505562, 49.156593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864529, 32.918812, 48.792103>,  <36.211361, 33.186584, 48.998852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864529, 32.918812, 48.792103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.652241, 32.580189, 48.808517>,  <36.524868, 32.377014, 48.818367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.652241, 32.580189, 48.808517>,  <36.864529, 32.918812, 48.792103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652241, 32.580189, 48.808517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424115, -0.307184, -0.851918,
		0.733803, -0.434720, 0.522065,
		-0.530716, -0.846555, 0.041041,
		36.493027, 32.326221, 48.820831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336655, 32.356373, 48.434246>,  <36.864529, 32.918812, 48.792103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336655, 32.356373, 48.434246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.970299, 32.197834, 48.459736>,  <36.750484, 32.102711, 48.475029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.970299, 32.197834, 48.459736>,  <37.336655, 32.356373, 48.434246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970299, 32.197834, 48.459736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149103, -0.483242, -0.862697,
		0.372723, -0.780631, 0.501691,
		-0.915886, -0.396351, 0.063721,
		36.695534, 32.078930, 48.478851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406467, 31.721125, 48.235691>,  <37.336655, 32.356373, 48.434246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406467, 31.721125, 48.235691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.016678, 31.776339, 48.164867>,  <36.782803, 31.809467, 48.122372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.016678, 31.776339, 48.164867>,  <37.406467, 31.721125, 48.235691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016678, 31.776339, 48.164867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084707, -0.504306, -0.859360,
		-0.207913, -0.852421, 0.479740,
		-0.974473, 0.138035, -0.177058,
		36.724335, 31.817749, 48.111752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133602, 31.115932, 47.948517>,  <37.406467, 31.721125, 48.235691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133602, 31.115932, 47.948517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.874809, 31.400345, 47.838352>,  <36.719536, 31.570993, 47.772251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.874809, 31.400345, 47.838352>,  <37.133602, 31.115932, 47.948517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874809, 31.400345, 47.838352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018988, -0.376107, -0.926382,
		-0.762273, -0.594118, 0.256834,
		-0.646977, 0.711032, -0.275415,
		36.680717, 31.613655, 47.755730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641899, 30.782234, 47.608807>,  <37.133602, 31.115932, 47.948517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641899, 30.782234, 47.608807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.590698, 31.159163, 47.485100>,  <36.559978, 31.385319, 47.410877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.590698, 31.159163, 47.485100>,  <36.641899, 30.782234, 47.608807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590698, 31.159163, 47.485100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017219, -0.313898, -0.949300,
		-0.991624, -0.116191, 0.056407,
		-0.128007, 0.942320, -0.309268,
		36.552296, 31.441858, 47.392319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210629, 30.699993, 47.103828>,  <36.641899, 30.782234, 47.608807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210629, 30.699993, 47.103828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.307888, 31.084162, 47.049469>,  <36.366241, 31.314663, 47.016853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.307888, 31.084162, 47.049469>,  <36.210629, 30.699993, 47.103828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307888, 31.084162, 47.049469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129013, -0.106839, -0.985871,
		-0.961372, 0.257244, 0.097930,
		0.243146, 0.960422, -0.135900,
		36.380833, 31.372288, 47.008698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626740, 31.046116, 46.783772>,  <36.210629, 30.699993, 47.103828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626740, 31.046116, 46.783772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.950855, 31.259836, 46.687469>,  <36.145325, 31.388069, 46.629688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.950855, 31.259836, 46.687469>,  <35.626740, 31.046116, 46.783772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950855, 31.259836, 46.687469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087584, -0.295790, -0.951229,
		-0.579454, 0.791853, -0.192878,
		0.810285, 0.534301, -0.240751,
		36.193939, 31.420126, 46.615246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928646, 31.228954, 46.921474>,  <35.626740, 31.046116, 46.783772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928646, 31.228954, 46.921474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.548931, 31.168530, 46.811180>,  <34.321102, 31.132275, 46.745003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.548931, 31.168530, 46.811180>,  <34.928646, 31.228954, 46.921474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548931, 31.168530, 46.811180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297388, 0.146849, 0.943396,
		-0.102022, 0.977556, -0.184326,
		-0.949290, -0.151063, -0.275732,
		34.264145, 31.123211, 46.728462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636074, 31.751314, 47.278648>,  <34.928646, 31.228954, 46.921474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636074, 31.751314, 47.278648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.344147, 31.496164, 47.180271>,  <34.168991, 31.343075, 47.121246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.344147, 31.496164, 47.180271>,  <34.636074, 31.751314, 47.278648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344147, 31.496164, 47.180271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381134, 0.080980, 0.920966,
		-0.567545, 0.765871, -0.302217,
		-0.729815, -0.637874, -0.245940,
		34.125202, 31.304802, 47.106491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084538, 32.124619, 47.529881>,  <34.636074, 31.751314, 47.278648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084538, 32.124619, 47.529881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.967186, 31.742722, 47.510311>,  <33.896774, 31.513582, 47.498569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.967186, 31.742722, 47.510311>,  <34.084538, 32.124619, 47.529881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967186, 31.742722, 47.510311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270608, 0.033854, 0.962094,
		-0.916897, 0.295498, -0.268294,
		-0.293379, -0.954744, -0.048924,
		33.879173, 31.456299, 47.495632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427315, 32.130894, 47.884007>,  <34.084538, 32.124619, 47.529881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427315, 32.130894, 47.884007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.555374, 31.751959, 47.880943>,  <33.632210, 31.524599, 47.879105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.555374, 31.751959, 47.880943>,  <33.427315, 32.130894, 47.884007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555374, 31.751959, 47.880943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440943, -0.156160, 0.883846,
		-0.838495, -0.279587, -0.467715,
		0.320150, -0.947336, -0.007657,
		33.651421, 31.467758, 47.878647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871754, 31.748987, 47.925743>,  <33.427315, 32.130894, 47.884007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871754, 31.748987, 47.925743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.180313, 31.531050, 48.057251>,  <33.365448, 31.400288, 48.136154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.180313, 31.531050, 48.057251>,  <32.871754, 31.748987, 47.925743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180313, 31.531050, 48.057251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427492, -0.060991, 0.901959,
		-0.471375, -0.836316, -0.279965,
		0.771399, -0.544844, 0.328769,
		33.411732, 31.367598, 48.155880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564808, 31.234495, 48.172539>,  <32.871754, 31.748987, 47.925743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564808, 31.234495, 48.172539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.918327, 31.228346, 48.359585>,  <33.130440, 31.224657, 48.471813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.918327, 31.228346, 48.359585>,  <32.564808, 31.234495, 48.172539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918327, 31.228346, 48.359585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466998, -0.090051, 0.879661,
		0.028589, -0.995819, -0.086764,
		0.883796, -0.015370, 0.467620,
		33.183468, 31.223734, 48.499870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551407, 30.646118, 48.644299>,  <32.564808, 31.234495, 48.172539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551407, 30.646118, 48.644299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.860821, 30.852224, 48.791893>,  <33.046467, 30.975887, 48.880447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.860821, 30.852224, 48.791893>,  <32.551407, 30.646118, 48.644299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860821, 30.852224, 48.791893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345690, -0.144928, 0.927089,
		0.531174, -0.844687, 0.066016,
		0.773533, 0.515266, 0.368982,
		33.092880, 31.006804, 48.902588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715412, 30.297844, 49.233582>,  <32.551407, 30.646118, 48.644299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715412, 30.297844, 49.233582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.912376, 30.639008, 49.302948>,  <33.030556, 30.843706, 49.344566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.912376, 30.639008, 49.302948>,  <32.715412, 30.297844, 49.233582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912376, 30.639008, 49.302948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197777, -0.084382, 0.976608,
		0.847593, -0.515192, 0.127135,
		0.492412, 0.852911, 0.173414,
		33.060101, 30.894880, 49.354973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283752, 30.160658, 49.750973>,  <32.715412, 30.297844, 49.233582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283752, 30.160658, 49.750973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.148407, 30.537039, 49.755329>,  <33.067200, 30.762867, 49.757942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.148407, 30.537039, 49.755329>,  <33.283752, 30.160658, 49.750973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148407, 30.537039, 49.755329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277302, -0.110761, 0.954377,
		0.899229, 0.319910, 0.298406,
		-0.338366, 0.940952, 0.010887,
		33.046898, 30.819324, 49.758595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355865, 30.318855, 50.531910>,  <33.283752, 30.160658, 49.750973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355865, 30.318855, 50.531910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.153988, 30.625219, 50.372578>,  <33.032864, 30.809038, 50.276978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.153988, 30.625219, 50.372578>,  <33.355865, 30.318855, 50.531910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153988, 30.625219, 50.372578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508037, 0.109558, 0.854339,
		0.697987, 0.633546, 0.333816,
		-0.504691, 0.765909, -0.398335,
		33.002579, 30.854992, 50.253078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559940, 30.934128, 50.853241>,  <33.355865, 30.318855, 50.531910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559940, 30.934128, 50.853241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.191044, 30.962965, 50.701309>,  <32.969707, 30.980267, 50.610149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.191044, 30.962965, 50.701309>,  <33.559940, 30.934128, 50.853241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191044, 30.962965, 50.701309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368804, 0.130691, 0.920274,
		0.115984, 0.988799, -0.093941,
		-0.922242, 0.072091, -0.379831,
		32.914371, 30.984592, 50.587360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329624, 31.547709, 51.158741>,  <33.559940, 30.934128, 50.853241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329624, 31.547709, 51.158741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.978653, 31.403772, 51.031853>,  <32.768070, 31.317411, 50.955719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.978653, 31.403772, 51.031853>,  <33.329624, 31.547709, 51.158741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978653, 31.403772, 51.031853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424789, 0.275621, 0.862315,
		-0.222863, 0.891375, -0.394695,
		-0.877432, -0.359840, -0.317220,
		32.715424, 31.295820, 50.936687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860481, 32.076153, 51.200306>,  <33.329624, 31.547709, 51.158741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860481, 32.076153, 51.200306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.635944, 31.745394, 51.186798>,  <32.501221, 31.546940, 51.178696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.635944, 31.745394, 51.186798>,  <32.860481, 32.076153, 51.200306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635944, 31.745394, 51.186798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422308, 0.251122, 0.870973,
		-0.711723, 0.503174, -0.490169,
		-0.561343, -0.826894, -0.033765,
		32.467541, 31.497326, 51.176670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112099, 32.278183, 51.218300>,  <32.860481, 32.076153, 51.200306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112099, 32.278183, 51.218300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.154968, 31.899406, 51.339500>,  <32.180691, 31.672140, 51.412220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.154968, 31.899406, 51.339500>,  <32.112099, 32.278183, 51.218300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154968, 31.899406, 51.339500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558504, 0.194786, 0.806307,
		-0.822548, -0.255646, -0.507995,
		0.107179, -0.946944, 0.303001,
		32.187122, 31.615324, 51.430401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198296, 32.273727, 50.463913>,  <32.112099, 32.278183, 51.218300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198296, 32.273727, 50.463913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.912832, 32.417686, 50.704300>,  <31.741554, 32.504063, 50.848534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.912832, 32.417686, 50.704300>,  <32.198296, 32.273727, 50.463913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912832, 32.417686, 50.704300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505097, 0.330048, -0.797462,
		-0.485358, -0.872662, -0.053755,
		-0.713656, 0.359902, 0.600970,
		31.698736, 32.525658, 50.884590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513922, 31.893612, 50.319958>,  <32.198296, 32.273727, 50.463913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513922, 31.893612, 50.319958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.465612, 32.267635, 50.453274>,  <31.436626, 32.492050, 50.533264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.465612, 32.267635, 50.453274>,  <31.513922, 31.893612, 50.319958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465612, 32.267635, 50.453274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478602, 0.239300, -0.844794,
		-0.869687, -0.261541, 0.418619,
		-0.120772, 0.935058, 0.333290,
		31.429380, 32.548153, 50.553261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715630, 32.063198, 50.239868>,  <31.513922, 31.893612, 50.319958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715630, 32.063198, 50.239868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.917810, 32.408199, 50.230000>,  <31.039120, 32.615200, 50.224079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.917810, 32.408199, 50.230000>,  <30.715630, 32.063198, 50.239868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917810, 32.408199, 50.230000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611735, 0.338036, -0.715201,
		-0.608520, 0.376596, 0.698484,
		0.505454, 0.862500, -0.024675,
		31.069447, 32.666950, 50.222595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190346, 32.638218, 50.122128>,  <30.715630, 32.063198, 50.239868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190346, 32.638218, 50.122128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.552990, 32.779209, 50.029335>,  <30.770576, 32.863804, 49.973660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.552990, 32.779209, 50.029335>,  <30.190346, 32.638218, 50.122128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552990, 32.779209, 50.029335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393148, 0.505909, -0.767783,
		-0.153265, 0.787284, 0.597239,
		0.906611, 0.352478, -0.231981,
		30.824974, 32.884953, 49.959740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015493, 33.217854, 49.719833>,  <30.190346, 32.638218, 50.122128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015493, 33.217854, 49.719833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.404045, 33.195175, 49.627567>,  <30.637177, 33.181568, 49.572208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.404045, 33.195175, 49.627567>,  <30.015493, 33.217854, 49.719833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404045, 33.195175, 49.627567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192952, 0.378032, -0.905462,
		0.138535, 0.924055, 0.356273,
		0.971379, -0.056695, -0.230668,
		30.695459, 33.178165, 49.558365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221336, 33.886978, 49.420364>,  <30.015493, 33.217854, 49.719833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221336, 33.886978, 49.420364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.517157, 33.642948, 49.306606>,  <30.694649, 33.496532, 49.238350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.517157, 33.642948, 49.306606>,  <30.221336, 33.886978, 49.420364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517157, 33.642948, 49.306606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092799, 0.326067, -0.940781,
		0.666676, 0.722145, 0.184529,
		0.739549, -0.610072, -0.284395,
		30.739021, 33.459927, 49.221287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525854, 34.333431, 48.893887>,  <30.221336, 33.886978, 49.420364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525854, 34.333431, 48.893887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.665756, 33.963821, 48.832119>,  <30.749697, 33.742054, 48.795059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.665756, 33.963821, 48.832119>,  <30.525854, 34.333431, 48.893887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665756, 33.963821, 48.832119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050949, 0.145826, -0.987998,
		0.935455, 0.353425, 0.003925,
		0.349755, -0.924027, -0.154420,
		30.770683, 33.686615, 48.785793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253798, 34.625664, 49.173141>,  <30.525854, 34.333431, 48.893887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253798, 34.625664, 49.173141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.449419, 34.972836, 49.138432>,  <31.566792, 35.181137, 49.117607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.449419, 34.972836, 49.138432>,  <31.253798, 34.625664, 49.173141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449419, 34.972836, 49.138432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079319, 0.054818, 0.995341,
		0.868640, -0.493658, -0.042034,
		0.489054, 0.867927, -0.086773,
		31.596136, 35.233215, 49.112400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850689, 34.594231, 49.522614>,  <31.253798, 34.625664, 49.173141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850689, 34.594231, 49.522614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.750078, 34.981182, 49.510544>,  <31.689713, 35.213352, 49.503300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.750078, 34.981182, 49.510544>,  <31.850689, 34.594231, 49.522614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750078, 34.981182, 49.510544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119998, 0.062108, 0.990830,
		0.960383, 0.245597, -0.131705,
		-0.251525, 0.967380, -0.030177,
		31.674622, 35.271397, 49.501492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433460, 34.952507, 49.865059>,  <31.850689, 34.594231, 49.522614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433460, 34.952507, 49.865059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.099674, 35.172379, 49.880650>,  <31.899403, 35.304302, 49.890003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.099674, 35.172379, 49.880650>,  <32.433460, 34.952507, 49.865059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099674, 35.172379, 49.880650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197955, 0.233010, 0.952114,
		0.514273, 0.802223, -0.303251,
		-0.834468, 0.549677, 0.038973,
		31.849335, 35.337280, 49.892342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522758, 35.459885, 50.448048>,  <32.433460, 34.952507, 49.865059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522758, 35.459885, 50.448048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.127331, 35.468761, 50.388409>,  <31.890074, 35.474087, 50.352627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.127331, 35.468761, 50.388409>,  <32.522758, 35.459885, 50.448048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127331, 35.468761, 50.388409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126186, 0.419241, 0.899063,
		0.082462, 0.907604, -0.411649,
		-0.988573, 0.022194, -0.149099,
		31.830759, 35.475418, 50.343678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312065, 36.137634, 50.590881>,  <32.522758, 35.459885, 50.448048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312065, 36.137634, 50.590881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.964859, 35.942513, 50.627960>,  <31.756535, 35.825439, 50.650208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.964859, 35.942513, 50.627960>,  <32.312065, 36.137634, 50.590881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964859, 35.942513, 50.627960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165515, 0.460267, 0.872215,
		-0.468140, 0.741752, -0.480259,
		-0.868015, -0.487809, 0.092698,
		31.704454, 35.796169, 50.655769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790913, 36.595913, 50.820568>,  <32.312065, 36.137634, 50.590881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790913, 36.595913, 50.820568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.658190, 36.234097, 50.927681>,  <31.578556, 36.017006, 50.991947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.658190, 36.234097, 50.927681>,  <31.790913, 36.595913, 50.820568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658190, 36.234097, 50.927681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372273, 0.386379, 0.843874,
		-0.866784, 0.180318, -0.464941,
		-0.331809, -0.904542, 0.267780,
		31.558647, 35.962734, 51.008015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134157, 36.671944, 51.016823>,  <31.790913, 36.595913, 50.820568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134157, 36.671944, 51.016823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.239956, 36.342358, 51.217270>,  <31.303436, 36.144608, 51.337540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.239956, 36.342358, 51.217270>,  <31.134157, 36.671944, 51.016823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239956, 36.342358, 51.217270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083604, 0.498078, 0.863093,
		-0.960756, -0.270182, 0.062854,
		0.264498, -0.823966, 0.501119,
		31.319305, 36.095169, 51.367607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776363, 36.656586, 51.751820>,  <31.134157, 36.671944, 51.016823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776363, 36.656586, 51.751820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.083292, 36.401279, 51.776573>,  <31.267448, 36.248096, 51.791424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.083292, 36.401279, 51.776573>,  <30.776363, 36.656586, 51.751820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083292, 36.401279, 51.776573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040372, 0.144390, 0.988697,
		-0.639991, -0.756149, 0.136562,
		0.767321, -0.638270, 0.061881,
		31.313488, 36.209797, 51.795139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630190, 36.264500, 52.377937>,  <30.776363, 36.656586, 51.751820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630190, 36.264500, 52.377937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.014229, 36.196358, 52.289223>,  <31.244652, 36.155472, 52.235992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.014229, 36.196358, 52.289223>,  <30.630190, 36.264500, 52.377937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014229, 36.196358, 52.289223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228724, 0.021976, 0.973243,
		-0.160920, -0.985138, 0.060063,
		0.960099, -0.170352, -0.221789,
		31.302259, 36.145252, 52.222687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.668262, 34.245190, 36.425606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939579, 33.958199, 36.489044>,  <35.102367, 33.786003, 36.527107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939579, 33.958199, 36.489044>,  <34.668262, 34.245190, 36.425606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939579, 33.958199, 36.489044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369031, -0.145984, 0.917881,
		-0.635406, -0.681114, -0.363791,
		0.678288, -0.717477, 0.158593,
		35.143066, 33.742954, 36.536621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333336, 33.666271, 36.714851>,  <34.668262, 34.245190, 36.425606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333336, 33.666271, 36.714851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715454, 33.716267, 36.822021>,  <34.944725, 33.746265, 36.886326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715454, 33.716267, 36.822021>,  <34.333336, 33.666271, 36.714851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715454, 33.716267, 36.822021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247601, -0.156991, 0.956058,
		0.161561, -0.979659, -0.119025,
		0.955297, 0.124991, 0.267928,
		35.002045, 33.753765, 36.902401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581150, 33.088444, 37.016373>,  <34.333336, 33.666271, 36.714851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581150, 33.088444, 37.016373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792099, 33.393742, 37.165680>,  <34.918667, 33.576920, 37.255264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792099, 33.393742, 37.165680>,  <34.581150, 33.088444, 37.016373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792099, 33.393742, 37.165680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362099, -0.195526, 0.911402,
		0.768610, -0.615809, 0.173257,
		0.527373, 0.763249, 0.373267,
		34.950310, 33.622715, 37.277660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679832, 32.853504, 37.632481>,  <34.581150, 33.088444, 37.016373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679832, 32.853504, 37.632481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755882, 33.243599, 37.677689>,  <34.801514, 33.477654, 37.704815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755882, 33.243599, 37.677689>,  <34.679832, 32.853504, 37.632481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755882, 33.243599, 37.677689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245182, -0.064305, 0.967342,
		0.950651, -0.211629, 0.226883,
		0.190128, 0.975232, 0.113019,
		34.812920, 33.536167, 37.711594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924671, 32.807693, 38.273087>,  <34.679832, 32.853504, 37.632481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924671, 32.807693, 38.273087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859158, 33.196995, 38.208645>,  <34.819851, 33.430576, 38.169979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859158, 33.196995, 38.208645>,  <34.924671, 32.807693, 38.273087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859158, 33.196995, 38.208645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253935, 0.116210, 0.960215,
		0.953254, 0.198174, 0.228110,
		-0.163781, 0.973253, -0.161100,
		34.810024, 33.488972, 38.160316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317497, 33.107174, 38.852345>,  <34.924671, 32.807693, 38.273087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317497, 33.107174, 38.852345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034683, 33.358219, 38.721992>,  <34.864994, 33.508846, 38.643780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034683, 33.358219, 38.721992>,  <35.317497, 33.107174, 38.852345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034683, 33.358219, 38.721992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268252, 0.188352, 0.944756,
		0.654326, 0.755394, 0.035188,
		-0.707035, 0.627618, -0.325880,
		34.822575, 33.546505, 38.624229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438919, 33.702560, 39.277573>,  <35.317497, 33.107174, 38.852345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438919, 33.702560, 39.277573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067570, 33.693417, 39.129192>,  <34.844761, 33.687931, 39.040165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067570, 33.693417, 39.129192>,  <35.438919, 33.702560, 39.277573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067570, 33.693417, 39.129192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369085, 0.173954, 0.912971,
		0.043656, 0.984488, -0.169932,
		-0.928370, -0.022863, -0.370954,
		34.789059, 33.686558, 39.017906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177742, 34.259029, 39.612122>,  <35.438919, 33.702560, 39.277573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177742, 34.259029, 39.612122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855598, 34.053902, 39.493179>,  <34.662312, 33.930824, 39.421814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855598, 34.053902, 39.493179>,  <35.177742, 34.259029, 39.612122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855598, 34.053902, 39.493179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438519, 0.177858, 0.880947,
		-0.398876, 0.839873, -0.368118,
		-0.805357, -0.512815, -0.297357,
		34.613991, 33.900059, 39.403973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621799, 34.624657, 39.811642>,  <35.177742, 34.259029, 39.612122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621799, 34.624657, 39.811642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453503, 34.272015, 39.726082>,  <34.352524, 34.060429, 39.674747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453503, 34.272015, 39.726082>,  <34.621799, 34.624657, 39.811642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453503, 34.272015, 39.726082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465605, 0.007498, 0.884961,
		-0.778580, 0.471933, -0.413633,
		-0.420744, -0.881603, -0.213896,
		34.327278, 34.007534, 39.661915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927395, 34.783287, 39.867519>,  <34.621799, 34.624657, 39.811642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927395, 34.783287, 39.867519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008034, 34.395451, 39.923035>,  <34.056416, 34.162750, 39.956345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008034, 34.395451, 39.923035>,  <33.927395, 34.783287, 39.867519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008034, 34.395451, 39.923035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535509, 0.009535, 0.844475,
		-0.820116, -0.244562, -0.517301,
		0.201594, -0.969587, 0.138785,
		34.068512, 34.104576, 39.964672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356564, 34.529655, 40.110371>,  <33.927395, 34.783287, 39.867519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356564, 34.529655, 40.110371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614491, 34.238792, 40.204563>,  <33.769245, 34.064274, 40.261078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614491, 34.238792, 40.204563>,  <33.356564, 34.529655, 40.110371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614491, 34.238792, 40.204563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459881, -0.123011, 0.879419,
		-0.610511, -0.675357, -0.413726,
		0.644815, -0.727160, 0.235484,
		33.807934, 34.020645, 40.275208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971081, 33.893234, 40.396572>,  <33.356564, 34.529655, 40.110371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971081, 33.893234, 40.396572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349697, 33.888111, 40.525505>,  <33.576866, 33.885036, 40.602863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349697, 33.888111, 40.525505>,  <32.971081, 33.893234, 40.396572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349697, 33.888111, 40.525505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321151, 0.056738, 0.945327,
		-0.030402, -0.998307, 0.049589,
		0.946540, -0.012815, 0.322333,
		33.633659, 33.884270, 40.622204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756294, 33.134304, 40.146980>,  <32.971081, 33.893234, 40.396572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756294, 33.134304, 40.146980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399750, 32.953575, 40.161564>,  <32.185822, 32.845139, 40.170315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399750, 32.953575, 40.161564>,  <32.756294, 33.134304, 40.146980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399750, 32.953575, 40.161564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092157, -0.259393, -0.961365,
		0.443822, -0.853565, 0.272852,
		-0.891363, -0.451820, 0.036462,
		32.132339, 32.818027, 40.172504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783440, 32.515469, 39.889774>,  <32.756294, 33.134304, 40.146980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783440, 32.515469, 39.889774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392109, 32.582027, 39.840488>,  <32.157310, 32.621964, 39.810917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392109, 32.582027, 39.840488>,  <32.783440, 32.515469, 39.889774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392109, 32.582027, 39.840488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072761, -0.280850, -0.956990,
		-0.193842, -0.945218, 0.262657,
		-0.978331, 0.166394, -0.123216,
		32.098610, 32.631947, 39.803524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704086, 32.165482, 39.372547>,  <32.783440, 32.515469, 39.889774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704086, 32.165482, 39.372547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353214, 32.356876, 39.388588>,  <32.142693, 32.471714, 39.398212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353214, 32.356876, 39.388588>,  <32.704086, 32.165482, 39.372547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353214, 32.356876, 39.388588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113836, -0.126103, -0.985464,
		-0.466471, -0.868995, 0.165084,
		-0.877180, 0.478483, 0.040100,
		32.090061, 32.500420, 39.400620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175354, 31.738998, 39.158104>,  <32.704086, 32.165482, 39.372547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175354, 31.738998, 39.158104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073517, 32.116688, 39.074554>,  <32.012413, 32.343300, 39.024426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073517, 32.116688, 39.074554>,  <32.175354, 31.738998, 39.158104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073517, 32.116688, 39.074554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022673, -0.210103, -0.977416,
		-0.966783, -0.253579, 0.032082,
		-0.254593, 0.944222, -0.208873,
		31.997139, 32.399956, 39.011894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503578, 31.728210, 38.758636>,  <32.175354, 31.738998, 39.158104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503578, 31.728210, 38.758636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693079, 32.076607, 38.706589>,  <31.806780, 32.285645, 38.675358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693079, 32.076607, 38.706589>,  <31.503578, 31.728210, 38.758636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693079, 32.076607, 38.706589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166830, -0.056319, -0.984376,
		-0.864712, 0.488059, 0.118626,
		0.473752, 0.870992, -0.130123,
		31.835205, 32.337906, 38.667553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272173, 31.849316, 38.136173>,  <31.503578, 31.728210, 38.758636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272173, 31.849316, 38.136173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566473, 32.116409, 38.181438>,  <31.743053, 32.276665, 38.208599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566473, 32.116409, 38.181438>,  <31.272173, 31.849316, 38.136173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566473, 32.116409, 38.181438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304696, -0.177135, -0.935833,
		-0.604842, 0.723018, -0.333783,
		0.735749, 0.667733, 0.113162,
		31.787197, 32.316730, 38.215385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310598, 32.199955, 37.495392>,  <31.272173, 31.849316, 38.136173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310598, 32.199955, 37.495392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647799, 32.291454, 37.690132>,  <31.850119, 32.346355, 37.806976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647799, 32.291454, 37.690132>,  <31.310598, 32.199955, 37.495392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647799, 32.291454, 37.690132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516910, -0.094076, -0.850855,
		-0.148833, 0.968929, -0.197549,
		0.843002, 0.228750, 0.486847,
		31.900700, 32.360081, 37.836185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542297, 32.743668, 37.094639>,  <31.310598, 32.199955, 37.495392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542297, 32.743668, 37.094639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822006, 32.536655, 37.291893>,  <31.989832, 32.412449, 37.410248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822006, 32.536655, 37.291893>,  <31.542297, 32.743668, 37.094639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822006, 32.536655, 37.291893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537376, -0.074376, -0.840056,
		0.471431, 0.852427, 0.226099,
		0.699270, -0.517529, 0.493137,
		32.031788, 32.381397, 37.439835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132610, 32.995995, 36.805813>,  <31.542297, 32.743668, 37.094639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132610, 32.995995, 36.805813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236671, 32.653305, 36.983955>,  <32.299107, 32.447689, 37.090839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236671, 32.653305, 36.983955>,  <32.132610, 32.995995, 36.805813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236671, 32.653305, 36.983955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460627, -0.295251, -0.837048,
		0.848613, 0.422901, 0.317821,
		0.260152, -0.856727, 0.445354,
		32.314716, 32.396286, 37.117561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770374, 32.775463, 36.536991>,  <32.132610, 32.995995, 36.805813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770374, 32.775463, 36.536991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649273, 32.430103, 36.698429>,  <32.576614, 32.222889, 36.795292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649273, 32.430103, 36.698429>,  <32.770374, 32.775463, 36.536991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649273, 32.430103, 36.698429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345978, -0.494145, -0.797571,
		0.888055, -0.101829, 0.448318,
		-0.302751, -0.863395, 0.403597,
		32.558449, 32.171085, 36.819508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376999, 32.416218, 36.412270>,  <32.770374, 32.775463, 36.536991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376999, 32.416218, 36.412270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062157, 32.177872, 36.476040>,  <32.873253, 32.034863, 36.514301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062157, 32.177872, 36.476040>,  <33.376999, 32.416218, 36.412270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062157, 32.177872, 36.476040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133327, -0.416707, -0.899210,
		0.602242, -0.686514, 0.407435,
		-0.787102, -0.595864, 0.159428,
		32.826027, 31.999113, 36.523869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681927, 31.703690, 36.316525>,  <33.376999, 32.416218, 36.412270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681927, 31.703690, 36.316525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287441, 31.711790, 36.250828>,  <33.050751, 31.716650, 36.211411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287441, 31.711790, 36.250828>,  <33.681927, 31.703690, 36.316525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287441, 31.711790, 36.250828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156445, -0.209513, -0.965209,
		-0.053960, -0.977596, 0.203456,
		-0.986212, 0.020253, -0.164245,
		32.991577, 31.717867, 36.201553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504452, 31.244043, 35.891582>,  <33.681927, 31.703690, 36.316525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504452, 31.244043, 35.891582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180904, 31.477156, 35.860344>,  <32.986774, 31.617023, 35.841599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180904, 31.477156, 35.860344>,  <33.504452, 31.244043, 35.891582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180904, 31.477156, 35.860344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010319, -0.146871, -0.989102,
		-0.587899, -0.799248, 0.124813,
		-0.808868, 0.582779, -0.078098,
		32.938244, 31.651989, 35.836914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645302, 30.578793, 36.298347>,  <33.504452, 31.244043, 35.891582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645302, 30.578793, 36.298347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930939, 30.497898, 36.030266>,  <34.102322, 30.449362, 35.869419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930939, 30.497898, 36.030266>,  <33.645302, 30.578793, 36.298347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930939, 30.497898, 36.030266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121805, 0.906867, -0.403431,
		0.689372, 0.369721, 0.622955,
		0.714094, -0.202235, -0.670202,
		34.145168, 30.437227, 35.829205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896191, 30.656336, 36.359127>,  <33.645302, 30.578793, 36.298347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896191, 30.656336, 36.359127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595348, 30.392719, 36.358318>,  <32.414845, 30.234550, 36.357834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595348, 30.392719, 36.358318>,  <32.896191, 30.656336, 36.359127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595348, 30.392719, 36.358318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634104, -0.722804, -0.274712,
		0.179582, -0.207897, 0.961525,
		-0.752106, -0.659040, -0.002025,
		32.369717, 30.195007, 36.357712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080372, 30.015350, 36.789570>,  <32.896191, 30.656336, 36.359127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080372, 30.015350, 36.789570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833805, 29.965675, 36.478542>,  <32.685867, 29.935871, 36.291927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833805, 29.965675, 36.478542>,  <33.080372, 30.015350, 36.789570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833805, 29.965675, 36.478542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688940, -0.563247, -0.456196,
		-0.381310, -0.816903, 0.432749,
		-0.616413, -0.124186, -0.777569,
		32.648880, 29.928419, 36.245270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192287, 29.606947, 36.231297>,  <33.080372, 30.015350, 36.789570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192287, 29.606947, 36.231297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586830, 29.541130, 36.233330>,  <33.823555, 29.501640, 36.234550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586830, 29.541130, 36.233330>,  <33.192287, 29.606947, 36.231297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586830, 29.541130, 36.233330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010630, -0.032863, 0.999403,
		-0.164278, -0.985822, -0.034164,
		0.986357, -0.164543, 0.005080,
		33.882736, 29.491768, 36.234856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355484, 29.048298, 36.695312>,  <33.192287, 29.606947, 36.231297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355484, 29.048298, 36.695312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719124, 29.214821, 36.689293>,  <33.937309, 29.314735, 36.685680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719124, 29.214821, 36.689293>,  <33.355484, 29.048298, 36.695312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719124, 29.214821, 36.689293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002565, 0.030537, 0.999530,
		0.416572, -0.908711, 0.026693,
		0.909099, 0.416308, -0.015052,
		33.991852, 29.339712, 36.684776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834896, 28.861830, 37.184513>,  <33.355484, 29.048298, 36.695312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834896, 28.861830, 37.184513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953106, 29.230343, 37.083397>,  <34.024033, 29.451450, 37.022728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953106, 29.230343, 37.083397>,  <33.834896, 28.861830, 37.184513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953106, 29.230343, 37.083397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035835, 0.253731, 0.966611,
		0.954663, -0.294717, 0.041969,
		0.295526, 0.921283, -0.252788,
		34.041763, 29.506727, 37.007561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565945, 29.026459, 37.371628>,  <33.834896, 28.861830, 37.184513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565945, 29.026459, 37.371628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362450, 29.370802, 37.375790>,  <34.240353, 29.577408, 37.378288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362450, 29.370802, 37.375790>,  <34.565945, 29.026459, 37.371628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362450, 29.370802, 37.375790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267831, 0.146766, 0.952222,
		0.818200, 0.487220, -0.305230,
		-0.508739, 0.860858, 0.010409,
		34.209827, 29.629059, 37.378914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030304, 29.664537, 37.652336>,  <34.565945, 29.026459, 37.371628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030304, 29.664537, 37.652336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662853, 29.797800, 37.737312>,  <34.442383, 29.877758, 37.788296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662853, 29.797800, 37.737312>,  <35.030304, 29.664537, 37.652336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662853, 29.797800, 37.737312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301263, 0.242680, 0.922143,
		0.255663, 0.911106, -0.323300,
		-0.918628, 0.333157, 0.212438,
		34.387264, 29.897747, 37.801044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135365, 30.039862, 38.368294>,  <35.030304, 29.664537, 37.652336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135365, 30.039862, 38.368294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737907, 30.047754, 38.323948>,  <34.499435, 30.052490, 38.297340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737907, 30.047754, 38.323948>,  <35.135365, 30.039862, 38.368294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737907, 30.047754, 38.323948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097720, 0.338158, 0.936002,
		0.055959, 0.940883, -0.334079,
		-0.993639, 0.019731, -0.110866,
		34.439816, 30.053673, 38.290688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900337, 30.684910, 38.706509>,  <35.135365, 30.039862, 38.368294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900337, 30.684910, 38.706509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582642, 30.441885, 38.703644>,  <34.392025, 30.296070, 38.701923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582642, 30.441885, 38.703644>,  <34.900337, 30.684910, 38.706509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582642, 30.441885, 38.703644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235597, 0.297078, 0.925331,
		-0.560068, 0.736623, -0.379092,
		-0.794240, -0.607561, -0.007163,
		34.344368, 30.259617, 38.701496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548340, 31.030420, 39.126858>,  <34.900337, 30.684910, 38.706509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548340, 31.030420, 39.126858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348953, 30.683805, 39.116673>,  <34.229321, 30.475836, 39.110561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348953, 30.683805, 39.116673>,  <34.548340, 31.030420, 39.126858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348953, 30.683805, 39.116673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250539, 0.115871, 0.961147,
		-0.829919, 0.485477, -0.274858,
		-0.498463, -0.866537, -0.025467,
		34.199413, 30.423843, 39.109032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882668, 31.190327, 39.317631>,  <34.548340, 31.030420, 39.126858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882668, 31.190327, 39.317631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947918, 30.808243, 39.416397>,  <33.987068, 30.578993, 39.475655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947918, 30.808243, 39.416397>,  <33.882668, 31.190327, 39.317631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947918, 30.808243, 39.416397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229363, 0.206691, 0.951142,
		-0.959574, -0.211792, -0.185372,
		0.163129, -0.955208, 0.246913,
		33.996857, 30.521681, 39.490471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298813, 31.023048, 39.778862>,  <33.882668, 31.190327, 39.317631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298813, 31.023048, 39.778862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564056, 30.731312, 39.846218>,  <33.723202, 30.556271, 39.886631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564056, 30.731312, 39.846218>,  <33.298813, 31.023048, 39.778862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564056, 30.731312, 39.846218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108680, 0.128774, 0.985701,
		-0.740595, -0.671924, 0.006126,
		0.663105, -0.729339, 0.168394,
		33.762989, 30.512510, 39.896736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040390, 30.592342, 40.324226>,  <33.298813, 31.023048, 39.778862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040390, 30.592342, 40.324226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422295, 30.473398, 40.324726>,  <33.651440, 30.402031, 40.325024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422295, 30.473398, 40.324726>,  <33.040390, 30.592342, 40.324226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422295, 30.473398, 40.324726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013735, 0.048284, 0.998739,
		-0.297048, -0.953543, 0.050185,
		0.954764, -0.297363, 0.001246,
		33.708725, 30.384190, 40.325100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071419, 30.046843, 40.894352>,  <33.040390, 30.592342, 40.324226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071419, 30.046843, 40.894352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425377, 30.221895, 40.830559>,  <33.637753, 30.326927, 40.792282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425377, 30.221895, 40.830559>,  <33.071419, 30.046843, 40.894352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425377, 30.221895, 40.830559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126117, 0.104482, 0.986498,
		0.448387, -0.893063, 0.037262,
		0.884897, 0.437633, -0.159479,
		33.690845, 30.353186, 40.782715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658260, 29.670923, 41.422592>,  <33.071419, 30.046843, 40.894352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658260, 29.670923, 41.422592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797768, 30.017813, 41.280449>,  <33.881474, 30.225946, 41.195164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797768, 30.017813, 41.280449>,  <33.658260, 29.670923, 41.422592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797768, 30.017813, 41.280449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224823, 0.290677, 0.930033,
		0.909842, -0.404262, -0.093592,
		0.348772, 0.867225, -0.355358,
		33.902401, 30.277981, 41.173843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285389, 29.622425, 41.704041>,  <33.658260, 29.670923, 41.422592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285389, 29.622425, 41.704041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249569, 30.012556, 41.623329>,  <34.228077, 30.246635, 41.574902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249569, 30.012556, 41.623329>,  <34.285389, 29.622425, 41.704041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249569, 30.012556, 41.623329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233837, 0.217523, 0.947631,
		0.968143, 0.037677, -0.247548,
		-0.089551, 0.975328, -0.201783,
		34.222702, 30.305155, 41.562794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794209, 29.924641, 42.068897>,  <34.285389, 29.622425, 41.704041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794209, 29.924641, 42.068897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550739, 30.238108, 42.019279>,  <34.404659, 30.426188, 41.989510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550739, 30.238108, 42.019279>,  <34.794209, 29.924641, 42.068897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550739, 30.238108, 42.019279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195198, 0.299443, 0.933933,
		0.769036, 0.544245, -0.335233,
		-0.608671, 0.783665, -0.124047,
		34.368137, 30.473207, 41.982067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111866, 30.433752, 42.464848>,  <34.794209, 29.924641, 42.068897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111866, 30.433752, 42.464848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740753, 30.562790, 42.389843>,  <34.518085, 30.640213, 42.344841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740753, 30.562790, 42.389843>,  <35.111866, 30.433752, 42.464848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740753, 30.562790, 42.389843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133376, 0.182606, 0.974097,
		0.348478, 0.928756, -0.126392,
		-0.927779, 0.322594, -0.187508,
		34.462418, 30.659569, 42.333591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024273, 31.109756, 42.717876>,  <35.111866, 30.433752, 42.464848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024273, 31.109756, 42.717876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646160, 30.979572, 42.708797>,  <34.419292, 30.901463, 42.703350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646160, 30.979572, 42.708797>,  <35.024273, 31.109756, 42.717876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646160, 30.979572, 42.708797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106071, 0.240787, 0.964764,
		-0.308527, 0.914384, -0.262134,
		-0.945283, -0.325460, -0.022701,
		34.362576, 30.881935, 42.701988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639313, 31.661829, 42.840519>,  <35.024273, 31.109756, 42.717876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639313, 31.661829, 42.840519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450584, 31.323792, 42.941078>,  <34.337349, 31.120970, 43.001415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450584, 31.323792, 42.941078>,  <34.639313, 31.661829, 42.840519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450584, 31.323792, 42.941078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016487, 0.293542, 0.955804,
		-0.881541, 0.446823, -0.152432,
		-0.471820, -0.845093, 0.251403,
		34.309040, 31.070263, 43.016499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104778, 31.814386, 43.450558>,  <34.639313, 31.661829, 42.840519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104778, 31.814386, 43.450558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133820, 31.415447, 43.448463>,  <34.151245, 31.176085, 43.447205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133820, 31.415447, 43.448463>,  <34.104778, 31.814386, 43.450558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133820, 31.415447, 43.448463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024180, -0.007013, 0.999683,
		-0.997068, -0.072454, -0.024625,
		0.072604, -0.997347, -0.005240,
		34.155602, 31.116243, 43.446892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557529, 31.608286, 43.839527>,  <34.104778, 31.814386, 43.450558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557529, 31.608286, 43.839527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803001, 31.292496, 43.834995>,  <33.950283, 31.103022, 43.832275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803001, 31.292496, 43.834995>,  <33.557529, 31.608286, 43.839527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803001, 31.292496, 43.834995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096344, 0.060635, 0.993499,
		-0.783657, -0.610780, 0.113272,
		0.613677, -0.789475, -0.011328,
		33.987106, 31.055653, 43.831596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225517, 31.016665, 44.188652>,  <33.557529, 31.608286, 43.839527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225517, 31.016665, 44.188652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617340, 30.940577, 44.214832>,  <33.852432, 30.894924, 44.230541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617340, 30.940577, 44.214832>,  <33.225517, 31.016665, 44.188652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617340, 30.940577, 44.214832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072209, -0.028823, 0.996973,
		-0.187761, -0.981318, -0.041969,
		0.979557, -0.190223, 0.065448,
		33.911209, 30.883511, 44.234467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204105, 30.554092, 44.707367>,  <33.225517, 31.016665, 44.188652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204105, 30.554092, 44.707367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589302, 30.659496, 44.684696>,  <33.820419, 30.722738, 44.671093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589302, 30.659496, 44.684696>,  <33.204105, 30.554092, 44.707367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589302, 30.659496, 44.684696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072573, -0.050996, 0.996059,
		0.259583, -0.963308, -0.068232,
		0.962990, 0.263512, -0.056672,
		33.878201, 30.738550, 44.667694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532192, 30.193741, 45.264668>,  <33.204105, 30.554092, 44.707367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532192, 30.193741, 45.264668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791771, 30.489836, 45.194344>,  <33.947517, 30.667494, 45.152149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791771, 30.489836, 45.194344>,  <33.532192, 30.193741, 45.264668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791771, 30.489836, 45.194344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166896, 0.086952, 0.982133,
		0.742301, -0.666697, -0.067115,
		0.648950, 0.740239, -0.175813,
		33.986454, 30.711908, 45.141598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075874, 30.016136, 45.680538>,  <33.532192, 30.193741, 45.264668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075874, 30.016136, 45.680538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101116, 30.408577, 45.607376>,  <34.116261, 30.644041, 45.563480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101116, 30.408577, 45.607376>,  <34.075874, 30.016136, 45.680538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101116, 30.408577, 45.607376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110612, 0.175261, 0.978288,
		0.991858, -0.081969, -0.097462,
		0.063108, 0.981104, -0.182901,
		34.120049, 30.702908, 45.552505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728458, 30.213060, 45.981663>,  <34.075874, 30.016136, 45.680538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728458, 30.213060, 45.981663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506554, 30.542353, 45.933441>,  <34.373413, 30.739929, 45.904507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506554, 30.542353, 45.933441>,  <34.728458, 30.213060, 45.981663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506554, 30.542353, 45.933441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023621, 0.160420, 0.986766,
		0.831677, 0.544568, -0.108440,
		-0.554757, 0.823232, -0.120555,
		34.340126, 30.789322, 45.897274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013023, 30.640766, 46.393631>,  <34.728458, 30.213060, 45.981663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013023, 30.640766, 46.393631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635437, 30.759802, 46.336533>,  <34.408886, 30.831223, 46.302273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635437, 30.759802, 46.336533>,  <35.013023, 30.640766, 46.393631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635437, 30.759802, 46.336533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090947, 0.181226, 0.979227,
		0.317276, 0.937336, -0.144006,
		-0.943962, 0.297588, -0.142746,
		34.352249, 30.849079, 46.293709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373413, 31.303869, 46.144852>,  <35.013023, 30.640766, 46.393631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373413, 31.303869, 46.144852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772606, 31.326040, 46.157288>,  <36.012119, 31.339342, 46.164749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772606, 31.326040, 46.157288>,  <35.373413, 31.303869, 46.144852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772606, 31.326040, 46.157288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057533, -0.580125, -0.812493,
		-0.026995, 0.812639, -0.582141,
		0.997978, 0.055426, 0.031093,
		36.071999, 31.342669, 46.166615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584919, 31.709120, 45.471649>,  <35.373413, 31.303869, 46.144852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584919, 31.709120, 45.471649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904976, 31.516634, 45.614872>,  <36.097012, 31.401142, 45.700806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904976, 31.516634, 45.614872>,  <35.584919, 31.709120, 45.471649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904976, 31.516634, 45.614872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293732, -0.206119, -0.933401,
		0.522968, 0.852026, -0.023576,
		0.800141, -0.481214, 0.358061,
		36.145020, 31.372271, 45.722290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077118, 31.749493, 44.899929>,  <35.584919, 31.709120, 45.471649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077118, 31.749493, 44.899929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275749, 31.478336, 45.116768>,  <36.394928, 31.315641, 45.246872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275749, 31.478336, 45.116768>,  <36.077118, 31.749493, 44.899929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275749, 31.478336, 45.116768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473212, -0.312135, -0.823798,
		0.727654, 0.665608, 0.165787,
		0.496578, -0.677892, 0.542100,
		36.424721, 31.274969, 45.279396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838127, 31.769178, 44.759434>,  <36.077118, 31.749493, 44.899929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838127, 31.769178, 44.759434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730453, 31.403206, 44.879726>,  <36.665848, 31.183622, 44.951900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730453, 31.403206, 44.879726>,  <36.838127, 31.769178, 44.759434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730453, 31.403206, 44.879726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601497, -0.403580, -0.689438,
		0.752157, -0.004698, 0.658967,
		-0.269185, -0.914932, 0.300730,
		36.649696, 31.128727, 44.969944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422436, 31.367817, 44.577572>,  <36.838127, 31.769178, 44.759434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422436, 31.367817, 44.577572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146435, 31.086529, 44.646126>,  <36.980835, 30.917755, 44.687260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146435, 31.086529, 44.646126>,  <37.422436, 31.367817, 44.577572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146435, 31.086529, 44.646126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398908, -0.567043, -0.720649,
		0.603958, -0.428885, 0.671783,
		-0.690005, -0.703221, 0.171385,
		36.939434, 30.875563, 44.697540>
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
