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
	<24.414413, 34.587673, 34.742218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390556, 34.910397, 34.977337>,  <24.376242, 35.104031, 35.118408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390556, 34.910397, 34.977337>,  <24.414413, 34.587673, 34.742218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.390556, 34.910397, 34.977337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629078, 0.487576, -0.605417,
		-0.775051, 0.333661, -0.536626,
		-0.059642, 0.806809, 0.587795,
		24.372663, 35.152439, 35.153675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.064426, 35.095963, 34.330372>,  <24.414413, 34.587673, 34.742218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.064426, 35.095963, 34.330372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326775, 35.252037, 34.588856>,  <24.484184, 35.345680, 34.743946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326775, 35.252037, 34.588856>,  <24.064426, 35.095963, 34.330372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326775, 35.252037, 34.588856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537991, 0.358891, -0.762734,
		-0.529528, 0.847910, 0.025469,
		0.655870, 0.390187, 0.646211,
		24.523535, 35.369095, 34.782719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.146025, 35.874847, 34.151955>,  <24.064426, 35.095963, 34.330372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.146025, 35.874847, 34.151955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.476658, 35.682632, 34.269150>,  <24.675037, 35.567303, 34.339466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.476658, 35.682632, 34.269150>,  <24.146025, 35.874847, 34.151955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.476658, 35.682632, 34.269150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418518, 0.176749, -0.890844,
		0.376303, 0.858976, 0.347213,
		0.826583, -0.480542, 0.292985,
		24.724632, 35.538471, 34.357044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.732908, 36.353352, 34.019749>,  <24.146025, 35.874847, 34.151955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.732908, 36.353352, 34.019749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880278, 35.981979, 34.038879>,  <24.968699, 35.759155, 34.050358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880278, 35.981979, 34.038879>,  <24.732908, 36.353352, 34.019749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.880278, 35.981979, 34.038879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508516, 0.158191, -0.846396,
		0.778252, 0.336151, 0.530402,
		0.368421, -0.928428, 0.047826,
		24.990805, 35.703449, 34.053226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493219, 36.298405, 34.007858>,  <24.732908, 36.353352, 34.019749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493219, 36.298405, 34.007858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359104, 35.945126, 33.876682>,  <25.278635, 35.733158, 33.797977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359104, 35.945126, 33.876682>,  <25.493219, 36.298405, 34.007858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359104, 35.945126, 33.876682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611824, 0.060577, -0.788671,
		0.716418, -0.465072, 0.520051,
		-0.335286, -0.883198, -0.327941,
		25.258518, 35.680168, 33.778301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044317, 35.700794, 33.803276>,  <25.493219, 36.298405, 34.007858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044317, 35.700794, 33.803276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702332, 35.646584, 33.603008>,  <25.497141, 35.614059, 33.482849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702332, 35.646584, 33.603008>,  <26.044317, 35.700794, 33.803276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702332, 35.646584, 33.603008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505860, -0.004531, -0.862604,
		0.114635, -0.990763, 0.072430,
		-0.854964, -0.135524, -0.500668,
		25.445843, 35.605927, 33.452808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.290174, 35.255241, 33.227150>,  <26.044317, 35.700794, 33.803276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.290174, 35.255241, 33.227150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929804, 35.397480, 33.127644>,  <25.713581, 35.482822, 33.067940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929804, 35.397480, 33.127644>,  <26.290174, 35.255241, 33.227150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929804, 35.397480, 33.127644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277734, 0.031982, -0.960125,
		-0.333459, -0.934093, -0.127574,
		-0.900926, 0.355595, -0.248765,
		25.659527, 35.504158, 33.053013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082712, 34.768131, 32.743050>,  <26.290174, 35.255241, 33.227150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082712, 34.768131, 32.743050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914541, 35.128330, 32.698608>,  <25.813639, 35.344448, 32.671944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914541, 35.128330, 32.698608>,  <26.082712, 34.768131, 32.743050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.914541, 35.128330, 32.698608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333971, 0.039732, -0.941746,
		-0.843625, -0.433043, -0.317445,
		-0.420429, 0.900497, -0.111105,
		25.788412, 35.398479, 32.665276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.745989, 34.683773, 32.053024>,  <26.082712, 34.768131, 32.743050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.745989, 34.683773, 32.053024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808796, 35.075691, 32.102570>,  <25.846479, 35.310844, 32.132298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808796, 35.075691, 32.102570>,  <25.745989, 34.683773, 32.053024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808796, 35.075691, 32.102570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308441, 0.070495, -0.948628,
		-0.938195, 0.187156, -0.291141,
		0.157017, 0.979798, 0.123865,
		25.855902, 35.369629, 32.139729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.651205, 34.965065, 31.315815>,  <25.745989, 34.683773, 32.053024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.651205, 34.965065, 31.315815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828703, 35.268124, 31.507256>,  <25.935202, 35.449959, 31.622120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828703, 35.268124, 31.507256>,  <25.651205, 34.965065, 31.315815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828703, 35.268124, 31.507256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445693, 0.276747, -0.851333,
		-0.777462, 0.591085, -0.214873,
		0.443745, 0.757647, 0.478603,
		25.961826, 35.495419, 31.650837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604673, 35.620773, 30.891926>,  <25.651205, 34.965065, 31.315815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604673, 35.620773, 30.891926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909599, 35.673244, 31.145435>,  <26.092554, 35.704727, 31.297541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909599, 35.673244, 31.145435>,  <25.604673, 35.620773, 30.891926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909599, 35.673244, 31.145435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581922, 0.289681, -0.759902,
		-0.283274, 0.948092, 0.144494,
		0.762314, 0.131176, 0.633775,
		26.138294, 35.712597, 31.335567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955271, 36.315022, 30.810083>,  <25.604673, 35.620773, 30.891926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955271, 36.315022, 30.810083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224497, 36.086391, 30.997820>,  <26.386032, 35.949211, 31.110462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224497, 36.086391, 30.997820>,  <25.955271, 36.315022, 30.810083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224497, 36.086391, 30.997820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705417, 0.305489, -0.639581,
		0.222193, 0.761560, 0.608815,
		0.673065, -0.571579, 0.469341,
		26.426416, 35.914917, 31.138622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608898, 36.706383, 30.964331>,  <25.955271, 36.315022, 30.810083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608898, 36.706383, 30.964331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666885, 36.317970, 30.888342>,  <26.701677, 36.084923, 30.842749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666885, 36.317970, 30.888342>,  <26.608898, 36.706383, 30.964331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666885, 36.317970, 30.888342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647084, 0.238294, -0.724223,
		0.748510, -0.017937, 0.662881,
		0.144970, -0.971027, -0.189972,
		26.710377, 36.026661, 30.831350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349541, 36.439034, 30.990227>,  <26.608898, 36.706383, 30.964331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349541, 36.439034, 30.990227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162289, 36.202263, 30.727785>,  <27.049938, 36.060200, 30.570320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162289, 36.202263, 30.727785>,  <27.349541, 36.439034, 30.990227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162289, 36.202263, 30.727785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822589, -0.020678, -0.568260,
		0.322804, -0.805724, 0.496595,
		-0.468129, -0.591930, -0.656105,
		27.021851, 36.024685, 30.530954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668999, 35.790260, 30.876005>,  <27.349541, 36.439034, 30.990227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668999, 35.790260, 30.876005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468775, 35.903152, 30.548643>,  <27.348640, 35.970890, 30.352226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468775, 35.903152, 30.548643>,  <27.668999, 35.790260, 30.876005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468775, 35.903152, 30.548643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836313, -0.086581, -0.541372,
		-0.223652, -0.955430, -0.192697,
		-0.500559, 0.282234, -0.818403,
		27.318607, 35.987823, 30.303122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453840, 35.601414, 31.626141>,  <27.668999, 35.790260, 30.876005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453840, 35.601414, 31.626141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124701, 35.774612, 31.478939>,  <26.927217, 35.878532, 31.390617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124701, 35.774612, 31.478939>,  <27.453840, 35.601414, 31.626141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124701, 35.774612, 31.478939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495404, -0.229365, 0.837834,
		0.278376, 0.871723, 0.403244,
		-0.822850, 0.433001, -0.368006,
		26.877846, 35.904514, 31.368538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114649, 36.089081, 32.095840>,  <27.453840, 35.601414, 31.626141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114649, 36.089081, 32.095840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827045, 35.968815, 31.845201>,  <26.654484, 35.896656, 31.694817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827045, 35.968815, 31.845201>,  <27.114649, 36.089081, 32.095840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827045, 35.968815, 31.845201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599134, -0.188782, 0.778074,
		-0.352230, 0.934859, -0.044403,
		-0.719008, -0.300664, -0.626601,
		26.611343, 35.878616, 31.657221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554842, 36.452847, 32.271862>,  <27.114649, 36.089081, 32.095840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554842, 36.452847, 32.271862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383392, 36.140823, 32.089523>,  <26.280523, 35.953609, 31.980120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383392, 36.140823, 32.089523>,  <26.554842, 36.452847, 32.271862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383392, 36.140823, 32.089523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729284, 0.000888, 0.684210,
		-0.533316, 0.625712, -0.569261,
		-0.428624, -0.780053, -0.455849,
		26.254805, 35.906807, 31.952768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913017, 36.676262, 32.344742>,  <26.554842, 36.452847, 32.271862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913017, 36.676262, 32.344742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901846, 36.280327, 32.288960>,  <25.895144, 36.042767, 32.255489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901846, 36.280327, 32.288960>,  <25.913017, 36.676262, 32.344742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901846, 36.280327, 32.288960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655465, -0.087197, 0.750175,
		-0.754709, 0.112360, -0.646366,
		-0.027928, -0.989834, -0.139456,
		25.893467, 35.983376, 32.247124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.191683, 36.501823, 32.383327>,  <25.913017, 36.676262, 32.344742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.191683, 36.501823, 32.383327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359297, 36.144749, 32.449684>,  <25.459866, 35.930504, 32.489498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359297, 36.144749, 32.449684>,  <25.191683, 36.501823, 32.383327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359297, 36.144749, 32.449684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646257, -0.164891, 0.745093,
		-0.637779, -0.419431, -0.646000,
		0.419035, -0.892686, 0.165896,
		25.485006, 35.876942, 32.499454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.134172, 35.798386, 32.015450>,  <25.191683, 36.501823, 32.383327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.134172, 35.798386, 32.015450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115139, 35.480019, 32.256863>,  <25.103718, 35.288998, 32.401711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.115139, 35.480019, 32.256863>,  <25.134172, 35.798386, 32.015450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.115139, 35.480019, 32.256863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444098, 0.558070, 0.700953,
		-0.894714, -0.234672, -0.380022,
		-0.047585, -0.795919, 0.603530,
		25.100864, 35.241241, 32.437923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.560623, 36.061707, 32.527885>,  <25.134172, 35.798386, 32.015450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.560623, 36.061707, 32.527885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889315, 35.886238, 32.673397>,  <25.086529, 35.780956, 32.760704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889315, 35.886238, 32.673397>,  <24.560623, 36.061707, 32.527885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.889315, 35.886238, 32.673397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431918, -0.062974, 0.899712,
		-0.371770, -0.896438, -0.241218,
		0.821726, -0.438673, 0.363776,
		25.135832, 35.754635, 32.782532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.297520, 35.423767, 32.853493>,  <24.560623, 36.061707, 32.527885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.297520, 35.423767, 32.853493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650873, 35.471298, 33.034828>,  <24.862885, 35.499817, 33.143627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650873, 35.471298, 33.034828>,  <24.297520, 35.423767, 32.853493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.650873, 35.471298, 33.034828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424270, -0.208111, 0.881297,
		0.199067, -0.970860, -0.133427,
		0.883384, 0.118828, 0.453336,
		24.915888, 35.506947, 33.170830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.520491, 34.798683, 33.200287>,  <24.297520, 35.423767, 32.853493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.520491, 34.798683, 33.200287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668043, 35.124504, 33.379360>,  <24.756575, 35.319996, 33.486805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668043, 35.124504, 33.379360>,  <24.520491, 34.798683, 33.200287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.668043, 35.124504, 33.379360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483000, -0.243529, 0.841073,
		0.794127, -0.526490, 0.303597,
		0.368882, 0.814556, 0.447688,
		24.778708, 35.368870, 33.513668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212170, 34.956757, 33.043388>,  <24.520491, 34.798683, 33.200287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212170, 34.956757, 33.043388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499460, 35.150047, 33.243645>,  <25.671835, 35.266022, 33.363800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499460, 35.150047, 33.243645>,  <25.212170, 34.956757, 33.043388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499460, 35.150047, 33.243645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531102, -0.084119, 0.843122,
		0.449537, -0.871442, 0.196229,
		0.718225, 0.483232, 0.500640,
		25.714928, 35.295017, 33.393837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276098, 34.549534, 33.652931>,  <25.212170, 34.956757, 33.043388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276098, 34.549534, 33.652931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387760, 34.923466, 33.740719>,  <25.454758, 35.147823, 33.793392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387760, 34.923466, 33.740719>,  <25.276098, 34.549534, 33.652931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.387760, 34.923466, 33.740719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550151, -0.031620, 0.834466,
		0.787023, -0.353685, 0.505471,
		0.279155, 0.934830, 0.219466,
		25.471506, 35.203915, 33.806557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553125, 34.560417, 34.252636>,  <25.276098, 34.549534, 33.652931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553125, 34.560417, 34.252636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384590, 34.919891, 34.203907>,  <25.283470, 35.135574, 34.174671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384590, 34.919891, 34.203907>,  <25.553125, 34.560417, 34.252636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.384590, 34.919891, 34.203907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307018, -0.014949, 0.951587,
		0.853355, 0.438340, 0.282211,
		-0.421337, 0.898685, -0.121821,
		25.258188, 35.189495, 34.167362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886236, 35.049641, 34.621662>,  <25.553125, 34.560417, 34.252636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886236, 35.049641, 34.621662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501455, 35.152996, 34.586151>,  <25.270586, 35.215008, 34.564846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501455, 35.152996, 34.586151>,  <25.886236, 35.049641, 34.621662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.501455, 35.152996, 34.586151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139180, -0.183843, 0.973052,
		0.235101, 0.948388, 0.212810,
		-0.961955, 0.258385, -0.088775,
		25.212870, 35.230511, 34.559517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.589243, 34.377274, 34.950180>,  <25.886236, 35.049641, 34.621662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.589243, 34.377274, 34.950180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285288, 34.153061, 35.081863>,  <25.102915, 34.018536, 35.160873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285288, 34.153061, 35.081863>,  <25.589243, 34.377274, 34.950180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.285288, 34.153061, 35.081863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591519, -0.386203, 0.707780,
		-0.269587, 0.732569, 0.625033,
		-0.759887, -0.560527, 0.329213,
		25.057322, 33.984901, 35.180626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.120674, 34.458557, 35.725937>,  <25.589243, 34.377274, 34.950180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.120674, 34.458557, 35.725937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213440, 34.120323, 35.533604>,  <25.269100, 33.917381, 35.418205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213440, 34.120323, 35.533604>,  <25.120674, 34.458557, 35.725937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213440, 34.120323, 35.533604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521799, -0.309028, 0.795127,
		-0.820939, -0.435300, 0.369558,
		0.231915, -0.845586, -0.480832,
		25.283014, 33.866646, 35.389355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.958485, 33.828953, 36.122143>,  <25.120674, 34.458557, 35.725937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.958485, 33.828953, 36.122143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262789, 33.742165, 35.877464>,  <25.445372, 33.690090, 35.730659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262789, 33.742165, 35.877464>,  <24.958485, 33.828953, 36.122143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.262789, 33.742165, 35.877464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461471, -0.481898, 0.744862,
		-0.456382, -0.848941, -0.266487,
		0.760763, -0.216965, -0.611691,
		25.491016, 33.677074, 35.693954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216286, 33.172333, 36.314266>,  <24.958485, 33.828953, 36.122143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216286, 33.172333, 36.314266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531902, 33.335609, 36.130619>,  <25.721272, 33.433575, 36.020432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531902, 33.335609, 36.130619>,  <25.216286, 33.172333, 36.314266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531902, 33.335609, 36.130619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614004, -0.499296, 0.611312,
		0.020295, -0.764253, -0.644597,
		0.789042, 0.408192, -0.459121,
		25.768616, 33.458069, 35.992882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822859, 32.642109, 36.364906>,  <25.216286, 33.172333, 36.314266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822859, 32.642109, 36.364906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012257, 32.972763, 36.243271>,  <26.125895, 33.171158, 36.170288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012257, 32.972763, 36.243271>,  <25.822859, 32.642109, 36.364906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012257, 32.972763, 36.243271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859137, -0.357353, 0.366310,
		0.194138, -0.434703, -0.879400,
		0.473492, 0.826639, -0.304093,
		26.154305, 33.220757, 36.152042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459192, 32.541214, 35.886536>,  <25.822859, 32.642109, 36.364906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459192, 32.541214, 35.886536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484261, 32.859726, 36.127205>,  <26.499302, 33.050835, 36.271606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484261, 32.859726, 36.127205>,  <26.459192, 32.541214, 35.886536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484261, 32.859726, 36.127205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871062, -0.337906, 0.356470,
		0.487159, 0.501750, -0.714789,
		0.062673, 0.796283, 0.601669,
		26.503063, 33.098610, 36.307705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988333, 33.121120, 36.032391>,  <26.459192, 32.541214, 35.886536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.988333, 33.121120, 36.032391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077980, 33.491413, 36.154240>,  <27.131769, 33.713589, 36.227348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077980, 33.491413, 36.154240>,  <26.988333, 33.121120, 36.032391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077980, 33.491413, 36.154240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742056, -0.364727, 0.562430,
		0.631762, 0.099994, -0.768686,
		0.224120, 0.925730, 0.304622,
		27.145216, 33.769131, 36.245625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708290, 33.263958, 36.111347>,  <26.988333, 33.121120, 36.032391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708290, 33.263958, 36.111347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451582, 33.449600, 36.355553>,  <27.297556, 33.560986, 36.502075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451582, 33.449600, 36.355553>,  <27.708290, 33.263958, 36.111347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451582, 33.449600, 36.355553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446650, -0.420932, 0.789506,
		0.623404, 0.779370, 0.062848,
		-0.641772, 0.464110, 0.610516,
		27.259050, 33.588833, 36.538708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042360, 33.747131, 36.520775>,  <27.708290, 33.263958, 36.111347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042360, 33.747131, 36.520775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732613, 33.568485, 36.700058>,  <27.546764, 33.461300, 36.807629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732613, 33.568485, 36.700058>,  <28.042360, 33.747131, 36.520775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732613, 33.568485, 36.700058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604503, -0.312963, 0.732551,
		-0.186894, 0.838207, 0.512328,
		-0.774369, -0.446613, 0.448207,
		27.500301, 33.434502, 36.834518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981413, 34.113777, 37.177364>,  <28.042360, 33.747131, 36.520775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981413, 34.113777, 37.177364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790237, 33.764450, 37.215084>,  <27.675533, 33.554855, 37.237717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790237, 33.764450, 37.215084>,  <27.981413, 34.113777, 37.177364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790237, 33.764450, 37.215084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715099, -0.324494, 0.619141,
		-0.510107, 0.363345, 0.779597,
		-0.477937, -0.873318, 0.094301,
		27.646856, 33.502457, 37.243374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744751, 34.063171, 37.913422>,  <27.981413, 34.113777, 37.177364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744751, 34.063171, 37.913422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799938, 33.723446, 37.709606>,  <27.833050, 33.519611, 37.587315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799938, 33.723446, 37.709606>,  <27.744751, 34.063171, 37.913422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799938, 33.723446, 37.709606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582091, -0.346705, 0.735504,
		-0.801333, -0.398075, 0.446544,
		0.137967, -0.849313, -0.509542,
		27.841328, 33.468651, 37.556744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349039, 33.563732, 37.841942>,  <27.744751, 34.063171, 37.913422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349039, 33.563732, 37.841942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492308, 33.900898, 38.002544>,  <28.578268, 34.103199, 38.098907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492308, 33.900898, 38.002544>,  <28.349039, 33.563732, 37.841942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492308, 33.900898, 38.002544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882654, -0.165512, -0.439917,
		-0.304359, 0.511956, -0.803285,
		0.358172, 0.842916, 0.401505,
		28.599760, 34.153774, 38.122997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369972, 33.131203, 38.416080>,  <28.349039, 33.563732, 37.841942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369972, 33.131203, 38.416080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674326, 32.899456, 38.299194>,  <28.856937, 32.760406, 38.229061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674326, 32.899456, 38.299194>,  <28.369972, 33.131203, 38.416080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674326, 32.899456, 38.299194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622853, -0.778389, -0.078522,
		-0.181964, 0.241753, -0.953124,
		0.760883, -0.579368, -0.292215,
		28.902592, 32.725647, 38.211529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159044, 32.692379, 37.841778>,  <28.369972, 33.131203, 38.416080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159044, 32.692379, 37.841778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430042, 32.486839, 38.052288>,  <28.592640, 32.363518, 38.178593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430042, 32.486839, 38.052288>,  <28.159044, 32.692379, 37.841778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430042, 32.486839, 38.052288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595152, -0.803406, -0.018271,
		0.432201, -0.300835, -0.850118,
		0.677493, -0.513846, 0.526275,
		28.633289, 32.332687, 38.210171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692894, 32.337727, 37.452057>,  <28.159044, 32.692379, 37.841778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692894, 32.337727, 37.452057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624439, 32.713936, 37.569443>,  <27.583366, 32.939663, 37.639874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624439, 32.713936, 37.569443>,  <27.692894, 32.337727, 37.452057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624439, 32.713936, 37.569443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680334, 0.102639, -0.725680,
		-0.712642, -0.323845, 0.622307,
		-0.171135, 0.940526, 0.293467,
		27.573099, 32.996094, 37.657482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914907, 32.488682, 37.487400>,  <27.692894, 32.337727, 37.452057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914907, 32.488682, 37.487400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125530, 32.821911, 37.419609>,  <27.251904, 33.021851, 37.378933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125530, 32.821911, 37.419609>,  <26.914907, 32.488682, 37.487400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125530, 32.821911, 37.419609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611543, 0.232690, -0.756221,
		-0.590552, 0.501839, 0.631986,
		0.526558, 0.833075, -0.169480,
		27.283497, 33.071835, 37.368767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423037, 33.052700, 37.424225>,  <26.914907, 32.488682, 37.487400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423037, 33.052700, 37.424225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753069, 33.169891, 37.230976>,  <26.951088, 33.240208, 37.115028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753069, 33.169891, 37.230976>,  <26.423037, 33.052700, 37.424225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753069, 33.169891, 37.230976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557492, 0.283086, -0.780426,
		-0.091883, 0.913250, 0.396902,
		0.825082, 0.292978, -0.483119,
		27.000593, 33.257786, 37.086040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676998, 33.813343, 37.426220>,  <26.423037, 33.052700, 37.424225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676998, 33.813343, 37.426220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790051, 33.611580, 37.099861>,  <26.857882, 33.490520, 36.904045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790051, 33.611580, 37.099861>,  <26.676998, 33.813343, 37.426220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790051, 33.611580, 37.099861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737530, 0.429581, -0.521065,
		0.613325, 0.749020, -0.250604,
		0.282633, -0.504410, -0.815898,
		26.874840, 33.460258, 36.855091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749374, 34.234478, 36.866383>,  <26.676998, 33.813343, 37.426220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749374, 34.234478, 36.866383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674114, 33.889351, 36.678707>,  <26.628958, 33.682274, 36.566101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674114, 33.889351, 36.678707>,  <26.749374, 34.234478, 36.866383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.674114, 33.889351, 36.678707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801042, 0.411226, -0.435001,
		0.568271, 0.293996, -0.768527,
		-0.188150, -0.862821, -0.469190,
		26.617670, 33.630505, 36.537949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781181, 34.296577, 36.096050>,  <26.749374, 34.234478, 36.866383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781181, 34.296577, 36.096050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576765, 33.954533, 36.130985>,  <26.454115, 33.749306, 36.151947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576765, 33.954533, 36.130985>,  <26.781181, 34.296577, 36.096050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576765, 33.954533, 36.130985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509093, 0.219240, -0.832321,
		0.692577, -0.469811, -0.547370,
		-0.511039, -0.855109, 0.087337,
		26.423452, 33.698002, 36.157188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833845, 33.941048, 35.462425>,  <26.781181, 34.296577, 36.096050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833845, 33.941048, 35.462425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497324, 33.817848, 35.640121>,  <26.295412, 33.743927, 35.746738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497324, 33.817848, 35.640121>,  <26.833845, 33.941048, 35.462425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497324, 33.817848, 35.640121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525016, 0.269877, -0.807171,
		0.128721, -0.912306, -0.388754,
		-0.841302, -0.308001, 0.444236,
		26.244934, 33.725449, 35.773392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556442, 33.332901, 35.023994>,  <26.833845, 33.941048, 35.462425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556442, 33.332901, 35.023994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294439, 33.589970, 35.182961>,  <26.137238, 33.744209, 35.278339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294439, 33.589970, 35.182961>,  <26.556442, 33.332901, 35.023994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294439, 33.589970, 35.182961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488926, 0.040530, -0.871383,
		-0.576121, -0.765069, 0.287671,
		-0.655009, 0.642672, 0.397412,
		26.097937, 33.782772, 35.302185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418192, 33.190964, 34.323647>,  <26.556442, 33.332901, 35.023994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418192, 33.190964, 34.323647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793884, 33.058960, 34.361458>,  <27.019300, 32.979759, 34.384144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.793884, 33.058960, 34.361458>,  <26.418192, 33.190964, 34.323647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793884, 33.058960, 34.361458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245861, 0.454517, -0.856135,
		0.239570, 0.827350, 0.508034,
		0.939233, -0.330010, 0.094524,
		27.075655, 32.959957, 34.389816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836361, 33.683426, 34.031609>,  <26.418192, 33.190964, 34.323647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836361, 33.683426, 34.031609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029785, 33.333782, 34.013241>,  <27.145840, 33.123997, 34.002220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029785, 33.333782, 34.013241>,  <26.836361, 33.683426, 34.031609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029785, 33.333782, 34.013241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140564, 0.129325, -0.981589,
		0.863950, 0.468203, 0.185405,
		0.483561, -0.874106, -0.045918,
		27.174854, 33.071552, 33.999466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487488, 33.653912, 33.690331>,  <26.836361, 33.683426, 34.031609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487488, 33.653912, 33.690331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353260, 33.277927, 33.665451>,  <27.272724, 33.052338, 33.650524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353260, 33.277927, 33.665451>,  <27.487488, 33.653912, 33.690331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353260, 33.277927, 33.665451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347787, -0.062255, -0.935505,
		0.875465, -0.335557, 0.347796,
		-0.335567, -0.939961, -0.062200,
		27.252590, 32.995937, 33.646790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988705, 33.343426, 33.359055>,  <27.487488, 33.653912, 33.690331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988705, 33.343426, 33.359055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649998, 33.147869, 33.275181>,  <27.446774, 33.030537, 33.224857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649998, 33.147869, 33.275181>,  <27.988705, 33.343426, 33.359055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649998, 33.147869, 33.275181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309072, -0.131322, -0.941928,
		0.432963, -0.862404, 0.262302,
		-0.846769, -0.488890, -0.209688,
		27.395967, 33.001202, 33.212273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242458, 32.897194, 32.877968>,  <27.988705, 33.343426, 33.359055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242458, 32.897194, 32.877968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844172, 32.874359, 32.848877>,  <27.605200, 32.860657, 32.831421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844172, 32.874359, 32.848877>,  <28.242458, 32.897194, 32.877968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844172, 32.874359, 32.848877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089468, -0.396427, -0.913696,
		0.023331, -0.916289, 0.399837,
		-0.995716, -0.057090, -0.072730,
		27.545456, 32.857231, 32.827057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101437, 32.194427, 32.715195>,  <28.242458, 32.897194, 32.877968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101437, 32.194427, 32.715195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822531, 32.446350, 32.578278>,  <27.655188, 32.597504, 32.496128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822531, 32.446350, 32.578278>,  <28.101437, 32.194427, 32.715195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822531, 32.446350, 32.578278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201981, -0.285548, -0.936838,
		-0.687769, -0.722360, 0.071893,
		-0.697264, 0.629807, -0.342295,
		27.613352, 32.635292, 32.475590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503563, 31.755802, 32.302990>,  <28.101437, 32.194427, 32.715195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503563, 31.755802, 32.302990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505302, 32.096283, 32.093060>,  <27.506346, 32.300571, 31.967102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505302, 32.096283, 32.093060>,  <27.503563, 31.755802, 32.302990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505302, 32.096283, 32.093060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094566, -0.522825, -0.847178,
		-0.995509, -0.045947, -0.082767,
		0.004347, 0.851201, -0.524822,
		27.506607, 32.351643, 31.935614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384323, 30.984327, 32.152016>,  <27.503563, 31.755802, 32.302990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384323, 30.984327, 32.152016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328804, 31.232164, 31.842993>,  <27.295492, 31.380867, 31.657579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328804, 31.232164, 31.842993>,  <27.384323, 30.984327, 32.152016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328804, 31.232164, 31.842993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789887, 0.539805, 0.291014,
		0.597338, -0.569837, -0.564334,
		-0.138800, 0.619594, -0.772553,
		27.287165, 31.418043, 31.611227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208017, 30.733433, 32.799618>,  <27.384323, 30.984327, 32.152016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208017, 30.733433, 32.799618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391214, 30.446835, 33.010098>,  <27.501133, 30.274876, 33.136383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391214, 30.446835, 33.010098>,  <27.208017, 30.733433, 32.799618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391214, 30.446835, 33.010098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555318, -0.231626, -0.798732,
		0.694166, 0.658017, 0.291799,
		0.457991, -0.716493, 0.526195,
		27.528612, 30.231886, 33.167957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991245, 30.881266, 32.841351>,  <27.208017, 30.733433, 32.799618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991245, 30.881266, 32.841351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906130, 30.492218, 32.878727>,  <27.855061, 30.258789, 32.901154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906130, 30.492218, 32.878727>,  <27.991245, 30.881266, 32.841351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906130, 30.492218, 32.878727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653935, -0.212815, -0.726002,
		0.726009, -0.093383, 0.681315,
		-0.212790, -0.972620, 0.093439,
		27.842293, 30.200432, 32.906757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554148, 30.619263, 33.041126>,  <27.991245, 30.881266, 32.841351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554148, 30.619263, 33.041126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372124, 30.314022, 32.857559>,  <28.262909, 30.130878, 32.747421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372124, 30.314022, 32.857559>,  <28.554148, 30.619263, 33.041126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372124, 30.314022, 32.857559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885987, -0.336412, -0.319145,
		0.089155, -0.551820, 0.829184,
		-0.455058, -0.763100, -0.458913,
		28.235607, 30.085093, 32.719887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826595, 30.049105, 33.323685>,  <28.554148, 30.619263, 33.041126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826595, 30.049105, 33.323685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695614, 29.974009, 32.953274>,  <28.617025, 29.928951, 32.731026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695614, 29.974009, 32.953274>,  <28.826595, 30.049105, 33.323685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695614, 29.974009, 32.953274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873256, -0.434402, -0.220722,
		-0.360831, -0.880936, 0.306190,
		-0.327452, -0.187739, -0.926029,
		28.597378, 29.917686, 32.675465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971180, 29.275911, 33.120369>,  <28.826595, 30.049105, 33.323685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971180, 29.275911, 33.120369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922333, 29.498707, 32.791771>,  <28.893024, 29.632383, 32.594612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922333, 29.498707, 32.791771>,  <28.971180, 29.275911, 33.120369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922333, 29.498707, 32.791771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725647, -0.514585, -0.456769,
		-0.677143, -0.651895, -0.341336,
		-0.122119, 0.556988, -0.821494,
		28.885696, 29.665804, 32.545322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839445, 28.906061, 32.490295>,  <28.971180, 29.275911, 33.120369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839445, 28.906061, 32.490295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013712, 29.255316, 32.402821>,  <29.118273, 29.464869, 32.350334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013712, 29.255316, 32.402821>,  <28.839445, 28.906061, 32.490295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013712, 29.255316, 32.402821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796425, -0.487141, -0.358331,
		-0.419404, -0.018056, -0.907620,
		0.435669, 0.873136, -0.218689,
		29.144413, 29.517258, 32.337215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954487, 28.954720, 31.670818>,  <28.839445, 28.906061, 32.490295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954487, 28.954720, 31.670818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187815, 29.132086, 31.943031>,  <29.327810, 29.238506, 32.106358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187815, 29.132086, 31.943031>,  <28.954487, 28.954720, 31.670818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187815, 29.132086, 31.943031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800175, -0.457605, -0.387708,
		0.139499, 0.770701, -0.621739,
		0.583318, 0.443415, 0.680531,
		29.362810, 29.265110, 32.147190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407103, 29.610153, 31.440817>,  <28.954487, 28.954720, 31.670818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407103, 29.610153, 31.440817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552589, 29.366470, 31.722691>,  <29.639881, 29.220261, 31.891815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552589, 29.366470, 31.722691>,  <29.407103, 29.610153, 31.440817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552589, 29.366470, 31.722691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677525, -0.346153, -0.648951,
		0.639273, 0.713475, 0.286850,
		0.363717, -0.609205, 0.704684,
		29.661705, 29.183708, 31.934095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664690, 30.410927, 31.725237>,  <29.407103, 29.610153, 31.440817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664690, 30.410927, 31.725237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522173, 30.775272, 31.641924>,  <29.436663, 30.993879, 31.591936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522173, 30.775272, 31.641924>,  <29.664690, 30.410927, 31.725237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522173, 30.775272, 31.641924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057895, -0.244003, -0.968045,
		-0.932578, -0.332850, 0.139672,
		-0.356294, 0.910864, -0.208281,
		29.415285, 31.048532, 31.579439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006845, 30.321966, 31.413586>,  <29.664690, 30.410927, 31.725237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006845, 30.321966, 31.413586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192530, 30.653275, 31.288063>,  <29.303940, 30.852060, 31.212749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192530, 30.653275, 31.288063>,  <29.006845, 30.321966, 31.413586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192530, 30.653275, 31.288063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123770, -0.290155, -0.948942,
		-0.877033, 0.479351, -0.032178,
		0.464213, 0.828271, -0.313805,
		29.331793, 30.901756, 31.193922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649557, 30.525261, 30.934578>,  <29.006845, 30.321966, 31.413586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649557, 30.525261, 30.934578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989046, 30.717258, 30.845781>,  <29.192739, 30.832457, 30.792503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989046, 30.717258, 30.845781>,  <28.649557, 30.525261, 30.934578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989046, 30.717258, 30.845781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159091, -0.168585, -0.972764,
		-0.504344, 0.860921, -0.066719,
		0.848721, 0.479993, -0.221990,
		29.243662, 30.861256, 30.779184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433090, 30.986710, 30.427664>,  <28.649557, 30.525261, 30.934578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433090, 30.986710, 30.427664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829527, 30.951330, 30.387833>,  <29.067389, 30.930103, 30.363934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829527, 30.951330, 30.387833>,  <28.433090, 30.986710, 30.427664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829527, 30.951330, 30.387833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124752, -0.354686, -0.926625,
		0.046641, 0.930793, -0.362560,
		0.991091, -0.088449, -0.099576,
		29.126854, 30.924795, 30.357960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608059, 31.214205, 29.788733>,  <28.433090, 30.986710, 30.427664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608059, 31.214205, 29.788733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927654, 30.999403, 29.896986>,  <29.119411, 30.870522, 29.961939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927654, 30.999403, 29.896986>,  <28.608059, 31.214205, 29.788733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927654, 30.999403, 29.896986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088891, -0.339634, -0.936348,
		0.594738, 0.772190, -0.223629,
		0.798990, -0.537003, 0.270634,
		29.167351, 30.838303, 29.978176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898895, 31.138508, 29.144573>,  <28.608059, 31.214205, 29.788733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898895, 31.138508, 29.144573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083706, 30.875689, 29.382841>,  <29.194592, 30.717997, 29.525801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083706, 30.875689, 29.382841>,  <28.898895, 31.138508, 29.144573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083706, 30.875689, 29.382841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265555, -0.538343, -0.799792,
		0.846176, 0.527706, -0.074245,
		0.462025, -0.657049, 0.595668,
		29.222313, 30.678574, 29.561541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546911, 31.096821, 29.019428>,  <28.898895, 31.138508, 29.144573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546911, 31.096821, 29.019428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491922, 30.743538, 29.198780>,  <29.458929, 30.531569, 29.306391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491922, 30.743538, 29.198780>,  <29.546911, 31.096821, 29.019428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491922, 30.743538, 29.198780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246322, -0.468940, -0.848187,
		0.959389, -0.006159, 0.282020,
		-0.137474, -0.883209, 0.448379,
		29.450680, 30.478575, 29.333294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125099, 30.665398, 28.988667>,  <29.546911, 31.096821, 29.019428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125099, 30.665398, 28.988667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838701, 30.387575, 29.016787>,  <29.666862, 30.220881, 29.033659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838701, 30.387575, 29.016787>,  <30.125099, 30.665398, 28.988667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838701, 30.387575, 29.016787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385944, -0.477731, -0.789189,
		0.581722, -0.537923, 0.610113,
		-0.715994, -0.694558, 0.070298,
		29.623903, 30.179207, 29.037876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510275, 30.026474, 28.913120>,  <30.125099, 30.665398, 28.988667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510275, 30.026474, 28.913120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134226, 29.921623, 28.825977>,  <29.908596, 29.858713, 28.773691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134226, 29.921623, 28.825977>,  <30.510275, 30.026474, 28.913120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134226, 29.921623, 28.825977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326782, -0.511525, -0.794705,
		0.096873, -0.818311, 0.566554,
		-0.940122, -0.262125, -0.217856,
		29.852190, 29.842985, 28.760620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466869, 29.390591, 28.650105>,  <30.510275, 30.026474, 28.913120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466869, 29.390591, 28.650105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110582, 29.481548, 28.492670>,  <29.896811, 29.536123, 28.398209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110582, 29.481548, 28.492670>,  <30.466869, 29.390591, 28.650105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110582, 29.481548, 28.492670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325034, -0.286677, -0.901204,
		-0.317769, -0.930647, 0.181434,
		-0.890716, 0.227402, -0.393589,
		29.843367, 29.549767, 28.374594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277796, 28.831112, 28.332958>,  <30.466869, 29.390591, 28.650105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277796, 28.831112, 28.332958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065723, 29.119577, 28.154594>,  <29.938480, 29.292656, 28.047577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065723, 29.119577, 28.154594>,  <30.277796, 28.831112, 28.332958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065723, 29.119577, 28.154594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275567, -0.350798, -0.894988,
		-0.801856, -0.597382, -0.012743,
		-0.530179, 0.721163, -0.445908,
		29.906670, 29.335926, 28.020823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129799, 28.592201, 27.619099>,  <30.277796, 28.831112, 28.332958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129799, 28.592201, 27.619099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005423, 28.970516, 27.581581>,  <29.930796, 29.197506, 27.559071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005423, 28.970516, 27.581581>,  <30.129799, 28.592201, 27.619099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005423, 28.970516, 27.581581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120092, -0.136991, -0.983266,
		-0.942811, -0.294475, 0.156179,
		-0.310943, 0.945789, -0.093793,
		29.912140, 29.254253, 27.553444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575998, 28.579008, 27.254477>,  <30.129799, 28.592201, 27.619099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575998, 28.579008, 27.254477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700962, 28.955269, 27.201447>,  <29.775940, 29.181025, 27.169628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700962, 28.955269, 27.201447>,  <29.575998, 28.579008, 27.254477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700962, 28.955269, 27.201447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062648, -0.159657, -0.985183,
		-0.947880, 0.299474, -0.108809,
		0.312409, 0.940651, -0.132574,
		29.794685, 29.237465, 27.161674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141354, 28.887867, 26.767530>,  <29.575998, 28.579008, 27.254477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141354, 28.887867, 26.767530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470846, 29.110823, 26.726000>,  <29.668543, 29.244596, 26.701082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470846, 29.110823, 26.726000>,  <29.141354, 28.887867, 26.767530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470846, 29.110823, 26.726000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028330, -0.223356, -0.974325,
		-0.566269, 0.799643, -0.199777,
		0.823734, 0.557390, -0.103826,
		29.717966, 29.278040, 26.694853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030375, 29.255585, 26.170965>,  <29.141354, 28.887867, 26.767530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030375, 29.255585, 26.170965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428473, 29.284380, 26.197222>,  <29.667332, 29.301657, 26.212976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428473, 29.284380, 26.197222>,  <29.030375, 29.255585, 26.170965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428473, 29.284380, 26.197222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060333, 0.073605, -0.995461,
		-0.076493, 0.994686, 0.068911,
		0.995243, 0.071988, 0.065643,
		29.727045, 29.305977, 26.216915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272326, 29.857687, 25.825495>,  <29.030375, 29.255585, 26.170965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272326, 29.857687, 25.825495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598804, 29.628080, 25.851803>,  <29.794691, 29.490316, 25.867588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598804, 29.628080, 25.851803>,  <29.272326, 29.857687, 25.825495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598804, 29.628080, 25.851803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143870, 0.091670, -0.985342,
		0.559575, 0.813695, 0.157405,
		0.816197, -0.574018, 0.065770,
		29.843664, 29.455875, 25.871534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869347, 30.165436, 25.474567>,  <29.272326, 29.857687, 25.825495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869347, 30.165436, 25.474567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903435, 29.767000, 25.483875>,  <29.923887, 29.527939, 25.489460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903435, 29.767000, 25.483875>,  <29.869347, 30.165436, 25.474567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903435, 29.767000, 25.483875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159918, -0.009378, -0.987086,
		0.983445, 0.087841, 0.158494,
		0.085221, -0.996090, 0.023270,
		29.929001, 29.468174, 25.490856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284767, 30.072445, 24.919697>,  <29.869347, 30.165436, 25.474567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284767, 30.072445, 24.919697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151480, 29.705643, 25.007397>,  <30.071507, 29.485561, 25.060017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151480, 29.705643, 25.007397>,  <30.284767, 30.072445, 24.919697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151480, 29.705643, 25.007397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020943, -0.225282, -0.974068,
		0.942617, -0.329169, 0.055863,
		-0.333218, -0.917004, 0.219248,
		30.051514, 29.430542, 25.073172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613775, 29.814150, 24.345730>,  <30.284767, 30.072445, 24.919697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613775, 29.814150, 24.345730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306650, 29.581450, 24.453083>,  <30.122375, 29.441830, 24.517496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306650, 29.581450, 24.453083>,  <30.613775, 29.814150, 24.345730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306650, 29.581450, 24.453083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200574, -0.179583, -0.963078,
		0.608468, -0.793295, 0.021203,
		-0.767813, -0.581750, 0.268385,
		30.076305, 29.406925, 24.533598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659067, 29.260513, 23.966705>,  <30.613775, 29.814150, 24.345730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659067, 29.260513, 23.966705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274738, 29.268785, 24.077263>,  <30.044142, 29.273748, 24.143599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274738, 29.268785, 24.077263>,  <30.659067, 29.260513, 23.966705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274738, 29.268785, 24.077263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277156, -0.062530, -0.958788,
		-0.002545, -0.997829, 0.065812,
		-0.960821, 0.020681, 0.276395,
		29.986492, 29.274990, 24.160181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453135, 28.742733, 23.477335>,  <30.659067, 29.260513, 23.966705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453135, 28.742733, 23.477335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147051, 28.947126, 23.633976>,  <29.963400, 29.069761, 23.727961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147051, 28.947126, 23.633976>,  <30.453135, 28.742733, 23.477335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147051, 28.947126, 23.633976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471938, -0.031516, -0.881068,
		-0.437868, -0.859013, 0.265268,
		-0.765210, 0.510982, 0.391601,
		29.917488, 29.100422, 23.751457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826330, 28.341425, 23.378582>,  <30.453135, 28.742733, 23.477335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826330, 28.341425, 23.378582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731186, 28.728613, 23.410721>,  <29.674099, 28.960926, 23.430004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731186, 28.728613, 23.410721>,  <29.826330, 28.341425, 23.378582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731186, 28.728613, 23.410721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353618, -0.009255, -0.935344,
		-0.904642, -0.250894, 0.344493,
		-0.237861, 0.967971, 0.080349,
		29.659828, 29.019005, 23.434826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269730, 28.462719, 22.779654>,  <29.826330, 28.341425, 23.378582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269730, 28.462719, 22.779654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342976, 28.835833, 22.903833>,  <29.386923, 29.059702, 22.978342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342976, 28.835833, 22.903833>,  <29.269730, 28.462719, 22.779654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342976, 28.835833, 22.903833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371345, 0.358025, -0.856692,
		-0.910259, 0.041590, 0.411946,
		0.183116, 0.932785, 0.310451,
		29.397911, 29.115667, 22.996969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645302, 28.806103, 22.587511>,  <29.269730, 28.462719, 22.779654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645302, 28.806103, 22.587511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938654, 29.077253, 22.608042>,  <29.114666, 29.239944, 22.620359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938654, 29.077253, 22.608042>,  <28.645302, 28.806103, 22.587511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938654, 29.077253, 22.608042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257649, 0.347023, -0.901772,
		-0.629101, 0.648119, 0.429155,
		0.733382, 0.677877, 0.051325,
		29.158669, 29.280617, 22.623440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364223, 29.360981, 22.420597>,  <28.645302, 28.806103, 22.587511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364223, 29.360981, 22.420597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750559, 29.439348, 22.352751>,  <28.982361, 29.486368, 22.312042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750559, 29.439348, 22.352751>,  <28.364223, 29.360981, 22.420597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750559, 29.439348, 22.352751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238289, 0.414213, -0.878434,
		-0.101845, 0.888844, 0.446748,
		0.965840, 0.195919, -0.169616,
		29.040310, 29.498123, 22.301867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418526, 30.132181, 22.322224>,  <28.364223, 29.360981, 22.420597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418526, 30.132181, 22.322224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741598, 29.957033, 22.164276>,  <28.935442, 29.851944, 22.069508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.741598, 29.957033, 22.164276>,  <28.418526, 30.132181, 22.322224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741598, 29.957033, 22.164276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250970, 0.350700, -0.902232,
		0.533542, 0.827816, 0.173361,
		0.807680, -0.437870, -0.394870,
		28.983902, 29.825672, 22.045815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485746, 30.512558, 21.757835>,  <28.418526, 30.132181, 22.322224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485746, 30.512558, 21.757835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739471, 30.223871, 21.647001>,  <28.891706, 30.050659, 21.580502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739471, 30.223871, 21.647001>,  <28.485746, 30.512558, 21.757835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739471, 30.223871, 21.647001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189646, 0.202197, -0.960807,
		0.749454, 0.662000, -0.008615,
		0.634312, -0.721715, -0.277083,
		28.929766, 30.007357, 21.563877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896498, 30.812424, 21.214275>,  <28.485746, 30.512558, 21.757835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896498, 30.812424, 21.214275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946024, 30.415979, 21.194794>,  <28.975740, 30.178114, 21.183105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946024, 30.415979, 21.194794>,  <28.896498, 30.812424, 21.214275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946024, 30.415979, 21.194794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249365, 0.078582, -0.965216,
		0.960461, 0.107366, 0.256878,
		0.123818, -0.991109, -0.048702,
		28.983170, 30.118647, 21.180183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511604, 30.699490, 20.837341>,  <28.896498, 30.812424, 21.214275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511604, 30.699490, 20.837341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294569, 30.368340, 20.780468>,  <29.164347, 30.169649, 20.746344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294569, 30.368340, 20.780468>,  <29.511604, 30.699490, 20.837341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294569, 30.368340, 20.780468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298487, -0.031802, -0.953884,
		0.785176, -0.560008, 0.264365,
		-0.542590, -0.827876, -0.142185,
		29.131792, 30.119976, 20.737812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971203, 30.201633, 20.450531>,  <29.511604, 30.699490, 20.837341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971203, 30.201633, 20.450531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587976, 30.096214, 20.405531>,  <29.358042, 30.032963, 20.378531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587976, 30.096214, 20.405531>,  <29.971203, 30.201633, 20.450531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587976, 30.096214, 20.405531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163122, -0.178822, -0.970265,
		0.235594, -0.947927, 0.214313,
		-0.958064, -0.263548, -0.112498,
		29.300558, 30.017151, 20.371782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995943, 29.561485, 20.049509>,  <29.971203, 30.201633, 20.450531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995943, 29.561485, 20.049509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654726, 29.761267, 19.989025>,  <29.449995, 29.881136, 19.952736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654726, 29.761267, 19.989025>,  <29.995943, 29.561485, 20.049509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654726, 29.761267, 19.989025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153180, -0.037336, -0.987493,
		-0.498854, -0.865535, -0.044657,
		-0.853042, 0.499456, -0.151208,
		29.398813, 29.911102, 19.943663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906239, 29.320606, 19.392086>,  <29.995943, 29.561485, 20.049509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906239, 29.320606, 19.392086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627815, 29.601212, 19.453249>,  <29.460762, 29.769575, 19.489946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627815, 29.601212, 19.453249>,  <29.906239, 29.320606, 19.392086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627815, 29.601212, 19.453249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085945, 0.292844, -0.952290,
		-0.712822, -0.649708, -0.264128,
		-0.696059, 0.701514, 0.152907,
		29.418997, 29.811666, 19.499121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346809, 29.208534, 18.892685>,  <29.906239, 29.320606, 19.392086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346809, 29.208534, 18.892685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340210, 29.594620, 18.997061>,  <29.336250, 29.826271, 19.059687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.340210, 29.594620, 18.997061>,  <29.346809, 29.208534, 18.892685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340210, 29.594620, 18.997061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014216, 0.260721, -0.965310,
		-0.999763, -0.019633, 0.009420,
		-0.016496, 0.965215, 0.260938,
		29.335260, 29.884184, 19.075342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797491, 29.536015, 18.454494>,  <29.346809, 29.208534, 18.892685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797491, 29.536015, 18.454494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010286, 29.856945, 18.562763>,  <29.137962, 30.049503, 18.627726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010286, 29.856945, 18.562763>,  <28.797491, 29.536015, 18.454494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010286, 29.856945, 18.562763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024560, 0.304905, -0.952066,
		-0.846397, 0.513134, 0.142500,
		0.531986, 0.802326, 0.270673,
		29.169882, 30.097643, 18.643965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454489, 30.162903, 18.106213>,  <28.797491, 29.536015, 18.454494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454489, 30.162903, 18.106213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827868, 30.272326, 18.199030>,  <29.051895, 30.337978, 18.254721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827868, 30.272326, 18.199030>,  <28.454489, 30.162903, 18.106213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827868, 30.272326, 18.199030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150772, 0.287766, -0.945758,
		-0.325493, 0.917800, 0.227370,
		0.933446, 0.273557, 0.232044,
		29.107901, 30.354393, 18.268642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434935, 30.772131, 17.785820>,  <28.454489, 30.162903, 18.106213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434935, 30.772131, 17.785820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815746, 30.660940, 17.837002>,  <29.044233, 30.594227, 17.867710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815746, 30.660940, 17.837002>,  <28.434935, 30.772131, 17.785820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815746, 30.660940, 17.837002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213952, 0.305700, -0.927778,
		0.218784, 0.910647, 0.350508,
		0.952028, -0.277975, 0.127952,
		29.101355, 30.577547, 17.875387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871904, 31.297892, 17.438900>,  <28.434935, 30.772131, 17.785820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871904, 31.297892, 17.438900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145657, 31.006454, 17.450020>,  <29.309908, 30.831593, 17.456692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145657, 31.006454, 17.450020>,  <28.871904, 31.297892, 17.438900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145657, 31.006454, 17.450020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308709, 0.255013, -0.916333,
		0.660546, 0.635703, 0.399450,
		0.684381, -0.728595, 0.027799,
		29.350971, 30.787876, 17.458359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463133, 31.498947, 16.962673>,  <28.871904, 31.297892, 17.438900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463133, 31.498947, 16.962673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505810, 31.107695, 17.034088>,  <29.531416, 30.872944, 17.076937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505810, 31.107695, 17.034088>,  <29.463133, 31.498947, 16.962673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505810, 31.107695, 17.034088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295869, -0.140198, -0.944884,
		0.949252, 0.153634, 0.274441,
		0.106690, -0.978131, 0.178539,
		29.537817, 30.814255, 17.087650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174198, 31.220005, 16.816917>,  <29.463133, 31.498947, 16.962673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174198, 31.220005, 16.816917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917065, 30.914410, 16.794697>,  <29.762785, 30.731052, 16.781364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917065, 30.914410, 16.794697>,  <30.174198, 31.220005, 16.816917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917065, 30.914410, 16.794697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247996, -0.138956, -0.958743,
		0.724751, -0.630089, 0.278792,
		-0.642833, -0.763989, -0.055551,
		29.724215, 30.685213, 16.778032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451550, 30.805990, 16.310217>,  <30.174198, 31.220005, 16.816917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451550, 30.805990, 16.310217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080175, 30.659697, 16.336273>,  <29.857351, 30.571920, 16.351908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080175, 30.659697, 16.336273>,  <30.451550, 30.805990, 16.310217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080175, 30.659697, 16.336273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035098, -0.088212, -0.995483,
		0.369830, -0.926529, 0.069062,
		-0.928436, -0.365735, 0.065143,
		29.801645, 30.549976, 16.355816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440929, 30.182259, 15.876692>,  <30.451550, 30.805990, 16.310217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440929, 30.182259, 15.876692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073208, 30.333515, 15.920300>,  <29.852575, 30.424269, 15.946465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.073208, 30.333515, 15.920300>,  <30.440929, 30.182259, 15.876692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073208, 30.333515, 15.920300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119690, -0.004750, -0.992800,
		-0.374901, -0.925735, 0.049626,
		-0.919306, 0.378142, 0.109020,
		29.797417, 30.446959, 15.953006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956865, 29.849113, 15.411153>,  <30.440929, 30.182259, 15.876692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956865, 29.849113, 15.411153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755316, 30.180805, 15.507893>,  <29.634386, 30.379820, 15.565936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755316, 30.180805, 15.507893>,  <29.956865, 29.849113, 15.411153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755316, 30.180805, 15.507893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224004, 0.144968, -0.963746,
		-0.834225, -0.539783, 0.112704,
		-0.503875, 0.829228, 0.241849,
		29.604153, 30.429573, 15.580447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267176, 29.725740, 15.114033>,  <29.956865, 29.849113, 15.411153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267176, 29.725740, 15.114033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304638, 30.114824, 15.198946>,  <29.327114, 30.348274, 15.249894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304638, 30.114824, 15.198946>,  <29.267176, 29.725740, 15.114033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304638, 30.114824, 15.198946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080743, 0.219937, -0.972167,
		-0.992325, 0.073907, 0.099137,
		0.093654, 0.972710, 0.212282,
		29.332733, 30.406637, 15.262630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680387, 30.031860, 14.803941>,  <29.267176, 29.725740, 15.114033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680387, 30.031860, 14.803941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966829, 30.308456, 14.841974>,  <29.138695, 30.474413, 14.864795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966829, 30.308456, 14.841974>,  <28.680387, 30.031860, 14.803941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966829, 30.308456, 14.841974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032442, 0.103104, -0.994141,
		-0.697240, 0.714992, 0.051400,
		0.716103, 0.691488, 0.095084,
		29.181660, 30.515903, 14.870500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455322, 30.640202, 14.467892>,  <28.680387, 30.031860, 14.803941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455322, 30.640202, 14.467892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854626, 30.662624, 14.460513>,  <29.094208, 30.676079, 14.456086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854626, 30.662624, 14.460513>,  <28.455322, 30.640202, 14.467892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854626, 30.662624, 14.460513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030045, 0.213706, -0.976436,
		-0.050794, 0.975289, 0.215017,
		0.998257, 0.056058, -0.018447,
		29.154102, 30.679441, 14.454979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367844, 30.376896, 13.810445>,  <28.455322, 30.640202, 14.467892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367844, 30.376896, 13.810445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086214, 30.622118, 13.953799>,  <27.917236, 30.769251, 14.039812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086214, 30.622118, 13.953799>,  <28.367844, 30.376896, 13.810445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086214, 30.622118, 13.953799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448052, 0.775053, -0.445581,
		-0.550934, -0.153147, -0.820376,
		-0.704074, 0.613057, 0.358385,
		27.874992, 30.806036, 14.061315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237324, 30.986439, 13.372390>,  <28.367844, 30.376896, 13.810445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237324, 30.986439, 13.372390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159256, 31.093584, 13.749783>,  <28.112415, 31.157871, 13.976218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.159256, 31.093584, 13.749783>,  <28.237324, 30.986439, 13.372390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159256, 31.093584, 13.749783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483514, 0.863233, -0.145059,
		-0.853301, 0.427876, -0.297993,
		-0.195170, 0.267862, 0.943482,
		28.100704, 31.173943, 14.032827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241743, 31.763355, 13.404047>,  <28.237324, 30.986439, 13.372390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241743, 31.763355, 13.404047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307596, 31.634327, 13.776895>,  <28.347107, 31.556910, 14.000603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307596, 31.634327, 13.776895>,  <28.241743, 31.763355, 13.404047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307596, 31.634327, 13.776895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414140, 0.880285, 0.231486,
		-0.895201, 0.347918, 0.278510,
		0.164630, -0.322569, 0.932119,
		28.356985, 31.537556, 14.056530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960590, 32.240780, 13.781672>,  <28.241743, 31.763355, 13.404047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960590, 32.240780, 13.781672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194235, 32.028549, 14.027370>,  <28.334421, 31.901211, 14.174789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194235, 32.028549, 14.027370>,  <27.960590, 32.240780, 13.781672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194235, 32.028549, 14.027370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401491, 0.846570, 0.349462,
		-0.705420, 0.042489, 0.707515,
		0.584113, -0.530579, 0.614247,
		28.369469, 31.869375, 14.211644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778589, 32.278553, 14.417566>,  <27.960590, 32.240780, 13.781672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778589, 32.278553, 14.417566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172733, 32.222244, 14.379104>,  <28.409220, 32.188457, 14.356026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172733, 32.222244, 14.379104>,  <27.778589, 32.278553, 14.417566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172733, 32.222244, 14.379104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169348, 0.873087, 0.457209,
		0.019592, -0.466800, 0.884146,
		0.985362, -0.140770, -0.096157,
		28.468342, 32.180012, 14.350257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957855, 32.635593, 14.880023>,  <27.778589, 32.278553, 14.417566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957855, 32.635593, 14.880023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276667, 32.626591, 14.638615>,  <28.467955, 32.621189, 14.493770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.276667, 32.626591, 14.638615>,  <27.957855, 32.635593, 14.880023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276667, 32.626591, 14.638615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221820, 0.940370, 0.257876,
		0.561728, -0.339408, 0.754496,
		0.797030, -0.022506, -0.603520,
		28.515776, 32.619839, 14.457559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488579, 32.928394, 15.172750>,  <27.957855, 32.635593, 14.880023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488579, 32.928394, 15.172750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571753, 32.959038, 14.782695>,  <28.621656, 32.977425, 14.548662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571753, 32.959038, 14.782695>,  <28.488579, 32.928394, 15.172750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571753, 32.959038, 14.782695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223909, 0.966729, 0.123692,
		0.952170, -0.244062, 0.183866,
		0.207937, 0.076606, -0.975138,
		28.634134, 32.982021, 14.490153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099558, 33.385162, 15.217199>,  <28.488579, 32.928394, 15.172750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099558, 33.385162, 15.217199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874737, 33.392326, 14.886436>,  <28.739843, 33.396626, 14.687979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874737, 33.392326, 14.886436>,  <29.099558, 33.385162, 15.217199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874737, 33.392326, 14.886436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051994, 0.997023, 0.056940,
		0.825466, 0.074998, -0.559448,
		-0.562053, 0.017914, -0.826907,
		28.706121, 33.397701, 14.638364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426321, 33.677921, 14.559316>,  <29.099558, 33.385162, 15.217199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426321, 33.677921, 14.559316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033632, 33.739166, 14.604528>,  <28.798019, 33.775913, 14.631657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033632, 33.739166, 14.604528>,  <29.426321, 33.677921, 14.559316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033632, 33.739166, 14.604528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153319, 0.988153, -0.006881,
		-0.112747, 0.010575, -0.993567,
		-0.981723, 0.153108, 0.113033,
		28.739115, 33.785099, 14.638438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978565, 34.071873, 14.877789>,  <29.426321, 33.677921, 14.559316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978565, 34.071873, 14.877789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900183, 33.680717, 14.907032>,  <29.853153, 33.446026, 14.924579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900183, 33.680717, 14.907032>,  <29.978565, 34.071873, 14.877789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900183, 33.680717, 14.907032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208425, 0.031318, 0.977537,
		-0.958207, 0.206791, 0.197679,
		-0.195955, -0.977884, 0.073109,
		29.841396, 33.387352, 14.928965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560946, 33.926182, 15.526719>,  <29.978565, 34.071873, 14.877789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560946, 33.926182, 15.526719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757048, 33.593376, 15.422872>,  <29.874710, 33.393692, 15.360563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757048, 33.593376, 15.422872>,  <29.560946, 33.926182, 15.526719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757048, 33.593376, 15.422872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283998, -0.129121, 0.950091,
		-0.824011, -0.539520, 0.172988,
		0.490256, -0.832013, -0.259619,
		29.904125, 33.343773, 15.344986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374620, 33.450504, 16.010824>,  <29.560946, 33.926182, 15.526719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374620, 33.450504, 16.010824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711527, 33.286217, 15.871173>,  <29.913671, 33.187645, 15.787382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711527, 33.286217, 15.871173>,  <29.374620, 33.450504, 16.010824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711527, 33.286217, 15.871173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225340, -0.320095, 0.920196,
		-0.489701, -0.853724, -0.177053,
		0.842267, -0.410724, -0.349129,
		29.964207, 33.162998, 15.766435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405790, 32.738781, 16.238573>,  <29.374620, 33.450504, 16.010824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405790, 32.738781, 16.238573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776516, 32.872093, 16.169365>,  <29.998951, 32.952080, 16.127840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776516, 32.872093, 16.169365>,  <29.405790, 32.738781, 16.238573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776516, 32.872093, 16.169365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239594, -0.170057, 0.955863,
		0.289151, -0.927363, -0.237465,
		0.926816, 0.333284, -0.173019,
		30.054560, 32.972076, 16.117460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824036, 32.283924, 16.610872>,  <29.405790, 32.738781, 16.238573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824036, 32.283924, 16.610872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049860, 32.604973, 16.533859>,  <30.185354, 32.797604, 16.487652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049860, 32.604973, 16.533859>,  <29.824036, 32.283924, 16.610872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049860, 32.604973, 16.533859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327789, -0.003940, 0.944743,
		0.757512, -0.596476, -0.265315,
		0.564562, 0.802621, -0.192534,
		30.219229, 32.845760, 16.476099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395655, 32.149940, 16.868357>,  <29.824036, 32.283924, 16.610872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395655, 32.149940, 16.868357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414371, 32.548435, 16.839169>,  <30.425602, 32.787533, 16.821655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414371, 32.548435, 16.839169>,  <30.395655, 32.149940, 16.868357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414371, 32.548435, 16.839169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428524, 0.045966, 0.902360,
		0.902318, -0.073493, -0.424760,
		0.046792, 0.996236, -0.072970,
		30.428410, 32.847305, 16.817278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040045, 32.313076, 17.027771>,  <30.395655, 32.149940, 16.868357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040045, 32.313076, 17.027771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798801, 32.625011, 17.094837>,  <30.654055, 32.812172, 17.135077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798801, 32.625011, 17.094837>,  <31.040045, 32.313076, 17.027771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798801, 32.625011, 17.094837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307637, 0.033475, 0.950915,
		0.735947, 0.625086, -0.260096,
		-0.603110, 0.779838, 0.167664,
		30.617868, 32.858963, 17.145136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481758, 32.713749, 17.487045>,  <31.040045, 32.313076, 17.027771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481758, 32.713749, 17.487045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112259, 32.859207, 17.535122>,  <30.890558, 32.946484, 17.563967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112259, 32.859207, 17.535122>,  <31.481758, 32.713749, 17.487045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112259, 32.859207, 17.535122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178066, 0.129949, 0.975400,
		0.339085, 0.922428, -0.184794,
		-0.923750, 0.363649, 0.120190,
		30.835135, 32.968304, 17.571178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610609, 33.455048, 17.737022>,  <31.481758, 32.713749, 17.487045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610609, 33.455048, 17.737022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249239, 33.303879, 17.818018>,  <31.032417, 33.213177, 17.866615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.249239, 33.303879, 17.818018>,  <31.610609, 33.455048, 17.737022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249239, 33.303879, 17.818018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217365, 0.003376, 0.976084,
		-0.369566, 0.925832, 0.079097,
		-0.903423, -0.377920, 0.202491,
		30.978212, 33.190502, 17.878765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363417, 33.854774, 18.327774>,  <31.610609, 33.455048, 17.737022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363417, 33.854774, 18.327774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116451, 33.541237, 18.354269>,  <30.968271, 33.353115, 18.370167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116451, 33.541237, 18.354269>,  <31.363417, 33.854774, 18.327774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116451, 33.541237, 18.354269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013338, 0.073762, 0.997187,
		-0.786525, 0.616561, -0.035087,
		-0.617414, -0.783844, 0.066239,
		30.931227, 33.306084, 18.374142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930235, 34.039730, 18.874460>,  <31.363417, 33.854774, 18.327774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930235, 34.039730, 18.874460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895344, 33.642639, 18.841272>,  <30.874409, 33.404385, 18.821360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895344, 33.642639, 18.841272>,  <30.930235, 34.039730, 18.874460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895344, 33.642639, 18.841272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198002, -0.064349, 0.978087,
		-0.976313, 0.101743, -0.190949,
		-0.087226, -0.992727, -0.082970,
		30.869177, 33.344822, 18.816381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366539, 33.905838, 19.279922>,  <30.930235, 34.039730, 18.874460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366539, 33.905838, 19.279922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554110, 33.552593, 19.273920>,  <30.666651, 33.340645, 19.270319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.554110, 33.552593, 19.273920>,  <30.366539, 33.905838, 19.279922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554110, 33.552593, 19.273920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186172, -0.115435, 0.975713,
		-0.863394, -0.454742, -0.218541,
		0.468925, -0.883111, -0.015006,
		30.694788, 33.287659, 19.269419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912413, 33.459457, 19.650818>,  <30.366539, 33.905838, 19.279922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912413, 33.459457, 19.650818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275053, 33.290955, 19.640890>,  <30.492638, 33.189854, 19.634933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275053, 33.290955, 19.640890>,  <29.912413, 33.459457, 19.650818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275053, 33.290955, 19.640890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095925, -0.263012, 0.960012,
		-0.410938, -0.867968, -0.278856,
		0.906602, -0.421255, -0.024822,
		30.547033, 33.164577, 19.633444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779861, 32.922810, 20.064577>,  <29.912413, 33.459457, 19.650818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779861, 32.922810, 20.064577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176514, 32.972931, 20.052156>,  <30.414505, 33.003002, 20.044704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176514, 32.972931, 20.052156>,  <29.779861, 32.922810, 20.064577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176514, 32.972931, 20.052156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078817, -0.397172, 0.914354,
		0.102240, -0.909150, -0.403724,
		0.991632, 0.125303, -0.031050,
		30.474003, 33.010521, 20.042841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068075, 32.341679, 20.368172>,  <29.779861, 32.922810, 20.064577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068075, 32.341679, 20.368172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321943, 32.650345, 20.384825>,  <30.474264, 32.835545, 20.394817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321943, 32.650345, 20.384825>,  <30.068075, 32.341679, 20.368172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321943, 32.650345, 20.384825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078470, -0.117950, 0.989914,
		0.768790, -0.625001, -0.135412,
		0.634669, 0.771662, 0.041635,
		30.512344, 32.881844, 20.397316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520552, 32.101341, 20.798973>,  <30.068075, 32.341679, 20.368172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520552, 32.101341, 20.798973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576036, 32.497128, 20.815569>,  <30.609327, 32.734600, 20.825525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576036, 32.497128, 20.815569>,  <30.520552, 32.101341, 20.798973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576036, 32.497128, 20.815569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240710, -0.006951, 0.970572,
		0.960634, -0.144615, 0.237209,
		0.138711, 0.989464, 0.041488,
		30.617649, 32.793968, 20.828016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954025, 32.200649, 21.436768>,  <30.520552, 32.101341, 20.798973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954025, 32.200649, 21.436768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801722, 32.560932, 21.353106>,  <30.710339, 32.777103, 21.302908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801722, 32.560932, 21.353106>,  <30.954025, 32.200649, 21.436768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801722, 32.560932, 21.353106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146059, 0.164769, 0.975458,
		0.913066, 0.401963, 0.068819,
		-0.380759, 0.900709, -0.209155,
		30.687494, 32.831146, 21.290359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241858, 32.577461, 21.918505>,  <30.954025, 32.200649, 21.436768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241858, 32.577461, 21.918505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922955, 32.792629, 21.808939>,  <30.731613, 32.921730, 21.743198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922955, 32.792629, 21.808939>,  <31.241858, 32.577461, 21.918505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922955, 32.792629, 21.808939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255246, 0.110799, 0.960507,
		0.547021, 0.835685, 0.048966,
		-0.797256, 0.537916, -0.273915,
		30.683777, 32.954002, 21.726765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254187, 33.154858, 22.257891>,  <31.241858, 32.577461, 21.918505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254187, 33.154858, 22.257891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873640, 33.135300, 22.136230>,  <30.645311, 33.123566, 22.063234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873640, 33.135300, 22.136230>,  <31.254187, 33.154858, 22.257891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873640, 33.135300, 22.136230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307435, 0.213438, 0.927323,
		0.019573, 0.975732, -0.218091,
		-0.951368, -0.048899, -0.304152,
		30.588230, 33.120628, 22.044985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946377, 33.798916, 22.491274>,  <31.254187, 33.154858, 22.257891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946377, 33.798916, 22.491274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657930, 33.524990, 22.449274>,  <30.484863, 33.360634, 22.424074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657930, 33.524990, 22.449274>,  <30.946377, 33.798916, 22.491274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657930, 33.524990, 22.449274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258959, 0.125853, 0.957654,
		-0.642597, 0.717771, -0.268093,
		-0.721116, -0.684811, -0.105001,
		30.441595, 33.319546, 22.417774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454988, 34.061783, 22.920122>,  <30.946377, 33.798916, 22.491274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454988, 34.061783, 22.920122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313974, 33.690117, 22.875629>,  <30.229366, 33.467117, 22.848934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313974, 33.690117, 22.875629>,  <30.454988, 34.061783, 22.920122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313974, 33.690117, 22.875629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445065, 0.061915, 0.893355,
		-0.823187, 0.364446, -0.435365,
		-0.352535, -0.929164, -0.111234,
		30.208214, 33.411369, 22.842258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640446, 33.997261, 22.993532>,  <30.454988, 34.061783, 22.920122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640446, 33.997261, 22.993532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804983, 33.646126, 23.091679>,  <29.903706, 33.435444, 23.150566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804983, 33.646126, 23.091679>,  <29.640446, 33.997261, 22.993532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804983, 33.646126, 23.091679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295224, 0.126367, 0.947034,
		-0.862344, -0.461995, -0.207177,
		0.411345, -0.877833, 0.245364,
		29.928387, 33.382774, 23.165287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091326, 33.663582, 23.412546>,  <29.640446, 33.997261, 22.993532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091326, 33.663582, 23.412546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420298, 33.462772, 23.519566>,  <29.617680, 33.342285, 23.583778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420298, 33.462772, 23.519566>,  <29.091326, 33.663582, 23.412546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420298, 33.462772, 23.519566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379823, -0.134468, 0.915234,
		-0.423496, -0.854334, -0.301271,
		0.822427, -0.502027, 0.267549,
		29.667027, 33.312164, 23.599831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874979, 33.122448, 23.815481>,  <29.091326, 33.663582, 23.412546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874979, 33.122448, 23.815481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.258026, 33.177418, 23.916737>,  <29.487854, 33.210400, 23.977489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.258026, 33.177418, 23.916737>,  <28.874979, 33.122448, 23.815481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258026, 33.177418, 23.916737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226765, -0.182188, 0.956758,
		0.177603, -0.973613, -0.143303,
		0.957619, 0.137427, 0.253138,
		29.545313, 33.218647, 23.992678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073210, 32.550087, 24.201454>,  <28.874979, 33.122448, 23.815481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073210, 32.550087, 24.201454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358868, 32.810993, 24.303085>,  <29.530262, 32.967537, 24.364063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358868, 32.810993, 24.303085>,  <29.073210, 32.550087, 24.201454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358868, 32.810993, 24.303085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110881, -0.252978, 0.961097,
		0.691162, -0.714533, -0.108339,
		0.714143, 0.652261, 0.254077,
		29.573111, 33.006672, 24.379309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450031, 32.151814, 24.777166>,  <29.073210, 32.550087, 24.201454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450031, 32.151814, 24.777166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566244, 32.534477, 24.785189>,  <29.635971, 32.764076, 24.790003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.566244, 32.534477, 24.785189>,  <29.450031, 32.151814, 24.777166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566244, 32.534477, 24.785189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191234, -0.078589, 0.978393,
		0.937562, -0.280418, -0.205777,
		0.290531, 0.956655, 0.020057,
		29.653404, 32.821472, 24.791206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106674, 32.142311, 25.120871>,  <29.450031, 32.151814, 24.777166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106674, 32.142311, 25.120871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978703, 32.519909, 25.153162>,  <29.901920, 32.746468, 25.172537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978703, 32.519909, 25.153162>,  <30.106674, 32.142311, 25.120871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978703, 32.519909, 25.153162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232712, -0.004300, 0.972536,
		0.918417, 0.329929, -0.218304,
		-0.319929, 0.943996, 0.080728,
		29.882723, 32.803108, 25.177380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660988, 32.543041, 25.427343>,  <30.106674, 32.142311, 25.120871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660988, 32.543041, 25.427343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313948, 32.727863, 25.500860>,  <30.105724, 32.838757, 25.544970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313948, 32.727863, 25.500860>,  <30.660988, 32.543041, 25.427343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313948, 32.727863, 25.500860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198675, -0.016729, 0.979923,
		0.455850, 0.886695, -0.077285,
		-0.867599, 0.462052, 0.183790,
		30.053667, 32.866478, 25.555998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849413, 33.062500, 25.973886>,  <30.660988, 32.543041, 25.427343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849413, 33.062500, 25.973886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450035, 33.040478, 25.977472>,  <30.210409, 33.027264, 25.979624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450035, 33.040478, 25.977472>,  <30.849413, 33.062500, 25.973886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450035, 33.040478, 25.977472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003402, 0.100343, 0.994947,
		-0.055679, 0.993428, -0.100000,
		-0.998443, -0.055058, 0.008967,
		30.150501, 33.023960, 25.980162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650108, 33.621700, 26.386890>,  <30.849413, 33.062500, 25.973886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650108, 33.621700, 26.386890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334715, 33.376450, 26.367413>,  <30.145479, 33.229301, 26.355726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334715, 33.376450, 26.367413>,  <30.650108, 33.621700, 26.386890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334715, 33.376450, 26.367413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160662, 0.128899, 0.978557,
		-0.593699, 0.779400, -0.200141,
		-0.788485, -0.613123, -0.048692,
		30.098169, 33.192513, 26.352804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041656, 34.038536, 26.726954>,  <30.650108, 33.621700, 26.386890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041656, 34.038536, 26.726954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986498, 33.642406, 26.733271>,  <29.953402, 33.404728, 26.737061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986498, 33.642406, 26.733271>,  <30.041656, 34.038536, 26.726954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986498, 33.642406, 26.733271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061710, 0.024506, 0.997793,
		-0.988522, 0.136620, -0.064492,
		-0.137899, -0.990321, 0.015794,
		29.945127, 33.345310, 26.738008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586472, 33.956802, 27.248760>,  <30.041656, 34.038536, 26.726954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586472, 33.956802, 27.248760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736965, 33.588985, 27.203344>,  <29.827261, 33.368294, 27.176094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736965, 33.588985, 27.203344>,  <29.586472, 33.956802, 27.248760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736965, 33.588985, 27.203344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032603, -0.109330, 0.993471,
		-0.925951, -0.377478, -0.011154,
		0.376232, -0.919542, -0.113542,
		29.849834, 33.313122, 27.169281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150059, 33.573521, 27.634293>,  <29.586472, 33.956802, 27.248760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150059, 33.573521, 27.634293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484415, 33.357841, 27.593204>,  <29.685028, 33.228432, 27.568552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484415, 33.357841, 27.593204>,  <29.150059, 33.573521, 27.634293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484415, 33.357841, 27.593204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058792, -0.274014, 0.959927,
		-0.545741, -0.796353, -0.260746,
		0.835889, -0.539201, -0.102722,
		29.735182, 33.196083, 27.562387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960361, 33.021267, 28.043036>,  <29.150059, 33.573521, 27.634293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960361, 33.021267, 28.043036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358593, 32.997711, 28.013773>,  <29.597532, 32.983578, 27.996216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358593, 32.997711, 28.013773>,  <28.960361, 33.021267, 28.043036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358593, 32.997711, 28.013773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062605, -0.164494, 0.984389,
		-0.070003, -0.984619, -0.160081,
		0.995580, -0.058889, -0.073157,
		29.657267, 32.980045, 27.991825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052805, 32.472160, 28.417458>,  <28.960361, 33.021267, 28.043036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052805, 32.472160, 28.417458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403107, 32.662041, 28.382343>,  <29.613289, 32.775970, 28.361275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403107, 32.662041, 28.382343>,  <29.052805, 32.472160, 28.417458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403107, 32.662041, 28.382343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152836, -0.100144, 0.983164,
		0.457922, -0.874429, -0.160254,
		0.875756, 0.474705, -0.087786,
		29.665834, 32.804451, 28.356007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535934, 32.002090, 28.624237>,  <29.052805, 32.472160, 28.417458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535934, 32.002090, 28.624237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700548, 32.360573, 28.690512>,  <29.799316, 32.575665, 28.730276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700548, 32.360573, 28.690512>,  <29.535934, 32.002090, 28.624237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700548, 32.360573, 28.690512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167233, -0.252962, 0.952913,
		0.895920, -0.364447, -0.253978,
		0.411533, 0.896208, 0.165686,
		29.824009, 32.629436, 28.740217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965157, 31.857016, 29.191933>,  <29.535934, 32.002090, 28.624237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965157, 31.857016, 29.191933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968912, 32.256878, 29.201752>,  <29.971167, 32.496796, 29.207644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968912, 32.256878, 29.201752>,  <29.965157, 31.857016, 29.191933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968912, 32.256878, 29.201752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190710, -0.025889, 0.981305,
		0.981601, -0.004533, -0.190887,
		0.009390, 0.999654, 0.024548,
		29.971729, 32.556774, 29.209116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668415, 32.177044, 29.435905>,  <29.965157, 31.857016, 29.191933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668415, 32.177044, 29.435905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390301, 32.456501, 29.503403>,  <30.223433, 32.624176, 29.543901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390301, 32.456501, 29.503403>,  <30.668415, 32.177044, 29.435905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390301, 32.456501, 29.503403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357695, 0.132715, 0.924360,
		0.623401, 0.703055, -0.342176,
		-0.695288, 0.698642, 0.168745,
		30.181715, 32.666092, 29.554026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013275, 32.838345, 29.599022>,  <30.668415, 32.177044, 29.435905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013275, 32.838345, 29.599022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643759, 32.847023, 29.751936>,  <30.422049, 32.852230, 29.843685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643759, 32.847023, 29.751936>,  <31.013275, 32.838345, 29.599022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643759, 32.847023, 29.751936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352064, 0.440672, 0.825748,
		-0.150550, 0.897406, -0.414725,
		-0.923789, 0.021693, 0.382287,
		30.366623, 32.853531, 29.866623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500589, 33.285408, 29.049473>,  <31.013275, 32.838345, 29.599022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500589, 33.285408, 29.049473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796028, 33.485310, 29.230457>,  <31.973291, 33.605251, 29.339048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796028, 33.485310, 29.230457>,  <31.500589, 33.285408, 29.049473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796028, 33.485310, 29.230457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548652, -0.055604, -0.834200,
		-0.391736, 0.864381, -0.315260,
		0.738596, 0.499754, 0.452462,
		32.017609, 33.635235, 29.366196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718096, 33.940689, 28.633728>,  <31.500589, 33.285408, 29.049473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718096, 33.940689, 28.633728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035191, 33.855331, 28.862125>,  <32.225449, 33.804119, 28.999163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035191, 33.855331, 28.862125>,  <31.718096, 33.940689, 28.633728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035191, 33.855331, 28.862125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590280, 0.034995, -0.806440,
		0.152105, 0.976340, 0.153703,
		0.792738, -0.213391, 0.570991,
		32.273010, 33.791313, 29.033422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079571, 34.513294, 28.533230>,  <31.718096, 33.940689, 28.633728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079571, 34.513294, 28.533230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336113, 34.228046, 28.646454>,  <32.490036, 34.056896, 28.714388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336113, 34.228046, 28.646454>,  <32.079571, 34.513294, 28.533230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336113, 34.228046, 28.646454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465923, 0.068881, -0.882140,
		0.609576, 0.697648, 0.376437,
		0.641352, -0.713122, 0.283062,
		32.528519, 34.014111, 28.731373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872810, 34.722168, 28.398825>,  <32.079571, 34.513294, 28.533230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872810, 34.722168, 28.398825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799927, 34.328915, 28.392452>,  <32.756195, 34.092964, 28.388628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799927, 34.328915, 28.392452>,  <32.872810, 34.722168, 28.398825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799927, 34.328915, 28.392452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441649, -0.067355, -0.894656,
		0.878490, -0.170052, 0.446472,
		-0.182210, -0.983131, -0.015933,
		32.745262, 34.033974, 28.387672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463833, 34.433907, 28.049826>,  <32.872810, 34.722168, 28.398825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463833, 34.433907, 28.049826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222202, 34.115231, 28.042089>,  <33.077225, 33.924023, 28.037449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222202, 34.115231, 28.042089>,  <33.463833, 34.433907, 28.049826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222202, 34.115231, 28.042089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277878, -0.187827, -0.942075,
		0.746913, -0.574456, 0.334846,
		-0.604074, -0.796694, -0.019338,
		33.040981, 33.876221, 28.036287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915020, 33.819530, 27.893435>,  <33.463833, 34.433907, 28.049826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915020, 33.819530, 27.893435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537392, 33.709969, 27.819994>,  <33.310814, 33.644230, 27.775930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537392, 33.709969, 27.819994>,  <33.915020, 33.819530, 27.893435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537392, 33.709969, 27.819994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276096, -0.352166, -0.894287,
		0.180294, -0.894960, 0.408094,
		-0.944068, -0.273908, -0.183601,
		33.254169, 33.627796, 27.764914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927841, 33.058582, 27.732918>,  <33.915020, 33.819530, 27.893435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927841, 33.058582, 27.732918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594364, 33.203144, 27.565903>,  <33.394276, 33.289883, 27.465694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594364, 33.203144, 27.565903>,  <33.927841, 33.058582, 27.732918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594364, 33.203144, 27.565903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292178, -0.352915, -0.888866,
		-0.468600, -0.863038, 0.188627,
		-0.833694, 0.361410, -0.417537,
		33.344254, 33.311565, 27.440641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827099, 32.591576, 27.211742>,  <33.927841, 33.058582, 27.732918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827099, 32.591576, 27.211742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603306, 32.913124, 27.130974>,  <33.469028, 33.106052, 27.082514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603306, 32.913124, 27.130974>,  <33.827099, 32.591576, 27.211742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603306, 32.913124, 27.130974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124737, -0.159179, -0.979338,
		-0.819400, -0.573113, -0.011214,
		-0.559486, 0.803868, -0.201919,
		33.435459, 33.154285, 27.070398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410130, 32.331829, 26.644720>,  <33.827099, 32.591576, 27.211742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410130, 32.331829, 26.644720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401714, 32.731491, 26.630604>,  <33.396667, 32.971287, 26.622135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401714, 32.731491, 26.630604>,  <33.410130, 32.331829, 26.644720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401714, 32.731491, 26.630604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054029, -0.034109, -0.997957,
		-0.998318, -0.022898, -0.053266,
		-0.021034, 0.999156, -0.035289,
		33.395405, 33.031239, 26.620018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737785, 32.537457, 26.224588>,  <33.410130, 32.331829, 26.644720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737785, 32.537457, 26.224588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024761, 32.815727, 26.210093>,  <33.196949, 32.982689, 26.201395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024761, 32.815727, 26.210093>,  <32.737785, 32.537457, 26.224588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024761, 32.815727, 26.210093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087275, 0.038149, -0.995453,
		-0.691128, 0.717344, 0.088085,
		0.717443, 0.695674, -0.036240,
		33.239994, 33.024429, 26.199221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438591, 33.029793, 25.842834>,  <32.737785, 32.537457, 26.224588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438591, 33.029793, 25.842834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831017, 33.096668, 25.803717>,  <33.066471, 33.136795, 25.780247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831017, 33.096668, 25.803717>,  <32.438591, 33.029793, 25.842834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831017, 33.096668, 25.803717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116413, 0.105448, -0.987587,
		-0.154800, 0.980270, 0.122914,
		0.981063, 0.167187, -0.097793,
		33.125336, 33.146824, 25.774378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441170, 33.583126, 25.399181>,  <32.438591, 33.029793, 25.842834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441170, 33.583126, 25.399181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813976, 33.441132, 25.369993>,  <33.037663, 33.355934, 25.352480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813976, 33.441132, 25.369993>,  <32.441170, 33.583126, 25.399181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813976, 33.441132, 25.369993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007785, 0.181691, -0.983325,
		0.362326, 0.917045, 0.166576,
		0.932019, -0.354987, -0.072971,
		33.093582, 33.334637, 25.348103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783642, 34.081898, 24.962742>,  <32.441170, 33.583126, 25.399181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783642, 34.081898, 24.962742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055698, 33.788902, 24.950933>,  <33.218933, 33.613106, 24.943848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055698, 33.788902, 24.950933>,  <32.783642, 34.081898, 24.962742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055698, 33.788902, 24.950933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295234, 0.310550, -0.903546,
		0.671005, 0.605822, 0.427473,
		0.680140, -0.732488, -0.029521,
		33.259739, 33.569157, 24.942078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429077, 34.357807, 24.744375>,  <32.783642, 34.081898, 24.962742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429077, 34.357807, 24.744375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437477, 33.968071, 24.654741>,  <33.442516, 33.734230, 24.600962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437477, 33.968071, 24.654741>,  <33.429077, 34.357807, 24.744375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437477, 33.968071, 24.654741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319820, 0.218903, -0.921844,
		0.947246, -0.052311, 0.316211,
		0.020997, -0.974343, -0.224085,
		33.443775, 33.675770, 24.587515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996525, 34.340675, 24.404055>,  <33.429077, 34.357807, 24.744375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996525, 34.340675, 24.404055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813015, 34.001091, 24.299143>,  <33.702908, 33.797340, 24.236195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813015, 34.001091, 24.299143>,  <33.996525, 34.340675, 24.404055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813015, 34.001091, 24.299143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060573, 0.264610, -0.962451,
		0.886485, -0.457437, -0.069973,
		-0.458776, -0.848960, -0.262281,
		33.675381, 33.746403, 24.220459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424046, 34.051594, 23.957924>,  <33.996525, 34.340675, 24.404055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424046, 34.051594, 23.957924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079815, 33.866779, 23.872204>,  <33.873276, 33.755890, 23.820772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079815, 33.866779, 23.872204>,  <34.424046, 34.051594, 23.957924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079815, 33.866779, 23.872204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169443, 0.137067, -0.975962,
		0.480304, -0.876205, -0.039668,
		-0.860580, -0.462037, -0.214300,
		33.821640, 33.728168, 23.807913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583263, 33.624367, 23.394606>,  <34.424046, 34.051594, 23.957924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583263, 33.624367, 23.394606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183834, 33.645603, 23.392096>,  <33.944176, 33.658344, 23.390591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183834, 33.645603, 23.392096>,  <34.583263, 33.624367, 23.394606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183834, 33.645603, 23.392096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005889, -0.007392, -0.999955,
		-0.053138, -0.998562, 0.007069,
		-0.998570, 0.053094, -0.006273,
		33.884262, 33.661530, 23.390213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207523, 33.077923, 23.001858>,  <34.583263, 33.624367, 23.394606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207523, 33.077923, 23.001858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906540, 33.337662, 23.045956>,  <33.725948, 33.493504, 23.072414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906540, 33.337662, 23.045956>,  <34.207523, 33.077923, 23.001858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906540, 33.337662, 23.045956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213514, -0.082146, -0.973480,
		-0.623066, -0.756046, 0.200456,
		-0.752463, 0.649342, 0.110244,
		33.680801, 33.532463, 23.079029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645874, 32.766392, 22.752689>,  <34.207523, 33.077923, 23.001858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645874, 32.766392, 22.752689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567741, 33.157303, 22.719782>,  <33.520863, 33.391850, 22.700037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567741, 33.157303, 22.719782>,  <33.645874, 32.766392, 22.752689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567741, 33.157303, 22.719782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091197, -0.101623, -0.990634,
		-0.976488, -0.185999, 0.108975,
		-0.195331, 0.977280, -0.082271,
		33.509144, 33.450485, 22.695101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005234, 32.851246, 22.412622>,  <33.645874, 32.766392, 22.752689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005234, 32.851246, 22.412622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192005, 33.203079, 22.376150>,  <33.304070, 33.414181, 22.354267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192005, 33.203079, 22.376150>,  <33.005234, 32.851246, 22.412622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192005, 33.203079, 22.376150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146670, -0.024651, -0.988878,
		-0.872047, 0.475108, 0.117499,
		0.466927, 0.879582, -0.091181,
		33.332085, 33.466953, 22.348795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567375, 33.147461, 21.991747>,  <33.005234, 32.851246, 22.412622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567375, 33.147461, 21.991747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877113, 33.396881, 21.948719>,  <33.062958, 33.546535, 21.922903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877113, 33.396881, 21.948719>,  <32.567375, 33.147461, 21.991747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877113, 33.396881, 21.948719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149546, 0.015162, -0.988639,
		-0.614837, 0.781634, 0.104990,
		0.774346, 0.623553, -0.107568,
		33.109417, 33.583946, 21.916449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386078, 33.713245, 21.502142>,  <32.567375, 33.147461, 21.991747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386078, 33.713245, 21.502142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785816, 33.698914, 21.500198>,  <33.025658, 33.690315, 21.499033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785816, 33.698914, 21.500198>,  <32.386078, 33.713245, 21.502142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785816, 33.698914, 21.500198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003189, 0.046490, -0.998914,
		0.036017, 0.998276, 0.046345,
		0.999346, -0.035830, -0.004858,
		33.085621, 33.688164, 21.498741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520073, 34.164585, 20.962635>,  <32.386078, 33.713245, 21.502142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520073, 34.164585, 20.962635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816593, 33.907215, 21.039034>,  <32.994507, 33.752792, 21.084873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816593, 33.907215, 21.039034>,  <32.520073, 34.164585, 20.962635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816593, 33.907215, 21.039034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086499, -0.190613, -0.977847,
		0.665575, 0.741401, -0.085646,
		0.741302, -0.643422, 0.190998,
		33.038982, 33.714188, 21.096333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968029, 34.319466, 20.430191>,  <32.520073, 34.164585, 20.962635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968029, 34.319466, 20.430191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077610, 33.960838, 20.569397>,  <33.143360, 33.745663, 20.652922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077610, 33.960838, 20.569397>,  <32.968029, 34.319466, 20.430191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077610, 33.960838, 20.569397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061667, -0.344740, -0.936671,
		0.959763, 0.278067, -0.039154,
		0.273956, -0.896567, 0.348017,
		33.159798, 33.691868, 20.673801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598122, 34.136642, 20.082998>,  <32.968029, 34.319466, 20.430191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598122, 34.136642, 20.082998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433949, 33.802589, 20.229481>,  <33.335445, 33.602158, 20.317369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433949, 33.802589, 20.229481>,  <33.598122, 34.136642, 20.082998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433949, 33.802589, 20.229481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178858, -0.467515, -0.865702,
		0.894179, -0.289812, 0.341252,
		-0.410431, -0.835128, 0.366207,
		33.310818, 33.552052, 20.339342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071148, 33.488758, 19.871302>,  <33.598122, 34.136642, 20.082998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071148, 33.488758, 19.871302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696354, 33.374191, 19.951324>,  <33.471478, 33.305450, 19.999338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696354, 33.374191, 19.951324>,  <34.071148, 33.488758, 19.871302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696354, 33.374191, 19.951324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009401, -0.551757, -0.833952,
		0.349238, -0.783283, 0.514296,
		-0.936987, -0.286413, 0.200057,
		33.415257, 33.288269, 20.011341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266129, 32.806618, 19.737804>,  <34.071148, 33.488758, 19.871302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266129, 32.806618, 19.737804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867336, 32.836765, 19.730267>,  <33.628063, 32.854855, 19.725744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867336, 32.836765, 19.730267>,  <34.266129, 32.806618, 19.737804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867336, 32.836765, 19.730267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027209, -0.565941, -0.823996,
		-0.072770, -0.820993, 0.566281,
		-0.996978, 0.075370, -0.018845,
		33.568245, 32.859375, 19.724613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008167, 32.073517, 19.753223>,  <34.266129, 32.806618, 19.737804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008167, 32.073517, 19.753223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751850, 32.332970, 19.588951>,  <33.598061, 32.488644, 19.490389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751850, 32.332970, 19.588951>,  <34.008167, 32.073517, 19.753223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751850, 32.332970, 19.588951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121255, -0.613733, -0.780147,
		-0.758078, -0.450115, 0.471926,
		-0.640793, 0.648635, -0.410679,
		33.559612, 32.527561, 19.465748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462162, 31.684269, 19.445444>,  <34.008167, 32.073517, 19.753223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462162, 31.684269, 19.445444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413677, 32.034084, 19.257618>,  <33.384586, 32.243973, 19.144922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413677, 32.034084, 19.257618>,  <33.462162, 31.684269, 19.445444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413677, 32.034084, 19.257618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073487, -0.479661, -0.874371,
		-0.989903, -0.071477, 0.122408,
		-0.121212, 0.874538, -0.469565,
		33.377312, 32.296444, 19.116749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119320, 31.468267, 18.839319>,  <33.462162, 31.684269, 19.445444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119320, 31.468267, 18.839319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249279, 31.836031, 18.750656>,  <33.327255, 32.056690, 18.697458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249279, 31.836031, 18.750656>,  <33.119320, 31.468267, 18.839319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249279, 31.836031, 18.750656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042257, -0.220028, -0.974578,
		-0.944805, 0.326003, -0.032635,
		0.324896, 0.919407, -0.221659,
		33.346748, 32.111855, 18.684158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577225, 31.652027, 18.404367>,  <33.119320, 31.468267, 18.839319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577225, 31.652027, 18.404367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916809, 31.852461, 18.337217>,  <33.120560, 31.972721, 18.296926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916809, 31.852461, 18.337217>,  <32.577225, 31.652027, 18.404367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916809, 31.852461, 18.337217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039939, -0.255924, -0.965872,
		-0.526946, 0.826691, -0.197257,
		0.848960, 0.501084, -0.167875,
		33.171497, 32.002785, 18.286856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434738, 32.028133, 17.813667>,  <32.577225, 31.652027, 18.404367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434738, 32.028133, 17.813667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828979, 31.982351, 17.863447>,  <33.065525, 31.954882, 17.893314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828979, 31.982351, 17.863447>,  <32.434738, 32.028133, 17.813667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828979, 31.982351, 17.863447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110285, -0.122718, -0.986295,
		0.128157, 0.985820, -0.108329,
		0.985603, -0.114453, 0.124448,
		33.124660, 31.948015, 17.900782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669521, 32.412083, 17.344017>,  <32.434738, 32.028133, 17.813667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669521, 32.412083, 17.344017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970119, 32.161762, 17.427570>,  <33.150478, 32.011570, 17.477701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970119, 32.161762, 17.427570>,  <32.669521, 32.412083, 17.344017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970119, 32.161762, 17.427570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098749, -0.206350, -0.973483,
		0.652307, 0.752194, -0.093274,
		0.751495, -0.625799, 0.208882,
		33.195568, 31.974022, 17.490234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164127, 32.585983, 16.794052>,  <32.669521, 32.412083, 17.344017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164127, 32.585983, 16.794052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253262, 32.228035, 16.948738>,  <33.306744, 32.013268, 17.041550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253262, 32.228035, 16.948738>,  <33.164127, 32.585983, 16.794052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253262, 32.228035, 16.948738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210275, -0.343229, -0.915411,
		0.951907, 0.285307, 0.111684,
		0.222840, -0.894871, 0.386715,
		33.320114, 31.959574, 17.064753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599674, 32.400692, 16.300003>,  <33.164127, 32.585983, 16.794052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599674, 32.400692, 16.300003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555634, 32.050190, 16.487642>,  <33.529209, 31.839888, 16.600225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555634, 32.050190, 16.487642>,  <33.599674, 32.400692, 16.300003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555634, 32.050190, 16.487642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154242, -0.481312, -0.862872,
		0.981879, -0.022649, 0.188149,
		-0.110102, -0.876257, 0.469097,
		33.522602, 31.787313, 16.628372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143383, 31.997473, 16.092474>,  <33.599674, 32.400692, 16.300003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143383, 31.997473, 16.092474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884720, 31.716290, 16.210924>,  <33.729523, 31.547579, 16.281994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884720, 31.716290, 16.210924>,  <34.143383, 31.997473, 16.092474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884720, 31.716290, 16.210924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293815, -0.587808, -0.753760,
		0.703927, -0.400416, 0.586647,
		-0.646653, -0.702958, 0.296126,
		33.690723, 31.505402, 16.299761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453403, 31.435030, 16.062431>,  <34.143383, 31.997473, 16.092474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453403, 31.435030, 16.062431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085884, 31.278755, 16.039913>,  <33.865372, 31.184990, 16.026403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085884, 31.278755, 16.039913>,  <34.453403, 31.435030, 16.062431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085884, 31.278755, 16.039913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300711, -0.600430, -0.740984,
		0.255693, -0.697744, 0.669159,
		-0.918800, -0.390688, -0.056294,
		33.810246, 31.161549, 16.023026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585701, 30.662222, 16.009113>,  <34.453403, 31.435030, 16.062431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585701, 30.662222, 16.009113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226936, 30.757225, 15.859909>,  <34.011677, 30.814226, 15.770387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226936, 30.757225, 15.859909>,  <34.585701, 30.662222, 16.009113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226936, 30.757225, 15.859909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126348, -0.670718, -0.730871,
		-0.423771, -0.702657, 0.571568,
		-0.896914, 0.237506, -0.373011,
		33.957863, 30.828478, 15.748006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102081, 30.114918, 15.909242>,  <34.585701, 30.662222, 16.009113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102081, 30.114918, 15.909242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459137, 30.030703, 15.749808>,  <34.673370, 29.980173, 15.654148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459137, 30.030703, 15.749808>,  <34.102081, 30.114918, 15.909242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459137, 30.030703, 15.749808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450771, 0.415704, 0.789934,
		-0.000619, -0.884796, 0.465979,
		0.892639, -0.210539, -0.398583,
		34.726929, 29.967541, 15.630234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424213, 29.684431, 16.385052>,  <34.102081, 30.114918, 15.909242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424213, 29.684431, 16.385052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738293, 29.816870, 16.175732>,  <34.926739, 29.896334, 16.050140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738293, 29.816870, 16.175732>,  <34.424213, 29.684431, 16.385052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738293, 29.816870, 16.175732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469168, 0.233468, 0.851689,
		0.404166, -0.914258, 0.027978,
		0.785195, 0.331097, -0.523300,
		34.973850, 29.916199, 16.018742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029305, 29.466227, 16.822323>,  <34.424213, 29.684431, 16.385052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029305, 29.466227, 16.822323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165569, 29.746906, 16.572020>,  <35.247326, 29.915314, 16.421839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165569, 29.746906, 16.572020>,  <35.029305, 29.466227, 16.822323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165569, 29.746906, 16.572020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560058, 0.383141, 0.734532,
		0.755173, -0.600685, -0.262471,
		0.340659, 0.701698, -0.625757,
		35.267769, 29.957417, 16.384293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731148, 29.410494, 16.913126>,  <35.029305, 29.466227, 16.822323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731148, 29.410494, 16.913126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624737, 29.769630, 16.772778>,  <35.560890, 29.985113, 16.688568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624737, 29.769630, 16.772778>,  <35.731148, 29.410494, 16.913126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624737, 29.769630, 16.772778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407768, 0.434631, 0.803007,
		0.873472, 0.070549, -0.481735,
		-0.266028, 0.897841, -0.350871,
		35.544930, 30.038982, 16.667517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408867, 29.884758, 16.774221>,  <35.731148, 29.410494, 16.913126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408867, 29.884758, 16.774221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110058, 30.148798, 16.805799>,  <35.930775, 30.307222, 16.824747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110058, 30.148798, 16.805799>,  <36.408867, 29.884758, 16.774221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110058, 30.148798, 16.805799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575636, 0.582842, 0.573532,
		0.332574, 0.473883, -0.815370,
		-0.747019, 0.660098, 0.078947,
		35.885952, 30.346828, 16.829483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711700, 30.470356, 16.660069>,  <36.408867, 29.884758, 16.774221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711700, 30.470356, 16.660069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387932, 30.590853, 16.861696>,  <36.193668, 30.663151, 16.982672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387932, 30.590853, 16.861696>,  <36.711700, 30.470356, 16.660069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387932, 30.590853, 16.861696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562696, 0.643377, 0.519074,
		-0.167939, 0.703789, -0.690274,
		-0.809425, 0.301242, 0.504067,
		36.145103, 30.681225, 17.012917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750416, 31.223246, 16.732853>,  <36.711700, 30.470356, 16.660069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750416, 31.223246, 16.732853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495674, 31.101856, 17.016352>,  <36.342831, 31.029022, 17.186451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495674, 31.101856, 17.016352>,  <36.750416, 31.223246, 16.732853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495674, 31.101856, 17.016352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288305, 0.758844, 0.583983,
		-0.715053, 0.576246, -0.395777,
		-0.636851, -0.303475, 0.708748,
		36.304619, 31.010815, 17.228975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831280, 31.823160, 17.207367>,  <36.750416, 31.223246, 16.732853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831280, 31.823160, 17.207367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600281, 31.550131, 17.386518>,  <36.461681, 31.386312, 17.494009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600281, 31.550131, 17.386518>,  <36.831280, 31.823160, 17.207367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600281, 31.550131, 17.386518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105409, 0.481671, 0.869989,
		-0.809562, 0.549623, -0.206212,
		-0.577493, -0.682574, 0.447878,
		36.427032, 31.345358, 17.520882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472393, 32.164345, 17.793070>,  <36.831280, 31.823160, 17.207367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472393, 32.164345, 17.793070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407223, 31.784880, 17.901512>,  <36.368122, 31.557201, 17.966578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407223, 31.784880, 17.901512>,  <36.472393, 32.164345, 17.793070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407223, 31.784880, 17.901512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050769, 0.266351, 0.962538,
		-0.985332, 0.170582, 0.004769,
		-0.162922, -0.948661, 0.271104,
		36.358345, 31.500280, 17.982843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782253, 32.155518, 18.182764>,  <36.472393, 32.164345, 17.793070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782253, 32.155518, 18.182764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035748, 31.858099, 18.268097>,  <36.187843, 31.679647, 18.319296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035748, 31.858099, 18.268097>,  <35.782253, 32.155518, 18.182764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035748, 31.858099, 18.268097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027010, 0.296886, 0.954531,
		-0.773078, -0.599158, 0.208230,
		0.633735, -0.743551, 0.213333,
		36.225868, 31.635033, 18.332096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645889, 31.881693, 18.787907>,  <35.782253, 32.155518, 18.182764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645889, 31.881693, 18.787907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992622, 31.683140, 18.769091>,  <36.200661, 31.564009, 18.757801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992622, 31.683140, 18.769091>,  <35.645889, 31.881693, 18.787907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992622, 31.683140, 18.769091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047061, -0.175372, 0.983377,
		-0.496379, -0.850206, -0.175378,
		0.866829, -0.496381, -0.047040,
		36.252670, 31.534225, 18.754978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461273, 31.262165, 19.124594>,  <35.645889, 31.881693, 18.787907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461273, 31.262165, 19.124594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851646, 31.349373, 19.122995>,  <36.085873, 31.401697, 19.122036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851646, 31.349373, 19.122995>,  <35.461273, 31.262165, 19.124594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851646, 31.349373, 19.122995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035206, -0.139451, 0.989603,
		0.215197, -0.965930, -0.143771,
		0.975936, 0.218021, -0.003997,
		36.144428, 31.414780, 19.121796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806892, 30.856449, 19.567986>,  <35.461273, 31.262165, 19.124594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806892, 30.856449, 19.567986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059715, 31.165577, 19.545149>,  <36.211407, 31.351053, 19.531446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059715, 31.165577, 19.545149>,  <35.806892, 30.856449, 19.567986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059715, 31.165577, 19.545149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019060, 0.058149, 0.998126,
		0.774691, -0.631956, 0.022024,
		0.632052, 0.772820, -0.057092,
		36.249332, 31.397423, 19.528021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381016, 30.675501, 19.970812>,  <35.806892, 30.856449, 19.567986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381016, 30.675501, 19.970812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359589, 31.073887, 19.942007>,  <36.346733, 31.312918, 19.924725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359589, 31.073887, 19.942007>,  <36.381016, 30.675501, 19.970812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359589, 31.073887, 19.942007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059187, 0.075155, 0.995414,
		0.996808, 0.049063, -0.062975,
		-0.053571, 0.995964, -0.072011,
		36.343517, 31.372677, 19.920404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907017, 30.914042, 20.433035>,  <36.381016, 30.675501, 19.970812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907017, 30.914042, 20.433035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678116, 31.234674, 20.363756>,  <36.540775, 31.427053, 20.322189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678116, 31.234674, 20.363756>,  <36.907017, 30.914042, 20.433035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678116, 31.234674, 20.363756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013924, 0.201668, 0.979355,
		0.819962, 0.562846, -0.104243,
		-0.572249, 0.801582, -0.173197,
		36.506443, 31.475149, 20.311796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089256, 31.465734, 20.984974>,  <36.907017, 30.914042, 20.433035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089256, 31.465734, 20.984974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731770, 31.571274, 20.839836>,  <36.517277, 31.634598, 20.752754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731770, 31.571274, 20.839836>,  <37.089256, 31.465734, 20.984974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731770, 31.571274, 20.839836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294392, 0.265392, 0.918096,
		0.338536, 0.927335, -0.159509,
		-0.893715, 0.263850, -0.362844,
		36.463654, 31.650429, 20.730984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011360, 32.158825, 21.333002>,  <37.089256, 31.465734, 20.984974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011360, 32.158825, 21.333002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668743, 31.984171, 21.222961>,  <36.463173, 31.879379, 21.156937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668743, 31.984171, 21.222961>,  <37.011360, 32.158825, 21.333002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668743, 31.984171, 21.222961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392951, 0.206246, 0.896132,
		-0.334545, 0.875678, -0.348235,
		-0.856545, -0.436635, -0.275100,
		36.411781, 31.853180, 21.140432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575912, 32.589798, 21.628077>,  <37.011360, 32.158825, 21.333002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575912, 32.589798, 21.628077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373730, 32.247177, 21.586439>,  <36.252422, 32.041603, 21.561457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373730, 32.247177, 21.586439>,  <36.575912, 32.589798, 21.628077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373730, 32.247177, 21.586439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413934, 0.134861, 0.900262,
		-0.757083, 0.498129, -0.422721,
		-0.505455, -0.856551, -0.104091,
		36.222092, 31.990211, 21.555212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888271, 32.788136, 21.856409>,  <36.575912, 32.589798, 21.628077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888271, 32.788136, 21.856409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878365, 32.388805, 21.835495>,  <35.872421, 32.149208, 21.822947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878365, 32.388805, 21.835495>,  <35.888271, 32.788136, 21.856409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878365, 32.388805, 21.835495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534459, -0.030976, 0.844627,
		-0.844832, 0.048864, -0.532796,
		-0.024768, -0.998325, -0.052285,
		35.870934, 32.089310, 21.819809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156147, 32.604855, 21.978687>,  <35.888271, 32.788136, 21.856409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156147, 32.604855, 21.978687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375134, 32.291409, 22.096140>,  <35.506527, 32.103340, 22.166611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375134, 32.291409, 22.096140>,  <35.156147, 32.604855, 21.978687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375134, 32.291409, 22.096140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466756, 0.005286, 0.884371,
		-0.694561, -0.621220, -0.362864,
		0.547470, -0.783618, 0.293629,
		35.539375, 32.056324, 22.184229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735451, 32.348465, 22.410648>,  <35.156147, 32.604855, 21.978687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735451, 32.348465, 22.410648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089218, 32.183235, 22.497534>,  <35.301479, 32.084099, 22.549665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089218, 32.183235, 22.497534>,  <34.735451, 32.348465, 22.410648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089218, 32.183235, 22.497534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231614, 0.015584, 0.972683,
		-0.405175, -0.910564, -0.081891,
		0.884414, -0.413074, 0.217214,
		35.354542, 32.059315, 22.562698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622807, 31.862156, 22.930103>,  <34.735451, 32.348465, 22.410648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622807, 31.862156, 22.930103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019772, 31.908148, 22.947495>,  <35.257950, 31.935743, 22.957930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019772, 31.908148, 22.947495>,  <34.622807, 31.862156, 22.930103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019772, 31.908148, 22.947495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034091, -0.082394, 0.996017,
		0.118106, -0.989945, -0.077850,
		0.992416, 0.114982, 0.043479,
		35.317497, 31.942642, 22.960539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887680, 31.407675, 23.575552>,  <34.622807, 31.862156, 22.930103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887680, 31.407675, 23.575552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196579, 31.657154, 23.527147>,  <35.381916, 31.806841, 23.498104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196579, 31.657154, 23.527147>,  <34.887680, 31.407675, 23.575552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196579, 31.657154, 23.527147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072034, 0.103287, 0.992040,
		0.631231, -0.774812, 0.034835,
		0.772242, 0.623697, -0.121010,
		35.428253, 31.844263, 23.490845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313221, 31.309671, 24.174204>,  <34.887680, 31.407675, 23.575552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313221, 31.309671, 24.174204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463375, 31.647184, 24.020781>,  <35.553467, 31.849691, 23.928726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463375, 31.647184, 24.020781>,  <35.313221, 31.309671, 24.174204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463375, 31.647184, 24.020781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218093, 0.321790, 0.921351,
		0.900844, -0.429514, -0.063227,
		0.375387, 0.843783, -0.383556,
		35.575993, 31.900320, 23.905714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929848, 31.326822, 24.568979>,  <35.313221, 31.309671, 24.174204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929848, 31.326822, 24.568979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837486, 31.687143, 24.421879>,  <35.782070, 31.903336, 24.333618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837486, 31.687143, 24.421879>,  <35.929848, 31.326822, 24.568979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837486, 31.687143, 24.421879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053808, 0.389210, 0.919576,
		0.971488, 0.192543, -0.138339,
		-0.230901, 0.900801, -0.367752,
		35.768215, 31.957384, 24.311554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463314, 31.912569, 24.754313>,  <35.929848, 31.326822, 24.568979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463314, 31.912569, 24.754313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113239, 32.098370, 24.700211>,  <35.903194, 32.209850, 24.667749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113239, 32.098370, 24.700211>,  <36.463314, 31.912569, 24.754313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113239, 32.098370, 24.700211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114254, 0.470108, 0.875183,
		0.470108, 0.750491, -0.464502,
		-0.875183, 0.464502, -0.135255,
		35.850685, 32.237720, 24.659634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617592, 32.598206, 24.930901>,  <36.463314, 31.912569, 24.754313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617592, 32.598206, 24.930901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222301, 32.541965, 24.955029>,  <35.985126, 32.508221, 24.969505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222301, 32.541965, 24.955029>,  <36.617592, 32.598206, 24.930901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222301, 32.541965, 24.955029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021849, 0.519929, 0.853930,
		-0.151422, 0.842559, -0.516880,
		-0.988228, -0.140597, 0.060319,
		35.925835, 32.499786, 24.973124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347988, 33.266087, 25.032736>,  <36.617592, 32.598206, 24.930901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347988, 33.266087, 25.032736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080685, 33.006752, 25.178659>,  <35.920303, 32.851151, 25.266212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080685, 33.006752, 25.178659>,  <36.347988, 33.266087, 25.032736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080685, 33.006752, 25.178659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106166, 0.402250, 0.909354,
		-0.736311, 0.646417, -0.199977,
		-0.668263, -0.648336, 0.364808,
		35.880207, 32.812252, 25.288101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004169, 33.621807, 25.554520>,  <36.347988, 33.266087, 25.032736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004169, 33.621807, 25.554520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908657, 33.241570, 25.633871>,  <35.851349, 33.013428, 25.681482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908657, 33.241570, 25.633871>,  <36.004169, 33.621807, 25.554520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908657, 33.241570, 25.633871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121786, 0.173362, 0.977299,
		-0.963408, 0.257516, 0.074374,
		-0.238776, -0.950595, 0.198380,
		35.837025, 32.956390, 25.693384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362560, 33.613686, 25.996723>,  <36.004169, 33.621807, 25.554520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362560, 33.613686, 25.996723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579819, 33.281235, 26.044422>,  <35.710175, 33.081764, 26.073042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579819, 33.281235, 26.044422>,  <35.362560, 33.613686, 25.996723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579819, 33.281235, 26.044422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136436, 0.227495, 0.964174,
		-0.828482, -0.507414, 0.236958,
		0.543142, -0.831130, 0.119246,
		35.742760, 33.031895, 26.080196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045731, 33.312626, 26.589050>,  <35.362560, 33.613686, 25.996723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045731, 33.312626, 26.589050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395981, 33.120770, 26.566343>,  <35.606133, 33.005653, 26.552719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395981, 33.120770, 26.566343>,  <35.045731, 33.312626, 26.589050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395981, 33.120770, 26.566343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042963, -0.039714, 0.998287,
		-0.481078, -0.876563, -0.014168,
		0.875624, -0.479645, -0.056766,
		35.658669, 32.976875, 26.549314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038940, 32.892555, 27.137732>,  <35.045731, 33.312626, 26.589050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038940, 32.892555, 27.137732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430290, 32.899109, 27.055264>,  <35.665100, 32.903042, 27.005783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430290, 32.899109, 27.055264>,  <35.038940, 32.892555, 27.137732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430290, 32.899109, 27.055264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206629, -0.120337, 0.970991,
		-0.008899, -0.992598, -0.121121,
		0.978379, 0.016386, -0.206170,
		35.723804, 32.904022, 26.993412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342400, 32.295521, 27.491451>,  <35.038940, 32.892555, 27.137732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342400, 32.295521, 27.491451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653404, 32.533855, 27.410999>,  <35.840008, 32.676857, 27.362728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653404, 32.533855, 27.410999>,  <35.342400, 32.295521, 27.491451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653404, 32.533855, 27.410999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354733, -0.151453, 0.922620,
		0.519270, -0.788695, -0.329120,
		0.777511, 0.595838, -0.201131,
		35.886658, 32.712608, 27.350660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928539, 31.906601, 27.803114>,  <35.342400, 32.295521, 27.491451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928539, 31.906601, 27.803114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071205, 32.275967, 27.746410>,  <36.156803, 32.497585, 27.712389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071205, 32.275967, 27.746410>,  <35.928539, 31.906601, 27.803114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071205, 32.275967, 27.746410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394788, -0.011449, 0.918701,
		0.846721, -0.383629, -0.368637,
		0.356661, 0.923416, -0.141758,
		36.178204, 32.552990, 27.703882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645332, 31.900480, 28.037230>,  <35.928539, 31.906601, 27.803114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645332, 31.900480, 28.037230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537811, 32.285652, 28.028143>,  <36.473301, 32.516754, 28.022692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537811, 32.285652, 28.028143>,  <36.645332, 31.900480, 28.037230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537811, 32.285652, 28.028143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436230, 0.142732, 0.888443,
		0.858749, 0.228904, -0.458425,
		-0.268800, 0.962928, -0.022716,
		36.457172, 32.574532, 28.021328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237556, 32.260792, 28.062374>,  <36.645332, 31.900480, 28.037230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237556, 32.260792, 28.062374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953884, 32.507652, 28.198715>,  <36.783680, 32.655769, 28.280519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953884, 32.507652, 28.198715>,  <37.237556, 32.260792, 28.062374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953884, 32.507652, 28.198715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526444, 0.141966, 0.838273,
		0.468956, 0.773928, -0.425577,
		-0.709180, 0.617156, 0.340854,
		36.741131, 32.692799, 28.300972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605236, 32.775177, 28.339315>,  <37.237556, 32.260792, 28.062374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605236, 32.775177, 28.339315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245739, 32.782555, 28.514555>,  <37.030041, 32.786980, 28.619698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245739, 32.782555, 28.514555>,  <37.605236, 32.775177, 28.339315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245739, 32.782555, 28.514555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437751, -0.020035, 0.898873,
		0.025355, 0.999629, 0.009933,
		-0.898739, 0.018443, 0.438097,
		36.976116, 32.788086, 28.645985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648224, 33.297852, 28.829378>,  <37.605236, 32.775177, 28.339315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648224, 33.297852, 28.829378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344364, 33.070156, 28.955177>,  <37.162048, 32.933540, 29.030657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344364, 33.070156, 28.955177>,  <37.648224, 33.297852, 28.829378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344364, 33.070156, 28.955177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319107, 0.095116, 0.942934,
		-0.566667, 0.816653, 0.109393,
		-0.759645, -0.569237, 0.314499,
		37.116470, 32.899384, 29.049526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289528, 33.707237, 29.393713>,  <37.648224, 33.297852, 28.829378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289528, 33.707237, 29.393713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217541, 33.316372, 29.438889>,  <37.174351, 33.081852, 29.465994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217541, 33.316372, 29.438889>,  <37.289528, 33.707237, 29.393713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217541, 33.316372, 29.438889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220019, 0.071916, 0.972841,
		-0.958751, 0.199927, 0.202053,
		-0.179966, -0.977168, 0.112938,
		37.163551, 33.023220, 29.472771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184593, 33.651676, 30.135658>,  <37.289528, 33.707237, 29.393713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184593, 33.651676, 30.135658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225777, 33.268024, 30.030235>,  <37.250488, 33.037834, 29.966982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225777, 33.268024, 30.030235>,  <37.184593, 33.651676, 30.135658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225777, 33.268024, 30.030235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260653, -0.229689, 0.937712,
		-0.959926, -0.165244, 0.226352,
		0.102961, -0.959134, -0.263556,
		37.256664, 32.980286, 29.951168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902042, 33.266239, 30.629696>,  <37.184593, 33.651676, 30.135658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902042, 33.266239, 30.629696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172466, 32.998608, 30.506224>,  <37.334721, 32.838028, 30.432140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172466, 32.998608, 30.506224>,  <36.902042, 33.266239, 30.629696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172466, 32.998608, 30.506224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204459, -0.232131, 0.950953,
		-0.707917, -0.706009, -0.020134,
		0.676055, -0.669079, -0.308679,
		37.375282, 32.797882, 30.413620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784637, 33.812023, 31.168278>,  <36.902042, 33.266239, 30.629696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784637, 33.812023, 31.168278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064056, 33.611340, 31.372364>,  <37.231709, 33.490929, 31.494816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064056, 33.611340, 31.372364>,  <36.784637, 33.812023, 31.168278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064056, 33.611340, 31.372364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714149, -0.444037, 0.541131,
		-0.044933, -0.742378, -0.668473,
		0.698550, -0.501704, 0.510216,
		37.273621, 33.460827, 31.525429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339138, 33.911907, 31.836130>,  <36.784637, 33.812023, 31.168278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339138, 33.911907, 31.836130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009109, 34.135742, 31.867416>,  <35.811092, 34.270042, 31.886189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.009109, 34.135742, 31.867416>,  <36.339138, 33.911907, 31.836130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009109, 34.135742, 31.867416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429131, -0.530542, -0.731008,
		-0.367568, -0.636698, 0.677872,
		-0.825070, 0.559590, 0.078216,
		35.761589, 34.303619, 31.890881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815853, 33.334023, 32.052734>,  <36.339138, 33.911907, 31.836130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815853, 33.334023, 32.052734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500408, 33.312023, 32.297707>,  <35.311142, 33.298824, 32.444691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500408, 33.312023, 32.297707>,  <35.815853, 33.334023, 32.052734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500408, 33.312023, 32.297707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223832, -0.953336, 0.202606,
		0.572705, 0.296858, 0.764123,
		-0.788612, -0.055001, 0.612427,
		35.263824, 33.295525, 32.481434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032951, 33.103851, 32.796333>,  <35.815853, 33.334023, 32.052734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032951, 33.103851, 32.796333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659077, 33.022224, 32.679905>,  <35.434753, 32.973248, 32.610050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659077, 33.022224, 32.679905>,  <36.032951, 33.103851, 32.796333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659077, 33.022224, 32.679905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107804, -0.942970, 0.314937,
		-0.338737, 0.262988, 0.903380,
		-0.934685, -0.204069, -0.291068,
		35.378670, 32.961002, 32.592587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672226, 32.763374, 33.391571>,  <36.032951, 33.103851, 32.796333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672226, 32.763374, 33.391571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554146, 32.649078, 33.026886>,  <35.483299, 32.580502, 32.808075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554146, 32.649078, 33.026886>,  <35.672226, 32.763374, 33.391571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554146, 32.649078, 33.026886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248231, -0.944401, 0.215610,
		-0.922627, -0.162667, 0.349713,
		-0.295197, -0.285738, -0.911709,
		35.465588, 32.563358, 32.753372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982285, 33.206036, 33.296761>,  <35.672226, 32.763374, 33.391571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982285, 33.206036, 33.296761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187786, 33.302792, 33.626011>,  <35.311089, 33.360847, 33.823563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187786, 33.302792, 33.626011>,  <34.982285, 33.206036, 33.296761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187786, 33.302792, 33.626011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438051, -0.898903, -0.009250,
		0.737676, 0.365325, -0.567779,
		0.513757, 0.241893, 0.823129,
		35.341911, 33.375359, 33.872952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721657, 33.969383, 33.256359>,  <34.982285, 33.206036, 33.296761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721657, 33.969383, 33.256359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577454, 33.849480, 32.903049>,  <34.490932, 33.777538, 32.691063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577454, 33.849480, 32.903049>,  <34.721657, 33.969383, 33.256359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577454, 33.849480, 32.903049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266173, -0.874518, 0.405427,
		-0.893973, 0.381263, 0.235479,
		-0.360505, -0.299763, -0.883277,
		34.469303, 33.759552, 32.638065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942371, 33.814671, 33.342674>,  <34.721657, 33.969383, 33.256359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942371, 33.814671, 33.342674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183662, 33.602592, 33.104343>,  <34.328438, 33.475346, 32.961346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183662, 33.602592, 33.104343>,  <33.942371, 33.814671, 33.342674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183662, 33.602592, 33.104343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255906, -0.836220, 0.485023,
		-0.755399, -0.140104, -0.640111,
		0.603228, -0.530194, -0.595827,
		34.364632, 33.443535, 32.925594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576965, 33.230309, 33.127312>,  <33.942371, 33.814671, 33.342674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576965, 33.230309, 33.127312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964756, 33.132236, 33.128590>,  <34.197430, 33.073395, 33.129356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964756, 33.132236, 33.128590>,  <33.576965, 33.230309, 33.127312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964756, 33.132236, 33.128590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212965, -0.835493, 0.506554,
		-0.121526, -0.491771, -0.862202,
		0.969473, -0.245178, 0.003196,
		34.255596, 33.058681, 33.129547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829628, 32.472996, 32.959961>,  <33.576965, 33.230309, 33.127312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829628, 32.472996, 32.959961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127422, 32.602913, 33.193287>,  <34.306099, 32.680862, 33.333282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127422, 32.602913, 33.193287>,  <33.829628, 32.472996, 32.959961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127422, 32.602913, 33.193287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054857, -0.900494, 0.431394,
		0.665383, -0.289167, -0.688221,
		0.744484, 0.324796, 0.583310,
		34.350769, 32.700352, 33.368279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427292, 32.169369, 33.055943>,  <33.829628, 32.472996, 32.959961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427292, 32.169369, 33.055943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360298, 32.334347, 33.414124>,  <34.320103, 32.433334, 33.629032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360298, 32.334347, 33.414124>,  <34.427292, 32.169369, 33.055943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360298, 32.334347, 33.414124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008308, -0.908841, 0.417059,
		0.985840, 0.062410, 0.155640,
		-0.167480, 0.412447, 0.895454,
		34.310055, 32.458080, 33.682758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940109, 31.879318, 33.566013>,  <34.427292, 32.169369, 33.055943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940109, 31.879318, 33.566013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589664, 31.983002, 33.728611>,  <34.379398, 32.045212, 33.826168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589664, 31.983002, 33.728611>,  <34.940109, 31.879318, 33.566013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589664, 31.983002, 33.728611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065450, -0.899304, 0.432398,
		0.477640, 0.352226, 0.804858,
		-0.876114, 0.259209, 0.406491,
		34.326832, 32.060764, 33.850559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341022, 31.547468, 33.909428>,  <34.940109, 31.879318, 33.566013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341022, 31.547468, 33.909428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699329, 31.370243, 33.894970>,  <34.914314, 31.263908, 33.886295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699329, 31.370243, 33.894970>,  <34.341022, 31.547468, 33.909428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699329, 31.370243, 33.894970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442037, -0.896388, 0.033052,
		-0.047041, -0.013631, -0.998800,
		0.895763, -0.443061, -0.036141,
		34.968060, 31.237324, 33.884129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204548, 30.922918, 33.479565>,  <34.341022, 31.547468, 33.909428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204548, 30.922918, 33.479565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539589, 30.879709, 33.693764>,  <34.740612, 30.853785, 33.822285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539589, 30.879709, 33.693764>,  <34.204548, 30.922918, 33.479565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539589, 30.879709, 33.693764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254128, -0.944779, 0.206912,
		0.483579, -0.309395, -0.818796,
		0.837598, -0.108021, 0.535501,
		34.790867, 30.847303, 33.854412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586884, 30.210735, 33.322575>,  <34.204548, 30.922918, 33.479565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586884, 30.210735, 33.322575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625576, 30.355623, 33.693398>,  <34.648792, 30.442556, 33.915894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625576, 30.355623, 33.693398>,  <34.586884, 30.210735, 33.322575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625576, 30.355623, 33.693398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110690, -0.921734, 0.371691,
		0.989136, -0.138571, -0.049067,
		0.096732, 0.362222, 0.927059,
		34.654594, 30.464291, 33.971516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019398, 29.794630, 33.652851>,  <34.586884, 30.210735, 33.322575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019398, 29.794630, 33.652851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861492, 29.978344, 33.971149>,  <34.766747, 30.088572, 34.162128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861492, 29.978344, 33.971149>,  <35.019398, 29.794630, 33.652851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861492, 29.978344, 33.971149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158669, -0.887159, 0.433327,
		0.904978, 0.044802, 0.423094,
		-0.394766, 0.459283, 0.795751,
		34.743061, 30.116129, 34.209873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305195, 29.436682, 34.112663>,  <35.019398, 29.794630, 33.652851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305195, 29.436682, 34.112663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970448, 29.601284, 34.257061>,  <34.769600, 29.700045, 34.343700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970448, 29.601284, 34.257061>,  <35.305195, 29.436682, 34.112663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970448, 29.601284, 34.257061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162392, -0.816405, 0.554177,
		0.522765, 0.405150, 0.750047,
		-0.836867, 0.411506, 0.360995,
		34.719387, 29.724735, 34.365360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332130, 29.254734, 34.739857>,  <35.305195, 29.436682, 34.112663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332130, 29.254734, 34.739857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951210, 29.374048, 34.714073>,  <34.722660, 29.445637, 34.698601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951210, 29.374048, 34.714073>,  <35.332130, 29.254734, 34.739857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951210, 29.374048, 34.714073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292301, -0.830855, 0.473541,
		0.087691, 0.469794, 0.878410,
		-0.952297, 0.298285, -0.064463,
		34.665520, 29.463533, 34.694733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018322, 29.229124, 35.424702>,  <35.332130, 29.254734, 34.739857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018322, 29.229124, 35.424702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766163, 29.163677, 35.121166>,  <34.614868, 29.124409, 34.939045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766163, 29.163677, 35.121166>,  <35.018322, 29.229124, 35.424702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766163, 29.163677, 35.121166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261590, -0.875586, 0.406104,
		-0.730870, 0.454510, 0.509165,
		-0.630396, -0.163617, -0.758835,
		34.577045, 29.114592, 34.893517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469219, 29.117071, 35.812244>,  <35.018322, 29.229124, 35.424702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469219, 29.117071, 35.812244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489883, 28.957850, 35.445881>,  <34.502281, 28.862316, 35.226063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489883, 28.957850, 35.445881>,  <34.469219, 29.117071, 35.812244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489883, 28.957850, 35.445881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179282, -0.905928, 0.383604,
		-0.982440, 0.144389, -0.118163,
		0.051659, -0.398052, -0.915907,
		34.505383, 28.838434, 35.171108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433640, 28.478355, 35.960472>,  <34.469219, 29.117071, 35.812244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433640, 28.478355, 35.960472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478729, 28.428188, 35.566200>,  <34.505783, 28.398088, 35.329636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478729, 28.428188, 35.566200>,  <34.433640, 28.478355, 35.960472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478729, 28.428188, 35.566200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222898, -0.969911, 0.097922,
		-0.968302, 0.208668, -0.137291,
		0.112727, -0.125420, -0.985679,
		34.512547, 28.390562, 35.270496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255005, 27.942183, 35.547844>,  <34.433640, 28.478355, 35.960472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255005, 27.942183, 35.547844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908218, 28.043932, 35.376419>,  <33.700146, 28.104980, 35.273563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908218, 28.043932, 35.376419>,  <34.255005, 27.942183, 35.547844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908218, 28.043932, 35.376419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474675, 0.683452, -0.554597,
		0.151825, -0.684243, -0.713274,
		-0.866968, 0.254372, -0.428558,
		33.648129, 28.120243, 35.247852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349670, 28.036844, 34.736908>,  <34.255005, 27.942183, 35.547844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349670, 28.036844, 34.736908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109882, 28.288744, 34.934513>,  <33.966007, 28.439884, 35.053074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109882, 28.288744, 34.934513>,  <34.349670, 28.036844, 34.736908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109882, 28.288744, 34.934513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334231, 0.757780, -0.560410,
		-0.727269, -0.170837, -0.664751,
		-0.599474, 0.629749, 0.494011,
		33.930038, 28.477669, 35.082718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994041, 28.453489, 34.342316>,  <34.349670, 28.036844, 34.736908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994041, 28.453489, 34.342316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002537, 28.662844, 34.683048>,  <34.007633, 28.788456, 34.887489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002537, 28.662844, 34.683048>,  <33.994041, 28.453489, 34.342316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002537, 28.662844, 34.683048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289836, 0.812212, -0.506268,
		-0.956840, 0.257647, -0.134442,
		0.021243, 0.523384, 0.851832,
		34.008911, 28.819859, 34.938599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555176, 29.127783, 34.342396>,  <33.994041, 28.453489, 34.342316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555176, 29.127783, 34.342396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857975, 29.171638, 34.600056>,  <34.039654, 29.197952, 34.754654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857975, 29.171638, 34.600056>,  <33.555176, 29.127783, 34.342396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857975, 29.171638, 34.600056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111535, 0.949674, -0.292712,
		-0.643827, 0.293428, 0.706673,
		0.756998, 0.109637, 0.644153,
		34.085075, 29.204529, 34.793301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427227, 29.739004, 34.621506>,  <33.555176, 29.127783, 34.342396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427227, 29.739004, 34.621506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815964, 29.652210, 34.658253>,  <34.049206, 29.600134, 34.680302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815964, 29.652210, 34.658253>,  <33.427227, 29.739004, 34.621506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815964, 29.652210, 34.658253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235158, 0.917770, -0.319998,
		-0.014878, 0.332591, 0.942954,
		0.971843, -0.216982, 0.091866,
		34.107517, 29.587116, 34.685814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727367, 30.375101, 34.977894>,  <33.427227, 29.739004, 34.621506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727367, 30.375101, 34.977894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027843, 30.172207, 34.808929>,  <34.208130, 30.050470, 34.707550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027843, 30.172207, 34.808929>,  <33.727367, 30.375101, 34.977894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027843, 30.172207, 34.808929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459786, 0.861228, -0.216525,
		0.473620, -0.031567, 0.880163,
		0.751186, -0.507237, -0.422409,
		34.253201, 30.020035, 34.682205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237061, 30.775570, 35.179279>,  <33.727367, 30.375101, 34.977894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237061, 30.775570, 35.179279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401516, 30.555578, 34.888489>,  <34.500187, 30.423584, 34.714016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401516, 30.555578, 34.888489>,  <34.237061, 30.775570, 35.179279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401516, 30.555578, 34.888489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492561, 0.805079, -0.330502,
		0.767041, -0.222199, 0.601893,
		0.411134, -0.549978, -0.726975,
		34.524857, 30.390585, 34.670395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912758, 30.857018, 35.236431>,  <34.237061, 30.775570, 35.179279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912758, 30.857018, 35.236431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814816, 30.787628, 34.854866>,  <34.756050, 30.745995, 34.625927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814816, 30.787628, 34.854866>,  <34.912758, 30.857018, 35.236431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814816, 30.787628, 34.854866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706446, 0.641939, -0.298074,
		0.664062, -0.746874, -0.034634,
		-0.244857, -0.173472, -0.953914,
		34.741360, 30.735586, 34.568691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482246, 30.564493, 34.944637>,  <34.912758, 30.857018, 35.236431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482246, 30.564493, 34.944637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262363, 30.762049, 34.675148>,  <35.130436, 30.880581, 34.513454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262363, 30.762049, 34.675148>,  <35.482246, 30.564493, 34.944637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262363, 30.762049, 34.675148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823691, 0.454788, -0.338675,
		0.139133, -0.741109, -0.656810,
		-0.549704, 0.493888, -0.673721,
		35.097454, 30.910215, 34.473030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192982, 30.781975, 35.409374>,  <35.482246, 30.564493, 34.944637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192982, 30.781975, 35.409374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106133, 30.683191, 35.031620>,  <36.054024, 30.623922, 34.804966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106133, 30.683191, 35.031620>,  <36.192982, 30.781975, 35.409374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106133, 30.683191, 35.031620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426675, 0.846143, -0.319360,
		0.877956, -0.472287, -0.078345,
		-0.217120, -0.246957, -0.944390,
		36.040997, 30.609104, 34.748302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755360, 30.851339, 35.027557>,  <36.192982, 30.781975, 35.409374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755360, 30.851339, 35.027557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444622, 30.902971, 34.781029>,  <36.258179, 30.933950, 34.633110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444622, 30.902971, 34.781029>,  <36.755360, 30.851339, 35.027557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444622, 30.902971, 34.781029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398684, 0.858423, -0.322741,
		0.487405, -0.496437, -0.718322,
		-0.776845, 0.129078, -0.616321,
		36.211567, 30.941694, 34.596134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970913, 31.060133, 34.333847>,  <36.755360, 30.851339, 35.027557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970913, 31.060133, 34.333847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594742, 31.183193, 34.391743>,  <36.369041, 31.257030, 34.426479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594742, 31.183193, 34.391743>,  <36.970913, 31.060133, 34.333847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594742, 31.183193, 34.391743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266562, 0.931412, -0.247823,
		-0.211057, -0.194476, -0.957932,
		-0.940425, 0.307653, 0.144741,
		36.312614, 31.275490, 34.435165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752163, 31.498348, 33.804344>,  <36.970913, 31.060133, 34.333847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752163, 31.498348, 33.804344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536526, 31.581644, 34.130783>,  <36.407143, 31.631622, 34.326645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536526, 31.581644, 34.130783>,  <36.752163, 31.498348, 33.804344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536526, 31.581644, 34.130783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245068, 0.965811, -0.084558,
		-0.805806, 0.154415, -0.571693,
		-0.539090, 0.208241, 0.816099,
		36.374798, 31.644115, 34.375614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882179, 32.255554, 33.802944>,  <36.752163, 31.498348, 33.804344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882179, 32.255554, 33.802944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641880, 32.167198, 34.110268>,  <36.497700, 32.114185, 34.294662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641880, 32.167198, 34.110268>,  <36.882179, 32.255554, 33.802944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641880, 32.167198, 34.110268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059271, 0.970730, 0.232744,
		-0.797235, 0.094283, -0.596261,
		-0.600752, -0.220893, 0.768312,
		36.461655, 32.100929, 34.340763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519291, 32.333862, 33.657249>,  <36.882179, 32.255554, 33.802944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519291, 32.333862, 33.657249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808537, 32.176300, 33.430290>,  <37.982086, 32.081760, 33.294117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808537, 32.176300, 33.430290>,  <37.519291, 32.333862, 33.657249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808537, 32.176300, 33.430290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550990, -0.166423, 0.817749,
		-0.416547, -0.903957, 0.096697,
		0.723118, -0.393910, -0.567394,
		38.025471, 32.058128, 33.260071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591976, 31.610292, 33.851097>,  <37.519291, 32.333862, 33.657249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591976, 31.610292, 33.851097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929272, 31.766073, 33.702892>,  <38.131649, 31.859541, 33.613972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929272, 31.766073, 33.702892>,  <37.591976, 31.610292, 33.851097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929272, 31.766073, 33.702892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483989, -0.250167, 0.838553,
		0.233887, -0.886422, -0.399441,
		0.843238, 0.389451, -0.370508,
		38.182243, 31.882908, 33.591740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103065, 31.025307, 33.836597>,  <37.591976, 31.610292, 33.851097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103065, 31.025307, 33.836597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284588, 31.381512, 33.823677>,  <38.393501, 31.595234, 33.815926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284588, 31.381512, 33.823677>,  <38.103065, 31.025307, 33.836597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284588, 31.381512, 33.823677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548320, -0.250482, 0.797875,
		0.702425, -0.379798, -0.601957,
		0.453811, 0.890513, -0.032305,
		38.420731, 31.648664, 33.813984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797340, 30.899670, 34.090664>,  <38.103065, 31.025307, 33.836597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797340, 30.899670, 34.090664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709393, 31.287554, 34.133224>,  <38.656624, 31.520285, 34.158760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709393, 31.287554, 34.133224>,  <38.797340, 30.899670, 34.090664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709393, 31.287554, 34.133224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458144, 0.006350, 0.888855,
		0.861255, 0.244182, -0.445663,
		-0.219873, 0.969709, 0.106402,
		38.643433, 31.578466, 34.165146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386127, 31.078339, 34.410957>,  <38.797340, 30.899670, 34.090664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386127, 31.078339, 34.410957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125294, 31.373280, 34.481491>,  <38.968792, 31.550245, 34.523811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125294, 31.373280, 34.481491>,  <39.386127, 31.078339, 34.410957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125294, 31.373280, 34.481491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437058, 0.175564, 0.882132,
		0.619487, 0.652293, -0.436750,
		-0.652086, 0.737354, 0.176330,
		38.929668, 31.594486, 34.534389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714310, 31.832024, 34.497726>,  <39.386127, 31.078339, 34.410957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714310, 31.832024, 34.497726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380383, 31.754469, 34.703827>,  <39.180027, 31.707937, 34.827488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380383, 31.754469, 34.703827>,  <39.714310, 31.832024, 34.497726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380383, 31.754469, 34.703827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460990, 0.265437, 0.846777,
		-0.300946, 0.944432, -0.132212,
		-0.834818, -0.193886, 0.515255,
		39.129936, 31.696302, 34.858402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114704, 32.132607, 34.535530>,  <39.714310, 31.832024, 34.497726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114704, 32.132607, 34.535530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443817, 32.359779, 34.544350>,  <39.641285, 32.496082, 34.549641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443817, 32.359779, 34.544350>,  <39.114704, 32.132607, 34.535530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443817, 32.359779, 34.544350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545939, 0.778932, 0.308569,
		0.158072, -0.265921, 0.950946,
		0.822778, 0.567935, 0.022049,
		39.690651, 32.530159, 34.550964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484627, 32.127842, 35.156612>,  <39.114704, 32.132607, 34.535530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484627, 32.127842, 35.156612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848679, 31.965231, 35.188637>,  <40.067108, 31.867664, 35.207851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848679, 31.965231, 35.188637>,  <39.484627, 32.127842, 35.156612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848679, 31.965231, 35.188637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324583, 0.579452, -0.747584,
		0.257520, 0.706381, 0.659325,
		0.910126, -0.406524, 0.080059,
		40.121716, 31.843273, 35.212654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802479, 32.705944, 35.140766>,  <39.484627, 32.127842, 35.156612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802479, 32.705944, 35.140766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033070, 32.399128, 35.028107>,  <40.171425, 32.215038, 34.960510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033070, 32.399128, 35.028107>,  <39.802479, 32.705944, 35.140766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033070, 32.399128, 35.028107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344340, 0.540626, -0.767563,
		0.741018, 0.345498, 0.575780,
		0.576474, -0.767042, -0.281645,
		40.206013, 32.169014, 34.943615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408585, 32.991753, 34.997570>,  <39.802479, 32.705944, 35.140766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408585, 32.991753, 34.997570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411198, 32.637646, 34.811554>,  <40.412766, 32.425182, 34.699944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411198, 32.637646, 34.811554>,  <40.408585, 32.991753, 34.997570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411198, 32.637646, 34.811554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469143, 0.413408, -0.780384,
		0.883098, -0.213070, 0.418017,
		0.006535, -0.885266, -0.465040,
		40.413158, 32.372066, 34.672043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079987, 32.751503, 34.817142>,  <40.408585, 32.991753, 34.997570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079987, 32.751503, 34.817142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815121, 32.617611, 34.548965>,  <40.656200, 32.537277, 34.388062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815121, 32.617611, 34.548965>,  <41.079987, 32.751503, 34.817142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815121, 32.617611, 34.548965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605276, 0.288556, -0.741874,
		0.441785, -0.897047, 0.011529,
		-0.662169, -0.334727, -0.670440,
		40.616470, 32.517193, 34.347832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457527, 32.375286, 34.364796>,  <41.079987, 32.751503, 34.817142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457527, 32.375286, 34.364796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126488, 32.496281, 34.175655>,  <40.927864, 32.568878, 34.062172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126488, 32.496281, 34.175655>,  <41.457527, 32.375286, 34.364796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126488, 32.496281, 34.175655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553728, 0.301835, -0.776068,
		-0.092028, -0.904100, -0.417293,
		-0.827597, 0.302487, -0.472848,
		40.878208, 32.587025, 34.033802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269371, 32.623161, 33.654568>,  <41.457527, 32.375286, 34.364796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269371, 32.623161, 33.654568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524197, 32.522640, 33.363091>,  <41.677094, 32.462330, 33.188206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.524197, 32.522640, 33.363091>,  <41.269371, 32.623161, 33.654568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524197, 32.522640, 33.363091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424279, 0.903587, 0.059315,
		0.643532, -0.346957, 0.682266,
		0.637066, -0.251300, -0.728694,
		41.715317, 32.447250, 33.144482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894611, 32.860718, 33.947639>,  <41.269371, 32.623161, 33.654568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894611, 32.860718, 33.947639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881943, 32.848694, 33.548019>,  <41.874344, 32.841480, 33.308247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881943, 32.848694, 33.548019>,  <41.894611, 32.860718, 33.947639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881943, 32.848694, 33.548019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339087, 0.939945, -0.039031,
		0.940222, -0.340000, -0.019571,
		-0.031666, -0.030061, -0.999047,
		41.872444, 32.839676, 33.248306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619930, 32.971077, 33.828323>,  <41.894611, 32.860718, 33.947639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619930, 32.971077, 33.828323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335812, 33.083282, 33.570084>,  <42.165340, 33.150604, 33.415142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335812, 33.083282, 33.570084>,  <42.619930, 32.971077, 33.828323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335812, 33.083282, 33.570084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487769, 0.857409, -0.164106,
		0.507506, -0.431465, -0.745838,
		-0.710295, 0.280512, -0.645596,
		42.122723, 33.167435, 33.376404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974895, 32.975609, 33.211277>,  <42.619930, 32.971077, 33.828323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974895, 32.975609, 33.211277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658131, 33.218990, 33.231888>,  <42.468071, 33.365021, 33.244255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658131, 33.218990, 33.231888>,  <42.974895, 32.975609, 33.211277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658131, 33.218990, 33.231888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600230, 0.791160, -0.117431,
		-0.112219, -0.062065, -0.991743,
		-0.791916, 0.608452, 0.051530,
		42.420555, 33.401527, 33.247345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004330, 33.419754, 32.730293>,  <42.974895, 32.975609, 33.211277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004330, 33.419754, 32.730293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822250, 33.607613, 33.032875>,  <42.713001, 33.720329, 33.214424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822250, 33.607613, 33.032875>,  <43.004330, 33.419754, 32.730293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822250, 33.607613, 33.032875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585408, 0.797997, -0.143168,
		-0.670888, 0.377665, -0.638183,
		-0.455199, 0.469648, 0.756456,
		42.685692, 33.748508, 33.259811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552326, 33.940891, 32.593048>,  <43.004330, 33.419754, 32.730293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552326, 33.940891, 32.593048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733311, 34.026764, 32.939270>,  <42.841900, 34.078289, 33.147003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733311, 34.026764, 32.939270>,  <42.552326, 33.940891, 32.593048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733311, 34.026764, 32.939270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601285, 0.643346, -0.473880,
		-0.658588, 0.734859, 0.162000,
		0.452457, 0.214684, 0.865560,
		42.869049, 34.091167, 33.198936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611649, 34.693542, 32.809536>,  <42.552326, 33.940891, 32.593048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611649, 34.693542, 32.809536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923695, 34.488987, 32.953701>,  <43.110924, 34.366253, 33.040199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923695, 34.488987, 32.953701>,  <42.611649, 34.693542, 32.809536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923695, 34.488987, 32.953701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625611, 0.642544, -0.442434,
		-0.005321, 0.570627, 0.821192,
		0.780117, -0.511393, 0.360409,
		43.157730, 34.335567, 33.061825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387321, 35.081970, 32.683697>,  <42.611649, 34.693542, 32.809536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387321, 35.081970, 32.683697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230305, 34.896938, 32.365719>,  <43.136093, 34.785919, 32.174934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230305, 34.896938, 32.365719>,  <43.387321, 35.081970, 32.683697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230305, 34.896938, 32.365719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046052, -0.873120, 0.485326,
		-0.918580, 0.153902, 0.364040,
		-0.392543, -0.462576, -0.794942,
		43.112541, 34.758167, 32.127235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018845, 35.390545, 33.022057>,  <43.387321, 35.081970, 32.683697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018845, 35.390545, 33.022057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092190, 35.477470, 32.638565>,  <44.136196, 35.529625, 32.408470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092190, 35.477470, 32.638565>,  <44.018845, 35.390545, 33.022057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092190, 35.477470, 32.638565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828412, 0.490906, 0.269711,
		0.529257, -0.843673, -0.090018,
		0.183358, 0.217318, -0.958725,
		44.147198, 35.542667, 32.350948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557480, 34.975430, 32.682095>,  <44.018845, 35.390545, 33.022057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557480, 34.975430, 32.682095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494106, 35.354382, 32.570835>,  <44.456081, 35.581753, 32.504078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494106, 35.354382, 32.570835>,  <44.557480, 34.975430, 32.682095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494106, 35.354382, 32.570835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951512, 0.221730, 0.213215,
		0.263670, -0.230882, -0.936574,
		-0.158439, 0.947380, -0.278151,
		44.446575, 35.638596, 32.487389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018299, 35.202400, 32.191315>,  <44.557480, 34.975430, 32.682095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018299, 35.202400, 32.191315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919262, 35.550941, 32.360760>,  <44.859840, 35.760067, 32.462425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.919262, 35.550941, 32.360760>,  <45.018299, 35.202400, 32.191315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919262, 35.550941, 32.360760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967539, 0.199508, 0.155126,
		0.050656, 0.448268, -0.892463,
		-0.247592, 0.871351, 0.423611,
		44.844986, 35.812347, 32.487843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616928, 35.517658, 31.898779>,  <45.018299, 35.202400, 32.191315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616928, 35.517658, 31.898779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.437836, 35.705585, 32.203094>,  <45.330379, 35.818344, 32.385685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.437836, 35.705585, 32.203094>,  <45.616928, 35.517658, 31.898779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.437836, 35.705585, 32.203094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892938, 0.190342, 0.407960,
		0.046858, 0.861997, -0.504743,
		-0.447734, 0.469820, 0.760791,
		45.303516, 35.846531, 32.431332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.877079, 36.193779, 31.904194>,  <45.616928, 35.517658, 31.898779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.877079, 36.193779, 31.904194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760147, 36.034294, 32.251888>,  <45.689987, 35.938602, 32.460506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760147, 36.034294, 32.251888>,  <45.877079, 36.193779, 31.904194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.760147, 36.034294, 32.251888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936564, 0.064430, 0.344524,
		-0.193370, 0.914811, 0.354582,
		-0.292329, -0.398710, 0.869238,
		45.672447, 35.914680, 32.512661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.327854, 36.418167, 32.311180>,  <45.877079, 36.193779, 31.904194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.327854, 36.418167, 32.311180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182903, 36.135960, 32.554794>,  <46.095932, 35.966637, 32.700962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182903, 36.135960, 32.554794>,  <46.327854, 36.418167, 32.311180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182903, 36.135960, 32.554794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909512, -0.124902, 0.396468,
		-0.203645, 0.697600, 0.686937,
		-0.362376, -0.705517, 0.609040,
		46.074192, 35.924305, 32.737507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.731632, 36.472351, 32.918442>,  <46.327854, 36.418167, 32.311180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.731632, 36.472351, 32.918442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.559326, 36.112099, 32.941456>,  <46.455940, 35.895947, 32.955265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.559326, 36.112099, 32.941456>,  <46.731632, 36.472351, 32.918442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.559326, 36.112099, 32.941456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840062, -0.376872, 0.390210,
		-0.329752, 0.216421, 0.918926,
		-0.430767, -0.900627, 0.057533,
		46.430096, 35.841911, 32.958717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.910259, 36.202827, 33.482201>,  <46.731632, 36.472351, 32.918442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.910259, 36.202827, 33.482201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.842430, 35.856483, 33.293930>,  <46.801731, 35.648678, 33.180969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.842430, 35.856483, 33.293930>,  <46.910259, 36.202827, 33.482201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.842430, 35.856483, 33.293930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775782, -0.411818, 0.478089,
		-0.607789, -0.284067, 0.741552,
		-0.169575, -0.865859, -0.470672,
		46.791557, 35.596725, 33.152729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.032661, 35.694168, 33.980453>,  <46.910259, 36.202827, 33.482201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.032661, 35.694168, 33.980453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.072948, 35.540001, 33.613560>,  <47.097118, 35.447502, 33.393425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.072948, 35.540001, 33.613560>,  <47.032661, 35.694168, 33.980453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.072948, 35.540001, 33.613560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790402, -0.528924, 0.309039,
		-0.604253, -0.756105, 0.251363,
		0.100714, -0.385416, -0.917230,
		47.103161, 35.424377, 33.338390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.164940, 35.026016, 34.061565>,  <47.032661, 35.694168, 33.980453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.164940, 35.026016, 34.061565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.332523, 35.165195, 33.726089>,  <47.433071, 35.248703, 33.524803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.332523, 35.165195, 33.726089>,  <47.164940, 35.026016, 34.061565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.332523, 35.165195, 33.726089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906829, -0.207365, 0.366962,
		-0.046231, -0.914292, -0.402408,
		0.418956, 0.347950, -0.838693,
		47.458210, 35.269581, 33.474480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.537151, 34.672363, 34.613819>,  <47.164940, 35.026016, 34.061565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.537151, 34.672363, 34.613819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.739079, 34.852600, 34.908337>,  <47.860233, 34.960743, 35.085049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.739079, 34.852600, 34.908337>,  <47.537151, 34.672363, 34.613819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.739079, 34.852600, 34.908337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289366, -0.891936, 0.347444,
		0.813282, 0.037662, -0.580650,
		0.504817, 0.450590, 0.736294,
		47.890522, 34.987778, 35.129223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.606972, 26.908686, 22.508595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.257671, 27.100708, 22.475191>,  <32.048092, 27.215921, 22.455149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.257671, 27.100708, 22.475191>,  <32.606972, 26.908686, 22.508595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257671, 27.100708, 22.475191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055810, 0.071710, 0.995863,
		0.484058, 0.874302, -0.035829,
		-0.873254, 0.480056, -0.083507,
		31.995695, 27.244724, 22.450140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725124, 27.453991, 22.923120>,  <32.606972, 26.908686, 22.508595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725124, 27.453991, 22.923120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.333199, 27.389404, 22.875978>,  <32.098042, 27.350653, 22.847692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.333199, 27.389404, 22.875978>,  <32.725124, 27.453991, 22.923120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333199, 27.389404, 22.875978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140799, 0.138916, 0.980244,
		-0.141907, 0.977052, -0.158847,
		-0.979815, -0.161469, -0.117855,
		32.039253, 27.340963, 22.840622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342358, 28.063681, 23.134605>,  <32.725124, 27.453991, 22.923120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342358, 28.063681, 23.134605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.095306, 27.753611, 23.187731>,  <31.947075, 27.567568, 23.219606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.095306, 27.753611, 23.187731>,  <32.342358, 28.063681, 23.134605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095306, 27.753611, 23.187731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293632, 0.383943, 0.875424,
		-0.729599, 0.501689, -0.464750,
		-0.617629, -0.775174, 0.132812,
		31.910017, 27.521059, 23.227575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800398, 28.382746, 23.475906>,  <32.342358, 28.063681, 23.134605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800398, 28.382746, 23.475906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.723314, 27.992121, 23.514254>,  <31.677065, 27.757746, 23.537262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.723314, 27.992121, 23.514254>,  <31.800398, 28.382746, 23.475906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723314, 27.992121, 23.514254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338741, 0.157901, 0.927535,
		-0.920933, 0.146269, -0.361231,
		-0.192708, -0.976561, 0.095868,
		31.665503, 27.699152, 23.543015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143030, 28.368614, 23.794231>,  <31.800398, 28.382746, 23.475906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143030, 28.368614, 23.794231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.295311, 28.004803, 23.860956>,  <31.386679, 27.786516, 23.900991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.295311, 28.004803, 23.860956>,  <31.143030, 28.368614, 23.794231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295311, 28.004803, 23.860956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317287, 0.040958, 0.947445,
		-0.868560, -0.413620, -0.272988,
		0.380701, -0.909528, 0.166811,
		31.409521, 27.731945, 23.910999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635244, 28.150002, 24.190243>,  <31.143030, 28.368614, 23.794231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635244, 28.150002, 24.190243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.964214, 27.930744, 24.251108>,  <31.161596, 27.799189, 24.287628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.964214, 27.930744, 24.251108>,  <30.635244, 28.150002, 24.190243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964214, 27.930744, 24.251108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047711, 0.200076, 0.978618,
		-0.566870, -0.812099, 0.138395,
		0.822424, -0.548146, 0.152163,
		31.210941, 27.766300, 24.296757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487528, 27.715485, 24.744545>,  <30.635244, 28.150002, 24.190243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487528, 27.715485, 24.744545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.885460, 27.744385, 24.715994>,  <31.124218, 27.761724, 24.698864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.885460, 27.744385, 24.715994>,  <30.487528, 27.715485, 24.744545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885460, 27.744385, 24.715994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056124, 0.194642, 0.979267,
		0.084646, -0.978210, 0.189580,
		0.994829, 0.072251, -0.071376,
		31.183908, 27.766060, 24.694580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836401, 27.273046, 25.260366>,  <30.487528, 27.715485, 24.744545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836401, 27.273046, 25.260366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.094805, 27.569536, 25.187412>,  <31.249847, 27.747429, 25.143641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.094805, 27.569536, 25.187412>,  <30.836401, 27.273046, 25.260366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094805, 27.569536, 25.187412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064858, 0.184768, 0.980640,
		0.760571, -0.645329, 0.071287,
		0.646007, 0.741223, -0.182383,
		31.288607, 27.791903, 25.132698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293331, 27.192711, 25.818317>,  <30.836401, 27.273046, 25.260366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293331, 27.192711, 25.818317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.392344, 27.547533, 25.662439>,  <31.451752, 27.760426, 25.568913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.392344, 27.547533, 25.662439>,  <31.293331, 27.192711, 25.818317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392344, 27.547533, 25.662439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223320, 0.339146, 0.913842,
		0.942791, -0.313233, -0.114148,
		0.247533, 0.887054, -0.389695,
		31.466604, 27.813650, 25.545530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989672, 27.483826, 26.265783>,  <31.293331, 27.192711, 25.818317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989672, 27.483826, 26.265783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.770615, 27.774052, 26.099104>,  <31.639179, 27.948187, 25.999096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.770615, 27.774052, 26.099104>,  <31.989672, 27.483826, 26.265783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770615, 27.774052, 26.099104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214164, 0.602987, 0.768466,
		0.808838, 0.331604, -0.485613,
		-0.547644, 0.725566, -0.416701,
		31.606321, 27.991722, 25.974094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328266, 28.100424, 26.147085>,  <31.989672, 27.483826, 26.265783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328266, 28.100424, 26.147085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.954979, 28.226206, 26.216625>,  <31.731007, 28.301676, 26.258350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.954979, 28.226206, 26.216625>,  <32.328266, 28.100424, 26.147085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954979, 28.226206, 26.216625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330431, 0.560988, 0.759018,
		0.141149, 0.765774, -0.627429,
		-0.933216, 0.314456, 0.173852,
		31.675014, 28.320543, 26.268782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279255, 28.821497, 26.083822>,  <32.328266, 28.100424, 26.147085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279255, 28.821497, 26.083822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.973127, 28.711546, 26.316624>,  <31.789452, 28.645576, 26.456305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.973127, 28.711546, 26.316624>,  <32.279255, 28.821497, 26.083822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973127, 28.711546, 26.316624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174099, 0.782115, 0.598319,
		-0.619659, 0.559231, -0.550712,
		-0.765319, -0.274875, 0.582006,
		31.743532, 28.629084, 26.491226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853758, 29.432030, 26.272831>,  <32.279255, 28.821497, 26.083822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853758, 29.432030, 26.272831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.752918, 29.154934, 26.543108>,  <31.692415, 28.988676, 26.705275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.752918, 29.154934, 26.543108>,  <31.853758, 29.432030, 26.272831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752918, 29.154934, 26.543108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288734, 0.612592, 0.735774,
		-0.923622, 0.380583, 0.045584,
		-0.252099, -0.692739, 0.675692,
		31.677288, 28.947113, 26.745815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785278, 29.890968, 26.807350>,  <31.853758, 29.432030, 26.272831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785278, 29.890968, 26.807350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.788565, 29.520561, 26.958307>,  <31.790537, 29.298317, 27.048882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.788565, 29.520561, 26.958307>,  <31.785278, 29.890968, 26.807350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788565, 29.520561, 26.958307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334289, 0.358235, 0.871733,
		-0.942435, 0.118995, 0.312501,
		0.008217, -0.926018, 0.377391,
		31.791029, 29.242756, 27.071526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524208, 30.052677, 27.390276>,  <31.785278, 29.890968, 26.807350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524208, 30.052677, 27.390276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.709396, 29.701437, 27.438604>,  <31.820509, 29.490692, 27.467602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.709396, 29.701437, 27.438604>,  <31.524208, 30.052677, 27.390276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709396, 29.701437, 27.438604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454611, 0.352251, 0.818076,
		-0.760912, -0.323820, 0.562276,
		0.462972, -0.878100, 0.120820,
		31.848288, 29.438007, 27.474850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439613, 29.862743, 28.139490>,  <31.524208, 30.052677, 27.390276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439613, 29.862743, 28.139490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.757690, 29.673569, 27.987698>,  <31.948536, 29.560064, 27.896622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.757690, 29.673569, 27.987698>,  <31.439613, 29.862743, 28.139490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757690, 29.673569, 27.987698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466769, 0.077966, 0.880936,
		-0.387039, -0.877641, 0.282749,
		0.795190, -0.472935, -0.379480,
		31.996248, 29.531689, 27.873854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505898, 29.435204, 28.635015>,  <31.439613, 29.862743, 28.139490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505898, 29.435204, 28.635015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.854107, 29.410021, 28.439781>,  <32.063034, 29.394911, 28.322641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.854107, 29.410021, 28.439781>,  <31.505898, 29.435204, 28.635015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854107, 29.410021, 28.439781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491785, 0.148318, 0.857992,
		0.018372, -0.986934, 0.160077,
		0.870523, -0.062960, -0.488084,
		32.115265, 29.391134, 28.293356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004890, 29.022161, 29.051369>,  <31.505898, 29.435204, 28.635015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004890, 29.022161, 29.051369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.224426, 29.257200, 28.813543>,  <32.356148, 29.398224, 28.670847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.224426, 29.257200, 28.813543>,  <32.004890, 29.022161, 29.051369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224426, 29.257200, 28.813543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533697, 0.301126, 0.790247,
		0.643387, -0.751033, -0.148332,
		0.548835, 0.587599, -0.594564,
		32.389076, 29.433479, 28.635174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725498, 28.814331, 29.214066>,  <32.004890, 29.022161, 29.051369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725498, 28.814331, 29.214066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.725773, 29.174280, 29.039606>,  <32.725937, 29.390249, 28.934931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.725773, 29.174280, 29.039606>,  <32.725498, 28.814331, 29.214066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725773, 29.174280, 29.039606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424794, 0.394579, 0.814774,
		0.905290, -0.185830, -0.381991,
		0.000683, 0.899875, -0.436148,
		32.725979, 29.444242, 28.908762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377014, 29.022837, 29.357977>,  <32.725498, 28.814331, 29.214066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377014, 29.022837, 29.357977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.195328, 29.368488, 29.271292>,  <33.086315, 29.575880, 29.219280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.195328, 29.368488, 29.271292>,  <33.377014, 29.022837, 29.357977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195328, 29.368488, 29.271292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459618, 0.435678, 0.773910,
		0.763176, 0.251918, -0.595062,
		-0.454218, 0.864131, -0.216713,
		33.059063, 29.627728, 29.206278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800476, 29.567984, 29.583282>,  <33.377014, 29.022837, 29.357977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800476, 29.567984, 29.583282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.451790, 29.761686, 29.553341>,  <33.242577, 29.877909, 29.535376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.451790, 29.761686, 29.553341>,  <33.800476, 29.567984, 29.583282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451790, 29.761686, 29.553341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202508, 0.495133, 0.844887,
		0.446205, 0.721345, -0.529682,
		-0.871718, 0.484257, -0.074853,
		33.190273, 29.906963, 29.530886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928188, 30.273283, 29.715874>,  <33.800476, 29.567984, 29.583282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928188, 30.273283, 29.715874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.535702, 30.235018, 29.782875>,  <33.300209, 30.212059, 29.823076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.535702, 30.235018, 29.782875>,  <33.928188, 30.273283, 29.715874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535702, 30.235018, 29.782875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122830, 0.359703, 0.924947,
		-0.148735, 0.928150, -0.341197,
		-0.981219, -0.095663, 0.167505,
		33.241337, 30.206320, 29.833126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639515, 29.880920, 29.789486>,  <33.928188, 30.273283, 29.715874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639515, 29.880920, 29.789486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.010689, 30.029934, 29.794500>,  <35.233395, 30.119343, 29.797508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.010689, 30.029934, 29.794500>,  <34.639515, 29.880920, 29.789486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010689, 30.029934, 29.794500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001319, 0.036910, -0.999318,
		-0.372743, 0.927284, 0.034742,
		0.927934, 0.372535, 0.012535,
		35.289070, 30.141695, 29.798262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756989, 30.563793, 29.390696>,  <34.639515, 29.880920, 29.789486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756989, 30.563793, 29.390696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.112797, 30.381039, 29.391306>,  <35.326283, 30.271385, 29.391672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.112797, 30.381039, 29.391306>,  <34.756989, 30.563793, 29.390696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112797, 30.381039, 29.391306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064038, -0.127983, -0.989707,
		0.452378, 0.880270, -0.143102,
		0.889524, -0.456886, 0.001526,
		35.379654, 30.243973, 29.391764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016857, 30.717257, 28.698666>,  <34.756989, 30.563793, 29.390696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016857, 30.717257, 28.698666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.256977, 30.426460, 28.832005>,  <35.401051, 30.251982, 28.912008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.256977, 30.426460, 28.832005>,  <35.016857, 30.717257, 28.698666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256977, 30.426460, 28.832005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105847, -0.340915, -0.934116,
		0.792738, 0.596035, -0.127702,
		0.600302, -0.726993, 0.333345,
		35.437069, 30.208363, 28.932009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487488, 30.689892, 28.237185>,  <35.016857, 30.717257, 28.698666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487488, 30.689892, 28.237185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475910, 30.338085, 28.427179>,  <35.468964, 30.127001, 28.541176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475910, 30.338085, 28.427179>,  <35.487488, 30.689892, 28.237185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475910, 30.338085, 28.427179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008576, -0.475385, -0.879736,
		0.999544, -0.021391, 0.021303,
		-0.028946, -0.879518, 0.474985,
		35.467228, 30.074230, 28.569675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082733, 30.304651, 27.986580>,  <35.487488, 30.689892, 28.237185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082733, 30.304651, 27.986580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834011, 30.028229, 28.133984>,  <35.684776, 29.862375, 28.222425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834011, 30.028229, 28.133984>,  <36.082733, 30.304651, 27.986580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834011, 30.028229, 28.133984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069298, -0.517237, -0.853032,
		0.780097, -0.504886, 0.369511,
		-0.621809, -0.691054, 0.368508,
		35.647469, 29.820913, 28.244535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248714, 29.643570, 27.641277>,  <36.082733, 30.304651, 27.986580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248714, 29.643570, 27.641277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891315, 29.558462, 27.799463>,  <35.676876, 29.507399, 27.894375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891315, 29.558462, 27.799463>,  <36.248714, 29.643570, 27.641277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891315, 29.558462, 27.799463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351575, -0.216450, -0.910793,
		0.279386, -0.952827, 0.118594,
		-0.893498, -0.212768, 0.395463,
		35.623264, 29.494633, 27.918102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060612, 29.052584, 27.394754>,  <36.248714, 29.643570, 27.641277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060612, 29.052584, 27.394754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715096, 29.241051, 27.466156>,  <35.507786, 29.354132, 27.508997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715096, 29.241051, 27.466156>,  <36.060612, 29.052584, 27.394754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715096, 29.241051, 27.466156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281861, -0.158220, -0.946320,
		-0.417634, -0.867736, 0.269473,
		-0.863792, 0.471169, 0.178503,
		35.455959, 29.382401, 27.519707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563004, 28.701939, 26.854021>,  <36.060612, 29.052584, 27.394754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563004, 28.701939, 26.854021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378479, 29.017015, 27.017353>,  <35.267765, 29.206062, 27.115353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.378479, 29.017015, 27.017353>,  <35.563004, 28.701939, 26.854021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378479, 29.017015, 27.017353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614908, 0.047927, -0.787141,
		-0.639597, -0.614199, 0.462251,
		-0.461307, 0.787695, 0.408330,
		35.240086, 29.253325, 27.139853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923294, 28.601387, 26.686523>,  <35.563004, 28.701939, 26.854021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923294, 28.601387, 26.686523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966213, 28.995583, 26.739126>,  <34.991966, 29.232100, 26.770689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966213, 28.995583, 26.739126>,  <34.923294, 28.601387, 26.686523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966213, 28.995583, 26.739126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374068, 0.162568, -0.913041,
		-0.921173, 0.048776, 0.386084,
		0.107299, 0.985491, 0.131508,
		34.998402, 29.291229, 26.778578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200676, 29.019442, 26.554682>,  <34.923294, 28.601387, 26.686523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200676, 29.019442, 26.554682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515495, 29.255190, 26.481800>,  <34.704388, 29.396639, 26.438070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515495, 29.255190, 26.481800>,  <34.200676, 29.019442, 26.554682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515495, 29.255190, 26.481800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388172, 0.243587, -0.888813,
		-0.479455, 0.770266, 0.420491,
		0.787049, 0.589369, -0.182206,
		34.751610, 29.432001, 26.427137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852348, 29.540098, 26.251907>,  <34.200676, 29.019442, 26.554682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852348, 29.540098, 26.251907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.245506, 29.602690, 26.213047>,  <34.481400, 29.640244, 26.189732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.245506, 29.602690, 26.213047>,  <33.852348, 29.540098, 26.251907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245506, 29.602690, 26.213047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128195, 0.202462, -0.970863,
		-0.132249, 0.966708, 0.219058,
		0.982892, 0.156477, -0.097152,
		34.540375, 29.649633, 26.183901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901230, 30.053404, 25.858767>,  <33.852348, 29.540098, 26.251907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901230, 30.053404, 25.858767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.270027, 29.913387, 25.792559>,  <34.491306, 29.829378, 25.752834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.270027, 29.913387, 25.792559>,  <33.901230, 30.053404, 25.858767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270027, 29.913387, 25.792559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144923, 0.084436, -0.985833,
		0.359058, 0.932921, 0.027121,
		0.921995, -0.350041, -0.165519,
		34.546627, 29.808374, 25.742903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072395, 30.342104, 25.194462>,  <33.901230, 30.053404, 25.858767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072395, 30.342104, 25.194462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.367229, 30.071886, 25.187105>,  <34.544132, 29.909756, 25.182692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.367229, 30.071886, 25.187105>,  <34.072395, 30.342104, 25.194462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367229, 30.071886, 25.187105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066115, -0.045001, -0.996797,
		0.672554, 0.735944, -0.077834,
		0.737089, -0.675546, -0.018391,
		34.588356, 29.869223, 25.181587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595882, 30.479918, 24.661169>,  <34.072395, 30.342104, 25.194462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595882, 30.479918, 24.661169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.629379, 30.089758, 24.742735>,  <34.649479, 29.855661, 24.791674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.629379, 30.089758, 24.742735>,  <34.595882, 30.479918, 24.661169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629379, 30.089758, 24.742735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187432, -0.216399, -0.958144,
		0.978701, 0.042021, -0.200943,
		0.083746, -0.975400, 0.203914,
		34.654503, 29.797138, 24.803909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032120, 30.166670, 24.132547>,  <34.595882, 30.479918, 24.661169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032120, 30.166670, 24.132547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.820961, 29.871061, 24.299965>,  <34.694267, 29.693697, 24.400415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.820961, 29.871061, 24.299965>,  <35.032120, 30.166670, 24.132547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820961, 29.871061, 24.299965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244807, -0.339485, -0.908196,
		0.813265, -0.581891, -0.001707,
		-0.527892, -0.739021, 0.418542,
		34.662594, 29.649355, 24.425528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247307, 29.604101, 23.735697>,  <35.032120, 30.166670, 24.132547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247307, 29.604101, 23.735697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909229, 29.471830, 23.903652>,  <34.706383, 29.392467, 24.004425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909229, 29.471830, 23.903652>,  <35.247307, 29.604101, 23.735697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909229, 29.471830, 23.903652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251378, -0.447355, -0.858302,
		0.471658, -0.830980, 0.294977,
		-0.845191, -0.330675, 0.419889,
		34.655670, 29.372627, 24.029619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216572, 28.906080, 23.539165>,  <35.247307, 29.604101, 23.735697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216572, 28.906080, 23.539165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.840160, 29.002155, 23.634481>,  <34.614315, 29.059799, 23.691671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.840160, 29.002155, 23.634481>,  <35.216572, 28.906080, 23.539165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840160, 29.002155, 23.634481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316829, -0.378481, -0.869696,
		-0.118699, -0.893904, 0.432257,
		-0.941026, 0.240184, 0.238289,
		34.557854, 29.074211, 23.705969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796131, 28.271721, 23.455986>,  <35.216572, 28.906080, 23.539165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796131, 28.271721, 23.455986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.528969, 28.568735, 23.435827>,  <34.368671, 28.746944, 23.423731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.528969, 28.568735, 23.435827>,  <34.796131, 28.271721, 23.455986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528969, 28.568735, 23.435827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448229, -0.455391, -0.769227,
		-0.594130, -0.491182, 0.636985,
		-0.667908, 0.742536, -0.050399,
		34.328598, 28.791496, 23.420708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.143906, 27.861729, 23.180920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073792, 28.253748, 23.143444>,  <34.031723, 28.488960, 23.120958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073792, 28.253748, 23.143444>,  <34.143906, 27.861729, 23.180920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073792, 28.253748, 23.143444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319613, -0.146652, -0.936131,
		-0.931195, -0.134142, 0.338942,
		-0.175281, 0.980051, -0.093688,
		34.021206, 28.547764, 23.115337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392170, 27.785543, 22.998434>,  <34.143906, 27.861729, 23.180920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392170, 27.785543, 22.998434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.561626, 28.121723, 22.863274>,  <33.663300, 28.323431, 22.782177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.561626, 28.121723, 22.863274>,  <33.392170, 27.785543, 22.998434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561626, 28.121723, 22.863274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287171, -0.229178, -0.930059,
		-0.859107, 0.491043, 0.144264,
		0.423637, 0.840449, -0.337901,
		33.688717, 28.373857, 22.761904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902302, 28.167227, 22.572338>,  <33.392170, 27.785543, 22.998434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902302, 28.167227, 22.572338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.253979, 28.324699, 22.464977>,  <33.464985, 28.419184, 22.400560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.253979, 28.324699, 22.464977>,  <32.902302, 28.167227, 22.572338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253979, 28.324699, 22.464977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234358, -0.133159, -0.962987,
		-0.414852, 0.909551, -0.024809,
		0.879189, 0.393683, -0.268402,
		33.517735, 28.442804, 22.384457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773151, 28.608727, 21.973564>,  <32.902302, 28.167227, 22.572338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773151, 28.608727, 21.973564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.164948, 28.528433, 21.966545>,  <33.400024, 28.480257, 21.962334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.164948, 28.528433, 21.966545>,  <32.773151, 28.608727, 21.973564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164948, 28.528433, 21.966545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074903, -0.281886, -0.956520,
		0.187059, 0.938215, -0.291139,
		0.979489, -0.200733, -0.017546,
		33.458794, 28.468212, 21.961281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051159, 28.888546, 21.376293>,  <32.773151, 28.608727, 21.973564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051159, 28.888546, 21.376293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.320274, 28.609173, 21.473906>,  <33.481743, 28.441549, 21.532473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.320274, 28.609173, 21.473906>,  <33.051159, 28.888546, 21.376293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320274, 28.609173, 21.473906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077033, -0.261922, -0.962010,
		0.735816, 0.666025, -0.122415,
		0.672785, -0.698433, 0.244033,
		33.522110, 28.399643, 21.547115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566895, 28.964254, 20.890417>,  <33.051159, 28.888546, 21.376293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566895, 28.964254, 20.890417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.643585, 28.598217, 21.032314>,  <33.689598, 28.378593, 21.117453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.643585, 28.598217, 21.032314>,  <33.566895, 28.964254, 20.890417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643585, 28.598217, 21.032314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048635, -0.352148, -0.934680,
		0.980244, 0.196452, -0.023009,
		0.191722, -0.915095, 0.354745,
		33.701103, 28.323689, 21.138739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150616, 28.773678, 20.555233>,  <33.566895, 28.964254, 20.890417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150616, 28.773678, 20.555233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000580, 28.428196, 20.689886>,  <33.910557, 28.220907, 20.770678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000580, 28.428196, 20.689886>,  <34.150616, 28.773678, 20.555233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000580, 28.428196, 20.689886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086230, -0.394081, -0.915022,
		0.922968, -0.314189, 0.222294,
		-0.375092, -0.863705, 0.336631,
		33.888054, 28.169085, 20.790874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710281, 28.309576, 20.380558>,  <34.150616, 28.773678, 20.555233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710281, 28.309576, 20.380558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.347206, 28.144125, 20.408894>,  <34.129360, 28.044855, 20.425896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.347206, 28.144125, 20.408894>,  <34.710281, 28.309576, 20.380558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347206, 28.144125, 20.408894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167341, -0.511562, -0.842794,
		0.384840, -0.753138, 0.533555,
		-0.907687, -0.413626, 0.070839,
		34.074902, 28.020037, 20.430145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727200, 27.537172, 20.322903>,  <34.710281, 28.309576, 20.380558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727200, 27.537172, 20.322903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.387463, 27.697535, 20.185564>,  <34.183620, 27.793753, 20.103161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.387463, 27.697535, 20.185564>,  <34.727200, 27.537172, 20.322903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387463, 27.697535, 20.185564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188784, -0.376732, -0.906881,
		-0.492925, -0.835073, 0.244290,
		-0.849344, 0.400906, -0.343349,
		34.132660, 27.817806, 20.082560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664833, 27.163948, 19.766533>,  <34.727200, 27.537172, 20.322903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664833, 27.163948, 19.766533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.379383, 27.436146, 19.700006>,  <34.208111, 27.599464, 19.660091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.379383, 27.436146, 19.700006>,  <34.664833, 27.163948, 19.766533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379383, 27.436146, 19.700006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003671, -0.233778, -0.972283,
		-0.700515, -0.694459, 0.164332,
		-0.713628, 0.680496, -0.166314,
		34.165295, 27.640295, 19.650112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159882, 26.845406, 19.302818>,  <34.664833, 27.163948, 19.766533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159882, 26.845406, 19.302818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.122498, 27.242586, 19.273670>,  <34.100067, 27.480894, 19.256182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.122498, 27.242586, 19.273670>,  <34.159882, 26.845406, 19.302818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122498, 27.242586, 19.273670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141769, -0.059171, -0.988130,
		-0.985478, -0.102679, -0.135240,
		-0.093457, 0.992953, -0.072868,
		34.094460, 27.540472, 19.251810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565277, 27.023632, 18.856783>,  <34.159882, 26.845406, 19.302818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565277, 27.023632, 18.856783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.775101, 27.364178, 18.855238>,  <33.900993, 27.568504, 18.854311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.775101, 27.364178, 18.855238>,  <33.565277, 27.023632, 18.856783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775101, 27.364178, 18.855238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062596, 0.034041, -0.997458,
		-0.849069, 0.523469, 0.071149,
		0.524560, 0.851365, -0.003864,
		33.932468, 27.619587, 18.854078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262844, 27.380882, 18.415686>,  <33.565277, 27.023632, 18.856783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262844, 27.380882, 18.415686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.620815, 27.558889, 18.428686>,  <33.835598, 27.665693, 18.436485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.620815, 27.558889, 18.428686>,  <33.262844, 27.380882, 18.415686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620815, 27.558889, 18.428686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006010, 0.084851, -0.996375,
		-0.446164, 0.891492, 0.078610,
		0.894931, 0.445019, 0.032500,
		33.889294, 27.692396, 18.438437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137337, 28.074102, 18.151720>,  <33.262844, 27.380882, 18.415686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137337, 28.074102, 18.151720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.514870, 27.953321, 18.098053>,  <33.741390, 27.880854, 18.065853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.514870, 27.953321, 18.098053>,  <33.137337, 28.074102, 18.151720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514870, 27.953321, 18.098053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065534, 0.226923, -0.971705,
		0.323854, 0.925922, 0.194389,
		0.943835, -0.301952, -0.134169,
		33.798019, 27.862736, 18.057802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357327, 28.594990, 17.632618>,  <33.137337, 28.074102, 18.151720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357327, 28.594990, 17.632618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.620739, 28.294069, 17.640501>,  <33.778786, 28.113518, 17.645231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.620739, 28.294069, 17.640501>,  <33.357327, 28.594990, 17.632618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620739, 28.294069, 17.640501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120028, 0.079139, -0.989611,
		0.742924, 0.654051, 0.142412,
		0.658527, -0.752299, 0.019710,
		33.818298, 28.068380, 17.646414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951923, 28.811775, 17.211327>,  <33.357327, 28.594990, 17.632618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951923, 28.811775, 17.211327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.970512, 28.412586, 17.228701>,  <33.981667, 28.173073, 17.239126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.970512, 28.412586, 17.228701>,  <33.951923, 28.811775, 17.211327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970512, 28.412586, 17.228701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135810, -0.036767, -0.990052,
		0.989644, 0.051913, 0.133826,
		0.046476, -0.997974, 0.043437,
		33.984455, 28.113194, 17.241732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260132, 28.664585, 16.622292>,  <33.951923, 28.811775, 17.211327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260132, 28.664585, 16.622292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.149506, 28.294989, 16.727932>,  <34.083130, 28.073231, 16.791317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.149506, 28.294989, 16.727932>,  <34.260132, 28.664585, 16.622292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149506, 28.294989, 16.727932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091578, -0.298911, -0.949877,
		0.956621, -0.238520, 0.167287,
		-0.276569, -0.923992, 0.264101,
		34.066536, 28.017792, 16.807161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686073, 28.211981, 16.253080>,  <34.260132, 28.664585, 16.622292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686073, 28.211981, 16.253080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.342175, 28.026806, 16.339355>,  <34.135834, 27.915701, 16.391121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.342175, 28.026806, 16.339355>,  <34.686073, 28.211981, 16.253080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342175, 28.026806, 16.339355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079841, -0.295296, -0.952064,
		0.504439, -0.835756, 0.216919,
		-0.859748, -0.462939, 0.215686,
		34.084251, 27.887924, 16.404060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701427, 27.580921, 15.808273>,  <34.686073, 28.211981, 16.253080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701427, 27.580921, 15.808273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327023, 27.647848, 15.932133>,  <34.102379, 27.688004, 16.006449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327023, 27.647848, 15.932133>,  <34.701427, 27.580921, 15.808273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327023, 27.647848, 15.932133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339030, -0.192329, -0.920906,
		-0.094523, -0.966963, 0.236746,
		-0.936015, 0.167311, 0.309650,
		34.046219, 27.698042, 16.025028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309780, 27.018904, 15.552363>,  <34.701427, 27.580921, 15.808273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309780, 27.018904, 15.552363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059635, 27.328800, 15.589665>,  <33.909546, 27.514738, 15.612046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059635, 27.328800, 15.589665>,  <34.309780, 27.018904, 15.552363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059635, 27.328800, 15.589665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255140, -0.090068, -0.962700,
		-0.737442, -0.625833, 0.253992,
		-0.625366, 0.774739, 0.093255,
		33.872025, 27.561222, 15.617641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793747, 26.775898, 15.165380>,  <34.309780, 27.018904, 15.552363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793747, 26.775898, 15.165380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712769, 27.165850, 15.202531>,  <33.664181, 27.399820, 15.224822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712769, 27.165850, 15.202531>,  <33.793747, 26.775898, 15.165380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712769, 27.165850, 15.202531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327288, 0.022035, -0.944668,
		-0.922983, -0.221643, 0.314606,
		-0.202446, 0.974879, 0.092879,
		33.652035, 27.458313, 15.230394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399372, 26.931704, 14.662510>,  <33.793747, 26.775898, 15.165380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399372, 26.931704, 14.662510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461555, 27.304222, 14.794277>,  <33.498867, 27.527733, 14.873338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461555, 27.304222, 14.794277>,  <33.399372, 26.931704, 14.662510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461555, 27.304222, 14.794277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236629, 0.358871, -0.902894,
		-0.959082, 0.062415, 0.276162,
		0.155461, 0.931298, 0.329418,
		33.508194, 27.583611, 14.893103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751625, 27.433430, 14.733846>,  <33.399372, 26.931704, 14.662510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751625, 27.433430, 14.733846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.096973, 27.608894, 14.634115>,  <33.304184, 27.714172, 14.574277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.096973, 27.608894, 14.634115>,  <32.751625, 27.433430, 14.733846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096973, 27.608894, 14.634115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432729, 0.389615, -0.812985,
		-0.259485, 0.809800, 0.526205,
		0.863373, 0.438662, -0.249325,
		33.355984, 27.740494, 14.559318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668449, 28.083536, 14.725971>,  <32.751625, 27.433430, 14.733846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668449, 28.083536, 14.725971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.965393, 27.998264, 14.471898>,  <33.143559, 27.947102, 14.319454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.965393, 27.998264, 14.471898>,  <32.668449, 28.083536, 14.725971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965393, 27.998264, 14.471898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598368, 0.215561, -0.771680,
		0.301425, 0.952937, 0.032465,
		0.742360, -0.213178, -0.635182,
		33.188103, 27.934311, 14.281343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334431, 28.421152, 15.182992>,  <32.668449, 28.083536, 14.725971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334431, 28.421152, 15.182992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.029354, 28.439493, 14.924936>,  <31.846310, 28.450499, 14.770103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.029354, 28.439493, 14.924936>,  <32.334431, 28.421152, 15.182992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029354, 28.439493, 14.924936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547689, 0.484769, 0.681935,
		0.344013, 0.873439, -0.344614,
		-0.762687, 0.045853, -0.645140,
		31.800549, 28.453249, 14.731394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075890, 29.028435, 15.066789>,  <32.334431, 28.421152, 15.182992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075890, 29.028435, 15.066789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.775921, 28.765917, 15.033573>,  <31.595940, 28.608406, 15.013644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.775921, 28.765917, 15.033573>,  <32.075890, 29.028435, 15.066789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775921, 28.765917, 15.033573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327281, 0.258993, 0.908741,
		-0.574894, 0.708662, -0.409017,
		-0.749923, -0.656293, -0.083038,
		31.550943, 28.569029, 15.008661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508574, 29.380350, 15.372367>,  <32.075890, 29.028435, 15.066789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508574, 29.380350, 15.372367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.439878, 28.986452, 15.383573>,  <31.398661, 28.750114, 15.390296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.439878, 28.986452, 15.383573>,  <31.508574, 29.380350, 15.372367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439878, 28.986452, 15.383573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414113, 0.097966, 0.904938,
		-0.893877, 0.143811, -0.424620,
		-0.171738, -0.984744, 0.028015,
		31.388357, 28.691029, 15.391977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941484, 29.365364, 15.727275>,  <31.508574, 29.380350, 15.372367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941484, 29.365364, 15.727275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.025793, 28.977108, 15.773634>,  <31.076378, 28.744154, 15.801450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.025793, 28.977108, 15.773634>,  <30.941484, 29.365364, 15.727275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025793, 28.977108, 15.773634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395810, 0.023667, 0.918028,
		-0.893818, -0.239368, -0.379200,
		0.210772, -0.970640, 0.115898,
		31.089025, 28.685915, 15.808404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290842, 29.045755, 16.038218>,  <30.941484, 29.365364, 15.727275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290842, 29.045755, 16.038218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.619680, 28.822241, 16.081875>,  <30.816984, 28.688131, 16.108070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.619680, 28.822241, 16.081875>,  <30.290842, 29.045755, 16.038218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619680, 28.822241, 16.081875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213904, -0.125476, 0.968763,
		-0.527639, -0.819763, -0.222680,
		0.822096, -0.558789, 0.109144,
		30.866310, 28.654604, 16.114618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151470, 28.544216, 16.517187>,  <30.290842, 29.045755, 16.038218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151470, 28.544216, 16.517187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550774, 28.546234, 16.540703>,  <30.790356, 28.547445, 16.554813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550774, 28.546234, 16.540703>,  <30.151470, 28.544216, 16.517187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550774, 28.546234, 16.540703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058547, 0.208758, 0.976213,
		-0.007350, -0.977954, 0.208689,
		0.998257, 0.005043, 0.058790,
		30.850250, 28.547747, 16.558340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327940, 28.115049, 17.170504>,  <30.151470, 28.544216, 16.517187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327940, 28.115049, 17.170504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.680424, 28.291798, 17.103312>,  <30.891914, 28.397846, 17.062996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.680424, 28.291798, 17.103312>,  <30.327940, 28.115049, 17.170504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680424, 28.291798, 17.103312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119625, 0.135335, 0.983552,
		0.457337, -0.886811, 0.066400,
		0.881211, 0.441872, -0.167979,
		30.944788, 28.424358, 17.052917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682400, 27.953489, 17.735147>,  <30.327940, 28.115049, 17.170504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682400, 27.953489, 17.735147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.903427, 28.250431, 17.583580>,  <31.036043, 28.428596, 17.492640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.903427, 28.250431, 17.583580>,  <30.682400, 27.953489, 17.735147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903427, 28.250431, 17.583580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291840, 0.253515, 0.922258,
		0.780704, -0.620193, -0.076565,
		0.552567, 0.742355, -0.378918,
		31.069197, 28.473137, 17.469904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377127, 27.866966, 17.852909>,  <30.682400, 27.953489, 17.735147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377127, 27.866966, 17.852909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.277658, 28.253841, 17.832083>,  <31.217978, 28.485966, 17.819588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.277658, 28.253841, 17.832083>,  <31.377127, 27.866966, 17.852909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277658, 28.253841, 17.832083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291645, 0.126027, 0.948188,
		0.923637, 0.220602, -0.313415,
		-0.248671, 0.967188, -0.052066,
		31.203056, 28.543997, 17.816463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974611, 28.233513, 18.100039>,  <31.377127, 27.866966, 17.852909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974611, 28.233513, 18.100039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653095, 28.470186, 18.124805>,  <31.460186, 28.612190, 18.139666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653095, 28.470186, 18.124805>,  <31.974611, 28.233513, 18.100039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653095, 28.470186, 18.124805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076599, -0.000277, 0.997062,
		0.589962, 0.806170, -0.045100,
		-0.803789, 0.591684, 0.061916,
		31.411959, 28.647692, 18.143379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223942, 28.696426, 18.452497>,  <31.974611, 28.233513, 18.100039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223942, 28.696426, 18.452497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.828857, 28.710857, 18.513317>,  <31.591806, 28.719517, 18.549809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.828857, 28.710857, 18.513317>,  <32.223942, 28.696426, 18.452497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828857, 28.710857, 18.513317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144033, -0.167280, 0.975331,
		0.060623, 0.985249, 0.160029,
		-0.987714, 0.036078, 0.152050,
		31.532543, 28.721682, 18.558931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145058, 29.053246, 19.055525>,  <32.223942, 28.696426, 18.452497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145058, 29.053246, 19.055525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796642, 28.859980, 19.020107>,  <31.587593, 28.744020, 18.998857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796642, 28.859980, 19.020107>,  <32.145058, 29.053246, 19.055525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796642, 28.859980, 19.020107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018842, -0.212986, 0.976874,
		-0.490851, 0.849227, 0.194623,
		-0.871040, -0.483166, -0.088543,
		31.535330, 28.715031, 18.993544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731283, 29.272272, 19.578482>,  <32.145058, 29.053246, 19.055525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731283, 29.272272, 19.578482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.568987, 28.921747, 19.474596>,  <31.471609, 28.711432, 19.412266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.568987, 28.921747, 19.474596>,  <31.731283, 29.272272, 19.578482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568987, 28.921747, 19.474596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005919, -0.286666, 0.958012,
		-0.913968, 0.387169, 0.121500,
		-0.405743, -0.876312, -0.259712,
		31.447264, 28.658854, 19.396683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575859, 29.044424, 20.118872>,  <31.731283, 29.272272, 19.578482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575859, 29.044424, 20.118872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.480768, 28.711082, 19.919270>,  <31.423714, 28.511078, 19.799509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.480768, 28.711082, 19.919270>,  <31.575859, 29.044424, 20.118872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480768, 28.711082, 19.919270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005580, -0.514895, 0.857235,
		-0.971315, 0.201006, 0.127056,
		-0.237730, -0.833354, -0.499004,
		31.409449, 28.461077, 19.769567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855700, 28.711235, 20.461220>,  <31.575859, 29.044424, 20.118872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855700, 28.711235, 20.461220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.100054, 28.454744, 20.275467>,  <31.246666, 28.300850, 20.164015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.100054, 28.454744, 20.275467>,  <30.855700, 28.711235, 20.461220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100054, 28.454744, 20.275467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079192, -0.534119, 0.841692,
		-0.787750, -0.550952, -0.275504,
		0.610884, -0.641225, -0.464383,
		31.283319, 28.262377, 20.136152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653353, 28.127895, 20.755342>,  <30.855700, 28.711235, 20.461220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653353, 28.127895, 20.755342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003956, 28.026783, 20.591471>,  <31.214317, 27.966116, 20.493147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003956, 28.026783, 20.591471>,  <30.653353, 28.127895, 20.755342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003956, 28.026783, 20.591471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126440, -0.700267, 0.702595,
		-0.464487, -0.667629, -0.581827,
		0.876507, -0.252779, -0.409680,
		31.266909, 27.950949, 20.468567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648571, 27.303095, 20.790405>,  <30.653353, 28.127895, 20.755342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648571, 27.303095, 20.790405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.016665, 27.459642, 20.791092>,  <31.237520, 27.553572, 20.791504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.016665, 27.459642, 20.791092>,  <30.648571, 27.303095, 20.790405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016665, 27.459642, 20.791092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252519, -0.597091, 0.761391,
		0.299009, -0.700224, -0.648290,
		0.920233, 0.391368, 0.001716,
		31.292734, 27.577053, 20.791607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055439, 26.756708, 21.174023>,  <30.648571, 27.303095, 20.790405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055439, 26.756708, 21.174023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.307760, 27.067017, 21.167490>,  <31.459154, 27.253201, 21.163570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.307760, 27.067017, 21.167490>,  <31.055439, 26.756708, 21.174023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307760, 27.067017, 21.167490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394183, -0.302253, 0.867907,
		0.668360, -0.553917, -0.496458,
		0.630805, 0.775770, -0.016331,
		31.497002, 27.299747, 21.162590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682787, 26.441999, 21.391676>,  <31.055439, 26.756708, 21.174023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682787, 26.441999, 21.391676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.657747, 26.832432, 21.474960>,  <31.642723, 27.066690, 21.524931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.657747, 26.832432, 21.474960>,  <31.682787, 26.441999, 21.391676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657747, 26.832432, 21.474960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229997, -0.188895, 0.954683,
		0.971176, 0.107648, -0.212671,
		-0.062597, 0.976079, 0.208209,
		31.638968, 27.125256, 21.537422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217499, 26.569340, 21.891678>,  <31.682787, 26.441999, 21.391676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217499, 26.569340, 21.891678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.985462, 26.892618, 21.932304>,  <31.846241, 27.086586, 21.956680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.985462, 26.892618, 21.932304>,  <32.217499, 26.569340, 21.891678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985462, 26.892618, 21.932304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055994, -0.084833, 0.994821,
		0.812628, 0.582770, 0.003956,
		-0.580087, 0.808197, 0.101569,
		31.811436, 27.135077, 21.962774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.834778, 29.386473, 25.570499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.458561, 29.516129, 25.611111>,  <35.232830, 29.593922, 25.635477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.458561, 29.516129, 25.611111>,  <35.834778, 29.386473, 25.570499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458561, 29.516129, 25.611111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241660, 0.428524, 0.870613,
		0.238692, 0.843387, -0.481378,
		-0.940546, 0.324138, 0.101528,
		35.176395, 29.613371, 25.641569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798382, 29.969603, 25.946772>,  <35.834778, 29.386473, 25.570499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798382, 29.969603, 25.946772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.418190, 29.860014, 26.005449>,  <35.190075, 29.794260, 26.040655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.418190, 29.860014, 26.005449>,  <35.798382, 29.969603, 25.946772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418190, 29.860014, 26.005449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099413, 0.179180, 0.978781,
		-0.294444, 0.944899, -0.143071,
		-0.950484, -0.273973, 0.146694,
		35.133045, 29.777822, 26.049458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511578, 30.526783, 26.440231>,  <35.798382, 29.969603, 25.946772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511578, 30.526783, 26.440231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.295876, 30.190758, 26.416567>,  <35.166454, 29.989143, 26.402369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.295876, 30.190758, 26.416567>,  <35.511578, 30.526783, 26.440231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295876, 30.190758, 26.416567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006350, -0.066194, 0.997787,
		-0.842118, 0.538438, 0.030361,
		-0.539256, -0.840061, -0.059163,
		35.134098, 29.938740, 26.398819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148117, 30.543148, 27.032274>,  <35.511578, 30.526783, 26.440231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148117, 30.543148, 27.032274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.052181, 30.160069, 26.968660>,  <34.994621, 29.930222, 26.930492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.052181, 30.160069, 26.968660>,  <35.148117, 30.543148, 27.032274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052181, 30.160069, 26.968660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232756, -0.215765, 0.948299,
		-0.942497, 0.190424, 0.274659,
		-0.239841, -0.957697, -0.159035,
		34.980228, 29.872759, 26.920950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676960, 30.367990, 27.545742>,  <35.148117, 30.543148, 27.032274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676960, 30.367990, 27.545742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.826984, 30.018684, 27.421331>,  <34.917000, 29.809101, 27.346685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.826984, 30.018684, 27.421331>,  <34.676960, 30.367990, 27.545742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826984, 30.018684, 27.421331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200463, -0.251178, 0.946956,
		-0.905065, -0.417517, 0.080850,
		0.375062, -0.873264, -0.311029,
		34.939503, 29.756706, 27.328022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271832, 29.875484, 27.957205>,  <34.676960, 30.367990, 27.545742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271832, 29.875484, 27.957205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.607956, 29.715834, 27.810467>,  <34.809631, 29.620043, 27.722424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.607956, 29.715834, 27.810467>,  <34.271832, 29.875484, 27.957205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607956, 29.715834, 27.810467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286104, -0.248269, 0.925477,
		-0.460459, -0.882644, -0.094431,
		0.840311, -0.399127, -0.366845,
		34.860050, 29.596096, 27.700413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460606, 29.282566, 28.361952>,  <34.271832, 29.875484, 27.957205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460606, 29.282566, 28.361952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.824703, 29.377775, 28.226423>,  <35.043163, 29.434900, 28.145105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.824703, 29.377775, 28.226423>,  <34.460606, 29.282566, 28.361952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824703, 29.377775, 28.226423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380663, -0.159014, 0.910939,
		0.162949, -0.958153, -0.235349,
		0.910243, 0.238026, -0.338822,
		35.097775, 29.449183, 28.124777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913151, 28.834261, 28.721882>,  <34.460606, 29.282566, 28.361952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913151, 28.834261, 28.721882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.123348, 29.141241, 28.574978>,  <35.249466, 29.325430, 28.486835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.123348, 29.141241, 28.574978>,  <34.913151, 28.834261, 28.721882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123348, 29.141241, 28.574978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399752, 0.158336, 0.902845,
		0.751039, -0.621248, -0.223586,
		0.525489, 0.767451, -0.367262,
		35.280994, 29.371477, 28.464800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559822, 28.847288, 29.020142>,  <34.913151, 28.834261, 28.721882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559822, 28.847288, 29.020142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.537010, 29.223539, 28.886297>,  <35.523323, 29.449289, 28.805990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.537010, 29.223539, 28.886297>,  <35.559822, 28.847288, 29.020142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537010, 29.223539, 28.886297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276027, 0.336949, 0.900152,
		0.959456, -0.041023, -0.278857,
		-0.057034, 0.940629, -0.334612,
		35.519901, 29.505728, 28.785913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049129, 29.201431, 29.425444>,  <35.559822, 28.847288, 29.020142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049129, 29.201431, 29.425444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.879551, 29.527843, 29.268288>,  <35.777802, 29.723690, 29.173994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.879551, 29.527843, 29.268288>,  <36.049129, 29.201431, 29.425444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879551, 29.527843, 29.268288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190596, 0.504476, 0.842127,
		0.885403, 0.282136, -0.369405,
		-0.423950, 0.816029, -0.392891,
		35.752365, 29.772652, 29.150421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568096, 29.780254, 29.474083>,  <36.049129, 29.201431, 29.425444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568096, 29.780254, 29.474083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.184574, 29.893669, 29.467113>,  <35.954460, 29.961718, 29.462931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.184574, 29.893669, 29.467113>,  <36.568096, 29.780254, 29.474083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184574, 29.893669, 29.467113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143342, 0.535857, 0.832052,
		0.245257, 0.795275, -0.554424,
		-0.958802, 0.283539, -0.017426,
		35.896935, 29.978731, 29.461885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501446, 30.544596, 29.647615>,  <36.568096, 29.780254, 29.474083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501446, 30.544596, 29.647615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.136440, 30.402403, 29.728558>,  <35.917439, 30.317087, 29.777122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.136440, 30.402403, 29.728558>,  <36.501446, 30.544596, 29.647615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136440, 30.402403, 29.728558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015328, 0.464635, 0.885370,
		-0.408755, 0.811015, -0.418538,
		-0.912515, -0.355484, 0.202353,
		35.862686, 30.295757, 29.789263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262890, 31.066242, 29.999943>,  <36.501446, 30.544596, 29.647615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262890, 31.066242, 29.999943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.034927, 30.746145, 30.074583>,  <35.898148, 30.554087, 30.119368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.034927, 30.746145, 30.074583>,  <36.262890, 31.066242, 29.999943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034927, 30.746145, 30.074583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072883, 0.275421, 0.958557,
		-0.818470, 0.532689, -0.215289,
		-0.569908, -0.800241, 0.186600,
		35.863956, 30.506073, 30.130564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971401, 31.281588, 30.166939>,  <36.262890, 31.066242, 29.999943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971401, 31.281588, 30.166939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.321236, 31.171976, 30.326942>,  <37.531136, 31.106209, 30.422945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.321236, 31.171976, 30.326942>,  <36.971401, 31.281588, 30.166939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321236, 31.171976, 30.326942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473801, 0.658271, -0.584972,
		-0.103015, 0.701133, 0.705549,
		0.874586, -0.274029, 0.400009,
		37.583611, 31.089767, 30.446945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348415, 31.802050, 29.825546>,  <36.971401, 31.281588, 30.166939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348415, 31.802050, 29.825546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.221199, 32.174950, 29.894548>,  <37.144871, 32.398689, 29.935949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.221199, 32.174950, 29.894548>,  <37.348415, 31.802050, 29.825546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221199, 32.174950, 29.894548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317488, 0.066721, -0.945912,
		-0.893338, -0.355604, 0.274760,
		-0.318038, 0.932252, 0.172504,
		37.125786, 32.454624, 29.946301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564636, 31.871807, 29.715542>,  <37.348415, 31.802050, 29.825546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564636, 31.871807, 29.715542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.761238, 32.208637, 29.626703>,  <36.879200, 32.410736, 29.573400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.761238, 32.208637, 29.626703>,  <36.564636, 31.871807, 29.715542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761238, 32.208637, 29.626703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418185, 0.004512, -0.908351,
		-0.763900, 0.539338, 0.354362,
		0.491506, 0.842078, -0.222096,
		36.908691, 32.461262, 29.560074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086639, 32.220257, 29.363729>,  <36.564636, 31.871807, 29.715542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086639, 32.220257, 29.363729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.406010, 32.442787, 29.271629>,  <36.597633, 32.576305, 29.216370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.406010, 32.442787, 29.271629>,  <36.086639, 32.220257, 29.363729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406010, 32.442787, 29.271629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393345, 0.192438, -0.899026,
		-0.455839, 0.808377, 0.372475,
		0.798430, 0.556322, -0.230250,
		36.645538, 32.609684, 29.202555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773716, 32.897228, 29.110758>,  <36.086639, 32.220257, 29.363729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773716, 32.897228, 29.110758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.152912, 32.870026, 28.986380>,  <36.380428, 32.853703, 28.911753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.152912, 32.870026, 28.986380>,  <35.773716, 32.897228, 29.110758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152912, 32.870026, 28.986380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278936, 0.293081, -0.914494,
		0.153323, 0.953666, 0.258869,
		0.947991, -0.068006, -0.310948,
		36.437309, 32.849625, 28.893095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805908, 33.478886, 28.716164>,  <35.773716, 32.897228, 29.110758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805908, 33.478886, 28.716164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.099228, 33.233074, 28.599802>,  <36.275219, 33.085587, 28.529985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.099228, 33.233074, 28.599802>,  <35.805908, 33.478886, 28.716164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099228, 33.233074, 28.599802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135340, 0.287361, -0.948212,
		0.666299, 0.734695, 0.127551,
		0.733300, -0.614530, -0.290902,
		36.319218, 33.048714, 28.512531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092319, 33.801060, 28.204849>,  <35.805908, 33.478886, 28.716164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092319, 33.801060, 28.204849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.212738, 33.424076, 28.146694>,  <36.284988, 33.197884, 28.111801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.212738, 33.424076, 28.146694>,  <36.092319, 33.801060, 28.204849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212738, 33.424076, 28.146694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087581, 0.124489, -0.988348,
		0.949580, 0.310267, -0.045065,
		0.301042, -0.942463, -0.145386,
		36.303051, 33.141338, 28.103079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542725, 33.793739, 27.704807>,  <36.092319, 33.801060, 28.204849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542725, 33.793739, 27.704807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.456001, 33.403679, 27.686600>,  <36.403969, 33.169643, 27.675676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.456001, 33.403679, 27.686600>,  <36.542725, 33.793739, 27.704807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456001, 33.403679, 27.686600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094844, 0.067446, -0.993205,
		0.971596, -0.211019, -0.107110,
		-0.216809, -0.975152, -0.045517,
		36.390957, 33.111134, 27.672945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905418, 33.458447, 27.129606>,  <36.542725, 33.793739, 27.704807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905418, 33.458447, 27.129606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.596088, 33.210876, 27.184597>,  <36.410492, 33.062332, 27.217590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.596088, 33.210876, 27.184597>,  <36.905418, 33.458447, 27.129606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596088, 33.210876, 27.184597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167172, -0.010107, -0.985876,
		0.611576, -0.785382, -0.095652,
		-0.773323, -0.618929, 0.137475,
		36.364090, 33.025196, 27.225840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975456, 32.923462, 26.610826>,  <36.905418, 33.458447, 27.129606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975456, 32.923462, 26.610826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.602570, 32.876286, 26.747681>,  <36.378838, 32.847980, 26.829794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.602570, 32.876286, 26.747681>,  <36.975456, 32.923462, 26.610826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602570, 32.876286, 26.747681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292923, -0.309267, -0.904738,
		0.212518, -0.943633, 0.253756,
		-0.932219, -0.117942, 0.342137,
		36.322903, 32.840904, 26.850321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788086, 32.243279, 26.504353>,  <36.975456, 32.923462, 26.610826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788086, 32.243279, 26.504353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.465130, 32.478912, 26.517639>,  <36.271355, 32.620293, 26.525612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.465130, 32.478912, 26.517639>,  <36.788086, 32.243279, 26.504353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465130, 32.478912, 26.517639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278325, -0.330619, -0.901791,
		-0.520248, -0.737342, 0.430895,
		-0.807389, 0.589083, 0.033217,
		36.222912, 32.655636, 26.527605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316410, 31.896093, 26.173723>,  <36.788086, 32.243279, 26.504353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316410, 31.896093, 26.173723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.153015, 32.260601, 26.152851>,  <36.054977, 32.479305, 26.140327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.153015, 32.260601, 26.152851>,  <36.316410, 31.896093, 26.173723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153015, 32.260601, 26.152851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327098, -0.199517, -0.923688,
		-0.852140, -0.360251, 0.379575,
		-0.408491, 0.911270, -0.052179,
		36.030468, 32.533981, 26.137197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552273, 31.742832, 26.053919>,  <36.316410, 31.896093, 26.173723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552273, 31.742832, 26.053919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.642799, 32.111538, 25.927975>,  <35.697113, 32.332760, 25.852409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.642799, 32.111538, 25.927975>,  <35.552273, 31.742832, 26.053919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642799, 32.111538, 25.927975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442777, -0.190565, -0.876147,
		-0.867600, 0.337697, 0.365007,
		0.226314, 0.921762, -0.314859,
		35.710693, 32.388065, 25.833517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973454, 31.900780, 25.662870>,  <35.552273, 31.742832, 26.053919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973454, 31.900780, 25.662870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.254921, 32.162685, 25.552496>,  <35.423801, 32.319828, 25.486271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.254921, 32.162685, 25.552496>,  <34.973454, 31.900780, 25.662870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254921, 32.162685, 25.552496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334125, -0.037812, -0.941770,
		-0.627070, 0.754888, 0.192165,
		0.703665, 0.654763, -0.275938,
		35.466019, 32.359116, 25.469715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593742, 32.272770, 25.105801>,  <34.973454, 31.900780, 25.662870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593742, 32.272770, 25.105801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.988701, 32.308426, 25.053486>,  <35.225677, 32.329819, 25.022097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.988701, 32.308426, 25.053486>,  <34.593742, 32.272770, 25.105801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988701, 32.308426, 25.053486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125358, -0.064039, -0.990043,
		-0.096629, 0.993958, -0.052057,
		0.987395, 0.089141, -0.130788,
		35.284920, 32.335167, 25.014250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347401, 32.960854, 25.271103>,  <34.593742, 32.272770, 25.105801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347401, 32.960854, 25.271103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.975243, 33.106720, 25.285923>,  <33.751945, 33.194241, 25.294815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.975243, 33.106720, 25.285923>,  <34.347401, 32.960854, 25.271103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975243, 33.106720, 25.285923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020148, -0.050052, 0.998543,
		0.365993, 0.929791, 0.039221,
		-0.930399, 0.364670, 0.037052,
		33.696121, 33.216122, 25.297039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416740, 33.333866, 25.798485>,  <34.347401, 32.960854, 25.271103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416740, 33.333866, 25.798485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.017231, 33.315674, 25.790575>,  <33.777527, 33.304756, 25.785830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.017231, 33.315674, 25.790575>,  <34.416740, 33.333866, 25.798485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017231, 33.315674, 25.790575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022485, 0.059871, 0.997953,
		-0.044206, 0.997170, -0.060820,
		-0.998769, -0.045484, -0.019775,
		33.717602, 33.302029, 25.784643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099747, 33.966480, 26.145121>,  <34.416740, 33.333866, 25.798485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099747, 33.966480, 26.145121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.816380, 33.684586, 26.160524>,  <33.646358, 33.515450, 26.169767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.816380, 33.684586, 26.160524>,  <34.099747, 33.966480, 26.145121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816380, 33.684586, 26.160524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195037, 0.247913, 0.948947,
		-0.678306, 0.664743, -0.313077,
		-0.708422, -0.704737, 0.038512,
		33.603851, 33.473164, 26.172077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545399, 34.275127, 26.485857>,  <34.099747, 33.966480, 26.145121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545399, 34.275127, 26.485857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.498100, 33.881226, 26.536892>,  <33.469723, 33.644886, 26.567513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.498100, 33.881226, 26.536892>,  <33.545399, 34.275127, 26.485857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498100, 33.881226, 26.536892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427100, 0.166436, 0.888755,
		-0.896439, 0.050600, -0.440269,
		-0.118248, -0.984753, 0.127588,
		33.462627, 33.585800, 26.575169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874622, 34.260941, 26.779146>,  <33.545399, 34.275127, 26.485857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874622, 34.260941, 26.779146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.022007, 33.898853, 26.863823>,  <33.110439, 33.681599, 26.914629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.022007, 33.898853, 26.863823>,  <32.874622, 34.260941, 26.779146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022007, 33.898853, 26.863823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485005, 0.007087, 0.874482,
		-0.793100, -0.424884, -0.436426,
		0.368460, -0.905220, 0.211692,
		33.132545, 33.627289, 26.927330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266163, 33.887173, 26.995361>,  <32.874622, 34.260941, 26.779146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266163, 33.887173, 26.995361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.593693, 33.693626, 27.118912>,  <32.790211, 33.577499, 27.193041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.593693, 33.693626, 27.118912>,  <32.266163, 33.887173, 26.995361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593693, 33.693626, 27.118912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427884, -0.155763, 0.890311,
		-0.382677, -0.861171, -0.334580,
		0.818825, -0.483863, 0.308874,
		32.839340, 33.548466, 27.211575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064217, 33.324833, 27.368078>,  <32.266163, 33.887173, 26.995361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064217, 33.324833, 27.368078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.426071, 33.422058, 27.508108>,  <32.643185, 33.480392, 27.592125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.426071, 33.422058, 27.508108>,  <32.064217, 33.324833, 27.368078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426071, 33.422058, 27.508108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313200, -0.177903, 0.932875,
		0.289029, -0.953556, -0.084809,
		0.904637, 0.243066, 0.350073,
		32.697464, 33.494976, 27.613131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208187, 32.879082, 27.932398>,  <32.064217, 33.324833, 27.368078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208187, 32.879082, 27.932398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.480213, 33.166977, 27.988234>,  <32.643429, 33.339714, 28.021734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.480213, 33.166977, 27.988234>,  <32.208187, 32.879082, 27.932398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480213, 33.166977, 27.988234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143486, -0.056053, 0.988064,
		0.718972, -0.691979, 0.065153,
		0.680067, 0.719738, 0.139590,
		32.684235, 33.382900, 28.030111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760166, 32.753571, 28.499363>,  <32.208187, 32.879082, 27.932398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760166, 32.753571, 28.499363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.780968, 33.152672, 28.482485>,  <32.793449, 33.392132, 28.472357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.780968, 33.152672, 28.482485>,  <32.760166, 32.753571, 28.499363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780968, 33.152672, 28.482485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033008, 0.043949, 0.998488,
		0.998101, -0.050530, 0.035220,
		0.052002, 0.997755, -0.042198,
		32.796570, 33.452000, 28.469826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221737, 32.934486, 29.076668>,  <32.760166, 32.753571, 28.499363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221737, 32.934486, 29.076668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.003616, 33.252068, 28.969124>,  <32.872742, 33.442616, 28.904596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.003616, 33.252068, 28.969124>,  <33.221737, 32.934486, 29.076668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003616, 33.252068, 28.969124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172969, 0.207267, 0.962872,
		0.820198, 0.571563, 0.024305,
		-0.545305, 0.793950, -0.268862,
		32.840027, 33.490253, 28.888466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281776, 33.497753, 29.708797>,  <33.221737, 32.934486, 29.076668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281776, 33.497753, 29.708797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.959244, 33.580944, 29.487318>,  <32.765724, 33.630859, 29.354431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.959244, 33.580944, 29.487318>,  <33.281776, 33.497753, 29.708797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959244, 33.580944, 29.487318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456780, 0.375747, 0.806329,
		0.375747, 0.903083, -0.207976,
		-0.806329, 0.207976, -0.553697,
		32.717346, 33.643337, 29.321209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093185, 34.313286, 29.752687>,  <33.281776, 33.497753, 29.708797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093185, 34.313286, 29.752687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.787769, 34.071243, 29.662493>,  <32.604519, 33.926018, 29.608376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.787769, 34.071243, 29.662493>,  <33.093185, 34.313286, 29.752687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787769, 34.071243, 29.662493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480706, 0.299456, 0.824165,
		-0.431186, 0.737679, -0.519527,
		-0.763544, -0.605108, -0.225486,
		32.558704, 33.889709, 29.594847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.236996, 34.214382, 21.848234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876686, 34.041340, 21.863491>,  <33.660500, 33.937515, 21.872644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876686, 34.041340, 21.863491>,  <34.236996, 34.214382, 21.848234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876686, 34.041340, 21.863491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062977, 0.217020, 0.974133,
		-0.429692, 0.875075, -0.222731,
		-0.900777, -0.432604, 0.038142,
		33.606453, 33.911560, 21.874933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851894, 34.642963, 22.204491>,  <34.236996, 34.214382, 21.848234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851894, 34.642963, 22.204491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688236, 34.279015, 22.231989>,  <33.590042, 34.060646, 22.248487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688236, 34.279015, 22.231989>,  <33.851894, 34.642963, 22.204491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688236, 34.279015, 22.231989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094499, 0.117187, 0.988604,
		-0.907562, 0.397988, -0.133929,
		-0.409147, -0.909875, 0.068746,
		33.565491, 34.006050, 22.252613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288662, 34.714878, 22.708071>,  <33.851894, 34.642963, 22.204491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288662, 34.714878, 22.708071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351570, 34.319939, 22.699982>,  <33.389313, 34.082973, 22.695127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351570, 34.319939, 22.699982>,  <33.288662, 34.714878, 22.708071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351570, 34.319939, 22.699982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000380, -0.020418, 0.999792,
		-0.987556, -0.157243, -0.002836,
		0.157268, -0.987349, -0.020223,
		33.398750, 34.023735, 22.693914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866905, 34.517460, 23.239183>,  <33.288662, 34.714878, 22.708071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866905, 34.517460, 23.239183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118637, 34.216373, 23.161858>,  <33.269676, 34.035721, 23.115461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118637, 34.216373, 23.161858>,  <32.866905, 34.517460, 23.239183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118637, 34.216373, 23.161858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003148, -0.251219, 0.967925,
		-0.777133, -0.608535, -0.160469,
		0.629329, -0.752712, -0.193314,
		33.307434, 33.990559, 23.103863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602863, 33.857571, 23.445854>,  <32.866905, 34.517460, 23.239183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602863, 33.857571, 23.445854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993530, 33.774208, 23.425123>,  <33.227932, 33.724190, 23.412685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993530, 33.774208, 23.425123>,  <32.602863, 33.857571, 23.445854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993530, 33.774208, 23.425123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015406, -0.308709, 0.951032,
		-0.214197, -0.928044, -0.304718,
		0.976669, -0.208403, -0.051828,
		33.286530, 33.711689, 23.409575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658169, 33.175255, 23.594883>,  <32.602863, 33.857571, 23.445854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658169, 33.175255, 23.594883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017021, 33.339954, 23.658899>,  <33.232334, 33.438774, 23.697309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017021, 33.339954, 23.658899>,  <32.658169, 33.175255, 23.594883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017021, 33.339954, 23.658899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024601, -0.408289, 0.912521,
		0.441072, -0.814717, -0.376420,
		0.897134, 0.411748, 0.160042,
		33.286163, 33.463478, 23.706911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991417, 32.680904, 23.913435>,  <32.658169, 33.175255, 23.594883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991417, 32.680904, 23.913435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210972, 33.001350, 24.008888>,  <33.342705, 33.193619, 24.066160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210972, 33.001350, 24.008888>,  <32.991417, 32.680904, 23.913435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210972, 33.001350, 24.008888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179638, -0.391858, 0.902318,
		0.816367, -0.452401, -0.358995,
		0.548885, 0.801112, 0.238632,
		33.375637, 33.241684, 24.080479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446770, 32.404942, 24.314634>,  <32.991417, 32.680904, 23.913435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446770, 32.404942, 24.314634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448963, 32.793175, 24.410915>,  <33.450279, 33.026115, 24.468685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448963, 32.793175, 24.410915>,  <33.446770, 32.404942, 24.314634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448963, 32.793175, 24.410915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011113, -0.240634, 0.970552,
		0.999923, -0.007999, 0.009466,
		0.005485, 0.970583, 0.240705,
		33.450607, 33.084351, 24.483128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006302, 32.519562, 24.792103>,  <33.446770, 32.404942, 24.314634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006302, 32.519562, 24.792103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771389, 32.836430, 24.858505>,  <33.630440, 33.026550, 24.898346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771389, 32.836430, 24.858505>,  <34.006302, 32.519562, 24.792103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771389, 32.836430, 24.858505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153791, -0.092147, 0.983797,
		0.794636, 0.603298, -0.067713,
		-0.587284, 0.792174, 0.166005,
		33.595203, 33.074081, 24.908306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698109, 32.709316, 24.490747>,  <34.006302, 32.519562, 24.792103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698109, 32.709316, 24.490747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063583, 32.563610, 24.562838>,  <35.282867, 32.476185, 24.606092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063583, 32.563610, 24.562838>,  <34.698109, 32.709316, 24.490747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063583, 32.563610, 24.562838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203370, 0.025855, -0.978761,
		0.351873, 0.930935, 0.097705,
		0.913688, -0.364269, 0.180226,
		35.337688, 32.454330, 24.616905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095070, 33.064659, 24.027901>,  <34.698109, 32.709316, 24.490747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095070, 33.064659, 24.027901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296291, 32.728104, 24.106907>,  <35.417023, 32.526173, 24.154310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296291, 32.728104, 24.106907>,  <35.095070, 33.064659, 24.027901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296291, 32.728104, 24.106907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248071, -0.078350, -0.965568,
		0.827889, 0.534728, 0.169308,
		0.503052, -0.841384, 0.197515,
		35.447208, 32.475689, 24.166161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732174, 33.140259, 23.634485>,  <35.095070, 33.064659, 24.027901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732174, 33.140259, 23.634485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696217, 32.748535, 23.707010>,  <35.674641, 32.513500, 23.750526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696217, 32.748535, 23.707010>,  <35.732174, 33.140259, 23.634485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696217, 32.748535, 23.707010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154440, -0.193556, -0.968857,
		0.983904, -0.059094, 0.168645,
		-0.089896, -0.979308, 0.181314,
		35.669247, 32.454742, 23.761404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278580, 32.812599, 23.284143>,  <35.732174, 33.140259, 23.634485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278580, 32.812599, 23.284143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032326, 32.502335, 23.339766>,  <35.884571, 32.316174, 23.373138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032326, 32.502335, 23.339766>,  <36.278580, 32.812599, 23.284143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032326, 32.502335, 23.339766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004203, -0.173225, -0.984873,
		0.788019, -0.606909, 0.103384,
		-0.615637, -0.775664, 0.139055,
		35.847633, 32.269634, 23.381481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595879, 32.032764, 23.193449>,  <36.278580, 32.812599, 23.284143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595879, 32.032764, 23.193449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203148, 32.002861, 23.123680>,  <35.967510, 31.984919, 23.081820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203148, 32.002861, 23.123680>,  <36.595879, 32.032764, 23.193449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203148, 32.002861, 23.123680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187301, -0.234028, -0.954017,
		0.030501, -0.969351, 0.243778,
		-0.981829, -0.074758, -0.174422,
		35.908600, 31.980434, 23.071354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470551, 31.509415, 22.873421>,  <36.595879, 32.032764, 23.193449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470551, 31.509415, 22.873421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120811, 31.673340, 22.769449>,  <35.910969, 31.771694, 22.707066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120811, 31.673340, 22.769449>,  <36.470551, 31.509415, 22.873421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120811, 31.673340, 22.769449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161799, -0.258798, -0.952284,
		-0.457529, -0.874686, 0.159972,
		-0.874350, 0.409814, -0.259931,
		35.858505, 31.796284, 22.691469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159874, 30.951050, 22.526697>,  <36.470551, 31.509415, 22.873421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159874, 30.951050, 22.526697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008198, 31.301390, 22.407293>,  <35.917194, 31.511593, 22.335651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008198, 31.301390, 22.407293>,  <36.159874, 30.951050, 22.526697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008198, 31.301390, 22.407293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193005, -0.240644, -0.951231,
		-0.904968, -0.418308, -0.077794,
		-0.379187, 0.875848, -0.298511,
		35.894444, 31.564144, 22.317739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897640, 30.824089, 21.920532>,  <36.159874, 30.951050, 22.526697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897640, 30.824089, 21.920532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901775, 31.222692, 21.887386>,  <35.904255, 31.461855, 21.867498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901775, 31.222692, 21.887386>,  <35.897640, 30.824089, 21.920532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901775, 31.222692, 21.887386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189717, -0.083321, -0.978297,
		-0.981784, -0.005607, -0.189915,
		0.010338, 0.996507, -0.082867,
		35.904877, 31.521645, 21.862526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454151, 30.956648, 21.356077>,  <35.897640, 30.824089, 21.920532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454151, 30.956648, 21.356077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688698, 31.277403, 21.401955>,  <35.829426, 31.469856, 21.429482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688698, 31.277403, 21.401955>,  <35.454151, 30.956648, 21.356077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688698, 31.277403, 21.401955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193812, -0.001404, -0.981038,
		-0.786521, 0.597473, -0.156239,
		0.586363, 0.801888, 0.114693,
		35.864605, 31.517969, 21.436363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217239, 31.366945, 20.847795>,  <35.454151, 30.956648, 21.356077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217239, 31.366945, 20.847795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569687, 31.535469, 20.933704>,  <35.781155, 31.636583, 20.985250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569687, 31.535469, 20.933704>,  <35.217239, 31.366945, 20.847795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569687, 31.535469, 20.933704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232458, 0.009628, -0.972559,
		-0.411815, 0.906866, -0.089453,
		0.881119, 0.421309, 0.214773,
		35.834023, 31.661861, 20.998137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304081, 32.009972, 20.378551>,  <35.217239, 31.366945, 20.847795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304081, 32.009972, 20.378551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662655, 31.870274, 20.487684>,  <35.877800, 31.786455, 20.553164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662655, 31.870274, 20.487684>,  <35.304081, 32.009972, 20.378551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662655, 31.870274, 20.487684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273611, -0.048150, -0.960634,
		0.348634, 0.935794, 0.052394,
		0.896433, -0.349245, 0.272830,
		35.931583, 31.765501, 20.569532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826069, 32.517590, 20.095266>,  <35.304081, 32.009972, 20.378551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826069, 32.517590, 20.095266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006355, 32.168724, 20.171349>,  <36.114529, 31.959404, 20.216997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006355, 32.168724, 20.171349>,  <35.826069, 32.517590, 20.095266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006355, 32.168724, 20.171349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303127, -0.050876, -0.951591,
		0.839624, 0.486554, 0.241447,
		0.450716, -0.872168, 0.190205,
		36.141571, 31.907074, 20.228411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457466, 32.663147, 19.843353>,  <35.826069, 32.517590, 20.095266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457466, 32.663147, 19.843353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408825, 32.266373, 19.857595>,  <36.379639, 32.028309, 19.866140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408825, 32.266373, 19.857595>,  <36.457466, 32.663147, 19.843353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408825, 32.266373, 19.857595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438898, -0.085912, -0.894421,
		0.890270, -0.093137, 0.445807,
		-0.121604, -0.991940, 0.035607,
		36.372345, 31.968790, 19.868279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963448, 32.439034, 19.430035>,  <36.457466, 32.663147, 19.843353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963448, 32.439034, 19.430035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733200, 32.112713, 19.452406>,  <36.595051, 31.916922, 19.465828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733200, 32.112713, 19.452406>,  <36.963448, 32.439034, 19.430035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733200, 32.112713, 19.452406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254733, -0.243889, -0.935751,
		0.777026, -0.524392, 0.348200,
		-0.575622, -0.815801, 0.055929,
		36.560513, 31.867973, 19.469185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.454744, 28.987101, 20.683891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.659521, 29.330624, 20.676268>,  <28.782387, 29.536737, 20.671694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.659521, 29.330624, 20.676268>,  <28.454744, 28.987101, 20.683891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659521, 29.330624, 20.676268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333451, -0.178228, 0.925767,
		0.791659, -0.480296, -0.377613,
		0.511944, 0.858808, -0.019060,
		28.813105, 29.588266, 20.670549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968359, 28.817873, 21.073879>,  <28.454744, 28.987101, 20.683891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968359, 28.817873, 21.073879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.992403, 29.217131, 21.077845>,  <29.006828, 29.456684, 21.080223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.992403, 29.217131, 21.077845>,  <28.968359, 28.817873, 21.073879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992403, 29.217131, 21.077845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458824, -0.036449, 0.887779,
		0.886492, -0.048814, -0.460163,
		0.060108, 0.998143, 0.009914,
		29.010435, 29.516573, 21.080818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644358, 28.956209, 21.227554>,  <28.968359, 28.817873, 21.073879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644358, 28.956209, 21.227554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.458923, 29.296007, 21.328314>,  <29.347664, 29.499886, 21.388769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.458923, 29.296007, 21.328314>,  <29.644358, 28.956209, 21.227554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458923, 29.296007, 21.328314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366619, -0.074914, 0.927350,
		0.806648, 0.522255, -0.276711,
		-0.463584, 0.849493, 0.251898,
		29.319849, 29.550856, 21.403883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146214, 29.486650, 21.461735>,  <29.644358, 28.956209, 21.227554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146214, 29.486650, 21.461735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.796694, 29.571939, 21.636551>,  <29.586981, 29.623114, 21.741442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.796694, 29.571939, 21.636551>,  <30.146214, 29.486650, 21.461735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796694, 29.571939, 21.636551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407783, -0.168331, 0.897428,
		0.264921, 0.962393, 0.060139,
		-0.873802, 0.213224, 0.437042,
		29.534554, 29.635906, 21.767664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311272, 29.826212, 22.155396>,  <30.146214, 29.486650, 21.461735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311272, 29.826212, 22.155396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.923166, 29.738888, 22.197206>,  <29.690302, 29.686493, 22.222294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.923166, 29.738888, 22.197206>,  <30.311272, 29.826212, 22.155396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923166, 29.738888, 22.197206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157414, -0.241081, 0.957654,
		-0.183866, 0.945632, 0.268278,
		-0.970265, -0.218311, 0.104529,
		29.632088, 29.673395, 22.228565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191431, 30.090750, 22.761927>,  <30.311272, 29.826212, 22.155396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191431, 30.090750, 22.761927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.878498, 29.843044, 22.735176>,  <29.690739, 29.694422, 22.719126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.878498, 29.843044, 22.735176>,  <30.191431, 30.090750, 22.761927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878498, 29.843044, 22.735176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037378, -0.060497, 0.997468,
		-0.621740, 0.782850, 0.024182,
		-0.782331, -0.619262, -0.066874,
		29.643799, 29.657265, 22.715115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796255, 30.309566, 23.225824>,  <30.191431, 30.090750, 22.761927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796255, 30.309566, 23.225824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.669821, 29.936769, 23.154850>,  <29.593960, 29.713091, 23.112265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.669821, 29.936769, 23.154850>,  <29.796255, 30.309566, 23.225824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669821, 29.936769, 23.154850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017570, -0.181243, 0.983281,
		-0.948568, 0.313918, 0.040913,
		-0.316085, -0.931991, -0.177437,
		29.574995, 29.657173, 23.101620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221487, 30.191599, 23.650410>,  <29.796255, 30.309566, 23.225824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221487, 30.191599, 23.650410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.371075, 29.825912, 23.587986>,  <29.460827, 29.606501, 23.550531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.371075, 29.825912, 23.587986>,  <29.221487, 30.191599, 23.650410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371075, 29.825912, 23.587986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005123, -0.166230, 0.986074,
		-0.927426, -0.369562, -0.057482,
		0.373971, -0.914216, -0.156059,
		29.483267, 29.551647, 23.541168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899940, 29.750475, 24.135397>,  <29.221487, 30.191599, 23.650410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899940, 29.750475, 24.135397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.204323, 29.522165, 24.012005>,  <29.386953, 29.385180, 23.937969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.204323, 29.522165, 24.012005>,  <28.899940, 29.750475, 24.135397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204323, 29.522165, 24.012005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185462, -0.264259, 0.946452,
		-0.621730, -0.777420, -0.095233,
		0.760957, -0.570775, -0.308480,
		29.432610, 29.350933, 23.919460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772316, 29.018074, 24.318920>,  <28.899940, 29.750475, 24.135397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772316, 29.018074, 24.318920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.164755, 29.090750, 24.292284>,  <29.400219, 29.134356, 24.276302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.164755, 29.090750, 24.292284>,  <28.772316, 29.018074, 24.318920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164755, 29.090750, 24.292284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103816, -0.203811, 0.973490,
		0.163304, -0.962003, -0.218821,
		0.981099, 0.181692, -0.066588,
		29.459084, 29.145258, 24.272308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097248, 28.576143, 24.792820>,  <28.772316, 29.018074, 24.318920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097248, 28.576143, 24.792820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.368725, 28.862547, 24.727451>,  <29.531610, 29.034389, 24.688231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.368725, 28.862547, 24.727451>,  <29.097248, 28.576143, 24.792820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368725, 28.862547, 24.727451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278317, -0.044831, 0.959443,
		0.679645, -0.696648, -0.229704,
		0.678692, 0.716011, -0.163420,
		29.572332, 29.077351, 24.678425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536074, 28.296860, 25.280567>,  <29.097248, 28.576143, 24.792820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536074, 28.296860, 25.280567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.691153, 28.654123, 25.189386>,  <29.784201, 28.868481, 25.134678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.691153, 28.654123, 25.189386>,  <29.536074, 28.296860, 25.280567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691153, 28.654123, 25.189386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256647, 0.132921, 0.957321,
		0.885338, -0.429654, -0.177693,
		0.387697, 0.893157, -0.227950,
		29.807463, 28.922070, 25.121002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176916, 28.250933, 25.665335>,  <29.536074, 28.296860, 25.280567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176916, 28.250933, 25.665335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.092926, 28.636850, 25.601982>,  <30.042532, 28.868401, 25.563971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.092926, 28.636850, 25.601982>,  <30.176916, 28.250933, 25.665335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092926, 28.636850, 25.601982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368750, 0.228178, 0.901087,
		0.905502, 0.130802, -0.403679,
		-0.209974, 0.964793, -0.158383,
		30.029934, 28.926289, 25.554468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812063, 28.581638, 25.848083>,  <30.176916, 28.250933, 25.665335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812063, 28.581638, 25.848083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.508011, 28.841478, 25.854076>,  <30.325581, 28.997383, 25.857672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.508011, 28.841478, 25.854076>,  <30.812063, 28.581638, 25.848083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508011, 28.841478, 25.854076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205539, 0.218512, 0.953943,
		0.616407, 0.728199, -0.299615,
		-0.760129, 0.649599, 0.014981,
		30.279972, 29.036358, 25.858570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181896, 29.051615, 25.370478>,  <30.812063, 28.581638, 25.848083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181896, 29.051615, 25.370478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.321133, 28.723543, 25.552088>,  <31.404675, 28.526701, 25.661055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.321133, 28.723543, 25.552088>,  <31.181896, 29.051615, 25.370478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321133, 28.723543, 25.552088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146655, -0.430709, -0.890496,
		0.925919, 0.376558, -0.029643,
		0.348091, -0.820179, 0.454025,
		31.425560, 28.477489, 25.688295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862795, 28.990883, 25.101944>,  <31.181896, 29.051615, 25.370478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862795, 28.990883, 25.101944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.729853, 28.642061, 25.245644>,  <31.650087, 28.432768, 25.331863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.729853, 28.642061, 25.245644>,  <31.862795, 28.990883, 25.101944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729853, 28.642061, 25.245644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171286, -0.430377, -0.886249,
		0.927470, -0.233015, 0.292409,
		-0.332355, -0.872055, 0.359249,
		31.630146, 28.380445, 25.353418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326710, 28.461237, 24.727537>,  <31.862795, 28.990883, 25.101944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326710, 28.461237, 24.727537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.008858, 28.257889, 24.860273>,  <31.818146, 28.135880, 24.939915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.008858, 28.257889, 24.860273>,  <32.326710, 28.461237, 24.727537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008858, 28.257889, 24.860273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051474, -0.488218, -0.871202,
		0.604905, -0.709366, 0.361786,
		-0.794632, -0.508372, 0.331840,
		31.770468, 28.105377, 24.959826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422791, 27.745712, 24.476645>,  <32.326710, 28.461237, 24.727537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422791, 27.745712, 24.476645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.033989, 27.780832, 24.563818>,  <31.800707, 27.801905, 24.616121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.033989, 27.780832, 24.563818>,  <32.422791, 27.745712, 24.476645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033989, 27.780832, 24.563818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226886, -0.591746, -0.773537,
		0.061044, -0.801329, 0.595102,
		-0.972006, 0.087801, 0.217933,
		31.742388, 27.807173, 24.629198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240459, 27.008184, 24.665869>,  <32.422791, 27.745712, 24.476645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240459, 27.008184, 24.665869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.937220, 27.232264, 24.532318>,  <31.755278, 27.366711, 24.452188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.937220, 27.232264, 24.532318>,  <32.240459, 27.008184, 24.665869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937220, 27.232264, 24.532318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069387, -0.578345, -0.812836,
		-0.648443, -0.593040, 0.477311,
		-0.758095, 0.560197, -0.333874,
		31.709791, 27.400322, 24.432156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867907, 26.554626, 24.221092>,  <32.240459, 27.008184, 24.665869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867907, 26.554626, 24.221092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.722857, 26.918510, 24.140167>,  <31.635826, 27.136841, 24.091612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.722857, 26.918510, 24.140167>,  <31.867907, 26.554626, 24.221092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722857, 26.918510, 24.140167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022869, -0.225712, -0.973926,
		-0.931655, -0.348542, 0.102653,
		-0.362624, 0.909710, -0.202315,
		31.614069, 27.191423, 24.079473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422112, 26.354946, 23.685955>,  <31.867907, 26.554626, 24.221092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422112, 26.354946, 23.685955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.488432, 26.747990, 23.652512>,  <31.528225, 26.983816, 23.632446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.488432, 26.747990, 23.652512>,  <31.422112, 26.354946, 23.685955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488432, 26.747990, 23.652512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021396, -0.088347, -0.995860,
		-0.985927, 0.163328, -0.035672,
		0.165803, 0.982608, -0.083609,
		31.538174, 27.042772, 23.627428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976801, 26.584768, 23.173866>,  <31.422112, 26.354946, 23.685955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976801, 26.584768, 23.173866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.252602, 26.874157, 23.187586>,  <31.418083, 27.047791, 23.195818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.252602, 26.874157, 23.187586>,  <30.976801, 26.584768, 23.173866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252602, 26.874157, 23.187586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099090, 0.141133, -0.985019,
		-0.717473, 0.675775, 0.169001,
		0.689503, 0.723471, 0.034296,
		31.459452, 27.091198, 23.197874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683914, 27.131199, 22.793022>,  <30.976801, 26.584768, 23.173866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683914, 27.131199, 22.793022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.074997, 27.214998, 22.798704>,  <31.309647, 27.265278, 22.802114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.074997, 27.214998, 22.798704>,  <30.683914, 27.131199, 22.793022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074997, 27.214998, 22.798704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030194, 0.207219, -0.977829,
		-0.207799, 0.955599, 0.208925,
		0.977706, 0.209500, 0.014207,
		31.368309, 27.277847, 22.802967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832014, 27.776619, 22.546240>,  <30.683914, 27.131199, 22.793022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832014, 27.776619, 22.546240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.191366, 27.602907, 22.519978>,  <31.406979, 27.498680, 22.504221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.191366, 27.602907, 22.519978>,  <30.832014, 27.776619, 22.546240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191366, 27.602907, 22.519978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107704, 0.362743, -0.925644,
		0.425806, 0.824510, 0.372656,
		0.898381, -0.434282, -0.065656,
		31.460880, 27.472622, 22.500280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270866, 28.230453, 22.230211>,  <30.832014, 27.776619, 22.546240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270866, 28.230453, 22.230211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.447393, 27.876711, 22.169346>,  <31.553308, 27.664465, 22.132826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.447393, 27.876711, 22.169346>,  <31.270866, 28.230453, 22.230211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447393, 27.876711, 22.169346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261834, 0.289097, -0.920796,
		0.858303, 0.366520, 0.359137,
		0.441316, -0.884356, -0.152165,
		31.579788, 27.611404, 22.123695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799520, 28.424210, 21.787451>,  <31.270866, 28.230453, 22.230211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799520, 28.424210, 21.787451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.727613, 28.036043, 21.722982>,  <31.684469, 27.803143, 21.684301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.727613, 28.036043, 21.722982>,  <31.799520, 28.424210, 21.787451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727613, 28.036043, 21.722982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125795, 0.139819, -0.982154,
		0.975632, -0.196836, 0.096938,
		-0.179770, -0.970415, -0.161173,
		31.673683, 27.744919, 21.674631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356270, 28.217709, 21.306688>,  <31.799520, 28.424210, 21.787451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356270, 28.217709, 21.306688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.051048, 27.961639, 21.271086>,  <31.867914, 27.807999, 21.249723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.051048, 27.961639, 21.271086>,  <32.356270, 28.217709, 21.306688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051048, 27.961639, 21.271086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071720, 0.220728, -0.972695,
		0.642340, -0.735838, -0.214341,
		-0.763057, -0.640173, -0.089008,
		31.822130, 27.769588, 21.244383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558788, 27.817734, 20.816187>,  <32.356270, 28.217709, 21.306688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558788, 27.817734, 20.816187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.166283, 27.750870, 20.777857>,  <31.930780, 27.710751, 20.754858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.166283, 27.750870, 20.777857>,  <32.558788, 27.817734, 20.816187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166283, 27.750870, 20.777857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052669, 0.245694, -0.967915,
		0.185339, -0.954826, -0.232286,
		-0.981263, -0.167158, -0.095827,
		31.871904, 27.700722, 20.749109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988457, 27.277205, 20.534567>,  <32.558788, 27.817734, 20.816187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988457, 27.277205, 20.534567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.306423, 27.517246, 20.498816>,  <33.497204, 27.661272, 20.477365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.306423, 27.517246, 20.498816>,  <32.988457, 27.277205, 20.534567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306423, 27.517246, 20.498816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040778, 0.094134, 0.994724,
		0.605353, -0.794362, 0.050357,
		0.794912, 0.600106, -0.089377,
		33.544895, 27.697279, 20.472002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189243, 27.170458, 21.166119>,  <32.988457, 27.277205, 20.534567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189243, 27.170458, 21.166119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.392750, 27.483143, 21.021852>,  <33.514854, 27.670753, 20.935293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.392750, 27.483143, 21.021852>,  <33.189243, 27.170458, 21.166119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392750, 27.483143, 21.021852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266693, 0.255219, 0.929375,
		0.818552, -0.569025, -0.078629,
		0.508770, 0.781712, -0.360665,
		33.545380, 27.717657, 20.913652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747929, 27.111410, 21.645887>,  <33.189243, 27.170458, 21.166119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747929, 27.111410, 21.645887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.745167, 27.478567, 21.487179>,  <33.743511, 27.698860, 21.391953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.745167, 27.478567, 21.487179>,  <33.747929, 27.111410, 21.645887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745167, 27.478567, 21.487179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160480, 0.392657, 0.905575,
		0.987015, -0.057422, -0.150014,
		-0.006905, 0.917891, -0.396773,
		33.743095, 27.753935, 21.368147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421448, 27.579817, 21.834808>,  <33.747929, 27.111410, 21.645887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421448, 27.579817, 21.834808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.143925, 27.854158, 21.746958>,  <33.977409, 28.018763, 21.694246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.143925, 27.854158, 21.746958>,  <34.421448, 27.579817, 21.834808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143925, 27.854158, 21.746958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158693, 0.443076, 0.882327,
		0.702459, 0.577311, -0.416249,
		-0.693807, 0.685854, -0.219628,
		33.935783, 28.059914, 21.681070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726189, 28.180132, 22.030321>,  <34.421448, 27.579817, 21.834808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726189, 28.180132, 22.030321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.339684, 28.275648, 21.991701>,  <34.107780, 28.332958, 21.968529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.339684, 28.275648, 21.991701>,  <34.726189, 28.180132, 22.030321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339684, 28.275648, 21.991701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037572, 0.501519, 0.864330,
		0.254815, 0.831540, -0.493570,
		-0.966260, 0.238788, -0.096552,
		34.049805, 28.347284, 21.962736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729515, 28.882841, 22.045029>,  <34.726189, 28.180132, 22.030321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729515, 28.882841, 22.045029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.358173, 28.770157, 22.142025>,  <34.135368, 28.702547, 22.200222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.358173, 28.770157, 22.142025>,  <34.729515, 28.882841, 22.045029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358173, 28.770157, 22.142025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093668, 0.454021, 0.886054,
		-0.359707, 0.845283, -0.395104,
		-0.928352, -0.281711, 0.242490,
		34.079666, 28.685644, 22.214771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342663, 29.481981, 22.375959>,  <34.729515, 28.882841, 22.045029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342663, 29.481981, 22.375959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.122040, 29.171408, 22.497902>,  <33.989666, 28.985064, 22.571068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.122040, 29.171408, 22.497902>,  <34.342663, 29.481981, 22.375959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122040, 29.171408, 22.497902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087857, 0.309366, 0.946876,
		-0.829496, 0.549041, -0.102418,
		-0.551559, -0.776432, 0.304855,
		33.956573, 28.938478, 22.589359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800041, 29.719170, 22.762671>,  <34.342663, 29.481981, 22.375959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800041, 29.719170, 22.762671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.856380, 29.351658, 22.910189>,  <33.890182, 29.131151, 22.998699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.856380, 29.351658, 22.910189>,  <33.800041, 29.719170, 22.762671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856380, 29.351658, 22.910189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150011, 0.388012, 0.909364,
		-0.978600, -0.072760, 0.192478,
		0.140849, -0.918778, 0.368794,
		33.898636, 29.076025, 23.020826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382496, 29.704937, 23.399286>,  <33.800041, 29.719170, 22.762671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382496, 29.704937, 23.399286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.674355, 29.431414, 23.397129>,  <33.849468, 29.267300, 23.395834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.674355, 29.431414, 23.397129>,  <33.382496, 29.704937, 23.399286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674355, 29.431414, 23.397129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258579, 0.268594, 0.927898,
		-0.633054, -0.678428, 0.372796,
		0.729643, -0.683807, -0.005393,
		33.893246, 29.226271, 23.395512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317684, 29.358593, 24.055048>,  <33.382496, 29.704937, 23.399286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317684, 29.358593, 24.055048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.687695, 29.263823, 23.936262>,  <33.909702, 29.206961, 23.864990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.687695, 29.263823, 23.936262>,  <33.317684, 29.358593, 24.055048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687695, 29.263823, 23.936262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364133, 0.330128, 0.870875,
		-0.108296, -0.913719, 0.391650,
		0.925029, -0.236925, -0.296963,
		33.965202, 29.192745, 23.847174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595139, 28.945093, 24.612570>,  <33.317684, 29.358593, 24.055048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595139, 28.945093, 24.612570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.932808, 29.063463, 24.433777>,  <34.135410, 29.134485, 24.326500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.932808, 29.063463, 24.433777>,  <33.595139, 28.945093, 24.612570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932808, 29.063463, 24.433777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412292, 0.174498, 0.894184,
		0.342612, -0.939136, 0.025298,
		0.844175, 0.295928, -0.446983,
		34.186062, 29.152241, 24.299683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110180, 28.637451, 25.012720>,  <33.595139, 28.945093, 24.612570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110180, 28.637451, 25.012720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.286270, 28.931984, 24.807190>,  <34.391922, 29.108704, 24.683872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.286270, 28.931984, 24.807190>,  <34.110180, 28.637451, 25.012720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286270, 28.931984, 24.807190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467462, 0.300636, 0.831323,
		0.766606, -0.606160, -0.211862,
		0.440221, 0.736334, -0.513826,
		34.418335, 29.152884, 24.653042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784763, 28.548176, 25.186062>,  <34.110180, 28.637451, 25.012720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784763, 28.548176, 25.186062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.772602, 28.921326, 25.042498>,  <34.765305, 29.145216, 24.956360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.772602, 28.921326, 25.042498>,  <34.784763, 28.548176, 25.186062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772602, 28.921326, 25.042498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397929, 0.340691, 0.851811,
		0.916912, -0.116920, -0.381578,
		-0.030407, 0.932877, -0.358910,
		34.763481, 29.201189, 24.934824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417034, 28.877417, 25.267212>,  <34.784763, 28.548176, 25.186062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417034, 28.877417, 25.267212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165527, 29.188169, 25.253866>,  <35.014626, 29.374620, 25.245859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165527, 29.188169, 25.253866>,  <35.417034, 28.877417, 25.267212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165527, 29.188169, 25.253866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395302, 0.356297, 0.846634,
		0.669622, 0.519142, -0.531129,
		-0.628763, 0.776881, -0.033366,
		34.976898, 29.421234, 25.243856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.444977, 31.719431, 18.984777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.059738, 31.621422, 19.029322>,  <36.828594, 31.562616, 19.056047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.059738, 31.621422, 19.029322>,  <37.444977, 31.719431, 18.984777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059738, 31.621422, 19.029322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026898, -0.324055, -0.945656,
		0.267795, -0.913757, 0.305507,
		-0.963100, -0.245024, 0.111358,
		36.770809, 31.547915, 19.062729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416851, 31.059631, 18.722374>,  <37.444977, 31.719431, 18.984777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416851, 31.059631, 18.722374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030281, 31.161444, 18.736420>,  <36.798340, 31.222530, 18.744846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.030281, 31.161444, 18.736420>,  <37.416851, 31.059631, 18.722374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030281, 31.161444, 18.736420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097701, -0.237641, -0.966427,
		-0.237641, -0.937412, 0.254530,
		0.966427, -0.254530, -0.035113,
		36.740353, 31.237803, 18.746954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070576, 30.598873, 18.371784>,  <37.416851, 31.059631, 18.722374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070576, 30.598873, 18.371784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.779896, 30.872070, 18.401266>,  <36.605488, 31.035988, 18.418955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.779896, 30.872070, 18.401266>,  <37.070576, 30.598873, 18.371784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779896, 30.872070, 18.401266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309287, -0.229489, -0.922863,
		-0.613393, -0.693439, 0.378010,
		-0.726699, 0.682991, 0.073705,
		36.561886, 31.076967, 18.423378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484592, 30.265427, 18.179373>,  <37.070576, 30.598873, 18.371784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484592, 30.265427, 18.179373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435337, 30.659407, 18.130859>,  <36.405785, 30.895794, 18.101751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.435337, 30.659407, 18.130859>,  <36.484592, 30.265427, 18.179373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435337, 30.659407, 18.130859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512762, -0.167781, -0.841976,
		-0.849654, -0.041491, 0.525706,
		-0.123138, 0.984951, -0.121281,
		36.398396, 30.954891, 18.094475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772144, 30.487305, 18.268074>,  <36.484592, 30.265427, 18.179373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772144, 30.487305, 18.268074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.970207, 30.739880, 18.029373>,  <36.089043, 30.891424, 17.886152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.970207, 30.739880, 18.029373>,  <35.772144, 30.487305, 18.268074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970207, 30.739880, 18.029373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616287, -0.228865, -0.753532,
		-0.612384, 0.740883, 0.275823,
		0.495153, 0.631437, -0.596750,
		36.118752, 30.929312, 17.850348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263016, 30.744421, 17.979021>,  <35.772144, 30.487305, 18.268074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263016, 30.744421, 17.979021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.567574, 30.843266, 17.739283>,  <35.750309, 30.902573, 17.595440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.567574, 30.843266, 17.739283>,  <35.263016, 30.744421, 17.979021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567574, 30.843266, 17.739283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518025, -0.323949, -0.791648,
		-0.389783, 0.913232, -0.118642,
		0.761393, 0.247111, -0.599347,
		35.795990, 30.917398, 17.559479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022198, 31.102219, 17.457888>,  <35.263016, 30.744421, 17.979021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022198, 31.102219, 17.457888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.372482, 30.966648, 17.320330>,  <35.582653, 30.885305, 17.237795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.372482, 30.966648, 17.320330>,  <35.022198, 31.102219, 17.457888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372482, 30.966648, 17.320330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455055, -0.341191, -0.822504,
		0.161436, 0.876765, -0.453015,
		0.875707, -0.338928, -0.343896,
		35.635193, 30.864969, 17.217161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955162, 31.238520, 16.785473>,  <35.022198, 31.102219, 17.457888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955162, 31.238520, 16.785473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237572, 30.955608, 16.799809>,  <35.407017, 30.785862, 16.808411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237572, 30.955608, 16.799809>,  <34.955162, 31.238520, 16.785473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237572, 30.955608, 16.799809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363496, -0.405357, -0.838783,
		0.607779, 0.579176, -0.543286,
		0.706028, -0.707277, 0.035839,
		35.449379, 30.743425, 16.810560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203869, 31.162119, 16.094074>,  <34.955162, 31.238520, 16.785473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203869, 31.162119, 16.094074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.337440, 30.832478, 16.277092>,  <35.417583, 30.634693, 16.386902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.337440, 30.832478, 16.277092>,  <35.203869, 31.162119, 16.094074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337440, 30.832478, 16.277092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120292, -0.518695, -0.846455,
		0.934890, 0.227620, -0.272342,
		0.333932, -0.824102, 0.457542,
		35.437618, 30.585247, 16.414354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782146, 30.920502, 15.657693>,  <35.203869, 31.162119, 16.094074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782146, 30.920502, 15.657693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.622894, 30.618876, 15.866642>,  <35.527344, 30.437899, 15.992011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.622894, 30.618876, 15.866642>,  <35.782146, 30.920502, 15.657693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622894, 30.618876, 15.866642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174681, -0.496709, -0.850157,
		0.900543, -0.429724, 0.066035,
		-0.398133, -0.754067, 0.522372,
		35.503456, 30.392654, 16.023354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087959, 30.305391, 15.456810>,  <35.782146, 30.920502, 15.657693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087959, 30.305391, 15.456810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.733051, 30.209721, 15.614569>,  <35.520107, 30.152319, 15.709224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.733051, 30.209721, 15.614569>,  <36.087959, 30.305391, 15.456810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733051, 30.209721, 15.614569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291528, -0.371828, -0.881337,
		0.357442, -0.896961, 0.260186,
		-0.887269, -0.239175, 0.394396,
		35.466869, 30.137968, 15.732887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849144, 29.841259, 14.979906>,  <36.087959, 30.305391, 15.456810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849144, 29.841259, 14.979906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.515362, 29.903376, 15.191404>,  <35.315094, 29.940645, 15.318303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.515362, 29.903376, 15.191404>,  <35.849144, 29.841259, 14.979906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515362, 29.903376, 15.191404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532649, -0.473335, -0.701597,
		0.141324, -0.867087, 0.477691,
		-0.834453, 0.155289, 0.528746,
		35.265026, 29.949963, 15.350028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479252, 29.194311, 15.007504>,  <35.849144, 29.841259, 14.979906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479252, 29.194311, 15.007504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.226894, 29.500120, 15.060376>,  <35.075478, 29.683605, 15.092099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.226894, 29.500120, 15.060376>,  <35.479252, 29.194311, 15.007504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226894, 29.500120, 15.060376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698426, -0.485430, -0.525889,
		-0.337889, -0.424101, 0.840220,
		-0.630898, 0.764523, 0.132182,
		35.037624, 29.729477, 15.100031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762539, 28.922773, 15.312987>,  <35.479252, 29.194311, 15.007504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762539, 28.922773, 15.312987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728218, 29.256783, 15.095593>,  <34.707626, 29.457188, 14.965157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728218, 29.256783, 15.095593>,  <34.762539, 28.922773, 15.312987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728218, 29.256783, 15.095593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756650, -0.409496, -0.509699,
		-0.648165, 0.367495, 0.666956,
		-0.085804, 0.835021, -0.543486,
		34.702477, 29.507290, 14.932548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054249, 28.842449, 15.067544>,  <34.762539, 28.922773, 15.312987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054249, 28.842449, 15.067544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.266880, 29.104036, 14.852231>,  <34.394459, 29.260988, 14.723043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.266880, 29.104036, 14.852231>,  <34.054249, 28.842449, 15.067544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266880, 29.104036, 14.852231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556959, -0.208914, -0.803836,
		-0.638137, 0.727105, 0.253179,
		0.531580, 0.653968, -0.538283,
		34.426353, 29.300226, 14.690746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500011, 28.753675, 15.404258>,  <34.054249, 28.842449, 15.067544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500011, 28.753675, 15.404258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.519283, 28.355711, 15.368855>,  <33.530846, 28.116932, 15.347612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.519283, 28.355711, 15.368855>,  <33.500011, 28.753675, 15.404258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519283, 28.355711, 15.368855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075448, -0.084734, 0.993543,
		-0.995985, -0.054542, 0.070982,
		0.048175, -0.994910, -0.088509,
		33.533737, 28.057238, 15.342301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127186, 28.462534, 16.043182>,  <33.500011, 28.753675, 15.404258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127186, 28.462534, 16.043182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.329121, 28.147251, 15.902401>,  <33.450283, 27.958082, 15.817932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.329121, 28.147251, 15.902401>,  <33.127186, 28.462534, 16.043182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329121, 28.147251, 15.902401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145025, -0.324483, 0.934708,
		-0.850945, -0.522918, -0.049501,
		0.504838, -0.788206, -0.351953,
		33.480572, 27.910789, 15.796815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786747, 27.863806, 16.312714>,  <33.127186, 28.462534, 16.043182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786747, 27.863806, 16.312714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176083, 27.823133, 16.230474>,  <33.409683, 27.798731, 16.181131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176083, 27.823133, 16.230474>,  <32.786747, 27.863806, 16.312714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176083, 27.823133, 16.230474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177138, -0.236189, 0.955425,
		-0.145706, -0.966373, -0.211881,
		0.973340, -0.101679, -0.205596,
		33.468086, 27.792629, 16.168795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032654, 27.187571, 16.649963>,  <32.786747, 27.863806, 16.312714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032654, 27.187571, 16.649963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355637, 27.416042, 16.590956>,  <33.549427, 27.553125, 16.555552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355637, 27.416042, 16.590956>,  <33.032654, 27.187571, 16.649963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355637, 27.416042, 16.590956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257962, -0.116984, 0.959047,
		0.530530, -0.812446, -0.241802,
		0.807461, 0.571179, -0.147517,
		33.597874, 27.587397, 16.546701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500660, 26.903646, 17.120848>,  <33.032654, 27.187571, 16.649963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500660, 26.903646, 17.120848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.688503, 27.240385, 17.014444>,  <33.801208, 27.442429, 16.950602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.688503, 27.240385, 17.014444>,  <33.500660, 26.903646, 17.120848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688503, 27.240385, 17.014444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225221, 0.177101, 0.958077,
		0.853665, -0.509832, -0.106434,
		0.469608, 0.841848, -0.266010,
		33.829388, 27.492939, 16.934641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150276, 26.823294, 17.388597>,  <33.500660, 26.903646, 17.120848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150276, 26.823294, 17.388597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.054863, 27.210836, 17.362026>,  <33.997616, 27.443363, 17.346085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.054863, 27.210836, 17.362026>,  <34.150276, 26.823294, 17.388597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054863, 27.210836, 17.362026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188486, 0.113290, 0.975519,
		0.952666, 0.220178, -0.209640,
		-0.238538, 0.968859, -0.066427,
		33.983303, 27.501493, 17.342098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770481, 27.200647, 17.611256>,  <34.150276, 26.823294, 17.388597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770481, 27.200647, 17.611256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.452919, 27.442045, 17.640934>,  <34.262383, 27.586884, 17.658741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.452919, 27.442045, 17.640934>,  <34.770481, 27.200647, 17.611256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452919, 27.442045, 17.640934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305240, 0.290036, 0.907032,
		0.525869, 0.742748, -0.414472,
		-0.793909, 0.603494, 0.074195,
		34.214745, 27.623093, 17.663193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066711, 27.787247, 17.808439>,  <34.770481, 27.200647, 17.611256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066711, 27.787247, 17.808439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677757, 27.801600, 17.900684>,  <34.444386, 27.810211, 17.956032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.677757, 27.801600, 17.900684>,  <35.066711, 27.787247, 17.808439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677757, 27.801600, 17.900684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224790, 0.409710, 0.884086,
		-0.062763, 0.911510, -0.406460,
		-0.972384, 0.035880, 0.230613,
		34.386044, 27.812363, 17.969868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055153, 28.255779, 18.398504>,  <35.066711, 27.787247, 17.808439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055153, 28.255779, 18.398504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.700104, 28.072124, 18.413023>,  <34.487076, 27.961931, 18.421734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.700104, 28.072124, 18.413023>,  <35.055153, 28.255779, 18.398504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700104, 28.072124, 18.413023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037213, 0.007058, 0.999283,
		-0.459065, 0.888337, 0.010821,
		-0.887623, -0.459138, 0.036298,
		34.433815, 27.934383, 18.423912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692078, 28.662569, 18.914915>,  <35.055153, 28.255779, 18.398504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692078, 28.662569, 18.914915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.459534, 28.338808, 18.881712>,  <34.320007, 28.144552, 18.861790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.459534, 28.338808, 18.881712>,  <34.692078, 28.662569, 18.914915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459534, 28.338808, 18.881712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240025, 0.073129, 0.968008,
		-0.777436, 0.582686, -0.236791,
		-0.581361, -0.809400, -0.083007,
		34.285126, 28.095987, 18.856810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055992, 28.839817, 19.210039>,  <34.692078, 28.662569, 18.914915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055992, 28.839817, 19.210039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.074192, 28.440292, 19.203058>,  <34.085114, 28.200577, 19.198870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.074192, 28.440292, 19.203058>,  <34.055992, 28.839817, 19.210039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074192, 28.440292, 19.203058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397029, -0.034112, 0.917172,
		-0.916677, -0.034806, -0.398110,
		0.045503, -0.998812, -0.017451,
		34.087845, 28.140648, 19.197823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393703, 28.645964, 19.395252>,  <34.055992, 28.839817, 19.210039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393703, 28.645964, 19.395252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.667259, 28.364256, 19.471460>,  <33.831394, 28.195230, 19.517185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.667259, 28.364256, 19.471460>,  <33.393703, 28.645964, 19.395252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667259, 28.364256, 19.471460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373833, -0.114009, 0.920462,
		-0.626532, -0.700719, -0.341249,
		0.683890, -0.704270, 0.190521,
		33.872425, 28.152975, 19.528616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950424, 28.163469, 19.750837>,  <33.393703, 28.645964, 19.395252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950424, 28.163469, 19.750837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331478, 28.101650, 19.855602>,  <33.560112, 28.064558, 19.918461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331478, 28.101650, 19.855602>,  <32.950424, 28.163469, 19.750837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331478, 28.101650, 19.855602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277505, -0.089479, 0.956548,
		-0.124405, -0.983924, -0.128131,
		0.952635, -0.154557, 0.261912,
		33.617268, 28.055286, 19.934175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399937, 27.667028, 19.816643>,  <32.950424, 28.163469, 19.750837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399937, 27.667028, 19.816643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.062798, 27.712708, 20.027004>,  <31.860516, 27.740116, 20.153221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.062798, 27.712708, 20.027004>,  <32.399937, 27.667028, 19.816643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062798, 27.712708, 20.027004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492935, 0.228294, -0.839581,
		-0.215940, -0.966871, -0.136123,
		-0.842843, 0.114200, 0.525903,
		31.809944, 27.746967, 20.184774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832924, 27.201786, 19.648409>,  <32.399937, 27.667028, 19.816643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832924, 27.201786, 19.648409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.667467, 27.546068, 19.767124>,  <31.568193, 27.752638, 19.838354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.667467, 27.546068, 19.767124>,  <31.832924, 27.201786, 19.648409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667467, 27.546068, 19.767124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414124, 0.112436, -0.903249,
		-0.810803, -0.496530, 0.309931,
		-0.413643, 0.860707, 0.296788,
		31.543375, 27.804279, 19.856161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376862, 27.343561, 19.170744>,  <31.832924, 27.201786, 19.648409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376862, 27.343561, 19.170744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.368383, 27.698196, 19.355574>,  <31.363297, 27.910978, 19.466471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.368383, 27.698196, 19.355574>,  <31.376862, 27.343561, 19.170744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368383, 27.698196, 19.355574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222891, 0.446354, -0.866653,
		-0.974613, -0.121362, 0.188152,
		-0.021197, 0.886589, 0.462073,
		31.362024, 27.964172, 19.494196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796804, 27.642628, 18.959417>,  <31.376862, 27.343561, 19.170744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796804, 27.642628, 18.959417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.024174, 27.943708, 19.092285>,  <31.160595, 28.124357, 19.172005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.024174, 27.943708, 19.092285>,  <30.796804, 27.642628, 18.959417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024174, 27.943708, 19.092285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324388, 0.576069, -0.750277,
		-0.756087, 0.318724, 0.571619,
		0.568423, 0.752701, 0.332168,
		31.194700, 28.169519, 19.191936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399273, 28.162651, 18.792700>,  <30.796804, 27.642628, 18.959417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399273, 28.162651, 18.792700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.757433, 28.328798, 18.856861>,  <30.972328, 28.428486, 18.895357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.757433, 28.328798, 18.856861>,  <30.399273, 28.162651, 18.792700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757433, 28.328798, 18.856861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110867, 0.556877, -0.823162,
		-0.431239, 0.719276, 0.544679,
		0.895400, 0.415366, 0.160403,
		31.026052, 28.453407, 18.904982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225595, 28.824751, 18.585321>,  <30.399273, 28.162651, 18.792700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225595, 28.824751, 18.585321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619865, 28.759327, 18.568840>,  <30.856426, 28.720074, 18.558952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619865, 28.759327, 18.568840>,  <30.225595, 28.824751, 18.585321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619865, 28.759327, 18.568840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032622, 0.424529, -0.904826,
		0.165483, 0.890519, 0.423783,
		0.985673, -0.163558, -0.041201,
		30.915567, 28.710260, 18.556480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454681, 29.496935, 18.306440>,  <30.225595, 28.824751, 18.585321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454681, 29.496935, 18.306440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.736977, 29.221107, 18.241415>,  <30.906353, 29.055611, 18.202400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.736977, 29.221107, 18.241415>,  <30.454681, 29.496935, 18.306440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736977, 29.221107, 18.241415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073135, 0.299137, -0.951403,
		0.704688, 0.659553, 0.261544,
		0.705738, -0.689570, -0.162562,
		30.948698, 29.014236, 18.192646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397476, 30.290838, 18.207270>,  <30.454681, 29.496935, 18.306440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397476, 30.290838, 18.207270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.016504, 30.358032, 18.105558>,  <29.787922, 30.398348, 18.044531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.016504, 30.358032, 18.105558>,  <30.397476, 30.290838, 18.207270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016504, 30.358032, 18.105558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232766, 0.137596, 0.962750,
		0.196713, 0.976140, -0.091950,
		-0.952430, 0.167983, -0.254279,
		29.730776, 30.408426, 18.029274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238270, 30.925020, 18.433746>,  <30.397476, 30.290838, 18.207270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238270, 30.925020, 18.433746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.889618, 30.731464, 18.402462>,  <29.680428, 30.615332, 18.383692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.889618, 30.731464, 18.402462>,  <30.238270, 30.925020, 18.433746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889618, 30.731464, 18.402462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176167, 0.160356, 0.971211,
		-0.457417, 0.860313, -0.225016,
		-0.871628, -0.483889, -0.078209,
		29.628130, 30.586298, 18.379000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856783, 31.096695, 18.997427>,  <30.238270, 30.925020, 18.433746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856783, 31.096695, 18.997427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.619055, 30.789591, 18.901653>,  <29.476418, 30.605330, 18.844189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.619055, 30.789591, 18.901653>,  <29.856783, 31.096695, 18.997427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619055, 30.789591, 18.901653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304351, -0.060861, 0.950614,
		-0.744413, 0.637843, -0.197497,
		-0.594323, -0.767758, -0.239434,
		29.440758, 30.559263, 18.829823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257704, 31.121492, 19.518715>,  <29.856783, 31.096695, 18.997427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257704, 31.121492, 19.518715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.254940, 30.750296, 19.369703>,  <29.253283, 30.527576, 19.280296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.254940, 30.750296, 19.369703>,  <29.257704, 31.121492, 19.518715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254940, 30.750296, 19.369703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456593, -0.328509, 0.826804,
		-0.889649, 0.175808, -0.421446,
		-0.006910, -0.927994, -0.372531,
		29.252867, 30.471897, 19.257944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586943, 30.869858, 19.746841>,  <29.257704, 31.121492, 19.518715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586943, 30.869858, 19.746841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.810272, 30.550955, 19.655054>,  <28.944271, 30.359613, 19.599981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.810272, 30.550955, 19.655054>,  <28.586943, 30.869858, 19.746841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810272, 30.550955, 19.655054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357170, -0.480640, 0.800884,
		-0.748801, -0.365195, -0.553109,
		0.558325, -0.797257, -0.229467,
		28.977770, 30.311777, 19.586214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162838, 30.258989, 19.822994>,  <28.586943, 30.869858, 19.746841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162838, 30.258989, 19.822994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.546658, 30.150167, 19.851976>,  <28.776949, 30.084873, 19.869366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.546658, 30.150167, 19.851976>,  <28.162838, 30.258989, 19.822994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546658, 30.150167, 19.851976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193990, -0.452381, 0.870471,
		-0.204039, -0.849316, -0.486858,
		0.959550, -0.272055, 0.072455,
		28.834522, 30.068550, 19.873713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094923, 29.581068, 20.092361>,  <28.162838, 30.258989, 19.822994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094923, 29.581068, 20.092361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.457546, 29.715977, 20.193869>,  <28.675121, 29.796923, 20.254772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.457546, 29.715977, 20.193869>,  <28.094923, 29.581068, 20.092361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457546, 29.715977, 20.193869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119576, -0.371374, 0.920751,
		0.404786, -0.865060, -0.296343,
		0.906559, 0.337272, 0.253767,
		28.729513, 29.817158, 20.269999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.744076, 31.197786, 15.375312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.106613, 31.061947, 15.475888>,  <33.324135, 30.980444, 15.536234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.106613, 31.061947, 15.475888>,  <32.744076, 31.197786, 15.375312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106613, 31.061947, 15.475888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112923, 0.378749, 0.918585,
		-0.407183, -0.860943, 0.304926,
		0.906339, -0.339599, 0.251440,
		33.378513, 30.960068, 15.551320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573139, 30.884087, 16.009336>,  <32.744076, 31.197786, 15.375312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573139, 30.884087, 16.009336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.963249, 30.972475, 16.010065>,  <33.197315, 31.025509, 16.010502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.963249, 30.972475, 16.010065>,  <32.573139, 30.884087, 16.009336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963249, 30.972475, 16.010065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051759, 0.220409, 0.974033,
		0.214795, -0.950056, 0.226398,
		0.975287, 0.220936, 0.001831,
		33.255833, 31.038767, 16.010612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952778, 30.527256, 16.556904>,  <32.573139, 30.884087, 16.009336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952778, 30.527256, 16.556904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.152576, 30.864649, 16.477871>,  <33.272457, 31.067083, 16.430450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.152576, 30.864649, 16.477871>,  <32.952778, 30.527256, 16.556904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152576, 30.864649, 16.477871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086286, 0.275379, 0.957455,
		0.862006, -0.461201, 0.210333,
		0.499501, 0.843481, -0.197584,
		33.302425, 31.117693, 16.418596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237511, 30.673138, 17.199564>,  <32.952778, 30.527256, 16.556904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237511, 30.673138, 17.199564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.361771, 31.002911, 17.010330>,  <33.436329, 31.200773, 16.896790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.361771, 31.002911, 17.010330>,  <33.237511, 30.673138, 17.199564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361771, 31.002911, 17.010330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124081, 0.458279, 0.880105,
		0.942390, -0.332107, 0.040069,
		0.310652, 0.824430, -0.473086,
		33.454967, 31.250240, 16.868404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890556, 30.889593, 17.509590>,  <33.237511, 30.673138, 17.199564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890556, 30.889593, 17.509590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.707222, 31.216547, 17.369984>,  <33.597221, 31.412720, 17.286221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.707222, 31.216547, 17.369984>,  <33.890556, 30.889593, 17.509590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707222, 31.216547, 17.369984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049800, 0.415692, 0.908141,
		0.887384, 0.398850, -0.231231,
		-0.458333, 0.817386, -0.349016,
		33.569721, 31.461763, 17.265280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335930, 31.402100, 17.716782>,  <33.890556, 30.889593, 17.509590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335930, 31.402100, 17.716782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.977394, 31.562569, 17.641268>,  <33.762272, 31.658850, 17.595961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.977394, 31.562569, 17.641268>,  <34.335930, 31.402100, 17.716782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977394, 31.562569, 17.641268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027214, 0.375209, 0.926541,
		0.442535, 0.835631, -0.325396,
		-0.896338, 0.401172, -0.188784,
		33.708492, 31.682920, 17.584633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386597, 32.018860, 18.043795>,  <34.335930, 31.402100, 17.716782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386597, 32.018860, 18.043795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.991802, 32.005802, 17.980822>,  <33.754925, 31.997967, 17.943039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.991802, 32.005802, 17.980822>,  <34.386597, 32.018860, 18.043795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991802, 32.005802, 17.980822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150455, 0.532781, 0.832771,
		0.056688, 0.845623, -0.530762,
		-0.986990, -0.032648, -0.157430,
		33.695705, 31.996008, 17.933592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246826, 32.718300, 18.125021>,  <34.386597, 32.018860, 18.043795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246826, 32.718300, 18.125021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.912018, 32.504257, 18.170738>,  <33.711132, 32.375832, 18.198170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.912018, 32.504257, 18.170738>,  <34.246826, 32.718300, 18.125021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912018, 32.504257, 18.170738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277059, 0.594593, 0.754783,
		-0.471848, 0.600100, -0.645940,
		-0.837017, -0.535107, 0.114295,
		33.660912, 32.343727, 18.205027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675896, 33.254910, 18.258373>,  <34.246826, 32.718300, 18.125021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675896, 33.254910, 18.258373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.561817, 32.895103, 18.390753>,  <33.493370, 32.679218, 18.470181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.561817, 32.895103, 18.390753>,  <33.675896, 33.254910, 18.258373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561817, 32.895103, 18.390753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250277, 0.403202, 0.880221,
		-0.925216, 0.168206, -0.340121,
		-0.285196, -0.899519, 0.330951,
		33.476257, 32.625248, 18.490038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089005, 33.362778, 18.449808>,  <33.675896, 33.254910, 18.258373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089005, 33.362778, 18.449808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.170307, 33.032051, 18.659594>,  <33.219090, 32.833614, 18.785465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.170307, 33.032051, 18.659594>,  <33.089005, 33.362778, 18.449808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170307, 33.032051, 18.659594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081855, 0.519419, 0.850590,
		-0.975699, -0.215814, 0.037894,
		0.203253, -0.826818, 0.524462,
		33.231281, 32.784004, 18.816933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631687, 33.328079, 18.997358>,  <33.089005, 33.362778, 18.449808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631687, 33.328079, 18.997358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.922764, 33.093895, 19.140299>,  <33.097408, 32.953384, 19.226063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.922764, 33.093895, 19.140299>,  <32.631687, 33.328079, 18.997358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922764, 33.093895, 19.140299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123936, 0.400189, 0.908013,
		-0.674613, -0.705044, 0.218655,
		0.727693, -0.585459, 0.357353,
		33.141071, 32.918259, 19.247505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285728, 33.010464, 19.577158>,  <32.631687, 33.328079, 18.997358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285728, 33.010464, 19.577158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.682293, 32.976803, 19.617205>,  <32.920231, 32.956604, 19.641232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.682293, 32.976803, 19.617205>,  <32.285728, 33.010464, 19.577158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682293, 32.976803, 19.617205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068062, 0.321673, 0.944402,
		-0.111683, -0.943103, 0.313182,
		0.991410, -0.084157, 0.100115,
		32.979717, 32.951557, 19.647240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680534, 32.544067, 19.568714>,  <32.285728, 33.010464, 19.577158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680534, 32.544067, 19.568714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.320635, 32.714706, 19.605516>,  <31.104694, 32.817089, 19.627598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.320635, 32.714706, 19.605516>,  <31.680534, 32.544067, 19.568714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320635, 32.714706, 19.605516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183645, -0.178869, -0.966582,
		-0.395883, -0.886579, 0.239280,
		-0.899750, 0.426596, 0.092005,
		31.050709, 32.842686, 19.633118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194248, 32.116890, 19.259718>,  <31.680534, 32.544067, 19.568714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194248, 32.116890, 19.259718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.041767, 32.486687, 19.260798>,  <30.950279, 32.708565, 19.261446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.041767, 32.486687, 19.260798>,  <31.194248, 32.116890, 19.259718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041767, 32.486687, 19.260798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066473, -0.024496, -0.997488,
		-0.922098, -0.380425, 0.070791,
		-0.381203, 0.924487, 0.002700,
		30.927406, 32.764034, 19.261608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667267, 32.052197, 18.820589>,  <31.194248, 32.116890, 19.259718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667267, 32.052197, 18.820589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.744474, 32.444645, 18.825468>,  <30.790798, 32.680115, 18.828396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.744474, 32.444645, 18.825468>,  <30.667267, 32.052197, 18.820589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744474, 32.444645, 18.825468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251103, 0.061412, -0.966010,
		-0.948520, 0.183395, 0.258216,
		0.193019, 0.981119, 0.012200,
		30.802380, 32.738979, 18.829128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069389, 32.414047, 18.662834>,  <30.667267, 32.052197, 18.820589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069389, 32.414047, 18.662834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.331953, 32.699024, 18.563591>,  <30.489492, 32.870010, 18.504045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.331953, 32.699024, 18.563591>,  <30.069389, 32.414047, 18.662834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331953, 32.699024, 18.563591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499560, 0.164051, -0.850604,
		-0.565300, 0.682290, 0.463590,
		0.656411, 0.712438, -0.248107,
		30.528877, 32.912754, 18.489159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691929, 32.834705, 18.159613>,  <30.069389, 32.414047, 18.662834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691929, 32.834705, 18.159613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.069586, 32.937920, 18.077623>,  <30.296181, 32.999847, 18.028431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.069586, 32.937920, 18.077623>,  <29.691929, 32.834705, 18.159613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069586, 32.937920, 18.077623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239406, 0.109657, -0.964707,
		-0.226451, 0.959893, 0.165306,
		0.944142, 0.258034, -0.204972,
		30.352829, 33.015331, 18.016132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681744, 33.505428, 17.771448>,  <29.691929, 32.834705, 18.159613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681744, 33.505428, 17.771448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.032341, 33.322521, 17.711220>,  <30.242699, 33.212776, 17.675083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.032341, 33.322521, 17.711220>,  <29.681744, 33.505428, 17.771448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032341, 33.322521, 17.711220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074580, 0.180023, -0.980831,
		0.475605, 0.870920, 0.123686,
		0.876492, -0.457263, -0.150573,
		30.295288, 33.185341, 17.666048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852238, 33.911503, 17.212193>,  <29.681744, 33.505428, 17.771448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852238, 33.911503, 17.212193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.091257, 33.590904, 17.202904>,  <30.234669, 33.398544, 17.197330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.091257, 33.590904, 17.202904>,  <29.852238, 33.911503, 17.212193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091257, 33.590904, 17.202904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000511, 0.028579, -0.999592,
		0.801832, 0.597318, 0.016668,
		0.597550, -0.801495, -0.023221,
		30.270521, 33.350456, 17.195938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475651, 34.134075, 16.734186>,  <29.852238, 33.911503, 17.212193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475651, 34.134075, 16.734186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.464500, 33.735470, 16.765661>,  <30.457811, 33.496307, 16.784546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.464500, 33.735470, 16.765661>,  <30.475651, 34.134075, 16.734186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464500, 33.735470, 16.765661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033843, -0.077732, -0.996400,
		0.999038, -0.030437, -0.031558,
		-0.027874, -0.996509, 0.078687,
		30.456139, 33.436516, 16.789267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020166, 33.858730, 16.315304>,  <30.475651, 34.134075, 16.734186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020166, 33.858730, 16.315304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.755903, 33.561958, 16.361052>,  <30.597345, 33.383896, 16.388500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.755903, 33.561958, 16.361052>,  <31.020166, 33.858730, 16.315304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755903, 33.561958, 16.361052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021437, -0.133642, -0.990798,
		0.750383, -0.657028, 0.072387,
		-0.660656, -0.741926, 0.114368,
		30.557707, 33.339382, 16.395361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267878, 33.269947, 15.886817>,  <31.020166, 33.858730, 16.315304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267878, 33.269947, 15.886817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.887751, 33.175671, 15.968154>,  <30.659676, 33.119102, 16.016956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.887751, 33.175671, 15.968154>,  <31.267878, 33.269947, 15.886817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887751, 33.175671, 15.968154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132882, -0.283569, -0.949701,
		0.281500, -0.929536, 0.238161,
		-0.950316, -0.235693, 0.203343,
		30.602655, 33.104961, 16.029158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086863, 32.712605, 15.329990>,  <31.267878, 33.269947, 15.886817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086863, 32.712605, 15.329990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.723709, 32.819809, 15.458939>,  <30.505817, 32.884132, 15.536307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.723709, 32.819809, 15.458939>,  <31.086863, 32.712605, 15.329990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723709, 32.819809, 15.458939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343747, -0.035731, -0.938382,
		-0.239975, -0.962754, 0.124567,
		-0.907882, 0.268008, 0.322370,
		30.451345, 32.900211, 15.555650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669104, 32.341003, 15.001956>,  <31.086863, 32.712605, 15.329990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669104, 32.341003, 15.001956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.440550, 32.651505, 15.108504>,  <30.303417, 32.837807, 15.172433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.440550, 32.651505, 15.108504>,  <30.669104, 32.341003, 15.001956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440550, 32.651505, 15.108504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340176, 0.071358, -0.937650,
		-0.746862, -0.626370, 0.223290,
		-0.571382, 0.776253, 0.266371,
		30.269135, 32.884380, 15.188416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854343, 32.265388, 14.925728>,  <30.669104, 32.341003, 15.001956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854343, 32.265388, 14.925728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.029408, 32.616707, 14.848736>,  <30.134445, 32.827499, 14.802541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.029408, 32.616707, 14.848736>,  <29.854343, 32.265388, 14.925728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029408, 32.616707, 14.848736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285653, -0.067160, -0.955977,
		-0.852559, 0.473375, 0.221495,
		0.437659, 0.878297, -0.192479,
		30.160706, 32.880196, 14.790992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019180, 31.495073, 15.115839>,  <29.854343, 32.265388, 14.925728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019180, 31.495073, 15.115839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752377, 31.208410, 15.034351>,  <29.592295, 31.036413, 14.985458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752377, 31.208410, 15.034351>,  <30.019180, 31.495073, 15.115839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752377, 31.208410, 15.034351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213492, -0.078119, 0.973816,
		-0.713808, 0.693036, -0.100894,
		-0.667008, -0.716658, -0.203720,
		29.552275, 30.993412, 14.973235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442909, 31.692488, 15.435273>,  <30.019180, 31.495073, 15.115839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442909, 31.692488, 15.435273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.394999, 31.298954, 15.382028>,  <29.366251, 31.062834, 15.350080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.394999, 31.298954, 15.382028>,  <29.442909, 31.692488, 15.435273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394999, 31.298954, 15.382028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105488, -0.120709, 0.987067,
		-0.987181, 0.132271, -0.089325,
		-0.119778, -0.983836, -0.133115,
		29.359064, 31.003803, 15.342093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821049, 31.443542, 15.832152>,  <29.442909, 31.692488, 15.435273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821049, 31.443542, 15.832152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075293, 31.139292, 15.779309>,  <29.227839, 30.956741, 15.747603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075293, 31.139292, 15.779309>,  <28.821049, 31.443542, 15.832152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075293, 31.139292, 15.779309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073413, -0.229896, 0.970442,
		-0.768514, -0.607122, -0.201964,
		0.635608, -0.760625, -0.132108,
		29.265976, 30.911104, 15.739676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568342, 30.915974, 16.236658>,  <28.821049, 31.443542, 15.832152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568342, 30.915974, 16.236658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.932837, 30.781733, 16.141142>,  <29.151533, 30.701187, 16.083832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.932837, 30.781733, 16.141142>,  <28.568342, 30.915974, 16.236658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932837, 30.781733, 16.141142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191078, -0.169151, 0.966890,
		-0.364883, -0.926692, -0.090010,
		0.911235, -0.335603, -0.238791,
		29.206207, 30.681051, 16.069504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551006, 30.216379, 16.418915>,  <28.568342, 30.915974, 16.236658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551006, 30.216379, 16.418915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930859, 30.340910, 16.404617>,  <29.158770, 30.415628, 16.396038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930859, 30.340910, 16.404617>,  <28.551006, 30.216379, 16.418915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930859, 30.340910, 16.404617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109429, -0.222565, 0.968757,
		0.293644, -0.923873, -0.245422,
		0.949630, 0.311326, -0.035744,
		29.215748, 30.434307, 16.393894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979210, 29.662102, 16.764172>,  <28.551006, 30.216379, 16.418915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979210, 29.662102, 16.764172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.190950, 30.001091, 16.780056>,  <29.317995, 30.204485, 16.789587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.190950, 30.001091, 16.780056>,  <28.979210, 29.662102, 16.764172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190950, 30.001091, 16.780056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168971, -0.151181, 0.973957,
		0.831406, -0.508856, -0.223226,
		0.529352, 0.847473, 0.039711,
		29.349756, 30.255333, 16.791969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574923, 29.565269, 17.302128>,  <28.979210, 29.662102, 16.764172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574923, 29.565269, 17.302128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.596621, 29.959814, 17.239969>,  <29.609640, 30.196541, 17.202675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.596621, 29.959814, 17.239969>,  <29.574923, 29.565269, 17.302128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596621, 29.959814, 17.239969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139977, 0.146577, 0.979246,
		0.988668, -0.074873, -0.130116,
		0.054247, 0.986362, -0.155396,
		29.612894, 30.255722, 17.193350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179428, 29.791864, 17.683613>,  <29.574923, 29.565269, 17.302128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179428, 29.791864, 17.683613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.906416, 30.079048, 17.628929>,  <29.742609, 30.251358, 17.596119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.906416, 30.079048, 17.628929>,  <30.179428, 29.791864, 17.683613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906416, 30.079048, 17.628929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000334, 0.186748, 0.982408,
		0.730858, 0.670567, -0.127221,
		-0.682529, 0.717958, -0.136711,
		29.701656, 30.294436, 17.587915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913591, 29.813654, 17.619009>,  <30.179428, 29.791864, 17.683613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913591, 29.813654, 17.619009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.004576, 29.428585, 17.677689>,  <31.059166, 29.197544, 17.712896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.004576, 29.428585, 17.677689>,  <30.913591, 29.813654, 17.619009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004576, 29.428585, 17.677689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060497, -0.136389, -0.988806,
		0.971907, 0.233788, 0.027216,
		0.227459, -0.962674, 0.146701,
		31.072813, 29.139782, 17.721699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495775, 29.683159, 17.256124>,  <30.913591, 29.813654, 17.619009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495775, 29.683159, 17.256124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.377125, 29.305101, 17.310844>,  <31.305935, 29.078266, 17.343678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.377125, 29.305101, 17.310844>,  <31.495775, 29.683159, 17.256124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377125, 29.305101, 17.310844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210448, -0.204419, -0.955994,
		0.931517, -0.254783, 0.259540,
		-0.296626, -0.945144, 0.136801,
		31.288137, 29.021559, 17.351885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887318, 29.245029, 16.697453>,  <31.495775, 29.683159, 17.256124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887318, 29.245029, 16.697453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.610613, 28.981150, 16.814934>,  <31.444590, 28.822823, 16.885424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.610613, 28.981150, 16.814934>,  <31.887318, 29.245029, 16.697453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610613, 28.981150, 16.814934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055356, -0.357081, -0.932431,
		0.719999, -0.661280, 0.210497,
		-0.691763, -0.659698, 0.293704,
		31.403084, 28.783241, 16.903046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155163, 28.641279, 16.509092>,  <31.887318, 29.245029, 16.697453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155163, 28.641279, 16.509092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.758209, 28.597498, 16.531685>,  <31.520037, 28.571230, 16.545240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.758209, 28.597498, 16.531685>,  <32.155163, 28.641279, 16.509092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758209, 28.597498, 16.531685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010257, -0.383532, -0.923471,
		0.122739, -0.917019, 0.379489,
		-0.992386, -0.109453, 0.056480,
		31.460493, 28.564663, 16.548630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962133, 27.972172, 16.205614>,  <32.155163, 28.641279, 16.509092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962133, 27.972172, 16.205614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.609432, 28.160257, 16.190584>,  <31.397812, 28.273108, 16.181566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.609432, 28.160257, 16.190584>,  <31.962133, 27.972172, 16.205614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609432, 28.160257, 16.190584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178994, -0.407222, -0.895618,
		-0.436439, -0.782985, 0.443234,
		-0.881750, 0.470219, -0.037578,
		31.344906, 28.301321, 16.179312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380522, 27.461786, 16.041477>,  <31.962133, 27.972172, 16.205614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380522, 27.461786, 16.041477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.292135, 27.834976, 15.927823>,  <31.239103, 28.058889, 15.859631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.292135, 27.834976, 15.927823>,  <31.380522, 27.461786, 16.041477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292135, 27.834976, 15.927823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069176, -0.275609, -0.958777,
		-0.972825, -0.231511, -0.003640,
		-0.220964, 0.932975, -0.284135,
		31.225845, 28.114868, 15.842583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937757, 27.411318, 15.459393>,  <31.380522, 27.461786, 16.041477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937757, 27.411318, 15.459393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.061724, 27.790779, 15.434061>,  <31.136103, 28.018456, 15.418862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.061724, 27.790779, 15.434061>,  <30.937757, 27.411318, 15.459393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061724, 27.790779, 15.434061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033766, -0.077549, -0.996417,
		-0.950165, 0.306665, -0.056065,
		0.309914, 0.948653, -0.063329,
		31.154697, 28.075375, 15.415062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525433, 27.764420, 14.969320>,  <30.937757, 27.411318, 15.459393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525433, 27.764420, 14.969320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.860025, 27.982975, 14.986092>,  <31.060781, 28.114109, 14.996155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.860025, 27.982975, 14.986092>,  <30.525433, 27.764420, 14.969320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860025, 27.982975, 14.986092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100525, -0.077780, -0.991890,
		-0.538698, 0.833911, -0.119988,
		0.836480, 0.546391, 0.041928,
		31.110970, 28.146893, 14.998671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942902, 28.089413, 14.999514>,  <30.525433, 27.764420, 14.969320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942902, 28.089413, 14.999514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.717703, 28.162138, 15.321998>,  <29.582582, 28.205774, 15.515489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.717703, 28.162138, 15.321998>,  <29.942902, 28.089413, 14.999514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717703, 28.162138, 15.321998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483641, -0.863505, -0.143004,
		0.670166, -0.470428, 0.574086,
		-0.562999, 0.181815, 0.806210,
		29.548803, 28.216682, 15.563861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.959984, 30.113300, 29.985620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.352608, 30.176123, 29.942038>,  <32.588181, 30.213816, 29.915888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.352608, 30.176123, 29.942038>,  <31.959984, 30.113300, 29.985620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352608, 30.176123, 29.942038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047181, -0.353320, -0.934312,
		-0.185236, 0.922225, -0.339395,
		0.981561, 0.157055, -0.108959,
		32.647076, 30.223240, 29.909349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021313, 30.511707, 29.437050>,  <31.959984, 30.113300, 29.985620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021313, 30.511707, 29.437050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364441, 30.311804, 29.485027>,  <32.570316, 30.191862, 29.513813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364441, 30.311804, 29.485027>,  <32.021313, 30.511707, 29.437050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364441, 30.311804, 29.485027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132114, -0.439951, -0.888251,
		0.496682, 0.746112, -0.443423,
		0.857819, -0.499760, 0.119944,
		32.621788, 30.161877, 29.521011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397308, 30.683527, 28.915415>,  <32.021313, 30.511707, 29.437050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397308, 30.683527, 28.915415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568806, 30.338264, 29.022104>,  <32.671703, 30.131107, 29.086117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568806, 30.338264, 29.022104>,  <32.397308, 30.683527, 28.915415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568806, 30.338264, 29.022104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211932, -0.383090, -0.899070,
		0.878216, 0.328944, -0.347178,
		0.428744, -0.863156, 0.266722,
		32.697430, 30.079317, 29.102121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949280, 30.581802, 28.405487>,  <32.397308, 30.683527, 28.915415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949280, 30.581802, 28.405487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862282, 30.226280, 28.566839>,  <32.810081, 30.012966, 28.663651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862282, 30.226280, 28.566839>,  <32.949280, 30.581802, 28.405487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862282, 30.226280, 28.566839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242279, -0.351178, -0.904420,
		0.945514, -0.294439, -0.138959,
		-0.217497, -0.888808, 0.403380,
		32.797031, 29.959639, 28.687853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105560, 30.211119, 27.867153>,  <32.949280, 30.581802, 28.405487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105560, 30.211119, 27.867153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892494, 29.961496, 28.095827>,  <32.764656, 29.811724, 28.233032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892494, 29.961496, 28.095827>,  <33.105560, 30.211119, 27.867153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892494, 29.961496, 28.095827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301331, -0.491382, -0.817156,
		0.790868, -0.607533, 0.073693,
		-0.532661, -0.624057, 0.571687,
		32.732697, 29.774279, 28.267334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184967, 29.586996, 27.543938>,  <33.105560, 30.211119, 27.867153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184967, 29.586996, 27.543938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860958, 29.513988, 27.766846>,  <32.666553, 29.470184, 27.900591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860958, 29.513988, 27.766846>,  <33.184967, 29.586996, 27.543938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860958, 29.513988, 27.766846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455630, -0.402339, -0.794056,
		0.369141, -0.897113, 0.242742,
		-0.810022, -0.182518, 0.557271,
		32.617950, 29.459232, 27.934027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021198, 28.844660, 27.461567>,  <33.184967, 29.586996, 27.543938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021198, 28.844660, 27.461567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.700760, 29.041880, 27.597303>,  <32.508499, 29.160212, 27.678745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.700760, 29.041880, 27.597303>,  <33.021198, 28.844660, 27.461567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700760, 29.041880, 27.597303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566952, -0.443333, -0.694277,
		-0.191874, -0.748570, 0.634687,
		-0.801093, 0.493051, 0.339339,
		32.460434, 29.189795, 27.699104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509438, 28.357252, 27.650122>,  <33.021198, 28.844660, 27.461567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509438, 28.357252, 27.650122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.284370, 28.686100, 27.615421>,  <32.149330, 28.883410, 27.594601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.284370, 28.686100, 27.615421>,  <32.509438, 28.357252, 27.650122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284370, 28.686100, 27.615421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723447, -0.540460, -0.429567,
		-0.400041, -0.178942, 0.898858,
		-0.562664, 0.822121, -0.086751,
		32.115570, 28.932735, 27.589396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862473, 28.185192, 27.839216>,  <32.509438, 28.357252, 27.650122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862473, 28.185192, 27.839216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.815916, 28.498964, 27.595537>,  <31.787983, 28.687227, 27.449329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.815916, 28.498964, 27.595537>,  <31.862473, 28.185192, 27.839216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815916, 28.498964, 27.595537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737608, -0.479021, -0.475891,
		-0.665122, 0.393959, 0.634357,
		-0.116389, 0.784433, -0.609196,
		31.781000, 28.734295, 27.412779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220997, 28.080545, 27.647215>,  <31.862473, 28.185192, 27.839216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220997, 28.080545, 27.647215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.369257, 28.330057, 27.371964>,  <31.458214, 28.479763, 27.206814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.369257, 28.330057, 27.371964>,  <31.220997, 28.080545, 27.647215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369257, 28.330057, 27.371964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391869, -0.566691, -0.724776,
		-0.842054, 0.538295, 0.034394,
		0.370652, 0.623778, -0.688126,
		31.480453, 28.517191, 27.165525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654114, 28.320551, 27.224562>,  <31.220997, 28.080545, 27.647215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654114, 28.320551, 27.224562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.980682, 28.413321, 27.013027>,  <31.176624, 28.468983, 26.886106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.980682, 28.413321, 27.013027>,  <30.654114, 28.320551, 27.224562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980682, 28.413321, 27.013027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441808, -0.338825, -0.830664,
		-0.371835, 0.911816, -0.174157,
		0.816421, 0.231926, -0.528835,
		31.225609, 28.482899, 26.854376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504219, 28.765676, 26.668674>,  <30.654114, 28.320551, 27.224562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504219, 28.765676, 26.668674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.841364, 28.604984, 26.525455>,  <31.043650, 28.508568, 26.439524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.841364, 28.604984, 26.525455>,  <30.504219, 28.765676, 26.668674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841364, 28.604984, 26.525455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488076, -0.290469, -0.823049,
		0.226644, 0.868470, -0.440900,
		0.842861, -0.401732, -0.358046,
		31.094223, 28.484465, 26.418041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980520, 29.373695, 26.291708>,  <30.504219, 28.765676, 26.668674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980520, 29.373695, 26.291708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.581676, 29.367027, 26.262047>,  <30.342371, 29.363028, 26.244249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.581676, 29.367027, 26.262047>,  <30.980520, 29.373695, 26.291708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581676, 29.367027, 26.262047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074198, 0.424979, 0.902157,
		0.016476, 0.905050, -0.424986,
		-0.997107, -0.016669, -0.074155,
		30.282545, 29.362026, 26.239799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758944, 29.985332, 26.639729>,  <30.980520, 29.373695, 26.291708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758944, 29.985332, 26.639729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.424200, 29.766470, 26.646503>,  <30.223354, 29.635153, 26.650568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.424200, 29.766470, 26.646503>,  <30.758944, 29.985332, 26.639729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424200, 29.766470, 26.646503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236205, 0.388832, 0.890515,
		-0.493835, 0.741236, -0.454639,
		-0.836860, -0.547155, 0.016935,
		30.173141, 29.602324, 26.651585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170219, 30.456461, 26.838320>,  <30.758944, 29.985332, 26.639729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170219, 30.456461, 26.838320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.094372, 30.080114, 26.950617>,  <30.048862, 29.854307, 27.017994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.094372, 30.080114, 26.950617>,  <30.170219, 30.456461, 26.838320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094372, 30.080114, 26.950617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249300, 0.322694, 0.913082,
		-0.949681, 0.103148, -0.295746,
		-0.189618, -0.940866, 0.280741,
		30.037487, 29.797855, 27.034840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633768, 30.457430, 27.245670>,  <30.170219, 30.456461, 26.838320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633768, 30.457430, 27.245670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.707726, 30.079969, 27.355457>,  <29.752100, 29.853493, 27.421329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.707726, 30.079969, 27.355457>,  <29.633768, 30.457430, 27.245670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707726, 30.079969, 27.355457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426562, 0.174545, 0.887456,
		-0.885358, -0.281163, -0.370254,
		0.184894, -0.943653, 0.274469,
		29.763193, 29.796873, 27.437798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980330, 30.217310, 27.539154>,  <29.633768, 30.457430, 27.245670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980330, 30.217310, 27.539154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.258333, 29.952337, 27.650970>,  <29.425137, 29.793354, 27.718060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.258333, 29.952337, 27.650970>,  <28.980330, 30.217310, 27.539154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258333, 29.952337, 27.650970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431107, -0.072788, 0.899360,
		-0.575419, -0.745577, -0.336168,
		0.695011, -0.662433, 0.279540,
		29.466837, 29.753607, 27.734833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624329, 29.887297, 28.019623>,  <28.980330, 30.217310, 27.539154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624329, 29.887297, 28.019623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.005232, 29.798975, 28.103958>,  <29.233774, 29.745983, 28.154558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.005232, 29.798975, 28.103958>,  <28.624329, 29.887297, 28.019623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005232, 29.798975, 28.103958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205308, 0.047966, 0.977521,
		-0.225953, -0.974138, 0.000343,
		0.952257, -0.220803, 0.210836,
		29.290909, 29.732735, 28.167210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629860, 29.502554, 28.526890>,  <28.624329, 29.887297, 28.019623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629860, 29.502554, 28.526890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.007078, 29.623934, 28.581425>,  <29.233408, 29.696762, 28.614145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.007078, 29.623934, 28.581425>,  <28.629860, 29.502554, 28.526890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007078, 29.623934, 28.581425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163830, 0.066948, 0.984214,
		0.289531, -0.950493, 0.112849,
		0.943044, 0.303449, 0.136335,
		29.289991, 29.714968, 28.622326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677137, 29.332664, 29.290876>,  <28.629860, 29.502554, 28.526890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677137, 29.332664, 29.290876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.968672, 29.586981, 29.189238>,  <29.143593, 29.739571, 29.128254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.968672, 29.586981, 29.189238>,  <28.677137, 29.332664, 29.290876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968672, 29.586981, 29.189238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031183, 0.401554, 0.915304,
		0.683977, -0.659184, 0.312493,
		0.728836, 0.635792, -0.254099,
		29.187323, 29.777718, 29.113008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202158, 29.310501, 29.849337>,  <28.677137, 29.332664, 29.290876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202158, 29.310501, 29.849337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.262785, 29.673206, 29.691952>,  <29.299162, 29.890829, 29.597521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.262785, 29.673206, 29.691952>,  <29.202158, 29.310501, 29.849337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262785, 29.673206, 29.691952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145106, 0.373336, 0.916278,
		0.977738, -0.195972, -0.074990,
		0.151568, 0.906761, -0.393461,
		29.308256, 29.945234, 29.573914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615257, 29.617579, 30.301392>,  <29.202158, 29.310501, 29.849337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615257, 29.617579, 30.301392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.505493, 29.931993, 30.079819>,  <29.439634, 30.120644, 29.946875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.505493, 29.931993, 30.079819>,  <29.615257, 29.617579, 30.301392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505493, 29.931993, 30.079819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031301, 0.583041, 0.811840,
		0.961103, 0.205440, -0.184597,
		-0.274412, 0.786039, -0.553932,
		29.423170, 30.167805, 29.913639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193779, 30.147778, 30.198698>,  <29.615257, 29.617579, 30.301392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193779, 30.147778, 30.198698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.866592, 30.365858, 30.125278>,  <29.670280, 30.496706, 30.081226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.866592, 30.365858, 30.125278>,  <30.193779, 30.147778, 30.198698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866592, 30.365858, 30.125278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253583, 0.628111, 0.735644,
		0.516362, 0.555187, -0.652026,
		-0.817965, 0.545201, -0.183547,
		29.621202, 30.529419, 30.070215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421772, 30.913216, 30.257427>,  <30.193779, 30.147778, 30.198698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421772, 30.913216, 30.257427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.022057, 30.905323, 30.270309>,  <29.782228, 30.900587, 30.278038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.022057, 30.905323, 30.270309>,  <30.421772, 30.913216, 30.257427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022057, 30.905323, 30.270309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014100, 0.596092, 0.802792,
		-0.035038, 0.802673, -0.595389,
		-0.999286, -0.019733, 0.032204,
		29.722271, 30.899403, 30.279970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287718, 31.596161, 30.454151>,  <30.421772, 30.913216, 30.257427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287718, 31.596161, 30.454151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.993494, 31.353733, 30.575235>,  <29.816959, 31.208277, 30.647886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.993494, 31.353733, 30.575235>,  <30.287718, 31.596161, 30.454151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993494, 31.353733, 30.575235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047234, 0.491626, 0.869525,
		-0.675811, 0.625289, -0.390247,
		-0.735560, -0.606067, 0.302712,
		29.772825, 31.171913, 30.666048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851212, 32.015781, 30.744217>,  <30.287718, 31.596161, 30.454151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851212, 32.015781, 30.744217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.702007, 31.675737, 30.892908>,  <29.612486, 31.471712, 30.982122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.702007, 31.675737, 30.892908>,  <29.851212, 32.015781, 30.744217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702007, 31.675737, 30.892908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189900, 0.462113, 0.866250,
		-0.908186, 0.252527, -0.333807,
		-0.373009, -0.850107, 0.371730,
		29.590105, 31.420706, 31.004427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168417, 32.151253, 31.038883>,  <29.851212, 32.015781, 30.744217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168417, 32.151253, 31.038883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.306839, 31.836109, 31.242657>,  <29.389893, 31.647022, 31.364922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.306839, 31.836109, 31.242657>,  <29.168417, 32.151253, 31.038883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306839, 31.836109, 31.242657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293454, 0.424848, 0.856381,
		-0.891141, -0.445850, -0.084180,
		0.346054, -0.787859, 0.509436,
		29.410656, 31.599752, 31.395487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328327, 32.336834, 30.283236>,  <29.168417, 32.151253, 31.038883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328327, 32.336834, 30.283236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.606403, 32.613201, 30.362577>,  <29.773249, 32.779022, 30.410183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.606403, 32.613201, 30.362577>,  <29.328327, 32.336834, 30.283236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606403, 32.613201, 30.362577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078146, 0.201667, -0.976332,
		-0.714567, 0.694236, 0.086204,
		0.695189, 0.690917, 0.198357,
		29.814960, 32.820477, 30.422085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069860, 33.039391, 30.056873>,  <29.328327, 32.336834, 30.283236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069860, 33.039391, 30.056873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.469498, 33.032120, 30.041460>,  <29.709280, 33.027756, 30.032211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.469498, 33.032120, 30.041460>,  <29.069860, 33.039391, 30.056873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469498, 33.032120, 30.041460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034035, 0.203519, -0.978479,
		0.025631, 0.978902, 0.202715,
		0.999092, -0.018180, -0.038534,
		29.769226, 33.026665, 30.029900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376265, 33.661297, 29.698366>,  <29.069860, 33.039391, 30.056873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376265, 33.661297, 29.698366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.634546, 33.359097, 29.654030>,  <29.789516, 33.177776, 29.627428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.634546, 33.359097, 29.654030>,  <29.376265, 33.661297, 29.698366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634546, 33.359097, 29.654030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071955, 0.204717, -0.976173,
		0.760188, 0.622345, 0.186549,
		0.645706, -0.755498, -0.110843,
		29.828259, 33.132446, 29.620777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742805, 33.849834, 29.071697>,  <29.376265, 33.661297, 29.698366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742805, 33.849834, 29.071697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.806288, 33.459839, 29.133938>,  <29.844378, 33.225842, 29.171282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.806288, 33.459839, 29.133938>,  <29.742805, 33.849834, 29.071697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806288, 33.459839, 29.133938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157882, -0.130510, -0.978795,
		0.974621, 0.179908, 0.133220,
		0.158706, -0.974987, 0.155602,
		29.853899, 33.167343, 29.180618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411375, 33.778416, 28.872622>,  <29.742805, 33.849834, 29.071697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411375, 33.778416, 28.872622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.196114, 33.443932, 28.830408>,  <30.066957, 33.243240, 28.805080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.196114, 33.443932, 28.830408>,  <30.411375, 33.778416, 28.872622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196114, 33.443932, 28.830408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274240, -0.055327, -0.960068,
		0.796985, -0.545604, 0.259098,
		-0.538153, -0.836215, -0.105531,
		30.034668, 33.193066, 28.798748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873884, 33.303741, 28.510921>,  <30.411375, 33.778416, 28.872622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873884, 33.303741, 28.510921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.497545, 33.186031, 28.443743>,  <30.271742, 33.115406, 28.403437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.497545, 33.186031, 28.443743>,  <30.873884, 33.303741, 28.510921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497545, 33.186031, 28.443743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199609, -0.080873, -0.976533,
		0.273786, -0.952294, 0.134829,
		-0.940849, -0.294274, -0.167944,
		30.215290, 33.097748, 28.393360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959692, 32.983101, 27.918400>,  <30.873884, 33.303741, 28.510921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959692, 32.983101, 27.918400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.560341, 32.995293, 27.937641>,  <30.320730, 33.002609, 27.949186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.560341, 32.995293, 27.937641>,  <30.959692, 32.983101, 27.918400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560341, 32.995293, 27.937641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047925, 0.006610, -0.998829,
		-0.030774, -0.999513, -0.005137,
		-0.998377, 0.030491, 0.048105,
		30.260828, 33.004436, 27.952072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800444, 32.516663, 27.433939>,  <30.959692, 32.983101, 27.918400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800444, 32.516663, 27.433939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.459276, 32.722176, 27.470947>,  <30.254576, 32.845482, 27.493153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.459276, 32.722176, 27.470947>,  <30.800444, 32.516663, 27.433939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459276, 32.722176, 27.470947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097474, 0.017377, -0.995086,
		-0.512866, -0.857744, 0.035259,
		-0.852917, 0.513783, 0.092520,
		30.203402, 32.876312, 27.498703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402439, 32.149136, 27.048136>,  <30.800444, 32.516663, 27.433939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402439, 32.149136, 27.048136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.213274, 32.499756, 27.083948>,  <30.099775, 32.710129, 27.105434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.213274, 32.499756, 27.083948>,  <30.402439, 32.149136, 27.048136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213274, 32.499756, 27.083948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261052, -0.042340, -0.964396,
		-0.841549, -0.479448, 0.248847,
		-0.472914, 0.876548, 0.089530,
		30.071400, 32.762722, 27.110807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614634, 32.073494, 26.752068>,  <30.402439, 32.149136, 27.048136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614634, 32.073494, 26.752068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.728184, 32.456970, 26.759346>,  <29.796314, 32.687057, 26.763714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.728184, 32.456970, 26.759346>,  <29.614634, 32.073494, 26.752068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728184, 32.456970, 26.759346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113944, 0.052572, -0.992095,
		-0.952067, 0.279556, 0.124161,
		0.283873, 0.958689, 0.018198,
		29.813345, 32.744576, 26.764805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137379, 32.354496, 26.238640>,  <29.614634, 32.073494, 26.752068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137379, 32.354496, 26.238640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.441666, 32.611328, 26.276693>,  <29.624237, 32.765427, 26.299524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.441666, 32.611328, 26.276693>,  <29.137379, 32.354496, 26.238640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441666, 32.611328, 26.276693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062995, 0.218904, -0.973711,
		-0.646022, 0.734724, 0.206971,
		0.760715, 0.642077, 0.095132,
		29.669880, 32.803951, 26.305233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847759, 33.021214, 25.982725>,  <29.137379, 32.354496, 26.238640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847759, 33.021214, 25.982725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.247602, 33.012093, 25.976202>,  <29.487509, 33.006618, 25.972288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.247602, 33.012093, 25.976202>,  <28.847759, 33.021214, 25.982725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247602, 33.012093, 25.976202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011828, 0.184315, -0.982796,
		0.025419, 0.982603, 0.183973,
		0.999607, -0.022806, -0.016307,
		29.547485, 33.005253, 25.971310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048580, 33.645931, 25.717667>,  <28.847759, 33.021214, 25.982725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048580, 33.645931, 25.717667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.332632, 33.368053, 25.671852>,  <29.503063, 33.201328, 25.644363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.332632, 33.368053, 25.671852>,  <29.048580, 33.645931, 25.717667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332632, 33.368053, 25.671852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093326, 0.254116, -0.962661,
		0.697860, 0.672923, 0.245288,
		0.710128, -0.694694, -0.114536,
		29.545670, 33.159645, 25.637491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429291, 34.048183, 25.320824>,  <29.048580, 33.645931, 25.717667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429291, 34.048183, 25.320824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.568897, 33.675114, 25.284374>,  <29.652662, 33.451271, 25.262505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.568897, 33.675114, 25.284374>,  <29.429291, 34.048183, 25.320824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568897, 33.675114, 25.284374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132376, 0.145332, -0.980487,
		0.927719, 0.330145, 0.174187,
		0.349017, -0.932675, -0.091124,
		29.673603, 33.395309, 25.257036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039381, 34.056004, 24.921839>,  <29.429291, 34.048183, 25.320824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039381, 34.056004, 24.921839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.940113, 33.671959, 24.870312>,  <29.880552, 33.441532, 24.839396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.940113, 33.671959, 24.870312>,  <30.039381, 34.056004, 24.921839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940113, 33.671959, 24.870312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313479, 0.046227, -0.948469,
		0.916593, -0.275761, 0.289503,
		-0.248168, -0.960114, -0.128817,
		29.865664, 33.383926, 24.831667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533287, 33.857864, 24.506907>,  <30.039381, 34.056004, 24.921839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533287, 33.857864, 24.506907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.269024, 33.558781, 24.480192>,  <30.110466, 33.379330, 24.464163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.269024, 33.558781, 24.480192>,  <30.533287, 33.857864, 24.506907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269024, 33.558781, 24.480192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205075, -0.094183, -0.974204,
		0.722134, -0.657310, 0.215560,
		-0.660657, -0.747712, -0.066785,
		30.070827, 33.334469, 24.460157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843668, 33.283401, 24.230545>,  <30.533287, 33.857864, 24.506907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843668, 33.283401, 24.230545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.454828, 33.257378, 24.140400>,  <30.221523, 33.241764, 24.086313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.454828, 33.257378, 24.140400>,  <30.843668, 33.283401, 24.230545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454828, 33.257378, 24.140400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234559, -0.276397, -0.931980,
		-0.001658, -0.958839, 0.283945,
		-0.972100, -0.065056, -0.225363,
		30.163198, 33.237862, 24.072790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770630, 32.708534, 23.839769>,  <30.843668, 33.283401, 24.230545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770630, 32.708534, 23.839769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.430267, 32.902485, 23.758924>,  <30.226049, 33.018856, 23.710417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.430267, 32.902485, 23.758924>,  <30.770630, 32.708534, 23.839769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430267, 32.902485, 23.758924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089714, -0.244964, -0.965373,
		-0.517597, -0.839576, 0.164942,
		-0.850908, 0.484877, -0.202114,
		30.174995, 33.047947, 23.698290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396717, 32.214291, 23.463051>,  <30.770630, 32.708534, 23.839769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396717, 32.214291, 23.463051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.258291, 32.579338, 23.375998>,  <30.175236, 32.798367, 23.323765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.258291, 32.579338, 23.375998>,  <30.396717, 32.214291, 23.463051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258291, 32.579338, 23.375998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170319, -0.167002, -0.971134,
		-0.922621, -0.373142, -0.097643,
		-0.346065, 0.912620, -0.217633,
		30.154472, 32.853123, 23.310707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906675, 32.192688, 22.783644>,  <30.396717, 32.214291, 23.463051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906675, 32.192688, 22.783644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.016987, 32.576847, 22.799597>,  <30.083174, 32.807343, 22.809168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.016987, 32.576847, 22.799597>,  <29.906675, 32.192688, 22.783644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016987, 32.576847, 22.799597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032508, 0.032147, -0.998954,
		-0.960671, 0.276786, -0.022355,
		0.275778, 0.960394, 0.039880,
		30.099720, 32.864964, 22.811562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415159, 32.567722, 22.216089>,  <29.906675, 32.192688, 22.783644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415159, 32.567722, 22.216089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.733118, 32.803402, 22.274031>,  <29.923893, 32.944809, 22.308796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.733118, 32.803402, 22.274031>,  <29.415159, 32.567722, 22.216089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733118, 32.803402, 22.274031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157643, 0.029985, -0.987041,
		-0.585905, 0.807433, -0.069048,
		0.794899, 0.589197, 0.144855,
		29.971588, 32.980160, 22.317488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321163, 33.167282, 21.732569>,  <29.415159, 32.567722, 22.216089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321163, 33.167282, 21.732569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.709900, 33.147217, 21.824659>,  <29.943142, 33.135178, 21.879913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.709900, 33.147217, 21.824659>,  <29.321163, 33.167282, 21.732569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709900, 33.147217, 21.824659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234791, 0.123805, -0.964130,
		0.019856, 0.991038, 0.132096,
		0.971843, -0.050159, 0.230228,
		30.001453, 33.132168, 21.893728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668114, 33.535824, 21.267458>,  <29.321163, 33.167282, 21.732569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668114, 33.535824, 21.267458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.998732, 33.371410, 21.421278>,  <30.197102, 33.272762, 21.513569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.998732, 33.371410, 21.421278>,  <29.668114, 33.535824, 21.267458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998732, 33.371410, 21.421278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444706, 0.058053, -0.893793,
		0.345055, 0.909770, 0.230772,
		0.826543, -0.411034, 0.384549,
		30.246695, 33.248100, 21.536642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200792, 34.011009, 21.071056>,  <29.668114, 33.535824, 21.267458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200792, 34.011009, 21.071056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.381756, 33.659763, 21.133343>,  <30.490334, 33.449017, 21.170713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.381756, 33.659763, 21.133343>,  <30.200792, 34.011009, 21.071056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381756, 33.659763, 21.133343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458216, 0.079085, -0.885316,
		0.765091, 0.471875, 0.438143,
		0.452409, -0.878111, 0.155714,
		30.517479, 33.396332, 21.180058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852009, 34.098339, 20.849358>,  <30.200792, 34.011009, 21.071056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852009, 34.098339, 20.849358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.784714, 33.704273, 20.862921>,  <30.744337, 33.467834, 20.871059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.784714, 33.704273, 20.862921>,  <30.852009, 34.098339, 20.849358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784714, 33.704273, 20.862921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379012, -0.096402, -0.920357,
		0.909970, -0.141987, 0.389607,
		-0.168238, -0.985163, 0.033908,
		30.734243, 33.408726, 20.873093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490475, 33.838715, 20.500504>,  <30.852009, 34.098339, 20.849358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490475, 33.838715, 20.500504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.201605, 33.563354, 20.473457>,  <31.028284, 33.398140, 20.457230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.201605, 33.563354, 20.473457>,  <31.490475, 33.838715, 20.500504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201605, 33.563354, 20.473457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206005, -0.120731, -0.971075,
		0.660324, -0.715213, 0.229003,
		-0.722173, -0.688400, -0.067616,
		30.984953, 33.356834, 20.453173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795282, 33.165123, 20.151741>,  <31.490475, 33.838715, 20.500504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795282, 33.165123, 20.151741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.399328, 33.143559, 20.099253>,  <31.161757, 33.130619, 20.067760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.399328, 33.143559, 20.099253>,  <31.795282, 33.165123, 20.151741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399328, 33.143559, 20.099253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137709, -0.142941, -0.980104,
		0.034083, -0.988262, 0.148919,
		-0.989886, -0.053913, -0.131221,
		31.102362, 33.127384, 20.059887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303020, 32.626427, 20.204636>,  <31.795282, 33.165123, 20.151741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303020, 32.626427, 20.204636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.654930, 32.814857, 20.179096>,  <32.866077, 32.927917, 20.163773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.654930, 32.814857, 20.179096>,  <32.303020, 32.626427, 20.204636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654930, 32.814857, 20.179096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148212, 0.399425, 0.904706,
		0.451691, -0.786476, 0.421225,
		0.879777, 0.471078, -0.063851,
		32.918865, 32.956181, 20.159941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735931, 32.462116, 20.798882>,  <32.303020, 32.626427, 20.204636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735931, 32.462116, 20.798882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915012, 32.789764, 20.655432>,  <33.022461, 32.986351, 20.569363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915012, 32.789764, 20.655432>,  <32.735931, 32.462116, 20.798882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915012, 32.789764, 20.655432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187023, 0.306414, 0.933345,
		0.874406, -0.484930, -0.016012,
		0.447701, 0.819117, -0.358624,
		33.049324, 33.035500, 20.547844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412823, 32.546814, 21.201473>,  <32.735931, 32.462116, 20.798882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412823, 32.546814, 21.201473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.349365, 32.896519, 21.017952>,  <33.311291, 33.106342, 20.907839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.349365, 32.896519, 21.017952>,  <33.412823, 32.546814, 21.201473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349365, 32.896519, 21.017952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211860, 0.484006, 0.849030,
		0.964337, 0.037495, -0.262008,
		-0.158648, 0.874261, -0.458802,
		33.301769, 33.158798, 20.880312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128391, 32.946239, 21.242662>,  <33.412823, 32.546814, 21.201473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128391, 32.946239, 21.242662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803856, 33.178234, 21.213432>,  <33.609135, 33.317432, 21.195894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.803856, 33.178234, 21.213432>,  <34.128391, 32.946239, 21.242662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803856, 33.178234, 21.213432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258097, 0.467569, 0.845438,
		0.524511, 0.667078, -0.529051,
		-0.811341, 0.579988, -0.073074,
		33.560455, 33.352230, 21.191509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364777, 33.566242, 21.494770>,  <34.128391, 32.946239, 21.242662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364777, 33.566242, 21.494770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966736, 33.605217, 21.501419>,  <33.727913, 33.628601, 21.505409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966736, 33.605217, 21.501419>,  <34.364777, 33.566242, 21.494770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966736, 33.605217, 21.501419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057687, 0.435910, 0.898139,
		0.080264, 0.894700, -0.439396,
		-0.995103, 0.097436, 0.016625,
		33.668205, 33.634449, 21.506407>
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
