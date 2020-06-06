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
	<24.107977, 34.941708, 35.530411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.315905, 34.975452, 35.190369>,  <24.440660, 34.995697, 34.986343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.315905, 34.975452, 35.190369>,  <24.107977, 34.941708, 35.530411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.315905, 34.975452, 35.190369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614595, 0.654236, 0.440735,
		0.593347, -0.751571, 0.288238,
		0.519820, 0.084359, -0.850101,
		24.471851, 35.000759, 34.935337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.635073, 35.494972, 35.719788>,  <24.107977, 34.941708, 35.530411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.635073, 35.494972, 35.719788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677738, 35.470901, 35.322800>,  <24.703337, 35.456459, 35.084606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677738, 35.470901, 35.322800>,  <24.635073, 35.494972, 35.719788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.677738, 35.470901, 35.322800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620514, 0.783962, 0.019150,
		0.776908, -0.617886, 0.120963,
		0.106663, -0.060181, -0.992472,
		24.709738, 35.452847, 35.025059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.213646, 35.683510, 36.216076>,  <24.635073, 35.494972, 35.719788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.213646, 35.683510, 36.216076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178650, 35.640797, 36.612247>,  <25.157652, 35.615170, 36.849949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178650, 35.640797, 36.612247>,  <25.213646, 35.683510, 36.216076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178650, 35.640797, 36.612247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509221, -0.859315, -0.047666,
		0.856177, 0.500175, 0.129558,
		-0.087490, -0.106784, 0.990426,
		25.152403, 35.608761, 36.909374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938864, 35.663834, 36.509239>,  <25.213646, 35.683510, 36.216076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938864, 35.663834, 36.509239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647844, 35.476597, 36.709866>,  <25.473232, 35.364254, 36.830242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647844, 35.476597, 36.709866>,  <25.938864, 35.663834, 36.509239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647844, 35.476597, 36.709866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455698, -0.876228, -0.156728,
		0.512847, 0.114534, 0.850806,
		-0.727549, -0.468088, 0.501564,
		25.429579, 35.336170, 36.860336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284212, 35.965057, 35.887413>,  <25.938864, 35.663834, 36.509239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284212, 35.965057, 35.887413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326065, 36.137505, 35.528931>,  <26.351177, 36.240974, 35.313839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326065, 36.137505, 35.528931>,  <26.284212, 35.965057, 35.887413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326065, 36.137505, 35.528931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448715, -0.824680, -0.344323,
		-0.887529, -0.366116, -0.279736,
		0.104631, 0.431118, -0.896209,
		26.357454, 36.266838, 35.260067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225105, 35.486118, 35.394821>,  <26.284212, 35.965057, 35.887413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225105, 35.486118, 35.394821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430435, 35.769897, 35.201664>,  <26.553633, 35.940163, 35.085770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430435, 35.769897, 35.201664>,  <26.225105, 35.486118, 35.394821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430435, 35.769897, 35.201664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500185, -0.704560, -0.503398,
		-0.697361, 0.016870, -0.716522,
		0.513325, 0.709444, -0.482895,
		26.584433, 35.982731, 35.056797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116358, 35.446510, 34.686974>,  <26.225105, 35.486118, 35.394821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116358, 35.446510, 34.686974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478720, 35.592094, 34.773571>,  <26.696136, 35.679443, 34.825531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478720, 35.592094, 34.773571>,  <26.116358, 35.446510, 34.686974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478720, 35.592094, 34.773571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418510, -0.691295, -0.589034,
		-0.064722, 0.624214, -0.778567,
		0.905903, 0.363962, 0.216498,
		26.750490, 35.701283, 34.838520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504570, 35.515545, 34.059116>,  <26.116358, 35.446510, 34.686974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504570, 35.515545, 34.059116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754557, 35.482525, 34.369625>,  <26.904549, 35.462715, 34.555931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754557, 35.482525, 34.369625>,  <26.504570, 35.515545, 34.059116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754557, 35.482525, 34.369625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387197, -0.830682, -0.400058,
		0.677863, 0.550593, -0.487185,
		0.624965, -0.082548, 0.776276,
		26.942045, 35.457760, 34.602509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180241, 35.581451, 33.774563>,  <26.504570, 35.515545, 34.059116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180241, 35.581451, 33.774563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246658, 35.383881, 34.115963>,  <27.286509, 35.265339, 34.320805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.246658, 35.383881, 34.115963>,  <27.180241, 35.581451, 33.774563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246658, 35.383881, 34.115963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678186, -0.571135, -0.462459,
		0.715885, 0.655622, 0.240141,
		0.166046, -0.493928, 0.853501,
		27.296473, 35.235703, 34.372013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869455, 35.440987, 33.846264>,  <27.180241, 35.581451, 33.774563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869455, 35.440987, 33.846264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723225, 35.190712, 34.121910>,  <27.635487, 35.040546, 34.287296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723225, 35.190712, 34.121910>,  <27.869455, 35.440987, 33.846264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723225, 35.190712, 34.121910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642432, -0.705347, -0.299611,
		0.673525, 0.333177, 0.659816,
		-0.365575, -0.625682, 0.689113,
		27.613552, 35.003006, 34.328644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404512, 35.119267, 34.278877>,  <27.869455, 35.440987, 33.846264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404512, 35.119267, 34.278877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118134, 34.844093, 34.326488>,  <27.946306, 34.678989, 34.355053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.118134, 34.844093, 34.326488>,  <28.404512, 35.119267, 34.278877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118134, 34.844093, 34.326488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679182, -0.725771, -0.109397,
		0.161644, 0.002518, 0.986846,
		-0.715949, -0.687932, 0.119026,
		27.903349, 34.637714, 34.362198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699427, 34.681797, 34.631199>,  <28.404512, 35.119267, 34.278877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699427, 34.681797, 34.631199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391685, 34.458889, 34.506268>,  <28.207041, 34.325146, 34.431309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.391685, 34.458889, 34.506268>,  <28.699427, 34.681797, 34.631199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391685, 34.458889, 34.506268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632668, -0.732369, -0.251727,
		-0.088457, -0.391264, 0.916017,
		-0.769354, -0.557268, -0.312324,
		28.160879, 34.291710, 34.412571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678827, 34.028763, 35.030006>,  <28.699427, 34.681797, 34.631199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678827, 34.028763, 35.030006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462204, 33.934361, 34.707264>,  <28.332230, 33.877720, 34.513618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462204, 33.934361, 34.707264>,  <28.678827, 34.028763, 35.030006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462204, 33.934361, 34.707264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542585, -0.831234, -0.121041,
		-0.642118, -0.503338, 0.578218,
		-0.541559, -0.236010, -0.806854,
		28.299736, 33.863556, 34.465206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688555, 33.233559, 34.973522>,  <28.678827, 34.028763, 35.030006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688555, 33.233559, 34.973522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556002, 33.334671, 34.609921>,  <28.476469, 33.395340, 34.391758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556002, 33.334671, 34.609921>,  <28.688555, 33.233559, 34.973522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556002, 33.334671, 34.609921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407396, -0.830660, -0.379516,
		-0.851008, -0.496089, 0.172282,
		-0.331381, 0.252784, -0.909003,
		28.456587, 33.410507, 34.337219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187031, 32.756626, 34.769722>,  <28.688555, 33.233559, 34.973522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187031, 32.756626, 34.769722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335945, 32.904221, 34.429073>,  <28.425293, 32.992779, 34.224686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335945, 32.904221, 34.429073>,  <28.187031, 32.756626, 34.769722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335945, 32.904221, 34.429073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202461, -0.927763, -0.313474,
		-0.905767, -0.055718, -0.420096,
		0.372284, 0.368987, -0.851618,
		28.447630, 33.014915, 34.173588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787123, 32.408962, 34.270821>,  <28.187031, 32.756626, 34.769722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787123, 32.408962, 34.270821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124750, 32.531075, 34.094482>,  <28.327328, 32.604343, 33.988678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124750, 32.531075, 34.094482>,  <27.787123, 32.408962, 34.270821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124750, 32.531075, 34.094482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101733, -0.898359, -0.427320,
		-0.526494, 0.315839, -0.789335,
		0.844070, 0.305282, -0.440849,
		28.377972, 32.622658, 33.962227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924747, 32.008900, 33.685978>,  <27.787123, 32.408962, 34.270821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924747, 32.008900, 33.685978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279951, 32.188526, 33.646423>,  <28.493073, 32.296303, 33.622692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279951, 32.188526, 33.646423>,  <27.924747, 32.008900, 33.685978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279951, 32.188526, 33.646423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404319, -0.864975, -0.297229,
		-0.219010, 0.223961, -0.949672,
		0.888009, 0.449066, -0.098887,
		28.546354, 32.323246, 33.616756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255184, 31.877026, 32.993427>,  <27.924747, 32.008900, 33.685978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255184, 31.877026, 32.993427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556068, 31.969429, 33.240265>,  <28.736599, 32.024872, 33.388367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556068, 31.969429, 33.240265>,  <28.255184, 31.877026, 32.993427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556068, 31.969429, 33.240265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484135, -0.829058, -0.279780,
		0.446978, 0.509213, -0.735468,
		0.752213, 0.231010, 0.617098,
		28.781733, 32.038731, 33.425396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930622, 31.754452, 32.601913>,  <28.255184, 31.877026, 32.993427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930622, 31.754452, 32.601913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075266, 31.772770, 32.974396>,  <29.162052, 31.783762, 33.197884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075266, 31.772770, 32.974396>,  <28.930622, 31.754452, 32.601913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075266, 31.772770, 32.974396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603115, -0.773152, -0.196181,
		0.710978, 0.632565, -0.307202,
		0.361611, 0.045798, 0.931204,
		29.183750, 31.786509, 33.253757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565760, 31.667423, 32.576912>,  <28.930622, 31.754452, 32.601913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565760, 31.667423, 32.576912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534929, 31.589663, 32.968067>,  <29.516432, 31.543007, 33.202759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534929, 31.589663, 32.968067>,  <29.565760, 31.667423, 32.576912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534929, 31.589663, 32.968067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828380, -0.558300, -0.045697,
		0.554839, 0.806542, 0.204068,
		-0.077074, -0.194400, 0.977890,
		29.511806, 31.531343, 33.261433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240290, 31.846256, 32.984344>,  <29.565760, 31.667423, 32.576912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240290, 31.846256, 32.984344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035725, 31.583046, 33.205418>,  <29.912987, 31.425119, 33.338062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035725, 31.583046, 33.205418>,  <30.240290, 31.846256, 32.984344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035725, 31.583046, 33.205418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787110, -0.616783, -0.006009,
		0.344843, 0.431953, 0.833367,
		-0.511411, -0.658024, 0.552688,
		29.882301, 31.385639, 33.371223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664057, 31.603260, 33.576385>,  <30.240290, 31.846256, 32.984344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664057, 31.603260, 33.576385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396626, 31.306442, 33.556900>,  <30.236166, 31.128351, 33.545208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396626, 31.306442, 33.556900>,  <30.664057, 31.603260, 33.576385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396626, 31.306442, 33.556900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740028, -0.670349, 0.054685,
		-0.073232, 0.000513, 0.997315,
		-0.668577, -0.742045, -0.048711,
		30.196053, 31.083828, 33.542286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005653, 31.121550, 34.103558>,  <30.664057, 31.603260, 33.576385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005653, 31.121550, 34.103558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735338, 30.957535, 33.858551>,  <30.573149, 30.859125, 33.711548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735338, 30.957535, 33.858551>,  <31.005653, 31.121550, 34.103558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735338, 30.957535, 33.858551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496543, -0.867391, 0.032822,
		-0.544752, -0.281961, 0.789774,
		-0.675788, -0.410037, -0.612519,
		30.532602, 30.834524, 33.674797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831339, 30.459093, 34.460175>,  <31.005653, 31.121550, 34.103558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831339, 30.459093, 34.460175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731773, 30.440510, 34.073212>,  <30.672035, 30.429359, 33.841034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731773, 30.440510, 34.073212>,  <30.831339, 30.459093, 34.460175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731773, 30.440510, 34.073212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403575, -0.912977, -0.059995,
		-0.880437, -0.405356, 0.246001,
		-0.248912, -0.046458, -0.967411,
		30.657099, 30.426573, 33.782990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527773, 29.804071, 34.385616>,  <30.831339, 30.459093, 34.460175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527773, 29.804071, 34.385616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639460, 29.899212, 34.013496>,  <30.706472, 29.956295, 33.790222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639460, 29.899212, 34.013496>,  <30.527773, 29.804071, 34.385616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639460, 29.899212, 34.013496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310125, -0.939253, -0.147058,
		-0.908768, -0.247449, -0.336020,
		0.279218, 0.237850, -0.930304,
		30.723225, 29.970568, 33.734406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227665, 29.764591, 34.161030>,  <30.527773, 29.804071, 34.385616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227665, 29.764591, 34.161030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926535, 29.504164, 34.122322>,  <30.745857, 29.347906, 34.099098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926535, 29.504164, 34.122322>,  <31.227665, 29.764591, 34.161030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926535, 29.504164, 34.122322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523816, -0.503565, -0.687051,
		0.398589, -0.567918, 0.720136,
		-0.752824, -0.651070, -0.096769,
		30.700687, 29.308844, 34.093292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490885, 29.084034, 34.225986>,  <31.227665, 29.764591, 34.161030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490885, 29.084034, 34.225986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171906, 29.081753, 33.984642>,  <30.980518, 29.080383, 33.839836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171906, 29.081753, 33.984642>,  <31.490885, 29.084034, 34.225986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171906, 29.081753, 33.984642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569181, -0.339016, -0.749067,
		-0.200277, -0.940763, 0.273593,
		-0.797447, -0.005703, -0.603362,
		30.932671, 29.080042, 33.803635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293325, 28.471018, 34.043175>,  <31.490885, 29.084034, 34.225986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293325, 28.471018, 34.043175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229841, 28.769108, 33.784115>,  <31.191751, 28.947962, 33.628677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229841, 28.769108, 33.784115>,  <31.293325, 28.471018, 34.043175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229841, 28.769108, 33.784115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547594, -0.479388, -0.685804,
		-0.821554, -0.463494, -0.331996,
		-0.158711, 0.745225, -0.647650,
		31.182228, 28.992676, 33.589821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025854, 28.171537, 33.450024>,  <31.293325, 28.471018, 34.043175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025854, 28.171537, 33.450024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235086, 28.501953, 33.366077>,  <31.360626, 28.700203, 33.315712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235086, 28.501953, 33.366077>,  <31.025854, 28.171537, 33.450024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235086, 28.501953, 33.366077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473360, -0.486340, -0.734441,
		-0.708742, 0.284833, -0.645410,
		0.523082, 0.826041, -0.209861,
		31.392012, 28.749765, 33.303120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933952, 28.435030, 32.653542>,  <31.025854, 28.171537, 33.450024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933952, 28.435030, 32.653542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273195, 28.481066, 32.860409>,  <31.476742, 28.508686, 32.984531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273195, 28.481066, 32.860409>,  <30.933952, 28.435030, 32.653542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273195, 28.481066, 32.860409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512210, -0.427682, -0.744801,
		0.135467, 0.896573, -0.421671,
		0.848110, 0.115088, 0.517170,
		31.527628, 28.515593, 33.015560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567835, 27.950621, 32.524277>,  <30.933952, 28.435030, 32.653542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567835, 27.950621, 32.524277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892859, 27.771646, 32.374851>,  <32.087872, 27.664263, 32.285194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892859, 27.771646, 32.374851>,  <31.567835, 27.950621, 32.524277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892859, 27.771646, 32.374851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511239, 0.854915, 0.088056,
		0.279967, -0.262532, 0.923415,
		0.812559, -0.447433, -0.373565,
		32.136627, 27.637417, 32.262783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128975, 28.061909, 32.986366>,  <31.567835, 27.950621, 32.524277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128975, 28.061909, 32.986366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260056, 28.021841, 32.610584>,  <32.338703, 27.997801, 32.385117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260056, 28.021841, 32.610584>,  <32.128975, 28.061909, 32.986366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260056, 28.021841, 32.610584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552817, 0.826701, 0.104689,
		0.766163, -0.553654, 0.326286,
		0.327702, -0.100168, -0.939456,
		32.358368, 27.991791, 32.328747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799744, 28.199499, 32.941772>,  <32.128975, 28.061909, 32.986366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799744, 28.199499, 32.941772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663399, 28.277334, 32.573872>,  <32.581593, 28.324036, 32.353130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663399, 28.277334, 32.573872>,  <32.799744, 28.199499, 32.941772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663399, 28.277334, 32.573872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627477, 0.775620, -0.068452,
		0.700058, -0.600457, -0.386484,
		-0.340867, 0.194589, -0.919753,
		32.561138, 28.335711, 32.297947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374767, 28.360851, 32.570332>,  <32.799744, 28.199499, 32.941772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374767, 28.360851, 32.570332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068371, 28.535072, 32.381207>,  <32.884533, 28.639605, 32.267731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068371, 28.535072, 32.381207>,  <33.374767, 28.360851, 32.570332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068371, 28.535072, 32.381207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579732, 0.785849, -0.215296,
		0.277783, -0.439018, -0.854459,
		-0.765994, 0.435552, -0.472808,
		32.838573, 28.665737, 32.239365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549603, 29.022745, 32.326611>,  <33.374767, 28.360851, 32.570332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549603, 29.022745, 32.326611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612133, 29.272640, 32.020599>,  <33.649651, 29.422577, 31.836994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612133, 29.272640, 32.020599>,  <33.549603, 29.022745, 32.326611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612133, 29.272640, 32.020599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072531, 0.779717, 0.621917,
		0.985039, -0.041734, 0.167204,
		0.156327, 0.624740, -0.765024,
		33.659031, 29.460062, 31.791092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133659, 29.502260, 32.542431>,  <33.549603, 29.022745, 32.326611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133659, 29.502260, 32.542431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881573, 29.652990, 32.270893>,  <33.730320, 29.743429, 32.107971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881573, 29.652990, 32.270893>,  <34.133659, 29.502260, 32.542431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881573, 29.652990, 32.270893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133604, 0.808651, 0.572916,
		0.764838, 0.451758, -0.459280,
		-0.630217, 0.376826, -0.678844,
		33.692509, 29.766039, 32.067242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314941, 30.206745, 32.463860>,  <34.133659, 29.502260, 32.542431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314941, 30.206745, 32.463860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939671, 30.159435, 32.333725>,  <33.714508, 30.131050, 32.255646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939671, 30.159435, 32.333725>,  <34.314941, 30.206745, 32.463860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939671, 30.159435, 32.333725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281605, 0.807330, 0.518572,
		0.201320, 0.578127, -0.790721,
		-0.938173, -0.118273, -0.325335,
		33.658218, 30.123953, 32.236126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167202, 30.826160, 32.374241>,  <34.314941, 30.206745, 32.463860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167202, 30.826160, 32.374241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797451, 30.674122, 32.361294>,  <33.575600, 30.582899, 32.353527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797451, 30.674122, 32.361294>,  <34.167202, 30.826160, 32.374241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797451, 30.674122, 32.361294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360822, 0.843654, 0.397562,
		-0.123808, 0.379176, -0.917004,
		-0.924380, -0.380097, -0.032364,
		33.520138, 30.560093, 32.351585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611958, 31.331755, 32.062832>,  <34.167202, 30.826160, 32.374241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611958, 31.331755, 32.062832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420395, 31.078428, 32.306000>,  <33.305458, 30.926432, 32.451900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420395, 31.078428, 32.306000>,  <33.611958, 31.331755, 32.062832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420395, 31.078428, 32.306000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533342, 0.759939, 0.371537,
		-0.697279, -0.146296, -0.701712,
		-0.478904, -0.633317, 0.607915,
		33.276722, 30.888433, 32.488373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959171, 31.585882, 32.198681>,  <33.611958, 31.331755, 32.062832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959171, 31.585882, 32.198681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986660, 31.310877, 32.487846>,  <33.003155, 31.145874, 32.661346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986660, 31.310877, 32.487846>,  <32.959171, 31.585882, 32.198681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986660, 31.310877, 32.487846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529902, 0.588798, 0.610345,
		-0.845270, -0.425017, -0.323851,
		0.068724, -0.687515, 0.722910,
		33.007278, 31.104622, 32.704720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289593, 31.401068, 32.300735>,  <32.959171, 31.585882, 32.198681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289593, 31.401068, 32.300735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534821, 31.333008, 32.609329>,  <32.681957, 31.292171, 32.794487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534821, 31.333008, 32.609329>,  <32.289593, 31.401068, 32.300735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534821, 31.333008, 32.609329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512407, 0.657632, 0.552232,
		-0.601317, -0.733873, 0.315988,
		0.613072, -0.170152, 0.771486,
		32.718742, 31.281961, 32.840775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829317, 31.388479, 32.847404>,  <32.289593, 31.401068, 32.300735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829317, 31.388479, 32.847404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194420, 31.433767, 33.004402>,  <32.413483, 31.460939, 33.098602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194420, 31.433767, 33.004402>,  <31.829317, 31.388479, 32.847404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194420, 31.433767, 33.004402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375838, 0.609219, 0.698282,
		-0.160058, -0.784878, 0.598622,
		0.912758, 0.113219, 0.392497,
		32.468246, 31.467733, 33.122150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749350, 31.154791, 33.456947>,  <31.829317, 31.388479, 32.847404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749350, 31.154791, 33.456947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065239, 31.399563, 33.474300>,  <32.254772, 31.546427, 33.484711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065239, 31.399563, 33.474300>,  <31.749350, 31.154791, 33.456947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065239, 31.399563, 33.474300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408085, 0.471214, 0.781936,
		0.458038, -0.635223, 0.621847,
		0.789726, 0.611922, 0.043391,
		32.302155, 31.583141, 33.487316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833504, 31.193384, 34.127422>,  <31.749350, 31.154791, 33.456947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833504, 31.193384, 34.127422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005524, 31.512754, 33.958862>,  <32.108734, 31.704376, 33.857727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005524, 31.512754, 33.958862>,  <31.833504, 31.193384, 34.127422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005524, 31.512754, 33.958862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325810, 0.572564, 0.752342,
		0.841966, -0.186248, 0.506365,
		0.430048, 0.798425, -0.421398,
		32.134537, 31.752281, 33.832443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981962, 31.618074, 34.709248>,  <31.833504, 31.193384, 34.127422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981962, 31.618074, 34.709248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999191, 31.862835, 34.393345>,  <32.009529, 32.009693, 34.203804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999191, 31.862835, 34.393345>,  <31.981962, 31.618074, 34.709248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999191, 31.862835, 34.393345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374470, 0.742754, 0.555057,
		0.926238, 0.271833, 0.261133,
		0.043075, 0.611901, -0.789760,
		32.012115, 32.046406, 34.156418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284195, 32.104492, 35.037811>,  <31.981962, 31.618074, 34.709248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284195, 32.104492, 35.037811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126751, 32.270355, 34.709633>,  <32.032284, 32.369873, 34.512726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126751, 32.270355, 34.709633>,  <32.284195, 32.104492, 35.037811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126751, 32.270355, 34.709633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275579, 0.798222, 0.535628,
		0.877001, 0.436926, -0.199916,
		-0.393607, 0.414654, -0.820449,
		32.008671, 32.394753, 34.463497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496304, 32.739830, 35.158680>,  <32.284195, 32.104492, 35.037811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496304, 32.739830, 35.158680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180561, 32.750782, 34.913349>,  <31.991116, 32.757351, 34.766151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180561, 32.750782, 34.913349>,  <32.496304, 32.739830, 35.158680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180561, 32.750782, 34.913349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318841, 0.835439, 0.447640,
		0.524652, 0.548901, -0.650729,
		-0.789354, 0.027376, -0.613327,
		31.943754, 32.758995, 34.729351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488850, 33.437080, 34.896416>,  <32.496304, 32.739830, 35.158680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488850, 33.437080, 34.896416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130177, 33.260315, 34.886009>,  <31.914974, 33.154255, 34.879765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130177, 33.260315, 34.886009>,  <32.488850, 33.437080, 34.896416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130177, 33.260315, 34.886009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400588, 0.784996, 0.472557,
		-0.188408, 0.434153, -0.880916,
		-0.896678, -0.441918, -0.026017,
		31.861174, 33.127739, 34.878204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102150, 34.109676, 34.720753>,  <32.488850, 33.437080, 34.896416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102150, 34.109676, 34.720753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840269, 33.826496, 34.826706>,  <31.683140, 33.656586, 34.890278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840269, 33.826496, 34.826706>,  <32.102150, 34.109676, 34.720753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840269, 33.826496, 34.826706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699584, 0.700226, 0.142355,
		-0.286262, -0.092111, -0.953714,
		-0.654703, -0.707954, 0.264888,
		31.643858, 33.614109, 34.906174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524025, 34.316265, 34.291332>,  <32.102150, 34.109676, 34.720753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524025, 34.316265, 34.291332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405893, 34.085770, 34.596153>,  <31.335014, 33.947472, 34.779045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405893, 34.085770, 34.596153>,  <31.524025, 34.316265, 34.291332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405893, 34.085770, 34.596153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814286, 0.569018, 0.114700,
		-0.499719, -0.586658, -0.637270,
		-0.295329, -0.576238, 0.762057,
		31.317295, 33.912899, 34.824772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824129, 34.457088, 34.341728>,  <31.524025, 34.316265, 34.291332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824129, 34.457088, 34.341728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856724, 34.280918, 34.699360>,  <30.876282, 34.175217, 34.913940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856724, 34.280918, 34.699360>,  <30.824129, 34.457088, 34.341728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856724, 34.280918, 34.699360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577436, 0.710310, 0.402526,
		-0.812359, -0.549077, -0.196436,
		0.081488, -0.440425, 0.894084,
		30.881170, 34.148792, 34.967587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091318, 34.230087, 34.634655>,  <30.824129, 34.457088, 34.341728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091318, 34.230087, 34.634655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346033, 34.293430, 34.936497>,  <30.498861, 34.331436, 35.117603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346033, 34.293430, 34.936497>,  <30.091318, 34.230087, 34.634655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346033, 34.293430, 34.936497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604060, 0.710684, 0.360609,
		-0.479182, -0.685457, 0.548208,
		0.636785, 0.158353, 0.754605,
		30.537069, 34.340935, 35.162880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715361, 34.075016, 35.195179>,  <30.091318, 34.230087, 34.634655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715361, 34.075016, 35.195179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003103, 34.319038, 35.328060>,  <30.175749, 34.465450, 35.407787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.003103, 34.319038, 35.328060>,  <29.715361, 34.075016, 35.195179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003103, 34.319038, 35.328060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694626, 0.634936, 0.338157,
		-0.004634, -0.474013, 0.880506,
		0.719356, 0.610055, 0.332205,
		30.218910, 34.502056, 35.427723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501032, 34.311146, 35.866379>,  <29.715361, 34.075016, 35.195179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501032, 34.311146, 35.866379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777300, 34.586014, 35.776249>,  <29.943060, 34.750935, 35.722172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777300, 34.586014, 35.776249>,  <29.501032, 34.311146, 35.866379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777300, 34.586014, 35.776249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612290, 0.721459, 0.323416,
		0.384806, -0.085408, 0.919037,
		0.690670, 0.687170, -0.225327,
		29.984501, 34.792164, 35.708649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496216, 34.778885, 36.413612>,  <29.501032, 34.311146, 35.866379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496216, 34.778885, 36.413612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681953, 34.996407, 36.133995>,  <29.793396, 35.126919, 35.966225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681953, 34.996407, 36.133995>,  <29.496216, 34.778885, 36.413612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681953, 34.996407, 36.133995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575623, 0.785160, 0.228431,
		0.673083, 0.296315, 0.677611,
		0.464346, 0.543802, -0.699044,
		29.821257, 35.159546, 35.924282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621498, 35.465244, 36.748230>,  <29.496216, 34.778885, 36.413612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621498, 35.465244, 36.748230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646217, 35.499596, 36.350475>,  <29.661049, 35.520206, 36.111824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646217, 35.499596, 36.350475>,  <29.621498, 35.465244, 36.748230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646217, 35.499596, 36.350475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326525, 0.943208, 0.061168,
		0.943167, 0.320913, 0.086318,
		0.061787, 0.085876, -0.994388,
		29.664757, 35.525360, 36.052158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094948, 36.086376, 36.729065>,  <29.621498, 35.465244, 36.748230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094948, 36.086376, 36.729065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917345, 36.054893, 36.372040>,  <29.810783, 36.036003, 36.157825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917345, 36.054893, 36.372040>,  <30.094948, 36.086376, 36.729065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917345, 36.054893, 36.372040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287595, 0.955947, 0.058766,
		0.848614, 0.282788, -0.447085,
		-0.444008, -0.078710, -0.892559,
		29.784143, 36.031281, 36.104271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344019, 36.629398, 36.274410>,  <30.094948, 36.086376, 36.729065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344019, 36.629398, 36.274410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982742, 36.548786, 36.122818>,  <29.765976, 36.500420, 36.031864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.982742, 36.548786, 36.122818>,  <30.344019, 36.629398, 36.274410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982742, 36.548786, 36.122818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202043, 0.978604, -0.038891,
		0.378710, 0.041445, -0.924587,
		-0.903193, -0.201535, -0.378981,
		29.711784, 36.488327, 36.009125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839891, 36.597904, 35.720848>,  <30.344019, 36.629398, 36.274410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839891, 36.597904, 35.720848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708279, 36.916172, 35.517422>,  <30.629311, 37.107132, 35.395367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708279, 36.916172, 35.517422>,  <30.839891, 36.597904, 35.720848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708279, 36.916172, 35.517422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820417, 0.507545, 0.263277,
		0.467604, -0.330613, -0.819782,
		-0.329033, 0.795672, -0.508570,
		30.609570, 37.154873, 35.364849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488546, 36.887417, 35.313869>,  <30.839891, 36.597904, 35.720848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488546, 36.887417, 35.313869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214052, 37.112026, 35.498814>,  <31.049356, 37.246792, 35.609779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214052, 37.112026, 35.498814>,  <31.488546, 36.887417, 35.313869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214052, 37.112026, 35.498814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727306, 0.520565, 0.447256,
		0.010458, 0.643197, -0.765629,
		-0.686234, 0.561524, 0.462357,
		31.008183, 37.280483, 35.637520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789986, 37.553734, 35.430580>,  <31.488546, 36.887417, 35.313869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789986, 37.553734, 35.430580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479847, 37.511494, 35.679638>,  <31.293764, 37.486149, 35.829071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479847, 37.511494, 35.679638>,  <31.789986, 37.553734, 35.430580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479847, 37.511494, 35.679638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467086, 0.567676, 0.677920,
		-0.425050, 0.816451, -0.390821,
		-0.775347, -0.105603, 0.622643,
		31.247242, 37.479813, 35.866432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699940, 38.195930, 35.788666>,  <31.789986, 37.553734, 35.430580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699940, 38.195930, 35.788666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539879, 37.898907, 36.003506>,  <31.443842, 37.720692, 36.132408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539879, 37.898907, 36.003506>,  <31.699940, 38.195930, 35.788666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539879, 37.898907, 36.003506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449034, 0.352035, 0.821243,
		-0.798903, 0.569799, 0.192569,
		-0.400153, -0.742563, 0.537101,
		31.419832, 37.676136, 36.164635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200832, 38.518204, 36.335861>,  <31.699940, 38.195930, 35.788666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200832, 38.518204, 36.335861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363300, 38.163303, 36.423328>,  <31.460781, 37.950363, 36.475811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363300, 38.163303, 36.423328>,  <31.200832, 38.518204, 36.335861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363300, 38.163303, 36.423328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472308, 0.408692, 0.780958,
		-0.782273, -0.213920, 0.585053,
		0.406169, -0.887248, 0.218673,
		31.485151, 37.897129, 36.488930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474846, 38.639400, 36.910046>,  <31.200832, 38.518204, 36.335861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474846, 38.639400, 36.910046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636497, 38.289337, 36.803631>,  <31.733488, 38.079300, 36.739780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636497, 38.289337, 36.803631>,  <31.474846, 38.639400, 36.910046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636497, 38.289337, 36.803631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597746, 0.032525, 0.801025,
		-0.692372, -0.482740, 0.536268,
		0.404129, -0.875160, -0.266036,
		31.757736, 38.026791, 36.723820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362276, 38.176533, 37.496017>,  <31.474846, 38.639400, 36.910046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362276, 38.176533, 37.496017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678471, 38.063599, 37.278606>,  <31.868187, 37.995838, 37.148159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678471, 38.063599, 37.278606>,  <31.362276, 38.176533, 37.496017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678471, 38.063599, 37.278606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594674, 0.141382, 0.791438,
		-0.146605, -0.948841, 0.279657,
		0.790487, -0.282334, -0.543523,
		31.915617, 37.978897, 37.115551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692339, 37.969398, 38.015415>,  <31.362276, 38.176533, 37.496017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692339, 37.969398, 38.015415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985748, 37.941254, 37.745010>,  <32.161793, 37.924366, 37.582767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985748, 37.941254, 37.745010>,  <31.692339, 37.969398, 38.015415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985748, 37.941254, 37.745010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675916, -0.028769, 0.736417,
		-0.071266, -0.997106, 0.026458,
		0.733525, -0.070365, -0.676010,
		32.205807, 37.920147, 37.542206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151730, 37.329823, 38.212296>,  <31.692339, 37.969398, 38.015415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151730, 37.329823, 38.212296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353645, 37.585594, 37.980324>,  <32.474792, 37.739059, 37.841141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353645, 37.585594, 37.980324>,  <32.151730, 37.329823, 38.212296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353645, 37.585594, 37.980324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770891, -0.031582, 0.636184,
		0.388482, -0.768198, -0.508875,
		0.504786, 0.639433, -0.579928,
		32.505081, 37.777424, 37.806347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842979, 37.026737, 38.061691>,  <32.151730, 37.329823, 38.212296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842979, 37.026737, 38.061691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874714, 37.422447, 38.012642>,  <32.893753, 37.659874, 37.983212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874714, 37.422447, 38.012642>,  <32.842979, 37.026737, 38.061691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874714, 37.422447, 38.012642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836162, 0.000934, 0.548482,
		0.542715, -0.146048, -0.827121,
		0.079332, 0.989277, -0.122627,
		32.898514, 37.719231, 37.975853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513996, 37.175045, 38.071491>,  <32.842979, 37.026737, 38.061691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513996, 37.175045, 38.071491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356831, 37.533581, 38.153652>,  <33.262531, 37.748703, 38.202950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356831, 37.533581, 38.153652>,  <33.513996, 37.175045, 38.071491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356831, 37.533581, 38.153652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785736, 0.211196, 0.581392,
		0.477744, 0.389832, -0.787269,
		-0.392913, 0.896341, 0.205407,
		33.238956, 37.802483, 38.215275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052032, 37.682831, 37.949028>,  <33.513996, 37.175045, 38.071491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052032, 37.682831, 37.949028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791656, 37.855370, 38.198895>,  <33.635429, 37.958893, 38.348816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791656, 37.855370, 38.198895>,  <34.052032, 37.682831, 37.949028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791656, 37.855370, 38.198895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751301, 0.248214, 0.611503,
		0.108718, 0.867369, -0.485645,
		-0.650943, 0.431347, 0.624670,
		33.596375, 37.984776, 38.386295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405075, 38.174950, 38.237034>,  <34.052032, 37.682831, 37.949028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405075, 38.174950, 38.237034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093159, 38.147652, 38.485958>,  <33.906010, 38.131271, 38.635315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093159, 38.147652, 38.485958>,  <34.405075, 38.174950, 38.237034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093159, 38.147652, 38.485958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588762, 0.257974, 0.766035,
		-0.212821, 0.963739, -0.160983,
		-0.779786, -0.068248, 0.622315,
		33.859222, 38.127178, 38.672653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348480, 38.728912, 38.564377>,  <34.405075, 38.174950, 38.237034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348480, 38.728912, 38.564377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186386, 38.456203, 38.808006>,  <34.089130, 38.292580, 38.954185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186386, 38.456203, 38.808006>,  <34.348480, 38.728912, 38.564377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186386, 38.456203, 38.808006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614542, 0.290110, 0.733604,
		-0.676847, 0.671586, 0.301412,
		-0.405236, -0.681768, 0.609078,
		34.064816, 38.251675, 38.990730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165852, 39.085236, 39.236404>,  <34.348480, 38.728912, 38.564377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165852, 39.085236, 39.236404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131599, 38.703999, 39.352531>,  <34.111046, 38.475258, 39.422207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131599, 38.703999, 39.352531>,  <34.165852, 39.085236, 39.236404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131599, 38.703999, 39.352531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363961, 0.241321, 0.899609,
		-0.927469, 0.182700, 0.326223,
		-0.085634, -0.953092, 0.290314,
		34.105907, 38.418072, 39.439625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927116, 39.172440, 39.926407>,  <34.165852, 39.085236, 39.236404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927116, 39.172440, 39.926407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056805, 38.796043, 39.887600>,  <34.134617, 38.570206, 39.864315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056805, 38.796043, 39.887600>,  <33.927116, 39.172440, 39.926407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056805, 38.796043, 39.887600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437867, 0.058369, 0.897143,
		-0.838542, -0.333356, 0.430954,
		0.324223, -0.940992, -0.097021,
		34.154072, 38.513744, 39.858494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820602, 38.778164, 40.570621>,  <33.927116, 39.172440, 39.926407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820602, 38.778164, 40.570621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090008, 38.543472, 40.390785>,  <34.251652, 38.402657, 40.282883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090008, 38.543472, 40.390785>,  <33.820602, 38.778164, 40.570621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090008, 38.543472, 40.390785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443266, -0.166148, 0.880858,
		-0.591524, -0.792555, 0.148175,
		0.673509, -0.586730, -0.449593,
		34.292061, 38.367455, 40.255909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770145, 38.209381, 40.900032>,  <33.820602, 38.778164, 40.570621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770145, 38.209381, 40.900032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121521, 38.170231, 40.712940>,  <34.332348, 38.146740, 40.600685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121521, 38.170231, 40.712940>,  <33.770145, 38.209381, 40.900032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121521, 38.170231, 40.712940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372386, -0.473181, 0.798391,
		-0.299459, -0.875512, -0.379215,
		0.878438, -0.097871, -0.467726,
		34.385052, 38.140869, 40.572620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859924, 37.513813, 40.817471>,  <33.770145, 38.209381, 40.900032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859924, 37.513813, 40.817471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219814, 37.688107, 40.807419>,  <34.435749, 37.792683, 40.801388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219814, 37.688107, 40.807419>,  <33.859924, 37.513813, 40.817471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219814, 37.688107, 40.807419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265745, -0.501233, 0.823496,
		0.346232, -0.747596, -0.566765,
		0.899724, 0.435736, -0.025127,
		34.489731, 37.818829, 40.799881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395061, 36.892246, 40.853168>,  <33.859924, 37.513813, 40.817471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395061, 36.892246, 40.853168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589760, 37.220146, 40.973892>,  <34.706581, 37.416885, 41.046326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589760, 37.220146, 40.973892>,  <34.395061, 36.892246, 40.853168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589760, 37.220146, 40.973892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403189, -0.517325, 0.754860,
		0.774929, -0.245740, -0.582320,
		0.486748, 0.819748, 0.301811,
		34.735783, 37.466072, 41.064434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028118, 36.701736, 41.114227>,  <34.395061, 36.892246, 40.853168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028118, 36.701736, 41.114227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990936, 37.047688, 41.311550>,  <34.968628, 37.255257, 41.429943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990936, 37.047688, 41.311550>,  <35.028118, 36.701736, 41.114227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990936, 37.047688, 41.311550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254024, -0.458455, 0.851640,
		0.962721, 0.204476, -0.177083,
		-0.092955, 0.864875, 0.493306,
		34.963051, 37.307152, 41.459541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598988, 36.726105, 41.530876>,  <35.028118, 36.701736, 41.114227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598988, 36.726105, 41.530876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308182, 36.962563, 41.670589>,  <35.133698, 37.104435, 41.754417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308182, 36.962563, 41.670589>,  <35.598988, 36.726105, 41.530876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308182, 36.962563, 41.670589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149489, -0.360230, 0.920808,
		0.670150, 0.721656, 0.173524,
		-0.727016, 0.591140, 0.349288,
		35.090076, 37.139904, 41.775375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951347, 37.072205, 41.994957>,  <35.598988, 36.726105, 41.530876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951347, 37.072205, 41.994957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564751, 37.120449, 42.085598>,  <35.332794, 37.149395, 42.139984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564751, 37.120449, 42.085598>,  <35.951347, 37.072205, 41.994957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564751, 37.120449, 42.085598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186311, -0.277686, 0.942432,
		0.176594, 0.953070, 0.245909,
		-0.966490, 0.120613, 0.226605,
		35.274803, 37.156631, 42.153580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980591, 37.263279, 42.695667>,  <35.951347, 37.072205, 41.994957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980591, 37.263279, 42.695667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594387, 37.170933, 42.647514>,  <35.362663, 37.115524, 42.618622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594387, 37.170933, 42.647514>,  <35.980591, 37.263279, 42.695667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594387, 37.170933, 42.647514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085931, -0.153888, 0.984345,
		-0.245773, 0.960740, 0.128742,
		-0.965511, -0.230863, -0.120379,
		35.304733, 37.101673, 42.611401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593967, 37.548489, 43.304771>,  <35.980591, 37.263279, 42.695667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593967, 37.548489, 43.304771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348072, 37.275177, 43.147182>,  <35.200535, 37.111191, 43.052628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348072, 37.275177, 43.147182>,  <35.593967, 37.548489, 43.304771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348072, 37.275177, 43.147182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184600, -0.360990, 0.914117,
		-0.766821, 0.634674, 0.095782,
		-0.614742, -0.683283, -0.393976,
		35.163651, 37.070190, 43.028988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059380, 37.529720, 43.659122>,  <35.593967, 37.548489, 43.304771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059380, 37.529720, 43.659122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973141, 37.171146, 43.504238>,  <34.921398, 36.956001, 43.411308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973141, 37.171146, 43.504238>,  <35.059380, 37.529720, 43.659122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973141, 37.171146, 43.504238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164888, -0.357418, 0.919274,
		-0.962460, 0.262041, -0.070752,
		-0.215600, -0.896430, -0.387208,
		34.908463, 36.902218, 43.388077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358368, 37.200123, 43.906742>,  <35.059380, 37.529720, 43.659122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358368, 37.200123, 43.906742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589039, 36.896370, 43.786221>,  <34.727440, 36.714119, 43.713905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589039, 36.896370, 43.786221>,  <34.358368, 37.200123, 43.906742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589039, 36.896370, 43.786221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291954, -0.536007, 0.792123,
		-0.763028, -0.368828, -0.530806,
		0.576672, -0.759383, -0.301307,
		34.762039, 36.668556, 43.695827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041885, 36.572292, 44.221451>,  <34.358368, 37.200123, 43.906742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041885, 36.572292, 44.221451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430988, 36.511852, 44.151115>,  <34.664448, 36.475586, 44.108913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430988, 36.511852, 44.151115>,  <34.041885, 36.572292, 44.221451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430988, 36.511852, 44.151115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059045, -0.571972, 0.818145,
		-0.224200, -0.806236, -0.547466,
		0.972753, -0.151103, -0.175840,
		34.722813, 36.466522, 44.098362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110744, 36.087688, 44.685089>,  <34.041885, 36.572292, 44.221451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110744, 36.087688, 44.685089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488541, 36.119461, 44.557571>,  <34.715218, 36.138523, 44.481060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488541, 36.119461, 44.557571>,  <34.110744, 36.087688, 44.685089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488541, 36.119461, 44.557571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313464, -0.508405, 0.802038,
		-0.098368, -0.857447, -0.505083,
		0.944491, 0.079430, -0.318789,
		34.771889, 36.143291, 44.461933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433315, 35.434910, 44.667248>,  <34.110744, 36.087688, 44.685089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433315, 35.434910, 44.667248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729523, 35.699818, 44.712898>,  <34.907249, 35.858761, 44.740288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729523, 35.699818, 44.712898>,  <34.433315, 35.434910, 44.667248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729523, 35.699818, 44.712898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244987, -0.424174, 0.871813,
		0.625787, -0.617636, -0.476358,
		0.740522, 0.662270, 0.114130,
		34.951679, 35.898499, 44.747139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951443, 35.061871, 44.925858>,  <34.433315, 35.434910, 44.667248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951443, 35.061871, 44.925858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104771, 35.422081, 45.007954>,  <35.196766, 35.638206, 45.057209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104771, 35.422081, 45.007954>,  <34.951443, 35.061871, 44.925858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104771, 35.422081, 45.007954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226857, -0.307202, 0.924210,
		0.895322, -0.307709, -0.322047,
		0.383321, 0.900523, 0.205238,
		35.219769, 35.692238, 45.069527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607880, 34.990326, 45.167824>,  <34.951443, 35.061871, 44.925858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607880, 34.990326, 45.167824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507118, 35.351326, 45.307560>,  <35.446663, 35.567924, 45.391403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507118, 35.351326, 45.307560>,  <35.607880, 34.990326, 45.167824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507118, 35.351326, 45.307560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446256, -0.211985, 0.869435,
		0.858721, 0.374907, -0.349347,
		-0.251901, 0.902501, 0.349341,
		35.431549, 35.622078, 45.412361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231297, 35.206089, 45.497158>,  <35.607880, 34.990326, 45.167824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231297, 35.206089, 45.497158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940773, 35.424980, 45.663540>,  <35.766460, 35.556316, 45.763367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940773, 35.424980, 45.663540>,  <36.231297, 35.206089, 45.497158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940773, 35.424980, 45.663540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498477, 0.002671, 0.866899,
		0.473280, 0.836980, -0.274721,
		-0.726310, 0.547228, 0.415951,
		35.722881, 35.589149, 45.788326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621540, 35.606800, 45.940804>,  <36.231297, 35.206089, 45.497158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621540, 35.606800, 45.940804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239475, 35.638233, 46.054989>,  <36.010235, 35.657093, 46.123501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239475, 35.638233, 46.054989>,  <36.621540, 35.606800, 45.940804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239475, 35.638233, 46.054989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264029, -0.210265, 0.941317,
		0.133993, 0.974481, 0.180089,
		-0.955162, 0.078581, 0.285465,
		35.952927, 35.661808, 46.140629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738430, 35.966366, 46.586956>,  <36.621540, 35.606800, 45.940804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738430, 35.966366, 46.586956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373474, 35.805843, 46.619213>,  <36.154499, 35.709530, 46.638569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373474, 35.805843, 46.619213>,  <36.738430, 35.966366, 46.586956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373474, 35.805843, 46.619213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185402, -0.229519, 0.955483,
		-0.364929, 0.886723, 0.283813,
		-0.912389, -0.401303, 0.080643,
		36.099758, 35.685452, 46.643406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508846, 36.261044, 47.174358>,  <36.738430, 35.966366, 46.586956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508846, 36.261044, 47.174358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292004, 35.929619, 47.118351>,  <36.161900, 35.730762, 47.084747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292004, 35.929619, 47.118351>,  <36.508846, 36.261044, 47.174358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292004, 35.929619, 47.118351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187066, -0.281440, 0.941168,
		-0.819223, 0.484022, 0.307566,
		-0.542107, -0.828562, -0.140018,
		36.129372, 35.681049, 47.076347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991932, 36.282635, 47.758686>,  <36.508846, 36.261044, 47.174358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991932, 36.282635, 47.758686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988972, 35.902008, 47.635746>,  <35.987194, 35.673634, 47.561981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988972, 35.902008, 47.635746>,  <35.991932, 36.282635, 47.758686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988972, 35.902008, 47.635746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144550, -0.305153, 0.941269,
		-0.989470, -0.037459, 0.139809,
		-0.007404, -0.951566, -0.307354,
		35.986752, 35.616539, 47.543541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815197, 35.908546, 48.324406>,  <35.991932, 36.282635, 47.758686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815197, 35.908546, 48.324406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976570, 35.615704, 48.104855>,  <36.073395, 35.439999, 47.973125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976570, 35.615704, 48.104855>,  <35.815197, 35.908546, 48.324406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976570, 35.615704, 48.104855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161952, -0.533255, 0.830307,
		-0.900563, -0.423865, -0.096567,
		0.403433, -0.732105, -0.548876,
		36.097599, 35.396072, 47.940193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542889, 35.368073, 48.647953>,  <35.815197, 35.908546, 48.324406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542889, 35.368073, 48.647953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860458, 35.238678, 48.442024>,  <36.050999, 35.161041, 48.318466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860458, 35.238678, 48.442024>,  <35.542889, 35.368073, 48.647953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860458, 35.238678, 48.442024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225684, -0.629456, 0.743540,
		-0.564583, -0.706501, -0.426735,
		0.793923, -0.323483, -0.514826,
		36.098637, 35.141632, 48.287575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550873, 34.585728, 48.629826>,  <35.542889, 35.368073, 48.647953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550873, 34.585728, 48.629826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933880, 34.679214, 48.562252>,  <36.163685, 34.735306, 48.521709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933880, 34.679214, 48.562252>,  <35.550873, 34.585728, 48.629826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933880, 34.679214, 48.562252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283198, -0.651557, 0.703756,
		0.054415, -0.721698, -0.690065,
		0.957516, 0.233720, -0.168929,
		36.221134, 34.749329, 48.511574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876488, 33.905483, 48.527184>,  <35.550873, 34.585728, 48.629826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876488, 33.905483, 48.527184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155052, 34.178123, 48.617012>,  <36.322189, 34.341709, 48.670910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155052, 34.178123, 48.617012>,  <35.876488, 33.905483, 48.527184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155052, 34.178123, 48.617012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317454, -0.573235, 0.755397,
		0.643611, -0.454776, -0.615584,
		0.696410, 0.681602, 0.224570,
		36.363976, 34.382603, 48.684383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529507, 33.468460, 48.508530>,  <35.876488, 33.905483, 48.527184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529507, 33.468460, 48.508530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596199, 33.801640, 48.719585>,  <36.636215, 34.001545, 48.846218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596199, 33.801640, 48.719585>,  <36.529507, 33.468460, 48.508530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596199, 33.801640, 48.719585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315298, -0.552069, 0.771885,
		0.934231, 0.037666, -0.354673,
		0.166730, 0.832947, 0.527637,
		36.646217, 34.051525, 48.877876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116966, 33.360100, 48.884003>,  <36.529507, 33.468460, 48.508530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116966, 33.360100, 48.884003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961605, 33.653267, 49.107422>,  <36.868389, 33.829166, 49.241474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961605, 33.653267, 49.107422>,  <37.116966, 33.360100, 48.884003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961605, 33.653267, 49.107422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347663, -0.444789, 0.825405,
		0.853387, 0.514780, -0.082049,
		-0.388408, 0.732915, 0.558547,
		36.845081, 33.873142, 49.274986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485264, 33.377876, 49.389309>,  <37.116966, 33.360100, 48.884003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485264, 33.377876, 49.389309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163586, 33.546547, 49.556858>,  <36.970577, 33.647747, 49.657387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163586, 33.546547, 49.556858>,  <37.485264, 33.377876, 49.389309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163586, 33.546547, 49.556858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200824, -0.470525, 0.859230,
		0.559404, 0.775112, 0.293714,
		-0.804200, 0.421672, 0.418874,
		36.922325, 33.673050, 49.682522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695011, 33.679661, 50.021309>,  <37.485264, 33.377876, 49.389309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695011, 33.679661, 50.021309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296528, 33.684734, 50.055740>,  <37.057438, 33.687778, 50.076401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296528, 33.684734, 50.055740>,  <37.695011, 33.679661, 50.021309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296528, 33.684734, 50.055740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079174, -0.278121, 0.957277,
		0.036084, 0.960462, 0.276062,
		-0.996208, 0.012686, 0.086079,
		36.997665, 33.688541, 50.081566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520393, 34.045692, 50.544422>,  <37.695011, 33.679661, 50.021309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520393, 34.045692, 50.544422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190506, 33.820580, 50.522121>,  <36.992573, 33.685513, 50.508739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.190506, 33.820580, 50.522121>,  <37.520393, 34.045692, 50.544422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190506, 33.820580, 50.522121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044756, -0.163231, 0.985572,
		-0.563766, 0.810327, 0.159808,
		-0.824721, -0.562784, -0.055757,
		36.943089, 33.651745, 50.505394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073021, 34.090954, 51.236546>,  <37.520393, 34.045692, 50.544422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073021, 34.090954, 51.236546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943237, 33.744007, 51.085606>,  <36.865368, 33.535839, 50.995041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943237, 33.744007, 51.085606>,  <37.073021, 34.090954, 51.236546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943237, 33.744007, 51.085606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128921, -0.435760, 0.890782,
		-0.937072, 0.240376, 0.253209,
		-0.324461, -0.867371, -0.377349,
		36.845898, 33.483795, 50.972401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869633, 33.708332, 51.806259>,  <37.073021, 34.090954, 51.236546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869633, 33.708332, 51.806259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863060, 33.406796, 51.543522>,  <36.859116, 33.225872, 51.385880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863060, 33.406796, 51.543522>,  <36.869633, 33.708332, 51.806259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863060, 33.406796, 51.543522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027954, -0.656332, 0.753955,
		-0.999474, 0.030752, -0.010287,
		-0.016434, -0.753846, -0.656846,
		36.858131, 33.180641, 51.346470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305508, 33.182316, 51.916374>,  <36.869633, 33.708332, 51.806259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305508, 33.182316, 51.916374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606266, 32.965973, 51.765575>,  <36.786720, 32.836166, 51.675098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606266, 32.965973, 51.765575>,  <36.305508, 33.182316, 51.916374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606266, 32.965973, 51.765575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102567, -0.660825, 0.743499,
		-0.651252, -0.520368, -0.552347,
		0.751898, -0.540858, -0.376991,
		36.831837, 32.803715, 51.652477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190586, 32.469357, 51.680435>,  <36.305508, 33.182316, 51.916374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190586, 32.469357, 51.680435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553291, 32.520325, 51.841206>,  <36.770916, 32.550907, 51.937668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553291, 32.520325, 51.841206>,  <36.190586, 32.469357, 51.680435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553291, 32.520325, 51.841206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230468, -0.648465, 0.725519,
		0.353083, -0.750505, -0.558637,
		0.906762, 0.127421, 0.401929,
		36.825321, 32.558552, 51.961784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682056, 31.950869, 51.655937>,  <36.190586, 32.469357, 51.680435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682056, 31.950869, 51.655937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754959, 32.156567, 51.991158>,  <36.798702, 32.279984, 52.192291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754959, 32.156567, 51.991158>,  <36.682056, 31.950869, 51.655937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754959, 32.156567, 51.991158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270664, -0.793162, 0.545559,
		0.945264, -0.326263, -0.005373,
		0.182257, 0.514243, 0.838055,
		36.809635, 32.310841, 52.242573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183590, 31.559967, 52.071072>,  <36.682056, 31.950869, 51.655937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183590, 31.559967, 52.071072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990219, 31.817917, 52.307861>,  <36.874195, 31.972687, 52.449936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990219, 31.817917, 52.307861>,  <37.183590, 31.559967, 52.071072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990219, 31.817917, 52.307861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090429, -0.709419, 0.698962,
		0.870700, 0.284367, 0.401269,
		-0.483429, 0.644872, 0.591976,
		36.845192, 32.011379, 52.485455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540474, 31.904257, 52.583107>,  <37.183590, 31.559967, 52.071072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540474, 31.904257, 52.583107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844421, 31.685999, 52.441757>,  <38.026791, 31.555044, 52.356949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844421, 31.685999, 52.441757>,  <37.540474, 31.904257, 52.583107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844421, 31.685999, 52.441757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450750, -0.050538, -0.891219,
		0.468432, 0.836490, -0.284352,
		0.759866, -0.545647, -0.353374,
		38.072380, 31.522305, 52.335747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650875, 32.200935, 52.022995>,  <37.540474, 31.904257, 52.583107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650875, 32.200935, 52.022995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764095, 31.818558, 51.991886>,  <37.832027, 31.589130, 51.973221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764095, 31.818558, 51.991886>,  <37.650875, 32.200935, 52.022995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764095, 31.818558, 51.991886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328581, -0.020476, -0.944254,
		0.901063, 0.292828, -0.319901,
		0.283054, -0.955946, -0.077768,
		37.849010, 31.531775, 51.968555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173386, 32.051632, 51.585724>,  <37.650875, 32.200935, 52.022995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173386, 32.051632, 51.585724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934765, 31.731432, 51.608788>,  <37.791592, 31.539312, 51.622627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934765, 31.731432, 51.608788>,  <38.173386, 32.051632, 51.585724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934765, 31.731432, 51.608788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302381, 0.157629, -0.940063,
		0.743431, -0.578233, -0.336091,
		-0.596553, -0.800500, 0.057660,
		37.755798, 31.491282, 51.626087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263302, 31.638441, 50.948891>,  <38.173386, 32.051632, 51.585724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263302, 31.638441, 50.948891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905807, 31.563398, 51.111885>,  <37.691311, 31.518372, 51.209682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905807, 31.563398, 51.111885>,  <38.263302, 31.638441, 50.948891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905807, 31.563398, 51.111885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436290, 0.152153, -0.886849,
		0.104380, -0.970388, -0.217835,
		-0.893731, -0.187609, 0.407489,
		37.637688, 31.507116, 51.234131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916889, 31.094868, 50.477661>,  <38.263302, 31.638441, 50.948891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916889, 31.094868, 50.477661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654320, 31.318298, 50.680485>,  <37.496780, 31.452356, 50.802177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654320, 31.318298, 50.680485>,  <37.916889, 31.094868, 50.477661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654320, 31.318298, 50.680485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399947, 0.312232, -0.861716,
		-0.639653, -0.768442, 0.018446,
		-0.656419, 0.558577, 0.507056,
		37.457394, 31.485872, 50.832603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337452, 30.824720, 50.391003>,  <37.916889, 31.094868, 50.477661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337452, 30.824720, 50.391003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317863, 31.219128, 50.454716>,  <37.306110, 31.455772, 50.492943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317863, 31.219128, 50.454716>,  <37.337452, 30.824720, 50.391003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317863, 31.219128, 50.454716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590253, 0.100078, -0.800990,
		-0.805731, -0.133240, 0.577100,
		-0.048969, 0.986018, 0.159281,
		37.303173, 31.514933, 50.502499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624756, 31.080904, 50.485870>,  <37.337452, 30.824720, 50.391003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624756, 31.080904, 50.485870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857693, 31.375366, 50.347916>,  <36.997456, 31.552044, 50.265144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857693, 31.375366, 50.347916>,  <36.624756, 31.080904, 50.485870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857693, 31.375366, 50.347916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591164, 0.092263, -0.801257,
		-0.558030, 0.670493, 0.488918,
		0.582347, 0.736156, -0.344886,
		37.032398, 31.596212, 50.244450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210754, 31.534523, 50.264034>,  <36.624756, 31.080904, 50.485870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210754, 31.534523, 50.264034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547810, 31.600821, 50.059101>,  <36.750042, 31.640598, 49.936142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547810, 31.600821, 50.059101>,  <36.210754, 31.534523, 50.264034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547810, 31.600821, 50.059101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524694, 0.038820, -0.850405,
		-0.121061, 0.985405, 0.119676,
		0.842639, 0.165744, -0.512336,
		36.800602, 31.650543, 49.905399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947098, 31.836288, 49.627758>,  <36.210754, 31.534523, 50.264034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947098, 31.836288, 49.627758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332947, 31.781572, 49.537601>,  <36.564457, 31.748743, 49.483509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332947, 31.781572, 49.537601>,  <35.947098, 31.836288, 49.627758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332947, 31.781572, 49.537601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195340, 0.203356, -0.959421,
		0.177072, 0.969502, 0.169441,
		0.964618, -0.136788, -0.225392,
		36.622334, 31.740536, 49.469982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139904, 32.410633, 49.091202>,  <35.947098, 31.836288, 49.627758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139904, 32.410633, 49.091202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381706, 32.092304, 49.077160>,  <36.526787, 31.901306, 49.068733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381706, 32.092304, 49.077160>,  <36.139904, 32.410633, 49.091202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381706, 32.092304, 49.077160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065735, -0.005918, -0.997820,
		0.793881, 0.605499, -0.055891,
		0.604509, -0.795824, -0.035104,
		36.563061, 31.853558, 49.066628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661121, 32.581566, 48.644871>,  <36.139904, 32.410633, 49.091202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661121, 32.581566, 48.644871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663620, 32.181576, 48.646061>,  <36.665119, 31.941582, 48.646774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663620, 32.181576, 48.646061>,  <36.661121, 32.581566, 48.644871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663620, 32.181576, 48.646061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008723, -0.003025, -0.999957,
		0.999942, 0.006221, -0.008742,
		0.006247, -0.999976, 0.002971,
		36.665493, 31.881582, 48.646954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167633, 32.356655, 48.145264>,  <36.661121, 32.581566, 48.644871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167633, 32.356655, 48.145264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922085, 32.044128, 48.190353>,  <36.774754, 31.856613, 48.217407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922085, 32.044128, 48.190353>,  <37.167633, 32.356655, 48.145264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922085, 32.044128, 48.190353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081886, -0.079006, -0.993505,
		0.785145, -0.619119, -0.015479,
		-0.613875, -0.781313, 0.112728,
		36.737923, 31.809734, 48.224171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483273, 31.738260, 47.826107>,  <37.167633, 32.356655, 48.145264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483273, 31.738260, 47.826107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083935, 31.724157, 47.844296>,  <36.844334, 31.715694, 47.855209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083935, 31.724157, 47.844296>,  <37.483273, 31.738260, 47.826107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083935, 31.724157, 47.844296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040628, -0.127568, -0.990997,
		0.040742, -0.991203, 0.125924,
		-0.998343, -0.035259, 0.045468,
		36.784431, 31.713579, 47.857937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351273, 31.140650, 47.385330>,  <37.483273, 31.738260, 47.826107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351273, 31.140650, 47.385330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995483, 31.318726, 47.426594>,  <36.782009, 31.425571, 47.451351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995483, 31.318726, 47.426594>,  <37.351273, 31.140650, 47.385330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995483, 31.318726, 47.426594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133476, -0.037197, -0.990354,
		-0.437058, -0.894663, 0.092508,
		-0.889474, 0.445190, 0.103159,
		36.728642, 31.452282, 47.457542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066418, 31.029951, 46.719131>,  <37.351273, 31.140650, 47.385330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066418, 31.029951, 46.719131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808205, 31.279478, 46.895378>,  <36.653278, 31.429195, 47.001125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808205, 31.279478, 46.895378>,  <37.066418, 31.029951, 46.719131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808205, 31.279478, 46.895378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401608, 0.213450, -0.890590,
		-0.649615, -0.751857, 0.112742,
		-0.645531, 0.623819, 0.440612,
		36.614544, 31.466623, 47.027561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373833, 30.907578, 46.496986>,  <37.066418, 31.029951, 46.719131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373833, 30.907578, 46.496986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420151, 31.290794, 46.601864>,  <36.447941, 31.520725, 46.664791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420151, 31.290794, 46.601864>,  <36.373833, 30.907578, 46.496986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420151, 31.290794, 46.601864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452306, 0.285873, -0.844806,
		-0.884315, -0.020772, 0.466430,
		0.115791, 0.958043, 0.262197,
		36.454887, 31.578207, 46.680523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710526, 31.212572, 46.410912>,  <36.373833, 30.907578, 46.496986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710526, 31.212572, 46.410912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953079, 31.529955, 46.431789>,  <36.098610, 31.720385, 46.444317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953079, 31.529955, 46.431789>,  <35.710526, 31.212572, 46.410912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953079, 31.529955, 46.431789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468398, 0.409462, -0.782908,
		-0.642575, 0.450295, 0.619945,
		0.606383, 0.793458, 0.052193,
		36.134995, 31.767992, 46.447449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258080, 31.786354, 46.378624>,  <35.710526, 31.212572, 46.410912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258080, 31.786354, 46.378624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619686, 31.909182, 46.259647>,  <35.836651, 31.982878, 46.188263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619686, 31.909182, 46.259647>,  <35.258080, 31.786354, 46.378624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619686, 31.909182, 46.259647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417418, 0.483736, -0.769261,
		-0.092332, 0.819578, 0.565479,
		0.904012, 0.307068, -0.297442,
		35.890888, 32.001301, 46.170414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163429, 32.487442, 46.142555>,  <35.258080, 31.786354, 46.378624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163429, 32.487442, 46.142555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503506, 32.380676, 45.961040>,  <35.707554, 32.316616, 45.852131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503506, 32.380676, 45.961040>,  <35.163429, 32.487442, 46.142555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503506, 32.380676, 45.961040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294717, 0.472937, -0.830345,
		0.436247, 0.839694, 0.323423,
		0.850194, -0.266917, -0.453790,
		35.758564, 32.300602, 45.824905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423847, 33.088772, 45.783024>,  <35.163429, 32.487442, 46.142555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423847, 33.088772, 45.783024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577209, 32.762321, 45.610077>,  <35.669228, 32.566452, 45.506310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577209, 32.762321, 45.610077>,  <35.423847, 33.088772, 45.783024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577209, 32.762321, 45.610077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353732, 0.302682, -0.885018,
		0.853155, 0.492263, -0.172639,
		0.383407, -0.816126, -0.432364,
		35.692230, 32.517483, 45.480370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569733, 33.475887, 45.188065>,  <35.423847, 33.088772, 45.783024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569733, 33.475887, 45.188065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635056, 33.088879, 45.110874>,  <35.674248, 32.856674, 45.064560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635056, 33.088879, 45.110874>,  <35.569733, 33.475887, 45.188065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635056, 33.088879, 45.110874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185107, 0.162082, -0.969260,
		0.969054, 0.194009, -0.152625,
		0.163307, -0.967518, -0.192979,
		35.684048, 32.798622, 45.052982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063065, 33.484673, 44.608467>,  <35.569733, 33.475887, 45.188065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063065, 33.484673, 44.608467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868202, 33.135841, 44.627079>,  <35.751286, 32.926544, 44.638245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868202, 33.135841, 44.627079>,  <36.063065, 33.484673, 44.608467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868202, 33.135841, 44.627079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378300, 0.162703, -0.911272,
		0.787130, -0.461529, -0.409168,
		-0.487151, -0.872077, 0.046528,
		35.722057, 32.874218, 44.641037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190804, 33.214096, 44.017075>,  <36.063065, 33.484673, 44.608467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190804, 33.214096, 44.017075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863106, 33.009727, 44.121227>,  <35.666485, 32.887108, 44.183720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863106, 33.009727, 44.121227>,  <36.190804, 33.214096, 44.017075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863106, 33.009727, 44.121227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402301, 0.188513, -0.895889,
		0.408643, -0.838704, -0.359982,
		-0.819246, -0.510920, 0.260377,
		35.617332, 32.856453, 44.199341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040104, 32.881176, 43.520168>,  <36.190804, 33.214096, 44.017075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040104, 32.881176, 43.520168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685108, 32.901463, 43.703384>,  <35.472111, 32.913635, 43.813313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685108, 32.901463, 43.703384>,  <36.040104, 32.881176, 43.520168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685108, 32.901463, 43.703384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441976, 0.187763, -0.877156,
		-0.130492, -0.980904, -0.144220,
		-0.887485, 0.050721, 0.458037,
		35.418861, 32.916679, 43.840797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471272, 32.606796, 43.010853>,  <36.040104, 32.881176, 43.520168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471272, 32.606796, 43.010853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273888, 32.789444, 43.306961>,  <35.155457, 32.899033, 43.484627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273888, 32.789444, 43.306961>,  <35.471272, 32.606796, 43.010853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273888, 32.789444, 43.306961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653276, 0.367330, -0.662042,
		-0.574222, -0.810291, 0.117035,
		-0.493456, 0.456615, 0.740273,
		35.125851, 32.926430, 43.529041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740906, 32.428337, 42.888477>,  <35.471272, 32.606796, 43.010853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740906, 32.428337, 42.888477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735882, 32.757812, 43.115238>,  <34.732868, 32.955498, 43.251293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735882, 32.757812, 43.115238>,  <34.740906, 32.428337, 42.888477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735882, 32.757812, 43.115238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698272, 0.398583, -0.594598,
		-0.715722, -0.403320, 0.570154,
		-0.012559, 0.823689, 0.566902,
		34.732113, 33.004921, 43.285309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018707, 32.588928, 43.040562>,  <34.740906, 32.428337, 42.888477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018707, 32.588928, 43.040562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187328, 32.942692, 43.120667>,  <34.288502, 33.154949, 43.168728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187328, 32.942692, 43.120667>,  <34.018707, 32.588928, 43.040562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187328, 32.942692, 43.120667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690449, 0.456220, -0.561376,
		-0.587852, 0.098381, 0.802964,
		0.421557, 0.884412, 0.200263,
		34.313797, 33.208015, 43.180744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452297, 33.101189, 43.232750>,  <34.018707, 32.588928, 43.040562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452297, 33.101189, 43.232750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761814, 33.322422, 43.109234>,  <33.947525, 33.455162, 43.035126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761814, 33.322422, 43.109234>,  <33.452297, 33.101189, 43.232750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761814, 33.322422, 43.109234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620772, 0.565086, -0.543434,
		-0.126073, 0.612190, 0.780596,
		0.773788, 0.553084, -0.308788,
		33.993950, 33.488346, 43.016598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179005, 33.755291, 43.246250>,  <33.452297, 33.101189, 43.232750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179005, 33.755291, 43.246250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488380, 33.758533, 42.992722>,  <33.674004, 33.760479, 42.840603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488380, 33.758533, 42.992722>,  <33.179005, 33.755291, 43.246250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488380, 33.758533, 42.992722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512086, 0.597308, -0.617245,
		0.373582, 0.801971, 0.466131,
		0.773436, 0.008108, -0.633822,
		33.720413, 33.760967, 42.802574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196274, 34.492416, 43.029171>,  <33.179005, 33.755291, 43.246250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196274, 34.492416, 43.029171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380882, 34.239910, 42.779850>,  <33.491646, 34.088406, 42.630257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380882, 34.239910, 42.779850>,  <33.196274, 34.492416, 43.029171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380882, 34.239910, 42.779850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549032, 0.348639, -0.759615,
		0.696824, 0.692792, -0.185679,
		0.461520, -0.631261, -0.623305,
		33.519337, 34.050533, 42.592857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087452, 34.857887, 42.474514>,  <33.196274, 34.492416, 43.029171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087452, 34.857887, 42.474514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226009, 34.509937, 42.334042>,  <33.309143, 34.301167, 42.249760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226009, 34.509937, 42.334042>,  <33.087452, 34.857887, 42.474514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226009, 34.509937, 42.334042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365609, 0.219568, -0.904500,
		0.863911, 0.441707, -0.241978,
		0.346393, -0.869877, -0.351179,
		33.329926, 34.248974, 42.228687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455212, 35.059498, 41.943539>,  <33.087452, 34.857887, 42.474514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455212, 35.059498, 41.943539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351803, 34.677925, 41.882648>,  <33.289757, 34.448982, 41.846115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351803, 34.677925, 41.882648>,  <33.455212, 35.059498, 41.943539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351803, 34.677925, 41.882648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416657, 0.252289, -0.873354,
		0.871528, -0.162357, -0.462687,
		-0.258526, -0.953934, -0.152230,
		33.274246, 34.391747, 41.836979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638138, 34.949615, 41.306480>,  <33.455212, 35.059498, 41.943539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638138, 34.949615, 41.306480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363983, 34.669285, 41.385574>,  <33.199490, 34.501087, 41.433029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363983, 34.669285, 41.385574>,  <33.638138, 34.949615, 41.306480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363983, 34.669285, 41.385574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351704, 0.080826, -0.932615,
		0.637617, -0.708741, -0.301880,
		-0.685382, -0.700824, 0.197731,
		33.158367, 34.459038, 41.444893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665363, 34.513714, 40.778076>,  <33.638138, 34.949615, 41.306480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665363, 34.513714, 40.778076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305115, 34.402840, 40.911972>,  <33.088966, 34.336315, 40.992310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305115, 34.402840, 40.911972>,  <33.665363, 34.513714, 40.778076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305115, 34.402840, 40.911972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384274, 0.148104, -0.911262,
		0.203018, -0.949332, -0.239903,
		-0.900621, -0.277191, 0.334735,
		33.034927, 34.319683, 41.012394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474255, 33.986576, 40.272621>,  <33.665363, 34.513714, 40.778076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474255, 33.986576, 40.272621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137344, 34.157997, 40.403408>,  <32.935200, 34.260849, 40.481880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137344, 34.157997, 40.403408>,  <33.474255, 33.986576, 40.272621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137344, 34.157997, 40.403408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339211, 0.050027, -0.939379,
		-0.418934, -0.902129, 0.103234,
		-0.842276, 0.428556, 0.326970,
		32.884663, 34.286564, 40.501499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974491, 33.784481, 39.809021>,  <33.474255, 33.986576, 40.272621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974491, 33.784481, 39.809021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780388, 34.075634, 40.002808>,  <32.663925, 34.250328, 40.119080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780388, 34.075634, 40.002808>,  <32.974491, 33.784481, 39.809021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780388, 34.075634, 40.002808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509801, 0.214622, -0.833091,
		-0.710371, -0.651246, 0.266929,
		-0.485259, 0.727884, 0.484467,
		32.634811, 34.293999, 40.148148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279972, 33.624008, 39.683407>,  <32.974491, 33.784481, 39.809021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279972, 33.624008, 39.683407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244347, 34.008438, 39.788017>,  <32.222969, 34.239098, 39.850784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244347, 34.008438, 39.788017>,  <32.279972, 33.624008, 39.683407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244347, 34.008438, 39.788017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374648, 0.210958, -0.902848,
		-0.922879, -0.178394, 0.341277,
		-0.089067, 0.961079, 0.261524,
		32.217625, 34.296761, 39.866474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518318, 33.920284, 39.591831>,  <32.279972, 33.624008, 39.683407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518318, 33.920284, 39.591831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794659, 34.208694, 39.570480>,  <31.960463, 34.381741, 39.557671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794659, 34.208694, 39.570480>,  <31.518318, 33.920284, 39.591831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794659, 34.208694, 39.570480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382309, 0.301653, -0.873410,
		-0.613650, 0.623801, 0.484051,
		0.690850, 0.721026, -0.053375,
		32.001915, 34.425003, 39.554466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177469, 34.577839, 39.374821>,  <31.518318, 33.920284, 39.591831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177469, 34.577839, 39.374821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549644, 34.704529, 39.301102>,  <31.772949, 34.780544, 39.256870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549644, 34.704529, 39.301102>,  <31.177469, 34.577839, 39.374821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549644, 34.704529, 39.301102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251662, 0.186724, -0.949632,
		-0.266362, 0.929956, 0.253444,
		0.930440, 0.316727, -0.184298,
		31.828777, 34.799545, 39.245811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124666, 35.307022, 39.095852>,  <31.177469, 34.577839, 39.374821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124666, 35.307022, 39.095852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465935, 35.144512, 38.964981>,  <31.670696, 35.047005, 38.886459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465935, 35.144512, 38.964981>,  <31.124666, 35.307022, 39.095852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465935, 35.144512, 38.964981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195904, 0.331744, -0.922804,
		0.483450, 0.851403, 0.203443,
		0.853169, -0.406275, -0.327175,
		31.721886, 35.022629, 38.866829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410959, 35.754269, 38.700314>,  <31.124666, 35.307022, 39.095852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410959, 35.754269, 38.700314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629292, 35.443089, 38.575821>,  <31.760290, 35.256382, 38.501125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629292, 35.443089, 38.575821>,  <31.410959, 35.754269, 38.700314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629292, 35.443089, 38.575821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037755, 0.393902, -0.918377,
		0.837044, 0.489528, 0.244376,
		0.545831, -0.777948, -0.311232,
		31.793041, 35.209705, 38.482452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934357, 36.049778, 38.178692>,  <31.410959, 35.754269, 38.700314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934357, 36.049778, 38.178692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918579, 35.653027, 38.130322>,  <31.909113, 35.414974, 38.101299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918579, 35.653027, 38.130322>,  <31.934357, 36.049778, 38.178692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918579, 35.653027, 38.130322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141724, 0.114242, -0.983292,
		0.989120, -0.055925, 0.136066,
		-0.039446, -0.991878, -0.120925,
		31.906746, 35.355465, 38.094044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515472, 35.879372, 37.896709>,  <31.934357, 36.049778, 38.178692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515472, 35.879372, 37.896709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244572, 35.607105, 37.784977>,  <32.082031, 35.443745, 37.717937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244572, 35.607105, 37.784977>,  <32.515472, 35.879372, 37.896709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244572, 35.607105, 37.784977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078440, 0.310692, -0.947269,
		0.731556, -0.663452, -0.157026,
		-0.677254, -0.680663, -0.279329,
		32.041397, 35.402908, 37.701180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864506, 35.714699, 37.274788>,  <32.515472, 35.879372, 37.896709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864506, 35.714699, 37.274788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489395, 35.579475, 37.243076>,  <32.264328, 35.498341, 37.224049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489395, 35.579475, 37.243076>,  <32.864506, 35.714699, 37.274788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489395, 35.579475, 37.243076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027217, 0.299193, -0.953804,
		0.346158, -0.892302, -0.289778,
		-0.937781, -0.338054, -0.079282,
		32.208061, 35.478058, 37.219292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844822, 35.238754, 36.732292>,  <32.864506, 35.714699, 37.274788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844822, 35.238754, 36.732292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477867, 35.392643, 36.773060>,  <32.257694, 35.484978, 36.797520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477867, 35.392643, 36.773060>,  <32.844822, 35.238754, 36.732292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477867, 35.392643, 36.773060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059338, 0.121007, -0.990876,
		-0.393546, -0.915066, -0.088182,
		-0.917388, 0.384723, 0.101920,
		32.202652, 35.508060, 36.803635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366436, 34.781765, 36.775192>,  <32.844822, 35.238754, 36.732292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366436, 34.781765, 36.775192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371170, 34.526970, 36.466881>,  <33.374012, 34.374092, 36.281895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371170, 34.526970, 36.466881>,  <33.366436, 34.781765, 36.775192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371170, 34.526970, 36.466881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815387, -0.440037, 0.376180,
		-0.578795, -0.632936, 0.514187,
		0.011837, -0.636992, -0.770779,
		33.374722, 34.335873, 36.235645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264359, 34.113811, 36.939045>,  <33.366436, 34.781765, 36.775192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264359, 34.113811, 36.939045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518387, 34.209759, 36.645340>,  <33.670803, 34.267326, 36.469116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518387, 34.209759, 36.645340>,  <33.264359, 34.113811, 36.939045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518387, 34.209759, 36.645340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750544, -0.416407, 0.513117,
		-0.182671, -0.876964, -0.444482,
		0.635071, 0.239872, -0.734266,
		33.708908, 34.281719, 36.425060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648621, 33.487526, 36.759949>,  <33.264359, 34.113811, 36.939045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648621, 33.487526, 36.759949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870735, 33.799519, 36.644512>,  <34.004005, 33.986713, 36.575249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870735, 33.799519, 36.644512>,  <33.648621, 33.487526, 36.759949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870735, 33.799519, 36.644512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798201, -0.402399, 0.448274,
		0.233516, -0.479275, -0.846029,
		0.555288, 0.779981, -0.288592,
		34.037323, 34.033512, 36.557934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204594, 33.140411, 36.496990>,  <33.648621, 33.487526, 36.759949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204594, 33.140411, 36.496990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309196, 33.517090, 36.581669>,  <34.371956, 33.743099, 36.632477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309196, 33.517090, 36.581669>,  <34.204594, 33.140411, 36.496990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309196, 33.517090, 36.581669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742950, -0.336403, 0.578670,
		0.616150, 0.005958, -0.787606,
		0.261505, 0.941699, 0.211701,
		34.387650, 33.799599, 36.645180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005112, 33.125916, 36.592514>,  <34.204594, 33.140411, 36.496990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005112, 33.125916, 36.592514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891239, 33.465462, 36.770676>,  <34.822914, 33.669189, 36.877575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891239, 33.465462, 36.770676>,  <35.005112, 33.125916, 36.592514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891239, 33.465462, 36.770676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651644, -0.169409, 0.739365,
		0.703075, 0.500732, -0.504929,
		-0.284684, 0.848863, 0.445406,
		34.805836, 33.720119, 36.904297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653149, 33.492725, 36.768570>,  <35.005112, 33.125916, 36.592514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653149, 33.492725, 36.768570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365841, 33.657894, 36.992565>,  <35.193455, 33.756996, 37.126961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365841, 33.657894, 36.992565>,  <35.653149, 33.492725, 36.768570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365841, 33.657894, 36.992565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548085, -0.159987, 0.820979,
		0.428588, 0.896606, -0.111400,
		-0.718272, 0.412919, 0.559985,
		35.150360, 33.781769, 37.160561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963657, 34.049820, 37.178349>,  <35.653149, 33.492725, 36.768570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963657, 34.049820, 37.178349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631405, 33.939903, 37.372066>,  <35.432053, 33.873955, 37.488297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631405, 33.939903, 37.372066>,  <35.963657, 34.049820, 37.178349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631405, 33.939903, 37.372066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522780, -0.085408, 0.848179,
		-0.191707, 0.957704, 0.214597,
		-0.830632, -0.274789, 0.484295,
		35.382214, 33.857468, 37.517353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123035, 34.298702, 37.843895>,  <35.963657, 34.049820, 37.178349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123035, 34.298702, 37.843895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812267, 34.055607, 37.909676>,  <35.625805, 33.909748, 37.949146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812267, 34.055607, 37.909676>,  <36.123035, 34.298702, 37.843895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812267, 34.055607, 37.909676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444756, -0.344896, 0.826583,
		-0.445627, 0.715332, 0.538253,
		-0.776923, -0.607739, 0.164453,
		35.579189, 33.873283, 37.959011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798790, 34.348602, 38.671341>,  <36.123035, 34.298702, 37.843895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798790, 34.348602, 38.671341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692783, 33.993465, 38.520870>,  <35.629181, 33.780384, 38.430588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692783, 33.993465, 38.520870>,  <35.798790, 34.348602, 38.671341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692783, 33.993465, 38.520870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367509, -0.453683, 0.811856,
		-0.891462, 0.076904, 0.446521,
		-0.265013, -0.887839, -0.376178,
		35.613281, 33.727112, 38.408016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591728, 34.037033, 39.193779>,  <35.798790, 34.348602, 38.671341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591728, 34.037033, 39.193779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623692, 33.725979, 38.944336>,  <35.642868, 33.539345, 38.794670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623692, 33.725979, 38.944336>,  <35.591728, 34.037033, 39.193779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623692, 33.725979, 38.944336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139489, -0.610732, 0.779454,
		-0.986994, -0.149270, 0.059671,
		0.079906, -0.777640, -0.623611,
		35.647663, 33.492687, 38.757252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201950, 33.524521, 39.446175>,  <35.591728, 34.037033, 39.193779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201950, 33.524521, 39.446175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449501, 33.320412, 39.207310>,  <35.598034, 33.197945, 39.063992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449501, 33.320412, 39.207310>,  <35.201950, 33.524521, 39.446175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449501, 33.320412, 39.207310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098794, -0.703642, 0.703653,
		-0.779247, -0.494473, -0.385058,
		0.618881, -0.510278, -0.597162,
		35.635166, 33.167328, 39.028160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937222, 32.857605, 39.537117>,  <35.201950, 33.524521, 39.446175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937222, 32.857605, 39.537117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309116, 32.826656, 39.393112>,  <35.532253, 32.808086, 39.306709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309116, 32.826656, 39.393112>,  <34.937222, 32.857605, 39.537117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309116, 32.826656, 39.393112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205344, -0.702609, 0.681303,
		-0.305658, -0.707357, -0.637353,
		0.929735, -0.077369, -0.360009,
		35.588036, 32.803444, 39.285110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134274, 32.179630, 39.437088>,  <34.937222, 32.857605, 39.537117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134274, 32.179630, 39.437088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492176, 32.357594, 39.452423>,  <35.706917, 32.464371, 39.461624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492176, 32.357594, 39.452423>,  <35.134274, 32.179630, 39.437088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492176, 32.357594, 39.452423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352873, -0.757053, 0.549865,
		0.273660, -0.478467, -0.834374,
		0.894758, 0.444904, 0.038337,
		35.760605, 32.491066, 39.463924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579605, 31.643141, 39.400600>,  <35.134274, 32.179630, 39.437088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579605, 31.643141, 39.400600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794685, 31.940815, 39.559124>,  <35.923733, 32.119419, 39.654240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794685, 31.940815, 39.559124>,  <35.579605, 31.643141, 39.400600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794685, 31.940815, 39.559124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459921, -0.652841, 0.601890,
		0.706646, -0.141367, -0.693301,
		0.537702, 0.744187, 0.396310,
		35.955997, 32.164070, 39.678017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307419, 31.457382, 39.522274>,  <35.579605, 31.643141, 39.400600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307419, 31.457382, 39.522274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245998, 31.756315, 39.780857>,  <36.209145, 31.935677, 39.936008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245998, 31.756315, 39.780857>,  <36.307419, 31.457382, 39.522274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245998, 31.756315, 39.780857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369062, -0.563502, 0.739093,
		0.916633, 0.352073, -0.189286,
		-0.153552, 0.747335, 0.646461,
		36.199932, 31.980516, 39.974796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878773, 31.460110, 39.861374>,  <36.307419, 31.457382, 39.522274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878773, 31.460110, 39.861374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621216, 31.654894, 40.097431>,  <36.466682, 31.771765, 40.239067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621216, 31.654894, 40.097431>,  <36.878773, 31.460110, 39.861374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621216, 31.654894, 40.097431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263624, -0.582880, 0.768605,
		0.718261, 0.650478, 0.246940,
		-0.643897, 0.486960, 0.590142,
		36.428047, 31.800982, 40.274475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282307, 31.663103, 40.394459>,  <36.878773, 31.460110, 39.861374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282307, 31.663103, 40.394459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917381, 31.663521, 40.558254>,  <36.698425, 31.663771, 40.656532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917381, 31.663521, 40.558254>,  <37.282307, 31.663103, 40.394459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917381, 31.663521, 40.558254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384584, -0.341246, 0.857698,
		0.140631, 0.939974, 0.310922,
		-0.912314, 0.001044, 0.409489,
		36.643688, 31.663834, 40.681103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357224, 32.041161, 41.024212>,  <37.282307, 31.663103, 40.394459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357224, 32.041161, 41.024212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011787, 31.847036, 41.078873>,  <36.804523, 31.730560, 41.111671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011787, 31.847036, 41.078873>,  <37.357224, 32.041161, 41.024212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011787, 31.847036, 41.078873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314793, -0.307289, 0.898042,
		-0.393839, 0.818562, 0.418146,
		-0.863595, -0.485314, 0.136655,
		36.752708, 31.701443, 41.119869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003189, 32.333996, 41.609241>,  <37.357224, 32.041161, 41.024212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003189, 32.333996, 41.609241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854115, 31.964123, 41.578083>,  <36.764671, 31.742199, 41.559387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854115, 31.964123, 41.578083>,  <37.003189, 32.333996, 41.609241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854115, 31.964123, 41.578083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218868, -0.169165, 0.960979,
		-0.901777, 0.341095, 0.265429,
		-0.372687, -0.924682, -0.077895,
		36.742310, 31.686718, 41.554714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589664, 32.248882, 42.099354>,  <37.003189, 32.333996, 41.609241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589664, 32.248882, 42.099354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660698, 31.869986, 41.992622>,  <36.703320, 31.642649, 41.928581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660698, 31.869986, 41.992622>,  <36.589664, 32.248882, 42.099354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660698, 31.869986, 41.992622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210519, -0.228298, 0.950559,
		-0.961325, -0.224979, 0.158869,
		0.177586, -0.947240, -0.266831,
		36.713974, 31.585814, 41.912575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252106, 31.914686, 42.670242>,  <36.589664, 32.248882, 42.099354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252106, 31.914686, 42.670242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521488, 31.660069, 42.519897>,  <36.683117, 31.507298, 42.429691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521488, 31.660069, 42.519897>,  <36.252106, 31.914686, 42.670242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521488, 31.660069, 42.519897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197114, -0.335416, 0.921218,
		-0.712467, -0.694484, -0.100415,
		0.673452, -0.636544, -0.375865,
		36.723522, 31.469105, 42.407139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221016, 31.317362, 43.121037>,  <36.252106, 31.914686, 42.670242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221016, 31.317362, 43.121037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571987, 31.261337, 42.937515>,  <36.782570, 31.227722, 42.827404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571987, 31.261337, 42.937515>,  <36.221016, 31.317362, 43.121037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571987, 31.261337, 42.937515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367325, -0.418972, 0.830382,
		-0.308529, -0.897132, -0.316171,
		0.877429, -0.140060, -0.458804,
		36.835217, 31.219320, 42.799873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384674, 30.633650, 43.303627>,  <36.221016, 31.317362, 43.121037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384674, 30.633650, 43.303627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717545, 30.832939, 43.206253>,  <36.917267, 30.952513, 43.147827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717545, 30.832939, 43.206253>,  <36.384674, 30.633650, 43.303627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717545, 30.832939, 43.206253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433147, -0.309940, 0.846357,
		0.346224, -0.809760, -0.473727,
		0.832173, 0.498223, -0.243437,
		36.967197, 30.982407, 43.133221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882214, 30.273882, 43.556347>,  <36.384674, 30.633650, 43.303627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882214, 30.273882, 43.556347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070274, 30.623768, 43.509312>,  <37.183109, 30.833700, 43.481091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070274, 30.623768, 43.509312>,  <36.882214, 30.273882, 43.556347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070274, 30.623768, 43.509312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607818, -0.224294, 0.761741,
		0.639933, -0.429607, -0.637122,
		0.470152, 0.874717, -0.117590,
		37.211319, 30.886183, 43.474033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581020, 30.171625, 43.631729>,  <36.882214, 30.273882, 43.556347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581020, 30.171625, 43.631729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550892, 30.565418, 43.695126>,  <37.532814, 30.801695, 43.733162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550892, 30.565418, 43.695126>,  <37.581020, 30.171625, 43.631729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550892, 30.565418, 43.695126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709907, -0.058673, 0.701848,
		0.700256, 0.165380, -0.694472,
		-0.075324, 0.984483, 0.158490,
		37.528294, 30.860764, 43.742672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204899, 30.210056, 43.702404>,  <37.581020, 30.171625, 43.631729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204899, 30.210056, 43.702404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030708, 30.547188, 43.828899>,  <37.926193, 30.749466, 43.904797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030708, 30.547188, 43.828899>,  <38.204899, 30.210056, 43.702404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030708, 30.547188, 43.828899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652431, 0.053456, 0.755961,
		0.620240, 0.535522, -0.573165,
		-0.435473, 0.842828, 0.316236,
		37.900066, 30.800035, 43.923771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701084, 30.824614, 43.790359>,  <38.204899, 30.210056, 43.702404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701084, 30.824614, 43.790359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397694, 30.865438, 44.047821>,  <38.215660, 30.889935, 44.202297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397694, 30.865438, 44.047821>,  <38.701084, 30.824614, 43.790359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397694, 30.865438, 44.047821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651587, 0.137010, 0.746098,
		-0.012038, 0.985297, -0.170423,
		-0.758478, 0.102064, 0.643656,
		38.170151, 30.896057, 44.240917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000412, 31.089596, 44.335571>,  <38.701084, 30.824614, 43.790359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000412, 31.089596, 44.335571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640244, 31.064318, 44.507732>,  <38.424141, 31.049150, 44.611027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640244, 31.064318, 44.507732>,  <39.000412, 31.089596, 44.335571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640244, 31.064318, 44.507732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415030, 0.171629, 0.893473,
		-0.130331, 0.983133, -0.128311,
		-0.900424, -0.063194, 0.430398,
		38.370117, 31.045359, 44.636852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745743, 31.780178, 44.758598>,  <39.000412, 31.089596, 44.335571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745743, 31.780178, 44.758598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586964, 31.439920, 44.896488>,  <38.491695, 31.235765, 44.979221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586964, 31.439920, 44.896488>,  <38.745743, 31.780178, 44.758598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586964, 31.439920, 44.896488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578609, 0.059636, 0.813422,
		-0.712492, 0.522346, 0.468518,
		-0.396947, -0.850646, 0.344724,
		38.467880, 31.184727, 44.999905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533047, 31.994011, 45.433891>,  <38.745743, 31.780178, 44.758598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533047, 31.994011, 45.433891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533504, 31.594120, 45.424599>,  <38.533779, 31.354185, 45.419025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533504, 31.594120, 45.424599>,  <38.533047, 31.994011, 45.433891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533504, 31.594120, 45.424599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561986, -0.018569, 0.826938,
		-0.827146, -0.014005, 0.561812,
		0.001149, -0.999730, -0.023230,
		38.533848, 31.294201, 45.417629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344326, 31.862961, 46.075249>,  <38.533047, 31.994011, 45.433891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344326, 31.862961, 46.075249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539486, 31.552139, 45.916180>,  <38.656582, 31.365646, 45.820740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539486, 31.552139, 45.916180>,  <38.344326, 31.862961, 46.075249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539486, 31.552139, 45.916180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686039, 0.059663, 0.725114,
		-0.539728, -0.626598, 0.562200,
		0.487898, -0.777056, -0.397668,
		38.685856, 31.319023, 45.796879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584278, 31.568083, 46.663563>,  <38.344326, 31.862961, 46.075249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584278, 31.568083, 46.663563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811409, 31.332968, 46.433060>,  <38.947689, 31.191898, 46.294758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811409, 31.332968, 46.433060>,  <38.584278, 31.568083, 46.663563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811409, 31.332968, 46.433060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635070, -0.132563, 0.760995,
		-0.523694, -0.798081, 0.298013,
		0.567830, -0.587788, -0.576259,
		38.981758, 31.156631, 46.260181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680683, 30.893711, 47.024521>,  <38.584278, 31.568083, 46.663563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680683, 30.893711, 47.024521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970020, 30.907372, 46.748665>,  <39.143623, 30.915567, 46.583149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970020, 30.907372, 46.748665>,  <38.680683, 30.893711, 47.024521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970020, 30.907372, 46.748665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689817, -0.079756, 0.719577,
		-0.030426, -0.996229, -0.081252,
		0.723344, 0.034155, -0.689643,
		39.187023, 30.917618, 46.541771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153236, 30.445549, 47.206631>,  <38.680683, 30.893711, 47.024521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153236, 30.445549, 47.206631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370392, 30.671043, 46.957642>,  <39.500687, 30.806339, 46.808247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370392, 30.671043, 46.957642>,  <39.153236, 30.445549, 47.206631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370392, 30.671043, 46.957642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776728, -0.055222, 0.627411,
		0.319320, -0.824107, -0.467849,
		0.542890, 0.563736, -0.622473,
		39.533260, 30.840164, 46.770901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723171, 30.132198, 47.218121>,  <39.153236, 30.445549, 47.206631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723171, 30.132198, 47.218121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794098, 30.510538, 47.109360>,  <39.836655, 30.737541, 47.044106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794098, 30.510538, 47.109360>,  <39.723171, 30.132198, 47.218121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794098, 30.510538, 47.109360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668704, 0.086913, 0.738432,
		0.722076, -0.312756, -0.617081,
		0.177317, 0.945849, -0.271899,
		39.847294, 30.794292, 47.027790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440784, 30.145390, 47.175316>,  <39.723171, 30.132198, 47.218121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440784, 30.145390, 47.175316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341454, 30.531353, 47.209461>,  <40.281857, 30.762930, 47.229950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341454, 30.531353, 47.209461>,  <40.440784, 30.145390, 47.175316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341454, 30.531353, 47.209461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609944, 0.087294, 0.787622,
		0.752530, 0.247657, -0.610217,
		-0.248328, 0.964907, 0.085366,
		40.266956, 30.820826, 47.235069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089230, 30.397261, 47.277695>,  <40.440784, 30.145390, 47.175316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089230, 30.397261, 47.277695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843914, 30.687479, 47.402569>,  <40.696724, 30.861610, 47.477493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843914, 30.687479, 47.402569>,  <41.089230, 30.397261, 47.277695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843914, 30.687479, 47.402569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502886, 0.053899, 0.862671,
		0.609081, 0.686060, -0.397922,
		-0.613292, 0.725545, 0.312181,
		40.659927, 30.905142, 47.496223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538330, 30.929289, 47.632774>,  <41.089230, 30.397261, 47.277695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538330, 30.929289, 47.632774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167118, 30.952732, 47.779922>,  <40.944393, 30.966799, 47.868210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167118, 30.952732, 47.779922>,  <41.538330, 30.929289, 47.632774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167118, 30.952732, 47.779922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371445, 0.220211, 0.901962,
		-0.028147, 0.973690, -0.226131,
		-0.928028, 0.058608, 0.367871,
		40.888710, 30.970314, 47.890285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516472, 31.687826, 47.617954>,  <41.538330, 30.929289, 47.632774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516472, 31.687826, 47.617954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609074, 32.062271, 47.723862>,  <41.664635, 32.286938, 47.787407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609074, 32.062271, 47.723862>,  <41.516472, 31.687826, 47.617954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609074, 32.062271, 47.723862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613472, 0.351701, -0.707078,
		-0.755023, 0.001262, 0.655698,
		0.231501, 0.936112, 0.264768,
		41.678524, 32.343105, 47.803291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925301, 32.043404, 47.746544>,  <41.516472, 31.687826, 47.617954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925301, 32.043404, 47.746544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177406, 32.341805, 47.660530>,  <41.328671, 32.520847, 47.608921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177406, 32.341805, 47.660530>,  <40.925301, 32.043404, 47.746544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177406, 32.341805, 47.660530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678104, 0.394080, -0.620384,
		-0.378070, 0.536822, 0.754245,
		0.630268, 0.746005, -0.215032,
		41.366486, 32.565605, 47.596020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427074, 32.685020, 47.772869>,  <40.925301, 32.043404, 47.746544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427074, 32.685020, 47.772869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757706, 32.751385, 47.557747>,  <40.956085, 32.791203, 47.428673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757706, 32.751385, 47.557747>,  <40.427074, 32.685020, 47.772869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757706, 32.751385, 47.557747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533650, 0.534666, -0.655248,
		0.178831, 0.828616, 0.530486,
		0.826582, 0.165915, -0.537805,
		41.005680, 32.801159, 47.396404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398254, 33.400211, 47.500427>,  <40.427074, 32.685020, 47.772869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398254, 33.400211, 47.500427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673599, 33.253242, 47.250256>,  <40.838806, 33.165062, 47.100151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673599, 33.253242, 47.250256>,  <40.398254, 33.400211, 47.500427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673599, 33.253242, 47.250256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414877, 0.507847, -0.754963,
		0.595011, 0.779163, 0.197147,
		0.688360, -0.367419, -0.625431,
		40.880108, 33.143017, 47.062626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728378, 33.961040, 47.242626>,  <40.398254, 33.400211, 47.500427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728378, 33.961040, 47.242626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797134, 33.657806, 46.990986>,  <40.838387, 33.475864, 46.840004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797134, 33.657806, 46.990986>,  <40.728378, 33.961040, 47.242626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797134, 33.657806, 46.990986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279755, 0.574748, -0.769027,
		0.944559, 0.308178, -0.113286,
		0.171886, -0.758084, -0.629098,
		40.848701, 33.430382, 46.802258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013748, 34.279984, 46.619404>,  <40.728378, 33.961040, 47.242626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013748, 34.279984, 46.619404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900551, 33.913795, 46.504978>,  <40.832634, 33.694084, 46.436321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900551, 33.913795, 46.504978>,  <41.013748, 34.279984, 46.619404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900551, 33.913795, 46.504978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424420, 0.386992, -0.818599,
		0.860108, -0.110243, -0.498058,
		-0.282989, -0.915469, -0.286066,
		40.815655, 33.639156, 46.419159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108532, 34.356556, 46.005112>,  <41.013748, 34.279984, 46.619404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108532, 34.356556, 46.005112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848236, 34.053371, 46.023106>,  <40.692059, 33.871460, 46.033901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848236, 34.053371, 46.023106>,  <41.108532, 34.356556, 46.005112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848236, 34.053371, 46.023106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405612, 0.296932, -0.864471,
		0.641881, -0.580794, -0.500666,
		-0.650743, -0.757964, 0.044982,
		40.653011, 33.825981, 46.036602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947994, 34.048607, 45.392078>,  <41.108532, 34.356556, 46.005112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947994, 34.048607, 45.392078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630238, 33.918571, 45.597309>,  <40.439583, 33.840549, 45.720448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630238, 33.918571, 45.597309>,  <40.947994, 34.048607, 45.392078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630238, 33.918571, 45.597309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603699, 0.329470, -0.725946,
		0.066955, -0.886434, -0.457987,
		-0.794396, -0.325092, 0.513080,
		40.391918, 33.821045, 45.751232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606476, 33.517883, 44.987034>,  <40.947994, 34.048607, 45.392078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606476, 33.517883, 44.987034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326458, 33.642826, 45.243896>,  <40.158447, 33.717793, 45.398014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326458, 33.642826, 45.243896>,  <40.606476, 33.517883, 44.987034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326458, 33.642826, 45.243896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624152, 0.169257, -0.762749,
		-0.346940, -0.934765, 0.076470,
		-0.700048, 0.312357, 0.642157,
		40.116444, 33.736534, 45.436543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968399, 33.150852, 44.806335>,  <40.606476, 33.517883, 44.987034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968399, 33.150852, 44.806335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856552, 33.481251, 45.002110>,  <39.789444, 33.679489, 45.119576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856552, 33.481251, 45.002110>,  <39.968399, 33.150852, 44.806335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856552, 33.481251, 45.002110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752169, 0.128360, -0.646348,
		-0.596704, -0.548869, 0.585395,
		-0.279619, 0.825994, 0.489435,
		39.772667, 33.729050, 45.148941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304298, 33.061867, 45.090206>,  <39.968399, 33.150852, 44.806335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304298, 33.061867, 45.090206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369129, 33.455570, 45.062027>,  <39.408028, 33.691792, 45.045120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369129, 33.455570, 45.062027>,  <39.304298, 33.061867, 45.090206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369129, 33.455570, 45.062027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807784, 0.091329, -0.582361,
		-0.566761, 0.151295, 0.809872,
		0.162073, 0.984260, -0.070452,
		39.417751, 33.750847, 45.040890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660702, 33.399002, 45.063808>,  <39.304298, 33.061867, 45.090206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660702, 33.399002, 45.063808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883114, 33.703270, 44.929817>,  <39.016563, 33.885830, 44.849422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883114, 33.703270, 44.929817>,  <38.660702, 33.399002, 45.063808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883114, 33.703270, 44.929817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697036, 0.207228, -0.686438,
		-0.452733, 0.615176, 0.645438,
		0.556033, 0.760667, -0.334981,
		39.049923, 33.931469, 44.829323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238369, 33.968407, 44.784492>,  <38.660702, 33.399002, 45.063808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238369, 33.968407, 44.784492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588608, 34.062229, 44.615585>,  <38.798752, 34.118523, 44.514240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588608, 34.062229, 44.615585>,  <38.238369, 33.968407, 44.784492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588608, 34.062229, 44.615585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470534, 0.216560, -0.855394,
		-0.109195, 0.947673, 0.299988,
		0.875599, 0.234559, -0.422265,
		38.851288, 34.132595, 44.488907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126465, 34.682259, 44.494324>,  <38.238369, 33.968407, 44.784492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126465, 34.682259, 44.494324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427856, 34.496449, 44.308216>,  <38.608692, 34.384960, 44.196552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427856, 34.496449, 44.308216>,  <38.126465, 34.682259, 44.494324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427856, 34.496449, 44.308216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487939, 0.079210, -0.869277,
		0.440657, 0.882009, -0.166978,
		0.753483, -0.464528, -0.465270,
		38.653900, 34.357090, 44.168636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437805, 35.189079, 44.053654>,  <38.126465, 34.682259, 44.494324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437805, 35.189079, 44.053654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549473, 34.830849, 43.915085>,  <38.616474, 34.615910, 43.831944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549473, 34.830849, 43.915085>,  <38.437805, 35.189079, 44.053654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549473, 34.830849, 43.915085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245235, 0.282304, -0.927450,
		0.928400, 0.343867, -0.140817,
		0.279166, -0.895578, -0.346419,
		38.633224, 34.562176, 43.811157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566399, 35.315125, 43.349644>,  <38.437805, 35.189079, 44.053654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566399, 35.315125, 43.349644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555336, 34.916283, 43.321320>,  <38.548698, 34.676975, 43.304325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555336, 34.916283, 43.321320>,  <38.566399, 35.315125, 43.349644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555336, 34.916283, 43.321320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256730, 0.075542, -0.963527,
		0.966088, -0.008466, -0.258076,
		-0.027653, -0.997107, -0.070807,
		38.547039, 34.617149, 43.300079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940895, 35.151165, 42.810806>,  <38.566399, 35.315125, 43.349644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940895, 35.151165, 42.810806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710438, 34.831745, 42.880520>,  <38.572163, 34.640095, 42.922348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710438, 34.831745, 42.880520>,  <38.940895, 35.151165, 42.810806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710438, 34.831745, 42.880520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294546, 0.003945, -0.955629,
		0.762429, -0.601918, -0.237482,
		-0.576147, -0.798548, 0.174285,
		38.537594, 34.592182, 42.932804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101154, 34.603172, 42.380123>,  <38.940895, 35.151165, 42.810806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101154, 34.603172, 42.380123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728336, 34.522434, 42.500484>,  <38.504646, 34.473991, 42.572701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728336, 34.522434, 42.500484>,  <39.101154, 34.603172, 42.380123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728336, 34.522434, 42.500484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283515, -0.110852, -0.952539,
		0.225620, -0.973124, 0.046093,
		-0.932049, -0.201844, 0.300905,
		38.448723, 34.461880, 42.590755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938194, 33.991005, 41.997944>,  <39.101154, 34.603172, 42.380123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938194, 33.991005, 41.997944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594982, 34.158463, 42.116951>,  <38.389053, 34.258938, 42.188354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594982, 34.158463, 42.116951>,  <38.938194, 33.991005, 41.997944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594982, 34.158463, 42.116951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411713, -0.214348, -0.885747,
		-0.307048, -0.882488, 0.356281,
		-0.858029, 0.418652, 0.297517,
		38.337574, 34.284058, 42.206207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414635, 33.499184, 41.841614>,  <38.938194, 33.991005, 41.997944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414635, 33.499184, 41.841614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230217, 33.853931, 41.853569>,  <38.119568, 34.066780, 41.860744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230217, 33.853931, 41.853569>,  <38.414635, 33.499184, 41.841614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230217, 33.853931, 41.853569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462758, -0.211550, -0.860872,
		-0.757162, -0.410732, 0.507942,
		-0.461043, 0.886874, 0.029892,
		38.091904, 34.119995, 41.862537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879898, 33.437637, 41.485020>,  <38.414635, 33.499184, 41.841614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879898, 33.437637, 41.485020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839443, 33.835487, 41.493877>,  <37.815170, 34.074196, 41.499191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839443, 33.835487, 41.493877>,  <37.879898, 33.437637, 41.485020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839443, 33.835487, 41.493877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407092, -0.021065, -0.913144,
		-0.907771, -0.101364, 0.407035,
		-0.101134, 0.994627, 0.022142,
		37.809105, 34.133877, 41.500519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209175, 33.582088, 41.353065>,  <37.879898, 33.437637, 41.485020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209175, 33.582088, 41.353065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404449, 33.918175, 41.258652>,  <37.521614, 34.119827, 41.202003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404449, 33.918175, 41.258652>,  <37.209175, 33.582088, 41.353065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404449, 33.918175, 41.258652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460616, 0.018338, -0.887410,
		-0.741289, 0.541939, 0.395970,
		0.488184, 0.840218, -0.236032,
		37.550903, 34.170238, 41.187843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727150, 33.957066, 40.917244>,  <37.209175, 33.582088, 41.353065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727150, 33.957066, 40.917244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090366, 34.104523, 40.837688>,  <37.308296, 34.192997, 40.789955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090366, 34.104523, 40.837688>,  <36.727150, 33.957066, 40.917244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090366, 34.104523, 40.837688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255029, 0.109882, -0.960670,
		-0.332289, 0.923054, 0.193793,
		0.908044, 0.368643, -0.198893,
		37.362778, 34.215115, 40.778019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603539, 34.378231, 40.302120>,  <36.727150, 33.957066, 40.917244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603539, 34.378231, 40.302120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000347, 34.329052, 40.313320>,  <37.238430, 34.299545, 40.320038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000347, 34.329052, 40.313320>,  <36.603539, 34.378231, 40.302120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000347, 34.329052, 40.313320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031588, 0.027349, -0.999127,
		0.122076, 0.992036, 0.031014,
		0.992018, -0.122949, 0.027998,
		37.297951, 34.292168, 40.321720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922798, 34.988007, 39.997578>,  <36.603539, 34.378231, 40.302120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922798, 34.988007, 39.997578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184853, 34.686802, 39.973007>,  <37.342083, 34.506081, 39.958263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184853, 34.686802, 39.973007>,  <36.922798, 34.988007, 39.997578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184853, 34.686802, 39.973007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107235, 0.173163, -0.979038,
		0.747864, 0.634813, 0.194194,
		0.655134, -0.753011, -0.061428,
		37.381393, 34.460899, 39.954578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435356, 35.283344, 39.524181>,  <36.922798, 34.988007, 39.997578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435356, 35.283344, 39.524181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491695, 34.887348, 39.520584>,  <37.525497, 34.649750, 39.518425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491695, 34.887348, 39.520584>,  <37.435356, 35.283344, 39.524181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491695, 34.887348, 39.520584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295608, 0.050722, -0.953962,
		0.944869, 0.131707, 0.299793,
		0.140850, -0.989990, -0.008992,
		37.533951, 34.590351, 39.517887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174770, 35.149612, 39.316490>,  <37.435356, 35.283344, 39.524181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174770, 35.149612, 39.316490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992558, 34.798977, 39.254425>,  <37.883228, 34.588596, 39.217186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992558, 34.798977, 39.254425>,  <38.174770, 35.149612, 39.316490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992558, 34.798977, 39.254425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340156, -0.010327, -0.940312,
		0.822667, -0.481126, 0.302882,
		-0.455536, -0.876591, -0.155162,
		37.855896, 34.535999, 39.207878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693729, 34.610332, 39.102081>,  <38.174770, 35.149612, 39.316490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693729, 34.610332, 39.102081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342827, 34.502388, 38.943283>,  <38.132286, 34.437622, 38.848003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342827, 34.502388, 38.943283>,  <38.693729, 34.610332, 39.102081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342827, 34.502388, 38.943283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436167, -0.102735, -0.893982,
		0.200466, -0.957403, 0.207829,
		-0.877253, -0.269861, -0.396992,
		38.079651, 34.421429, 38.824184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862072, 34.103172, 38.587708>,  <38.693729, 34.610332, 39.102081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862072, 34.103172, 38.587708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484688, 34.210609, 38.510002>,  <38.258259, 34.275074, 38.463379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484688, 34.210609, 38.510002>,  <38.862072, 34.103172, 38.587708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484688, 34.210609, 38.510002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220474, 0.070847, -0.972817,
		-0.247533, -0.960644, -0.126060,
		-0.943461, 0.268597, -0.194260,
		38.201649, 34.291187, 38.451725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579163, 33.744537, 38.052105>,  <38.862072, 34.103172, 38.587708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579163, 33.744537, 38.052105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361004, 34.079807, 38.051682>,  <38.230106, 34.280968, 38.051426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361004, 34.079807, 38.051682>,  <38.579163, 33.744537, 38.052105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361004, 34.079807, 38.051682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177400, 0.114199, -0.977490,
		-0.819187, -0.533312, -0.210977,
		-0.545401, 0.838175, -0.001059,
		38.197384, 34.331261, 38.051365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126778, 33.730881, 37.521114>,  <38.579163, 33.744537, 38.052105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126778, 33.730881, 37.521114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174438, 34.121994, 37.590107>,  <38.203037, 34.356663, 37.631504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174438, 34.121994, 37.590107>,  <38.126778, 33.730881, 37.521114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174438, 34.121994, 37.590107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272689, 0.134812, -0.952611,
		-0.954695, 0.160544, -0.250565,
		0.119156, 0.977779, 0.172483,
		38.210186, 34.415329, 37.641853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022484, 34.000317, 36.925976>,  <38.126778, 33.730881, 37.521114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022484, 34.000317, 36.925976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157207, 34.332603, 37.103275>,  <38.238041, 34.531975, 37.209656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157207, 34.332603, 37.103275>,  <38.022484, 34.000317, 36.925976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157207, 34.332603, 37.103275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424498, 0.286232, -0.858995,
		-0.840454, 0.477474, -0.256233,
		0.336805, 0.830717, 0.443251,
		38.258247, 34.581818, 37.236252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903442, 34.547588, 36.432205>,  <38.022484, 34.000317, 36.925976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903442, 34.547588, 36.432205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191650, 34.668671, 36.681755>,  <38.364574, 34.741322, 36.831486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191650, 34.668671, 36.681755>,  <37.903442, 34.547588, 36.432205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191650, 34.668671, 36.681755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518583, 0.362053, -0.774589,
		-0.460348, 0.881639, 0.103889,
		0.720521, 0.302706, 0.623874,
		38.407806, 34.759483, 36.868916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974201, 35.298733, 36.378830>,  <37.903442, 34.547588, 36.432205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974201, 35.298733, 36.378830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311134, 35.136444, 36.520741>,  <38.513294, 35.039070, 36.605888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311134, 35.136444, 36.520741>,  <37.974201, 35.298733, 36.378830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311134, 35.136444, 36.520741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537448, 0.583091, -0.609224,
		0.040308, 0.703843, 0.709211,
		0.842333, -0.405720, 0.354776,
		38.563835, 35.014729, 36.627174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474457, 35.903725, 36.590427>,  <37.974201, 35.298733, 36.378830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474457, 35.903725, 36.590427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694466, 35.575195, 36.529881>,  <38.826469, 35.378078, 36.493553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694466, 35.575195, 36.529881>,  <38.474457, 35.903725, 36.590427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694466, 35.575195, 36.529881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592692, 0.511567, -0.622105,
		0.588383, 0.252455, 0.768162,
		0.550020, -0.821319, -0.151369,
		38.859470, 35.328800, 36.484470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119621, 36.117409, 36.534782>,  <38.474457, 35.903725, 36.590427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119621, 36.117409, 36.534782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165512, 35.748890, 36.386162>,  <39.193047, 35.527779, 36.296989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165512, 35.748890, 36.386162>,  <39.119621, 36.117409, 36.534782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165512, 35.748890, 36.386162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531988, 0.372846, -0.760247,
		0.838944, -0.110440, 0.532894,
		0.114726, -0.921297, -0.371550,
		39.199928, 35.472500, 36.274696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755245, 36.112114, 36.312752>,  <39.119621, 36.117409, 36.534782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755245, 36.112114, 36.312752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634232, 35.783768, 36.118984>,  <39.561623, 35.586761, 36.002724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634232, 35.783768, 36.118984>,  <39.755245, 36.112114, 36.312752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634232, 35.783768, 36.118984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580790, 0.244215, -0.776557,
		0.755749, -0.516277, 0.402866,
		-0.302533, -0.820863, -0.484414,
		39.543472, 35.537510, 35.973660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386044, 35.723957, 36.020317>,  <39.755245, 36.112114, 36.312752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386044, 35.723957, 36.020317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084812, 35.607986, 35.784077>,  <39.904072, 35.538403, 35.642330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084812, 35.607986, 35.784077>,  <40.386044, 35.723957, 36.020317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084812, 35.607986, 35.784077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527932, 0.269414, -0.805421,
		0.392632, -0.918345, -0.049827,
		-0.753078, -0.289929, -0.590604,
		39.858891, 35.521008, 35.606895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777405, 35.325470, 35.481564>,  <40.386044, 35.723957, 36.020317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777405, 35.325470, 35.481564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417431, 35.438084, 35.348385>,  <40.201447, 35.505653, 35.268478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417431, 35.438084, 35.348385>,  <40.777405, 35.325470, 35.481564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417431, 35.438084, 35.348385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385073, 0.155003, -0.909776,
		-0.204526, -0.946949, -0.247904,
		-0.899938, 0.281534, -0.332942,
		40.147449, 35.522545, 35.248501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582561, 34.867702, 34.878181>,  <40.777405, 35.325470, 35.481564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582561, 34.867702, 34.878181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363609, 35.202324, 34.868752>,  <40.232239, 35.403095, 34.863094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363609, 35.202324, 34.868752>,  <40.582561, 34.867702, 34.878181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363609, 35.202324, 34.868752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232153, 0.124721, -0.964650,
		-0.804040, -0.533502, -0.262478,
		-0.547379, 0.836553, -0.023573,
		40.199394, 35.453289, 34.861679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032246, 34.822117, 34.404591>,  <40.582561, 34.867702, 34.878181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032246, 34.822117, 34.404591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166676, 35.194763, 34.459946>,  <40.247334, 35.418350, 34.493160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166676, 35.194763, 34.459946>,  <40.032246, 34.822117, 34.404591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166676, 35.194763, 34.459946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531794, -0.066429, -0.844264,
		-0.777333, 0.357333, -0.517751,
		0.336077, 0.931612, 0.138390,
		40.267498, 35.474247, 34.501461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899906, 35.306252, 33.829651>,  <40.032246, 34.822117, 34.404591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899906, 35.306252, 33.829651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222561, 35.459156, 34.009972>,  <40.416153, 35.550900, 34.118164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222561, 35.459156, 34.009972>,  <39.899906, 35.306252, 33.829651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222561, 35.459156, 34.009972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458980, 0.075431, -0.885239,
		-0.372398, 0.920970, -0.114607,
		0.806633, 0.382263, 0.450797,
		40.464550, 35.573833, 34.145210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211071, 35.825859, 33.443027>,  <39.899906, 35.306252, 33.829651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211071, 35.825859, 33.443027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534451, 35.794456, 33.676350>,  <40.728477, 35.775616, 33.816341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534451, 35.794456, 33.676350>,  <40.211071, 35.825859, 33.443027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534451, 35.794456, 33.676350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578433, 0.289064, -0.762796,
		-0.108725, 0.954085, 0.279107,
		0.808452, -0.078509, 0.583303,
		40.776985, 35.770905, 33.851341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578930, 36.368225, 33.283436>,  <40.211071, 35.825859, 33.443027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578930, 36.368225, 33.283436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831638, 36.081055, 33.400360>,  <40.983261, 35.908752, 33.470516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831638, 36.081055, 33.400360>,  <40.578930, 36.368225, 33.283436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831638, 36.081055, 33.400360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604713, 0.220542, -0.765299,
		0.484963, 0.660257, 0.573473,
		0.631769, -0.717929, 0.292311,
		41.021168, 35.865677, 33.488052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301899, 36.560753, 33.313541>,  <40.578930, 36.368225, 33.283436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301899, 36.560753, 33.313541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285992, 36.177490, 33.200150>,  <41.276447, 35.947533, 33.132114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285992, 36.177490, 33.200150>,  <41.301899, 36.560753, 33.313541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285992, 36.177490, 33.200150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255769, 0.264491, -0.929853,
		0.965920, -0.109482, 0.234548,
		-0.039767, -0.958154, -0.283479,
		41.274063, 35.890045, 33.115105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935364, 36.476433, 32.894859>,  <41.301899, 36.560753, 33.313541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935364, 36.476433, 32.894859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618908, 36.254478, 32.791943>,  <41.429035, 36.121307, 32.730190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618908, 36.254478, 32.791943>,  <41.935364, 36.476433, 32.894859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618908, 36.254478, 32.791943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149728, 0.232169, -0.961082,
		0.593025, -0.798875, -0.100597,
		-0.791140, -0.554884, -0.257296,
		41.381565, 36.088013, 32.714752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398502, 35.998375, 33.408398>,  <41.935364, 36.476433, 32.894859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398502, 35.998375, 33.408398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419296, 36.377457, 33.282444>,  <42.431770, 36.604904, 33.206871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419296, 36.377457, 33.282444>,  <42.398502, 35.998375, 33.408398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419296, 36.377457, 33.282444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087097, -0.309807, -0.946802,
		-0.994843, 0.076642, 0.066438,
		0.051982, 0.947706, -0.314884,
		42.434891, 36.661770, 33.187981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030750, 36.213585, 33.729046>,  <42.398502, 35.998375, 33.408398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030750, 36.213585, 33.729046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377689, 36.233212, 33.927158>,  <43.585854, 36.244987, 34.046024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.377689, 36.233212, 33.927158>,  <43.030750, 36.213585, 33.729046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377689, 36.233212, 33.927158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280589, 0.870116, 0.405176,
		-0.411069, -0.490398, 0.768461,
		0.867348, 0.049066, 0.495278,
		43.637894, 36.247932, 34.075741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884823, 36.474590, 34.431892>,  <43.030750, 36.213585, 33.729046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884823, 36.474590, 34.431892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275204, 36.548553, 34.385708>,  <43.509430, 36.592934, 34.357998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275204, 36.548553, 34.385708>,  <42.884823, 36.474590, 34.431892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275204, 36.548553, 34.385708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121688, 0.901541, 0.415229,
		0.180876, -0.391192, 0.902359,
		0.975949, 0.184912, -0.115464,
		43.567989, 36.604027, 34.351070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085377, 36.836597, 35.015064>,  <42.884823, 36.474590, 34.431892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085377, 36.836597, 35.015064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372925, 36.918213, 34.749252>,  <43.545452, 36.967182, 34.589764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372925, 36.918213, 34.749252>,  <43.085377, 36.836597, 35.015064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372925, 36.918213, 34.749252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001024, 0.955644, 0.294524,
		0.695148, -0.212404, 0.686770,
		0.718866, 0.204034, -0.664531,
		43.588585, 36.979424, 34.549892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644184, 37.275169, 35.379272>,  <43.085377, 36.836597, 35.015064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644184, 37.275169, 35.379272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707176, 37.343239, 34.990173>,  <43.744972, 37.384079, 34.756714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707176, 37.343239, 34.990173>,  <43.644184, 37.275169, 35.379272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707176, 37.343239, 34.990173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102718, 0.982520, 0.155251,
		0.982161, 0.075465, 0.172232,
		0.157505, 0.170173, -0.972745,
		43.754421, 37.394291, 34.698349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839928, 37.972473, 35.450554>,  <43.644184, 37.275169, 35.379272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839928, 37.972473, 35.450554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782143, 37.953815, 35.055191>,  <43.747471, 37.942623, 34.817974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782143, 37.953815, 35.055191>,  <43.839928, 37.972473, 35.450554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782143, 37.953815, 35.055191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109985, 0.993456, -0.030805,
		0.983379, 0.104261, -0.148646,
		-0.144461, -0.046642, -0.988411,
		43.738804, 37.939823, 34.758667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362804, 38.317043, 35.116222>,  <43.839928, 37.972473, 35.450554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362804, 38.317043, 35.116222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057980, 38.320980, 34.857250>,  <43.875084, 38.323341, 34.701866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057980, 38.320980, 34.857250>,  <44.362804, 38.317043, 35.116222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057980, 38.320980, 34.857250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012550, 0.999921, 0.000430,
		0.647385, -0.007797, -0.762123,
		-0.762060, 0.009843, -0.647432,
		43.829361, 38.323933, 34.663021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346855, 38.918236, 34.886063>,  <44.362804, 38.317043, 35.116222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346855, 38.918236, 34.886063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007721, 38.809296, 34.704071>,  <43.804241, 38.743931, 34.594875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007721, 38.809296, 34.704071>,  <44.346855, 38.918236, 34.886063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007721, 38.809296, 34.704071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253047, 0.961826, -0.104199,
		0.465988, 0.026787, -0.884385,
		-0.847834, -0.272347, -0.454978,
		43.753372, 38.727592, 34.567577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300781, 39.270954, 34.266220>,  <44.346855, 38.918236, 34.886063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300781, 39.270954, 34.266220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929253, 39.192928, 34.392231>,  <43.706337, 39.146114, 34.467838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929253, 39.192928, 34.392231>,  <44.300781, 39.270954, 34.266220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929253, 39.192928, 34.392231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235323, 0.967272, -0.094905,
		-0.286203, -0.162283, -0.944326,
		-0.928822, -0.195060, 0.315025,
		43.650604, 39.134411, 34.486740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863510, 39.597630, 33.835197>,  <44.300781, 39.270954, 34.266220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863510, 39.597630, 33.835197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.651814, 39.547787, 34.170906>,  <43.524796, 39.517879, 34.372330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.651814, 39.547787, 34.170906>,  <43.863510, 39.597630, 33.835197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651814, 39.547787, 34.170906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288086, 0.956785, -0.039606,
		-0.798067, -0.262743, -0.542268,
		-0.529240, -0.124611, 0.839271,
		43.493042, 39.510403, 34.422688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245388, 39.898487, 33.638035>,  <43.863510, 39.597630, 33.835197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245388, 39.898487, 33.638035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190773, 39.874844, 34.033585>,  <43.158005, 39.860657, 34.270912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190773, 39.874844, 34.033585>,  <43.245388, 39.898487, 33.638035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190773, 39.874844, 34.033585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287893, 0.957503, 0.017481,
		-0.947879, -0.282301, -0.147752,
		-0.136538, -0.059107, 0.988870,
		43.149811, 39.857113, 34.330246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550152, 40.032642, 33.810413>,  <43.245388, 39.898487, 33.638035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550152, 40.032642, 33.810413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795452, 40.118198, 34.114563>,  <42.942635, 40.169533, 34.297054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795452, 40.118198, 34.114563>,  <42.550152, 40.032642, 33.810413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795452, 40.118198, 34.114563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259775, 0.963704, -0.061574,
		-0.745948, -0.159766, 0.646558,
		0.613253, 0.213890, 0.760376,
		42.979427, 40.182365, 34.342674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175079, 40.647568, 34.130878>,  <42.550152, 40.032642, 33.810413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175079, 40.647568, 34.130878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541313, 40.626850, 34.290386>,  <42.761055, 40.614422, 34.386089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541313, 40.626850, 34.290386>,  <42.175079, 40.647568, 34.130878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541313, 40.626850, 34.290386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026469, 0.997283, 0.068749,
		-0.401246, -0.052391, 0.914471,
		0.915588, -0.051790, 0.398769,
		42.815990, 40.611313, 34.410015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047554, 41.123474, 34.690796>,  <42.175079, 40.647568, 34.130878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047554, 41.123474, 34.690796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442139, 41.082710, 34.639408>,  <42.678890, 41.058250, 34.608578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442139, 41.082710, 34.639408>,  <42.047554, 41.123474, 34.690796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442139, 41.082710, 34.639408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112062, 0.990911, 0.074407,
		0.119717, -0.087796, 0.988918,
		0.986463, -0.101913, -0.128467,
		42.738079, 41.052135, 34.600868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441757, 41.444881, 35.310623>,  <42.047554, 41.123474, 34.690796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441757, 41.444881, 35.310623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690796, 41.403347, 35.000374>,  <42.840218, 41.378426, 34.814224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690796, 41.403347, 35.000374>,  <42.441757, 41.444881, 35.310623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690796, 41.403347, 35.000374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354460, 0.921069, 0.161215,
		0.697663, -0.375300, 0.610259,
		0.622595, -0.103839, -0.775625,
		42.877575, 41.372196, 34.767685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043468, 41.647713, 35.508526>,  <42.441757, 41.444881, 35.310623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043468, 41.647713, 35.508526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120502, 41.695248, 35.118904>,  <43.166725, 41.723766, 34.885132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120502, 41.695248, 35.118904>,  <43.043468, 41.647713, 35.508526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120502, 41.695248, 35.118904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344540, 0.921253, 0.180513,
		0.918804, -0.370367, 0.136483,
		0.192592, 0.118832, -0.974058,
		43.178280, 41.730896, 34.826687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620014, 42.151928, 35.434330>,  <43.043468, 41.647713, 35.508526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620014, 42.151928, 35.434330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465179, 42.151382, 35.065514>,  <43.372276, 42.151054, 34.844223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465179, 42.151382, 35.065514>,  <43.620014, 42.151928, 35.434330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465179, 42.151382, 35.065514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114022, 0.992253, -0.049334,
		0.914964, -0.124230, -0.383937,
		-0.387092, -0.001362, -0.922040,
		43.349052, 42.150974, 34.788902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091518, 42.583088, 35.069748>,  <43.620014, 42.151928, 35.434330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091518, 42.583088, 35.069748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745644, 42.582138, 34.868824>,  <43.538120, 42.581566, 34.748268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745644, 42.582138, 34.868824>,  <44.091518, 42.583088, 35.069748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745644, 42.582138, 34.868824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025506, 0.998491, -0.048632,
		0.501667, -0.054863, -0.863319,
		-0.864685, -0.002377, -0.502309,
		43.486237, 42.581425, 34.718132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189754, 42.904839, 34.457901>,  <44.091518, 42.583088, 35.069748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189754, 42.904839, 34.457901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793777, 42.936893, 34.504520>,  <43.556190, 42.956127, 34.532494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793777, 42.936893, 34.504520>,  <44.189754, 42.904839, 34.457901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793777, 42.936893, 34.504520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075212, 0.996102, -0.046085,
		-0.119790, -0.036855, -0.992115,
		-0.989946, 0.080139, 0.116551,
		43.496792, 42.960934, 34.539486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888386, 43.438412, 34.028473>,  <44.189754, 42.904839, 34.457901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888386, 43.438412, 34.028473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609306, 43.399059, 34.312313>,  <43.441860, 43.375450, 34.482616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609306, 43.399059, 34.312313>,  <43.888386, 43.438412, 34.028473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609306, 43.399059, 34.312313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098520, 0.967938, 0.231061,
		-0.709584, 0.231121, -0.665637,
		-0.697699, -0.098378, 0.709604,
		43.399998, 43.369545, 34.525196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362629, 43.969917, 33.962673>,  <43.888386, 43.438412, 34.028473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362629, 43.969917, 33.962673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332848, 43.863197, 34.347023>,  <43.314980, 43.799164, 34.577633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332848, 43.863197, 34.347023>,  <43.362629, 43.969917, 33.962673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332848, 43.863197, 34.347023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100604, 0.960639, 0.258942,
		-0.992137, -0.077388, -0.098363,
		-0.074453, -0.266802, 0.960871,
		43.310513, 43.783157, 34.635284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754715, 44.350689, 34.201408>,  <43.362629, 43.969917, 33.962673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754715, 44.350689, 34.201408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929203, 44.242325, 34.544647>,  <43.033894, 44.177307, 34.750591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929203, 44.242325, 34.544647>,  <42.754715, 44.350689, 34.201408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929203, 44.242325, 34.544647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214069, 0.894986, 0.391375,
		-0.874008, -0.354415, 0.332415,
		0.436216, -0.270906, 0.858094,
		43.060066, 44.161053, 34.802074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287735, 44.555466, 34.624611>,  <42.754715, 44.350689, 34.201408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287735, 44.555466, 34.624611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653511, 44.550953, 34.786438>,  <42.872974, 44.548244, 34.883533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653511, 44.550953, 34.786438>,  <42.287735, 44.555466, 34.624611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653511, 44.550953, 34.786438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133142, 0.935590, 0.327024,
		-0.382198, -0.352908, 0.854038,
		0.914438, -0.011280, 0.404568,
		42.927841, 44.547569, 34.907810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252628, 44.691971, 35.261238>,  <42.287735, 44.555466, 34.624611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252628, 44.691971, 35.261238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631798, 44.791229, 35.181381>,  <42.859299, 44.850784, 35.133469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631798, 44.791229, 35.181381>,  <42.252628, 44.691971, 35.261238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631798, 44.791229, 35.181381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128693, 0.871835, 0.472590,
		0.291326, -0.422289, 0.858371,
		0.947928, 0.248144, -0.199642,
		42.916176, 44.865673, 35.121487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484608, 44.880493, 35.910702>,  <42.252628, 44.691971, 35.261238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484608, 44.880493, 35.910702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714531, 45.063408, 35.639263>,  <42.852486, 45.173157, 35.476402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714531, 45.063408, 35.639263>,  <42.484608, 44.880493, 35.910702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714531, 45.063408, 35.639263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249244, 0.887718, 0.387084,
		0.779406, -0.053364, 0.624242,
		0.574808, 0.457285, -0.678592,
		42.886974, 45.200592, 35.435684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728912, 45.572250, 35.954830>,  <42.484608, 44.880493, 35.910702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728912, 45.572250, 35.954830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784042, 45.582321, 36.350883>,  <42.817120, 45.588364, 36.588516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784042, 45.582321, 36.350883>,  <42.728912, 45.572250, 35.954830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784042, 45.582321, 36.350883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925308, 0.353297, -0.137789,
		-0.353282, 0.935172, 0.025396,
		0.137829, 0.025179, 0.990136,
		42.825390, 45.589874, 36.647923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404549, 45.757477, 35.946018>,  <42.728912, 45.572250, 35.954830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404549, 45.757477, 35.946018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334309, 45.738972, 36.339367>,  <43.292164, 45.727867, 36.575375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334309, 45.738972, 36.339367>,  <43.404549, 45.757477, 35.946018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334309, 45.738972, 36.339367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925903, 0.331607, 0.180942,
		-0.334465, 0.942282, -0.015394,
		-0.175603, -0.046266, 0.983373,
		43.281628, 45.725094, 36.634380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626080, 45.612587, 35.186874>,  <43.404549, 45.757477, 35.946018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626080, 45.612587, 35.186874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886047, 45.744678, 35.460678>,  <44.042030, 45.823933, 35.624958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886047, 45.744678, 35.460678>,  <43.626080, 45.612587, 35.186874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886047, 45.744678, 35.460678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703397, -0.602441, -0.377223,
		0.287805, 0.726647, -0.623821,
		0.649923, 0.330227, 0.684507,
		44.081024, 45.843746, 35.666031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247028, 45.775974, 34.810581>,  <43.626080, 45.612587, 35.186874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247028, 45.775974, 34.810581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348892, 45.718048, 35.193031>,  <44.410011, 45.683292, 35.422501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348892, 45.718048, 35.193031>,  <44.247028, 45.775974, 34.810581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348892, 45.718048, 35.193031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758406, -0.583524, -0.290378,
		0.599973, 0.799080, -0.038773,
		0.254660, -0.144813, 0.956126,
		44.425289, 45.674603, 35.479870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.940491, 45.764622, 34.807755>,  <44.247028, 45.775974, 34.810581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.940491, 45.764622, 34.807755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833450, 45.562527, 35.135933>,  <44.769226, 45.441269, 35.332840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833450, 45.562527, 35.135933>,  <44.940491, 45.764622, 34.807755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833450, 45.562527, 35.135933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675238, -0.705761, -0.214372,
		0.687345, 0.496629, 0.530015,
		-0.267600, -0.505235, 0.820444,
		44.753170, 45.410957, 35.382065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.522251, 45.613552, 35.114368>,  <44.940491, 45.764622, 34.807755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.522251, 45.613552, 35.114368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235245, 45.348557, 35.200409>,  <45.063042, 45.189560, 35.252033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235245, 45.348557, 35.200409>,  <45.522251, 45.613552, 35.114368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235245, 45.348557, 35.200409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686844, -0.724293, 0.060366,
		0.115804, 0.191054, 0.974725,
		-0.717520, -0.662493, 0.215100,
		45.019989, 45.149807, 35.264938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731632, 45.235790, 35.629307>,  <45.522251, 45.613552, 35.114368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731632, 45.235790, 35.629307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470688, 45.001278, 35.437183>,  <45.314121, 44.860573, 35.321907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470688, 45.001278, 35.437183>,  <45.731632, 45.235790, 35.629307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470688, 45.001278, 35.437183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601460, -0.786075, 0.142589,
		-0.461157, -0.195869, 0.865430,
		-0.652364, -0.586278, -0.480312,
		45.274979, 44.825394, 35.293091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624744, 44.585335, 36.106285>,  <45.731632, 45.235790, 35.629307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624744, 44.585335, 36.106285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551201, 44.504784, 35.721443>,  <45.507076, 44.456451, 35.490540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551201, 44.504784, 35.721443>,  <45.624744, 44.585335, 36.106285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.551201, 44.504784, 35.721443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485175, -0.869840, 0.089349,
		-0.854869, -0.450361, 0.257631,
		-0.183859, -0.201378, -0.962103,
		45.496044, 44.444370, 35.432812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.419697, 43.916336, 36.050972>,  <45.624744, 44.585335, 36.106285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.419697, 43.916336, 36.050972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.539482, 43.974625, 35.673805>,  <45.611351, 44.009598, 35.447506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.539482, 43.974625, 35.673805>,  <45.419697, 43.916336, 36.050972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539482, 43.974625, 35.673805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243513, -0.967211, -0.072135,
		-0.922510, -0.208010, -0.325127,
		0.299462, 0.145718, -0.942915,
		45.629322, 44.018341, 35.390930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048965, 43.380638, 35.695278>,  <45.419697, 43.916336, 36.050972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048965, 43.380638, 35.695278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352528, 43.506741, 35.467358>,  <45.534664, 43.582401, 35.330605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.352528, 43.506741, 35.467358>,  <45.048965, 43.380638, 35.695278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352528, 43.506741, 35.467358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226522, -0.948159, -0.222894,
		-0.610535, 0.040082, -0.790974,
		0.758904, 0.315258, -0.569805,
		45.580200, 43.601318, 35.296417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.129601, 42.971706, 35.120251>,  <45.048965, 43.380638, 35.695278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.129601, 42.971706, 35.120251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.486412, 43.140785, 35.056232>,  <45.700497, 43.242233, 35.017822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.486412, 43.140785, 35.056232>,  <45.129601, 42.971706, 35.120251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.486412, 43.140785, 35.056232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338054, -0.858989, -0.384523,
		-0.300015, 0.288901, -0.909136,
		0.892026, 0.422699, -0.160045,
		45.754021, 43.267593, 35.008217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370754, 43.024197, 34.411797>,  <45.129601, 42.971706, 35.120251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370754, 43.024197, 34.411797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.711384, 43.023369, 34.621487>,  <45.915764, 43.022873, 34.747299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.711384, 43.023369, 34.621487>,  <45.370754, 43.024197, 34.411797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711384, 43.023369, 34.621487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206689, -0.917659, -0.339383,
		0.481764, 0.397363, -0.781029,
		0.851577, -0.002072, 0.524226,
		45.966858, 43.022747, 34.778755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689182, 42.416920, 34.063354>,  <45.370754, 43.024197, 34.411797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689182, 42.416920, 34.063354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932247, 42.515259, 34.365429>,  <46.078087, 42.574265, 34.546673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932247, 42.515259, 34.365429>,  <45.689182, 42.416920, 34.063354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.932247, 42.515259, 34.365429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388525, -0.921351, -0.012684,
		0.692670, 0.301115, -0.655392,
		0.607665, 0.245850, 0.755183,
		46.114548, 42.589012, 34.591984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.398117, 42.199131, 33.890118>,  <45.689182, 42.416920, 34.063354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.398117, 42.199131, 33.890118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355110, 42.203285, 34.287777>,  <46.329304, 42.205776, 34.526371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355110, 42.203285, 34.287777>,  <46.398117, 42.199131, 33.890118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.355110, 42.203285, 34.287777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454566, -0.888793, 0.058446,
		0.884200, 0.458190, 0.090844,
		-0.107521, 0.010383, 0.994148,
		46.322853, 42.206402, 34.586021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.041351, 42.051167, 34.107052>,  <46.398117, 42.199131, 33.890118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.041351, 42.051167, 34.107052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.809204, 41.957684, 34.419090>,  <46.669914, 41.901592, 34.606316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.809204, 41.957684, 34.419090>,  <47.041351, 42.051167, 34.107052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.809204, 41.957684, 34.419090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445361, -0.893076, 0.063781,
		0.681782, 0.384443, 0.622396,
		-0.580368, -0.233706, 0.780099,
		46.635094, 41.887573, 34.653122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.504585, 41.780910, 34.730343>,  <47.041351, 42.051167, 34.107052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.504585, 41.780910, 34.730343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.128590, 41.663670, 34.800205>,  <46.902992, 41.593323, 34.842121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.128590, 41.663670, 34.800205>,  <47.504585, 41.780910, 34.730343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.128590, 41.663670, 34.800205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327683, -0.918158, 0.222732,
		0.095078, 0.266598, 0.959107,
		-0.939991, -0.293106, 0.174657,
		46.846592, 41.575737, 34.852604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.628757, 41.202286, 35.144150>,  <47.504585, 41.780910, 34.730343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.628757, 41.202286, 35.144150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.237110, 41.183826, 35.064960>,  <47.002121, 41.172752, 35.017445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.237110, 41.183826, 35.064960>,  <47.628757, 41.202286, 35.144150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.237110, 41.183826, 35.064960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028947, -0.932324, 0.360463,
		-0.201213, 0.358667, 0.911521,
		-0.979120, -0.046144, -0.197978,
		46.943375, 41.169983, 35.005566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.375374, 40.841759, 35.682117>,  <47.628757, 41.202286, 35.144150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.375374, 40.841759, 35.682117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110859, 40.782124, 35.388050>,  <46.952152, 40.746342, 35.211609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.110859, 40.782124, 35.388050>,  <47.375374, 40.841759, 35.682117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.110859, 40.782124, 35.388050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025965, -0.974913, 0.221065,
		-0.749685, 0.165276, 0.640825,
		-0.661285, -0.149090, -0.735169,
		46.912472, 40.737396, 35.167500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.843418, 40.454582, 35.948708>,  <47.375374, 40.841759, 35.682117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.843418, 40.454582, 35.948708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.804798, 40.385521, 35.556610>,  <46.781628, 40.344086, 35.321354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.804798, 40.385521, 35.556610>,  <46.843418, 40.454582, 35.948708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.804798, 40.385521, 35.556610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076087, -0.980679, 0.180220,
		-0.992416, 0.091983, 0.081546,
		-0.096548, -0.172648, -0.980240,
		46.775833, 40.333725, 35.262539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.267574, 39.996582, 35.862339>,  <46.843418, 40.454582, 35.948708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.267574, 39.996582, 35.862339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443180, 39.960468, 35.504765>,  <46.548546, 39.938801, 35.290222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.443180, 39.960468, 35.504765>,  <46.267574, 39.996582, 35.862339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443180, 39.960468, 35.504765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230047, -0.973068, -0.014700,
		-0.868529, 0.212100, -0.447963,
		0.439016, -0.090285, -0.893931,
		46.574886, 39.933384, 35.236584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863892, 39.680256, 35.516216>,  <46.267574, 39.996582, 35.862339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863892, 39.680256, 35.516216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189583, 39.583614, 35.305061>,  <46.384998, 39.525631, 35.178368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189583, 39.583614, 35.305061>,  <45.863892, 39.680256, 35.516216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.189583, 39.583614, 35.305061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422706, -0.869998, -0.253816,
		-0.397937, 0.429804, -0.810502,
		0.814227, -0.241601, -0.527886,
		46.433849, 39.511135, 35.146694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.598354, 39.243469, 35.003826>,  <45.863892, 39.680256, 35.516216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.598354, 39.243469, 35.003826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992886, 39.182308, 35.028423>,  <46.229603, 39.145611, 35.043182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.992886, 39.182308, 35.028423>,  <45.598354, 39.243469, 35.003826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992886, 39.182308, 35.028423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144079, -0.981157, -0.128734,
		0.080017, 0.118114, -0.989771,
		0.986326, -0.152906, 0.061492,
		46.288784, 39.136436, 35.046871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.752995, 38.826714, 34.428631>,  <45.598354, 39.243469, 35.003826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.752995, 38.826714, 34.428631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055119, 38.764297, 34.683239>,  <46.236393, 38.726849, 34.836002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055119, 38.764297, 34.683239>,  <45.752995, 38.826714, 34.428631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.055119, 38.764297, 34.683239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115225, -0.924496, -0.363359,
		0.645159, 0.347792, -0.680302,
		0.755310, -0.156036, 0.636522,
		46.281712, 38.717487, 34.874195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191280, 38.361389, 34.070831>,  <45.752995, 38.826714, 34.428631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191280, 38.361389, 34.070831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.270367, 38.315643, 34.460258>,  <46.317818, 38.288197, 34.693913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.270367, 38.315643, 34.460258>,  <46.191280, 38.361389, 34.070831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.270367, 38.315643, 34.460258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023204, -0.992347, -0.121281,
		0.979985, 0.046570, -0.193549,
		0.197716, -0.114362, 0.973565,
		46.329681, 38.281334, 34.752327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.546375, 37.771709, 34.046047>,  <46.191280, 38.361389, 34.070831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.546375, 37.771709, 34.046047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458710, 37.806950, 34.434727>,  <46.406109, 37.828094, 34.667934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458710, 37.806950, 34.434727>,  <46.546375, 37.771709, 34.046047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458710, 37.806950, 34.434727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000781, -0.995899, 0.090474,
		0.975687, 0.020587, 0.218198,
		-0.219166, 0.088104, 0.971702,
		46.392960, 37.833382, 34.726238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.048573, 37.399311, 34.369701>,  <46.546375, 37.771709, 34.046047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.048573, 37.399311, 34.369701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.742512, 37.422161, 34.626225>,  <46.558876, 37.435871, 34.780140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.742512, 37.422161, 34.626225>,  <47.048573, 37.399311, 34.369701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.742512, 37.422161, 34.626225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011848, -0.994639, 0.102731,
		0.643736, 0.086203, 0.760376,
		-0.765155, 0.057123, 0.641306,
		46.512966, 37.439297, 34.818615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.294632, 37.070168, 35.051346>,  <47.048573, 37.399311, 34.369701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.294632, 37.070168, 35.051346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895504, 37.049942, 35.068329>,  <46.656029, 37.037807, 35.078518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895504, 37.049942, 35.068329>,  <47.294632, 37.070168, 35.051346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895504, 37.049942, 35.068329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059663, -0.965907, 0.251919,
		0.028276, 0.253902, 0.966816,
		-0.997818, -0.050560, 0.042460,
		46.596157, 37.034775, 35.081066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.161728, 36.466362, 35.298805>,  <47.294632, 37.070168, 35.051346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.161728, 36.466362, 35.298805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.774807, 36.496464, 35.201923>,  <46.542656, 36.514526, 35.143795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.774807, 36.496464, 35.201923>,  <47.161728, 36.466362, 35.298805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.774807, 36.496464, 35.201923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127419, -0.969895, 0.207529,
		-0.219292, 0.231604, 0.947771,
		-0.967303, 0.075255, -0.242201,
		46.484615, 36.519039, 35.129265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.291489, 36.056324, 35.838593>,  <47.161728, 36.466362, 35.298805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.291489, 36.056324, 35.838593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.381512, 35.670750, 35.895412>,  <47.435524, 35.439404, 35.929504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.381512, 35.670750, 35.895412>,  <47.291489, 36.056324, 35.838593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.381512, 35.670750, 35.895412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251965, -0.198404, -0.947180,
		0.941204, 0.177376, -0.287530,
		0.225054, -0.963937, 0.142046,
		47.449028, 35.381569, 35.938026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.849369, 35.854408, 35.264210>,  <47.291489, 36.056324, 35.838593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.849369, 35.854408, 35.264210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631432, 35.549549, 35.404083>,  <47.500671, 35.366634, 35.488007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631432, 35.549549, 35.404083>,  <47.849369, 35.854408, 35.264210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.631432, 35.549549, 35.404083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308246, -0.205781, -0.928783,
		0.779830, -0.613826, -0.122812,
		-0.544839, -0.762149, 0.349684,
		47.467979, 35.320904, 35.508987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.116207, 35.179901, 34.998589>,  <47.849369, 35.854408, 35.264210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.116207, 35.179901, 34.998589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.722958, 35.215881, 35.062317>,  <47.487007, 35.237469, 35.100555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.722958, 35.215881, 35.062317>,  <48.116207, 35.179901, 34.998589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.722958, 35.215881, 35.062317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175734, -0.221948, -0.959092,
		-0.050905, -0.970901, 0.234008,
		-0.983121, 0.089945, 0.159322,
		47.428020, 35.242867, 35.110115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.800652, 34.578106, 34.936871>,  <48.116207, 35.179901, 34.998589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.800652, 34.578106, 34.936871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.599186, 34.906368, 34.828907>,  <47.478306, 35.103325, 34.764130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.599186, 34.906368, 34.828907>,  <47.800652, 34.578106, 34.936871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.599186, 34.906368, 34.828907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188084, -0.200766, -0.961414,
		-0.843176, -0.534996, -0.053233,
		-0.503665, 0.820653, -0.269905,
		47.448086, 35.152565, 34.747936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.016640, 37.901310, 44.367458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623795, 37.889297, 44.441811>,  <38.388088, 37.882088, 44.486420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623795, 37.889297, 44.441811>,  <39.016640, 37.901310, 44.367458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623795, 37.889297, 44.441811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186991, 0.271296, -0.944157,
		-0.022071, -0.962027, -0.272060,
		-0.982114, -0.030035, 0.185878,
		38.329159, 37.880287, 44.497574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693413, 37.579571, 43.769794>,  <39.016640, 37.901310, 44.367458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693413, 37.579571, 43.769794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382271, 37.779083, 43.922714>,  <38.195587, 37.898792, 44.014465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382271, 37.779083, 43.922714>,  <38.693413, 37.579571, 43.769794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382271, 37.779083, 43.922714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245749, 0.318474, -0.915523,
		-0.578402, -0.806095, -0.125151,
		-0.777855, 0.498784, 0.382303,
		38.148914, 37.928719, 44.037407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131748, 37.486340, 43.275356>,  <38.693413, 37.579571, 43.769794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131748, 37.486340, 43.275356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009533, 37.792351, 43.502117>,  <37.936203, 37.975956, 43.638172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009533, 37.792351, 43.502117>,  <38.131748, 37.486340, 43.275356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009533, 37.792351, 43.502117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545453, 0.347377, -0.762765,
		-0.780465, -0.542274, 0.311149,
		-0.305541, 0.765028, 0.566901,
		37.917870, 38.021858, 43.672188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321087, 37.524986, 43.286800>,  <38.131748, 37.486340, 43.275356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321087, 37.524986, 43.286800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465637, 37.889900, 43.363895>,  <37.552368, 38.108849, 43.410152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465637, 37.889900, 43.363895>,  <37.321087, 37.524986, 43.286800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465637, 37.889900, 43.363895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588008, 0.383394, -0.712219,
		-0.723638, 0.144051, 0.674979,
		0.361379, 0.912282, 0.192735,
		37.574051, 38.163586, 43.421715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721912, 37.937073, 43.413902>,  <37.321087, 37.524986, 43.286800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721912, 37.937073, 43.413902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.031055, 38.159912, 43.292362>,  <37.216541, 38.293617, 43.219437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.031055, 38.159912, 43.292362>,  <36.721912, 37.937073, 43.413902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031055, 38.159912, 43.292362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591962, 0.460435, -0.661499,
		-0.228616, 0.691115, 0.685634,
		0.772862, 0.557099, -0.303851,
		37.262913, 38.327042, 43.201206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527802, 38.599846, 43.243141>,  <36.721912, 37.937073, 43.413902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527802, 38.599846, 43.243141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.865547, 38.568935, 43.031075>,  <37.068195, 38.550388, 42.903835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.865547, 38.568935, 43.031075>,  <36.527802, 38.599846, 43.243141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865547, 38.568935, 43.031075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440779, 0.462334, -0.769390,
		0.304572, 0.883332, 0.356315,
		0.844364, -0.077278, -0.530168,
		37.118855, 38.545753, 42.872025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528637, 39.188126, 42.833454>,  <36.527802, 38.599846, 43.243141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528637, 39.188126, 42.833454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814659, 38.969894, 42.658619>,  <36.986271, 38.838955, 42.553719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814659, 38.969894, 42.658619>,  <36.528637, 39.188126, 42.833454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814659, 38.969894, 42.658619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281960, 0.347044, -0.894460,
		0.639687, 0.762826, 0.094323,
		0.715052, -0.545579, -0.437086,
		37.029175, 38.806221, 42.527493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864944, 39.682709, 42.365887>,  <36.528637, 39.188126, 42.833454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864944, 39.682709, 42.365887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.962204, 39.317268, 42.235527>,  <37.020561, 39.098003, 42.157310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.962204, 39.317268, 42.235527>,  <36.864944, 39.682709, 42.365887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962204, 39.317268, 42.235527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106183, 0.308897, -0.945150,
		0.964159, 0.264418, -0.021900,
		0.243150, -0.913600, -0.325903,
		37.035149, 39.043190, 42.137756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430927, 39.745003, 41.823917>,  <36.864944, 39.682709, 42.365887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430927, 39.745003, 41.823917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263390, 39.389202, 41.750858>,  <37.162868, 39.175724, 41.707024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263390, 39.389202, 41.750858>,  <37.430927, 39.745003, 41.823917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263390, 39.389202, 41.750858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051933, 0.224278, -0.973140,
		0.906572, -0.398109, -0.140132,
		-0.418845, -0.889499, -0.182649,
		37.137737, 39.122353, 41.696064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770782, 39.505146, 41.182495>,  <37.430927, 39.745003, 41.823917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770782, 39.505146, 41.182495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.447117, 39.275684, 41.233360>,  <37.252918, 39.138008, 41.263882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.447117, 39.275684, 41.233360>,  <37.770782, 39.505146, 41.182495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447117, 39.275684, 41.233360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081365, -0.104946, -0.991144,
		0.581924, -0.812343, 0.038243,
		-0.809163, -0.573659, 0.127167,
		37.204369, 39.103588, 41.271511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838383, 38.915802, 40.827675>,  <37.770782, 39.505146, 41.182495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838383, 38.915802, 40.827675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446621, 38.984833, 40.869591>,  <37.211563, 39.026249, 40.894741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446621, 38.984833, 40.869591>,  <37.838383, 38.915802, 40.827675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446621, 38.984833, 40.869591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121277, -0.087894, -0.988720,
		-0.161423, -0.981066, 0.107014,
		-0.979405, 0.172580, 0.104792,
		37.152798, 39.036606, 40.901028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618889, 38.334137, 40.427357>,  <37.838383, 38.915802, 40.827675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618889, 38.334137, 40.427357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.287815, 38.554211, 40.471596>,  <37.089169, 38.686256, 40.498138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.287815, 38.554211, 40.471596>,  <37.618889, 38.334137, 40.427357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287815, 38.554211, 40.471596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274380, -0.224819, -0.934972,
		-0.489543, -0.804209, 0.337039,
		-0.827685, 0.550186, 0.110601,
		37.039509, 38.719265, 40.504776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066536, 37.892521, 40.337967>,  <37.618889, 38.334137, 40.427357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066536, 37.892521, 40.337967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925186, 38.255447, 40.246841>,  <36.840378, 38.473206, 40.192165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925186, 38.255447, 40.246841>,  <37.066536, 37.892521, 40.337967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925186, 38.255447, 40.246841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207868, -0.313597, -0.926525,
		-0.912095, -0.280054, 0.299419,
		-0.353373, 0.907318, -0.227816,
		36.819176, 38.527641, 40.178497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613941, 37.732452, 39.844883>,  <37.066536, 37.892521, 40.337967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613941, 37.732452, 39.844883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635326, 38.127686, 39.787148>,  <36.648159, 38.364826, 39.752506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635326, 38.127686, 39.787148>,  <36.613941, 37.732452, 39.844883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635326, 38.127686, 39.787148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267141, -0.125122, -0.955500,
		-0.962173, 0.089646, 0.257268,
		0.053467, 0.988083, -0.144337,
		36.651367, 38.424110, 39.743847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018387, 37.888664, 39.426399>,  <36.613941, 37.732452, 39.844883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018387, 37.888664, 39.426399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.278690, 38.180969, 39.343933>,  <36.434872, 38.356350, 39.294453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.278690, 38.180969, 39.343933>,  <36.018387, 37.888664, 39.426399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278690, 38.180969, 39.343933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106777, -0.180754, -0.977715,
		-0.751740, 0.658270, -0.039599,
		0.650758, 0.730759, -0.206168,
		36.473919, 38.400196, 39.282082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706989, 38.325142, 38.840221>,  <36.018387, 37.888664, 39.426399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706989, 38.325142, 38.840221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100826, 38.395065, 38.842072>,  <36.337128, 38.437019, 38.843182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100826, 38.395065, 38.842072>,  <35.706989, 38.325142, 38.840221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100826, 38.395065, 38.842072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018042, -0.075222, -0.997004,
		-0.173938, 0.981725, -0.077217,
		0.984591, 0.174810, 0.004629,
		36.396202, 38.447510, 38.843460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798859, 38.830181, 38.320103>,  <35.706989, 38.325142, 38.840221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798859, 38.830181, 38.320103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.172497, 38.713272, 38.402122>,  <36.396679, 38.643127, 38.451336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.172497, 38.713272, 38.402122>,  <35.798859, 38.830181, 38.320103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172497, 38.713272, 38.402122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234790, 0.070188, -0.969509,
		0.268970, 0.953755, 0.134186,
		0.934092, -0.292275, 0.205054,
		36.452724, 38.625591, 38.463638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262737, 39.289749, 37.938683>,  <35.798859, 38.830181, 38.320103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262737, 39.289749, 37.938683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486370, 38.968040, 38.019264>,  <36.620548, 38.775017, 38.067612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486370, 38.968040, 38.019264>,  <36.262737, 39.289749, 37.938683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486370, 38.968040, 38.019264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279871, -0.045647, -0.958952,
		0.780451, 0.592509, 0.199571,
		0.559078, -0.804270, 0.201451,
		36.654095, 38.726761, 38.079700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794575, 39.413769, 37.618065>,  <36.262737, 39.289749, 37.938683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794575, 39.413769, 37.618065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802120, 39.017200, 37.669811>,  <36.806648, 38.779259, 37.700859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802120, 39.017200, 37.669811>,  <36.794575, 39.413769, 37.618065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802120, 39.017200, 37.669811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303711, -0.117597, -0.945479,
		0.952578, 0.057123, 0.298886,
		0.018860, -0.991417, 0.129369,
		36.807777, 38.719776, 37.708622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505123, 39.223976, 37.453835>,  <36.794575, 39.413769, 37.618065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505123, 39.223976, 37.453835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274513, 38.903126, 37.391590>,  <37.136147, 38.710617, 37.354244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274513, 38.903126, 37.391590>,  <37.505123, 39.223976, 37.453835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274513, 38.903126, 37.391590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352070, -0.072014, -0.933199,
		0.737337, -0.592798, 0.323922,
		-0.576526, -0.802125, -0.155608,
		37.101555, 38.662487, 37.344910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921452, 38.795994, 37.010139>,  <37.505123, 39.223976, 37.453835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921452, 38.795994, 37.010139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548225, 38.658260, 36.968525>,  <37.324291, 38.575619, 36.943558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.548225, 38.658260, 36.968525>,  <37.921452, 38.795994, 37.010139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548225, 38.658260, 36.968525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129923, -0.052909, -0.990111,
		0.335424, -0.937356, 0.094104,
		-0.933065, -0.344333, -0.104037,
		37.268307, 38.554962, 36.937313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965374, 38.287495, 36.505184>,  <37.921452, 38.795994, 37.010139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965374, 38.287495, 36.505184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.593204, 38.433331, 36.520107>,  <37.369904, 38.520832, 36.529060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.593204, 38.433331, 36.520107>,  <37.965374, 38.287495, 36.505184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593204, 38.433331, 36.520107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003047, 0.109478, -0.993985,
		-0.366478, -0.924711, -0.102972,
		-0.930422, 0.364587, 0.037304,
		37.314079, 38.542706, 36.531300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059971, 37.546501, 36.237995>,  <37.965374, 38.287495, 36.505184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059971, 37.546501, 36.237995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431381, 37.579494, 36.093197>,  <38.654228, 37.599289, 36.006317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431381, 37.579494, 36.093197>,  <38.059971, 37.546501, 36.237995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431381, 37.579494, 36.093197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323046, 0.301059, 0.897221,
		0.182985, -0.950032, 0.252895,
		0.928524, 0.082481, -0.361994,
		38.709938, 37.604240, 35.984600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404388, 37.131470, 36.666348>,  <38.059971, 37.546501, 36.237995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404388, 37.131470, 36.666348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.678394, 37.368607, 36.496979>,  <38.842800, 37.510887, 36.395355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.678394, 37.368607, 36.496979>,  <38.404388, 37.131470, 36.666348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678394, 37.368607, 36.496979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515298, 0.016567, 0.856851,
		0.514992, -0.805148, -0.294142,
		0.685019, 0.592842, -0.423424,
		38.883900, 37.546459, 36.369953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037338, 36.967098, 36.940117>,  <38.404388, 37.131470, 36.666348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037338, 36.967098, 36.940117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123356, 37.323334, 36.779808>,  <39.174965, 37.537075, 36.683624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123356, 37.323334, 36.779808>,  <39.037338, 36.967098, 36.940117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123356, 37.323334, 36.779808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462466, 0.268579, 0.844980,
		0.860165, -0.367046, -0.354110,
		0.215040, 0.890586, -0.400769,
		39.187866, 37.590508, 36.659576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696499, 37.097195, 37.115189>,  <39.037338, 36.967098, 36.940117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696499, 37.097195, 37.115189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.548504, 37.465061, 37.062531>,  <39.459705, 37.685780, 37.030937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.548504, 37.465061, 37.062531>,  <39.696499, 37.097195, 37.115189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548504, 37.465061, 37.062531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441589, 0.298759, 0.846015,
		0.817379, 0.254882, -0.516650,
		-0.369988, 0.919662, -0.131646,
		39.437508, 37.740959, 37.023037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190529, 37.532944, 37.456150>,  <39.696499, 37.097195, 37.115189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190529, 37.532944, 37.456150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.902283, 37.805424, 37.404495>,  <39.729336, 37.968910, 37.373501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.902283, 37.805424, 37.404495>,  <40.190529, 37.532944, 37.456150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902283, 37.805424, 37.404495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237808, 0.417799, 0.876864,
		0.651274, 0.601174, -0.463068,
		-0.720618, 0.681200, -0.129137,
		39.686096, 38.009785, 37.365753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483479, 38.281521, 37.588127>,  <40.190529, 37.532944, 37.456150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483479, 38.281521, 37.588127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.088028, 38.308155, 37.642056>,  <39.850758, 38.324135, 37.674412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.088028, 38.308155, 37.642056>,  <40.483479, 38.281521, 37.588127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088028, 38.308155, 37.642056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150298, 0.464435, 0.872761,
		-0.004504, 0.883101, -0.469161,
		-0.988630, 0.066583, 0.134820,
		39.791439, 38.328129, 37.682503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329563, 39.006264, 37.745773>,  <40.483479, 38.281521, 37.588127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329563, 39.006264, 37.745773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.039680, 38.779491, 37.902431>,  <39.865749, 38.643429, 37.996426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.039680, 38.779491, 37.902431>,  <40.329563, 39.006264, 37.745773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039680, 38.779491, 37.902431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126645, 0.449107, 0.884457,
		-0.677318, 0.690573, -0.253672,
		-0.724708, -0.566932, 0.391646,
		39.822269, 38.609413, 38.019924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967896, 39.495377, 38.180843>,  <40.329563, 39.006264, 37.745773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967896, 39.495377, 38.180843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853321, 39.129990, 38.296452>,  <39.784576, 38.910759, 38.365818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853321, 39.129990, 38.296452>,  <39.967896, 39.495377, 38.180843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853321, 39.129990, 38.296452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223058, 0.229793, 0.947333,
		-0.931772, 0.335821, 0.137934,
		-0.286438, -0.913466, 0.289022,
		39.767391, 38.855949, 38.383160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851307, 39.702686, 38.826393>,  <39.967896, 39.495377, 38.180843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851307, 39.702686, 38.826393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853954, 39.303383, 38.849857>,  <39.855541, 39.063801, 38.863934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.853954, 39.303383, 38.849857>,  <39.851307, 39.702686, 38.826393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853954, 39.303383, 38.849857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279958, 0.058160, 0.958249,
		-0.959990, 0.010082, 0.279854,
		0.006615, -0.998256, 0.058656,
		39.855938, 39.003906, 38.867455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459713, 39.522366, 39.437107>,  <39.851307, 39.702686, 38.826393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459713, 39.522366, 39.437107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.721043, 39.236229, 39.337940>,  <39.877838, 39.064548, 39.278439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.721043, 39.236229, 39.337940>,  <39.459713, 39.522366, 39.437107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721043, 39.236229, 39.337940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188128, -0.163802, 0.968389,
		-0.733336, -0.679308, 0.027560,
		0.653319, -0.715339, -0.247919,
		39.917038, 39.021626, 39.263565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402191, 38.993965, 39.920452>,  <39.459713, 39.522366, 39.437107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402191, 38.993965, 39.920452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.737991, 38.846550, 39.760742>,  <39.939472, 38.758099, 39.664917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.737991, 38.846550, 39.760742>,  <39.402191, 38.993965, 39.920452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737991, 38.846550, 39.760742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252556, -0.385969, 0.887268,
		-0.481104, -0.845698, -0.230942,
		0.839497, -0.368542, -0.399277,
		39.989841, 38.735989, 39.640961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405472, 38.303185, 40.235615>,  <39.402191, 38.993965, 39.920452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405472, 38.303185, 40.235615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.767700, 38.409546, 40.103413>,  <39.985039, 38.473362, 40.024090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.767700, 38.409546, 40.103413>,  <39.405472, 38.303185, 40.235615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767700, 38.409546, 40.103413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416628, -0.411076, 0.810825,
		0.079735, -0.871960, -0.483041,
		0.905573, 0.265900, -0.330506,
		40.039371, 38.489315, 40.004261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888512, 37.740784, 40.101231>,  <39.405472, 38.303185, 40.235615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888512, 37.740784, 40.101231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.109875, 38.058228, 40.202374>,  <40.242691, 38.248692, 40.263058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.109875, 38.058228, 40.202374>,  <39.888512, 37.740784, 40.101231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109875, 38.058228, 40.202374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275096, -0.460695, 0.843850,
		0.786172, -0.397431, -0.473268,
		0.553404, 0.793605, 0.252854,
		40.275894, 38.296310, 40.278229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289261, 37.437252, 40.565090>,  <39.888512, 37.740784, 40.101231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289261, 37.437252, 40.565090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.387047, 37.822353, 40.611305>,  <40.445721, 38.053413, 40.639034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.387047, 37.822353, 40.611305>,  <40.289261, 37.437252, 40.565090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387047, 37.822353, 40.611305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253629, -0.178492, 0.950691,
		0.935900, -0.203110, -0.287816,
		0.244468, 0.962750, 0.115536,
		40.460388, 38.111179, 40.645966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867542, 37.456177, 40.945713>,  <40.289261, 37.437252, 40.565090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867542, 37.456177, 40.945713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.710831, 37.821396, 40.991074>,  <40.616806, 38.040527, 41.018291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.710831, 37.821396, 40.991074>,  <40.867542, 37.456177, 40.945713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710831, 37.821396, 40.991074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016977, -0.116063, 0.993097,
		0.919904, 0.390997, 0.029970,
		-0.391777, 0.913045, 0.113405,
		40.593296, 38.095310, 41.025097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371876, 37.865593, 41.385494>,  <40.867542, 37.456177, 40.945713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371876, 37.865593, 41.385494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.021008, 38.054237, 41.421608>,  <40.810486, 38.167423, 41.443275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.021008, 38.054237, 41.421608>,  <41.371876, 37.865593, 41.385494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021008, 38.054237, 41.421608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046298, -0.104072, 0.993491,
		0.477938, 0.875643, 0.069454,
		-0.877173, 0.471612, 0.090280,
		40.757854, 38.195721, 41.448692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499905, 38.409054, 41.839314>,  <41.371876, 37.865593, 41.385494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499905, 38.409054, 41.839314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.111225, 38.314621, 41.842396>,  <40.878017, 38.257961, 41.844246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.111225, 38.314621, 41.842396>,  <41.499905, 38.409054, 41.839314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111225, 38.314621, 41.842396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016989, -0.037312, 0.999159,
		-0.235596, 0.971017, 0.040267,
		-0.971703, -0.236082, 0.007706,
		40.819714, 38.243797, 41.844707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354546, 38.606991, 42.470531>,  <41.499905, 38.409054, 41.839314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354546, 38.606991, 42.470531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.042858, 38.374378, 42.377041>,  <40.855846, 38.234810, 42.320946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.042858, 38.374378, 42.377041>,  <41.354546, 38.606991, 42.470531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042858, 38.374378, 42.377041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070655, -0.452056, 0.889187,
		-0.622753, 0.676360, 0.393340,
		-0.779222, -0.581535, -0.233731,
		40.809090, 38.199917, 42.306923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.808403, 38.592152, 43.164635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.738144, 38.279022, 42.925861>,  <40.695988, 38.091145, 42.782597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.738144, 38.279022, 42.925861>,  <40.808403, 38.592152, 43.164635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738144, 38.279022, 42.925861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159219, -0.575785, 0.801948,
		-0.971492, 0.235906, -0.023504,
		-0.175651, -0.782828, -0.596931,
		40.685448, 38.044174, 42.746780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132645, 38.333443, 43.366642>,  <40.808403, 38.592152, 43.164635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132645, 38.333443, 43.366642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.323009, 38.032112, 43.185093>,  <40.437229, 37.851315, 43.076164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.323009, 38.032112, 43.185093>,  <40.132645, 38.333443, 43.366642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323009, 38.032112, 43.185093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140989, -0.574740, 0.806099,
		-0.868117, -0.319644, -0.379739,
		0.475916, -0.753327, -0.453875,
		40.465786, 37.806114, 43.048931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631554, 37.845230, 43.445477>,  <40.132645, 38.333443, 43.366642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631554, 37.845230, 43.445477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.981812, 37.672260, 43.359451>,  <40.191967, 37.568478, 43.307835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.981812, 37.672260, 43.359451>,  <39.631554, 37.845230, 43.445477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981812, 37.672260, 43.359451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016707, -0.417928, 0.908327,
		-0.482664, -0.798966, -0.358733,
		0.875646, -0.432423, -0.215067,
		40.244507, 37.542534, 43.294933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516483, 37.145996, 43.432484>,  <39.631554, 37.845230, 43.445477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516483, 37.145996, 43.432484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.913048, 37.140972, 43.484547>,  <40.150986, 37.137959, 43.515785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.913048, 37.140972, 43.484547>,  <39.516483, 37.145996, 43.432484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913048, 37.140972, 43.484547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121167, -0.462490, 0.878306,
		0.049168, -0.886535, -0.460041,
		0.991414, -0.012557, 0.130159,
		40.210472, 37.137203, 43.523594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636295, 36.503761, 43.808784>,  <39.516483, 37.145996, 43.432484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636295, 36.503761, 43.808784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.957531, 36.732742, 43.874928>,  <40.150272, 36.870132, 43.914612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.957531, 36.732742, 43.874928>,  <39.636295, 36.503761, 43.808784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957531, 36.732742, 43.874928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105447, -0.409669, 0.906120,
		0.586452, -0.710260, -0.389364,
		0.803091, 0.572453, 0.165356,
		40.198460, 36.904480, 43.924534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050270, 36.054337, 44.091190>,  <39.636295, 36.503761, 43.808784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050270, 36.054337, 44.091190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.191719, 36.417927, 44.179470>,  <40.276588, 36.636082, 44.232437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.191719, 36.417927, 44.179470>,  <40.050270, 36.054337, 44.091190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191719, 36.417927, 44.179470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343721, -0.345714, 0.873120,
		0.869945, -0.232899, -0.434688,
		0.353626, 0.908977, 0.220700,
		40.297806, 36.690620, 44.245682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678879, 35.977905, 44.346825>,  <40.050270, 36.054337, 44.091190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678879, 35.977905, 44.346825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.556839, 36.331322, 44.488960>,  <40.483616, 36.543373, 44.574242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.556839, 36.331322, 44.488960>,  <40.678879, 35.977905, 44.346825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556839, 36.331322, 44.488960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374186, -0.231901, 0.897890,
		0.875728, 0.406909, -0.259857,
		-0.305098, 0.883542, 0.355342,
		40.465309, 36.596386, 44.595562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305130, 36.305000, 44.747124>,  <40.678879, 35.977905, 44.346825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305130, 36.305000, 44.747124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.979656, 36.489952, 44.888046>,  <40.784370, 36.600922, 44.972599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.979656, 36.489952, 44.888046>,  <41.305130, 36.305000, 44.747124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979656, 36.489952, 44.888046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293817, -0.195820, 0.935588,
		0.501584, 0.864790, 0.023482,
		-0.813686, 0.462377, 0.352310,
		40.735550, 36.628666, 44.993740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587326, 36.796169, 45.273624>,  <41.305130, 36.305000, 44.747124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587326, 36.796169, 45.273624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.200062, 36.764988, 45.368782>,  <40.967705, 36.746281, 45.425877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.200062, 36.764988, 45.368782>,  <41.587326, 36.796169, 45.273624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200062, 36.764988, 45.368782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250173, -0.336175, 0.907965,
		0.009201, 0.938568, 0.344971,
		-0.968157, -0.077949, 0.237897,
		40.909615, 36.741604, 45.440151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480309, 37.160999, 45.814117>,  <41.587326, 36.796169, 45.273624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480309, 37.160999, 45.814117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.186115, 36.890205, 45.825081>,  <41.009598, 36.727730, 45.831657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.186115, 36.890205, 45.825081>,  <41.480309, 37.160999, 45.814117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186115, 36.890205, 45.825081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242311, -0.225045, 0.943737,
		-0.632727, 0.700748, 0.329559,
		-0.735488, -0.676983, 0.027407,
		40.965469, 36.687111, 45.833302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132015, 37.250347, 46.455788>,  <41.480309, 37.160999, 45.814117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132015, 37.250347, 46.455788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.017361, 36.881866, 46.350540>,  <40.948566, 36.660778, 46.287392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.017361, 36.881866, 46.350540>,  <41.132015, 37.250347, 46.455788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017361, 36.881866, 46.350540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101978, -0.302424, 0.947703,
		-0.952597, 0.244812, 0.180627,
		-0.286635, -0.921199, -0.263122,
		40.931370, 36.605507, 46.271603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569832, 37.094044, 46.947083>,  <41.132015, 37.250347, 46.455788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569832, 37.094044, 46.947083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.723808, 36.757378, 46.795597>,  <40.816193, 36.555378, 46.704704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.723808, 36.757378, 46.795597>,  <40.569832, 37.094044, 46.947083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723808, 36.757378, 46.795597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027866, -0.399547, 0.916289,
		-0.922521, -0.363270, -0.130348,
		0.384940, -0.841663, -0.378714,
		40.839291, 36.504879, 46.681984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216152, 36.620583, 47.346588>,  <40.569832, 37.094044, 46.947083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216152, 36.620583, 47.346588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.526123, 36.419144, 47.193817>,  <40.712105, 36.298279, 47.102154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.526123, 36.419144, 47.193817>,  <40.216152, 36.620583, 47.346588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526123, 36.419144, 47.193817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031316, -0.572941, 0.818998,
		-0.631272, -0.646626, -0.428218,
		0.774929, -0.503601, -0.381931,
		40.758602, 36.268063, 47.079239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095207, 35.912014, 47.474133>,  <40.216152, 36.620583, 47.346588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095207, 35.912014, 47.474133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.489754, 35.912834, 47.408306>,  <40.726482, 35.913326, 47.368813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.489754, 35.912834, 47.408306>,  <40.095207, 35.912014, 47.474133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489754, 35.912834, 47.408306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129137, -0.629512, 0.766184,
		-0.102023, -0.776988, -0.621193,
		0.986365, 0.002050, -0.164563,
		40.785664, 35.913448, 47.358936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294815, 35.306396, 47.595184>,  <40.095207, 35.912014, 47.474133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294815, 35.306396, 47.595184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.647766, 35.492661, 47.622196>,  <40.859539, 35.604420, 47.638405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.647766, 35.492661, 47.622196>,  <40.294815, 35.306396, 47.595184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647766, 35.492661, 47.622196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241492, -0.571357, 0.784368,
		0.403837, -0.675803, -0.616609,
		0.882382, 0.465663, 0.067534,
		40.912479, 35.632359, 47.642456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805351, 34.847115, 47.385040>,  <40.294815, 35.306396, 47.595184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805351, 34.847115, 47.385040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.971775, 35.121067, 47.624317>,  <41.071629, 35.285439, 47.767883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.971775, 35.121067, 47.624317>,  <40.805351, 34.847115, 47.385040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971775, 35.121067, 47.624317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235441, -0.716532, 0.656619,
		0.878331, -0.132351, -0.459367,
		0.416055, 0.684883, 0.598192,
		41.096592, 35.326530, 47.803776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601517, 34.699230, 47.586983>,  <40.805351, 34.847115, 47.385040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601517, 34.699230, 47.586983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.454899, 34.925926, 47.882130>,  <41.366928, 35.061943, 48.059219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.454899, 34.925926, 47.882130>,  <41.601517, 34.699230, 47.586983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454899, 34.925926, 47.882130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428587, -0.601059, 0.674567,
		0.825809, 0.563498, -0.022585,
		-0.366542, 0.566743, 0.737868,
		41.344936, 35.095947, 48.103489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024517, 34.617359, 48.082546>,  <41.601517, 34.699230, 47.586983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024517, 34.617359, 48.082546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.752575, 34.803909, 48.308922>,  <41.589409, 34.915840, 48.444748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.752575, 34.803909, 48.308922>,  <42.024517, 34.617359, 48.082546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752575, 34.803909, 48.308922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310307, -0.516287, 0.798222,
		0.664462, 0.718289, 0.206278,
		-0.679853, 0.466378, 0.565943,
		41.548618, 34.943821, 48.478706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386421, 34.679821, 48.790680>,  <42.024517, 34.617359, 48.082546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386421, 34.679821, 48.790680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.000282, 34.758636, 48.859123>,  <41.768600, 34.805927, 48.900188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.000282, 34.758636, 48.859123>,  <42.386421, 34.679821, 48.790680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000282, 34.758636, 48.859123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067647, -0.444326, 0.893308,
		0.252048, 0.873927, 0.415599,
		-0.965347, 0.197043, 0.171110,
		41.710678, 34.817749, 48.910458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.267963, 34.996822, 49.437531>,  <42.386421, 34.679821, 48.790680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.267963, 34.996822, 49.437531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.933456, 34.797405, 49.346222>,  <41.732754, 34.677753, 49.291435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.933456, 34.797405, 49.346222>,  <42.267963, 34.996822, 49.437531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933456, 34.797405, 49.346222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053185, -0.488099, 0.871166,
		-0.545737, 0.716387, 0.434696,
		-0.836267, -0.498547, -0.228272,
		41.682575, 34.647842, 49.277740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970268, 35.093140, 50.083389>,  <42.267963, 34.996822, 49.437531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970268, 35.093140, 50.083389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.769604, 34.812737, 49.880642>,  <41.649204, 34.644493, 49.758995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.769604, 34.812737, 49.880642>,  <41.970268, 35.093140, 50.083389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769604, 34.812737, 49.880642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188508, -0.483265, 0.854938,
		-0.844274, 0.524441, 0.110290,
		-0.501664, -0.701011, -0.506869,
		41.619106, 34.602432, 49.728580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312450, 34.969685, 50.454659>,  <41.970268, 35.093140, 50.083389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312450, 34.969685, 50.454659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.403267, 34.641415, 50.244923>,  <41.457756, 34.444450, 50.119080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.403267, 34.641415, 50.244923>,  <41.312450, 34.969685, 50.454659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403267, 34.641415, 50.244923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152588, -0.561732, 0.813126,
		-0.961857, -0.104607, -0.252764,
		0.227044, -0.820679, -0.524344,
		41.471378, 34.395210, 50.087620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192226, 34.490395, 50.914257>,  <41.312450, 34.969685, 50.454659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192226, 34.490395, 50.914257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.305637, 34.247543, 50.617340>,  <41.373684, 34.101833, 50.439190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.305637, 34.247543, 50.617340>,  <41.192226, 34.490395, 50.914257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305637, 34.247543, 50.617340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097279, -0.751859, 0.652108,
		-0.954017, -0.257100, -0.154111,
		0.283527, -0.607130, -0.742297,
		41.390694, 34.065403, 50.394650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817356, 33.880692, 50.951252>,  <41.192226, 34.490395, 50.914257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817356, 33.880692, 50.951252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.163479, 33.763752, 50.788395>,  <41.371155, 33.693588, 50.690681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.163479, 33.763752, 50.788395>,  <40.817356, 33.880692, 50.951252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163479, 33.763752, 50.788395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248357, -0.455490, 0.854897,
		-0.435374, -0.840871, -0.321536,
		0.865314, -0.292344, -0.407144,
		41.423073, 33.676048, 50.666252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514694, 34.492649, 50.588520>,  <40.817356, 33.880692, 50.951252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514694, 34.492649, 50.588520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.263878, 34.504486, 50.899887>,  <40.113388, 34.511589, 51.086708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.263878, 34.504486, 50.899887>,  <40.514694, 34.492649, 50.588520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263878, 34.504486, 50.899887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665236, 0.499588, -0.554863,
		-0.405310, -0.865758, -0.293577,
		-0.627044, 0.029594, 0.778421,
		40.075764, 34.513363, 51.133415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926216, 34.058289, 50.385376>,  <40.514694, 34.492649, 50.588520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926216, 34.058289, 50.385376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.793442, 34.298962, 50.675972>,  <39.713776, 34.443367, 50.850330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.793442, 34.298962, 50.675972>,  <39.926216, 34.058289, 50.385376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793442, 34.298962, 50.675972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710391, 0.347249, -0.612179,
		-0.620613, -0.719299, 0.312167,
		-0.331940, 0.601686, 0.726491,
		39.693859, 34.479469, 50.893921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280918, 34.027649, 50.405998>,  <39.926216, 34.058289, 50.385376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280918, 34.027649, 50.405998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.382195, 34.381104, 50.563515>,  <39.442963, 34.593178, 50.658024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.382195, 34.381104, 50.563515>,  <39.280918, 34.027649, 50.405998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382195, 34.381104, 50.563515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702385, 0.447822, -0.553273,
		-0.665243, -0.136506, 0.734042,
		0.253195, 0.883641, 0.393790,
		39.458153, 34.646194, 50.681652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643536, 34.349968, 50.452152>,  <39.280918, 34.027649, 50.405998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643536, 34.349968, 50.452152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891815, 34.663189, 50.467964>,  <39.040783, 34.851120, 50.477451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891815, 34.663189, 50.467964>,  <38.643536, 34.349968, 50.452152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891815, 34.663189, 50.467964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607058, 0.511884, -0.607828,
		-0.496194, 0.353284, 0.793084,
		0.620703, 0.783048, 0.039530,
		39.078026, 34.898102, 50.479824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189133, 34.948608, 50.454250>,  <38.643536, 34.349968, 50.452152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189133, 34.948608, 50.454250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547150, 35.108524, 50.375183>,  <38.761959, 35.204475, 50.327744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547150, 35.108524, 50.375183>,  <38.189133, 34.948608, 50.454250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547150, 35.108524, 50.375183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436381, 0.693553, -0.573198,
		-0.092068, 0.599293, 0.795218,
		0.895039, 0.399791, -0.197666,
		38.815662, 35.228462, 50.315884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096542, 35.737755, 50.463215>,  <38.189133, 34.948608, 50.454250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096542, 35.737755, 50.463215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423927, 35.653702, 50.249313>,  <38.620358, 35.603268, 50.120972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.423927, 35.653702, 50.249313>,  <38.096542, 35.737755, 50.463215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423927, 35.653702, 50.249313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359553, 0.538628, -0.761972,
		0.448151, 0.815918, 0.365292,
		0.818463, -0.210137, -0.534753,
		38.669468, 35.590660, 50.088886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240669, 36.432617, 50.241493>,  <38.096542, 35.737755, 50.463215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240669, 36.432617, 50.241493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429058, 36.190060, 49.985222>,  <38.542091, 36.044525, 49.831459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429058, 36.190060, 49.985222>,  <38.240669, 36.432617, 50.241493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429058, 36.190060, 49.985222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431737, 0.474899, -0.766860,
		0.769276, 0.637777, -0.038137,
		0.470974, -0.606392, -0.640681,
		38.570351, 36.008141, 49.793018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451721, 36.852657, 49.766872>,  <38.240669, 36.432617, 50.241493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451721, 36.852657, 49.766872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.514870, 36.503963, 49.581337>,  <38.552757, 36.294746, 49.470016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.514870, 36.503963, 49.581337>,  <38.451721, 36.852657, 49.766872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514870, 36.503963, 49.581337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115157, 0.450276, -0.885433,
		0.980722, 0.193199, -0.029301,
		0.157871, -0.871738, -0.463843,
		38.562229, 36.242443, 49.442184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925255, 36.971363, 49.138947>,  <38.451721, 36.852657, 49.766872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925255, 36.971363, 49.138947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.791603, 36.609360, 49.033634>,  <38.711411, 36.392159, 48.970448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.791603, 36.609360, 49.033634>,  <38.925255, 36.971363, 49.138947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791603, 36.609360, 49.033634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047692, 0.295206, -0.954243,
		0.941320, -0.306284, -0.141799,
		-0.334129, -0.905010, -0.263276,
		38.691364, 36.337856, 48.954651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334995, 36.721657, 48.622875>,  <38.925255, 36.971363, 49.138947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334995, 36.721657, 48.622875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.981155, 36.539196, 48.584072>,  <38.768852, 36.429718, 48.560791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.981155, 36.539196, 48.584072>,  <39.334995, 36.721657, 48.622875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981155, 36.539196, 48.584072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102574, 0.012612, -0.994645,
		0.454934, -0.889812, 0.035633,
		-0.884598, -0.456153, -0.097010,
		38.715775, 36.402351, 48.554970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465038, 36.208466, 48.123592>,  <39.334995, 36.721657, 48.622875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465038, 36.208466, 48.123592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077518, 36.307003, 48.112679>,  <38.845005, 36.366123, 48.106133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.077518, 36.307003, 48.112679>,  <39.465038, 36.208466, 48.123592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077518, 36.307003, 48.112679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042417, 0.056346, -0.997510,
		-0.244191, -0.967544, -0.065037,
		-0.968799, 0.246342, -0.027281,
		38.786880, 36.380905, 48.104492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257187, 35.995708, 47.450871>,  <39.465038, 36.208466, 48.123592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257187, 35.995708, 47.450871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.927788, 36.196377, 47.556831>,  <38.730148, 36.316776, 47.620407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.927788, 36.196377, 47.556831>,  <39.257187, 35.995708, 47.450871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927788, 36.196377, 47.556831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197985, 0.183453, -0.962885,
		-0.531645, -0.845385, -0.051751,
		-0.823502, 0.501667, 0.264906,
		38.680737, 36.346878, 47.636303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704235, 35.810360, 46.962570>,  <39.257187, 35.995708, 47.450871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704235, 35.810360, 46.962570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607128, 36.164860, 47.120365>,  <38.548862, 36.377560, 47.215042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607128, 36.164860, 47.120365>,  <38.704235, 35.810360, 46.962570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607128, 36.164860, 47.120365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378247, 0.287990, -0.879768,
		-0.893304, -0.362794, 0.265307,
		-0.242768, 0.886252, 0.394488,
		38.534298, 36.430737, 47.238712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035725, 35.956036, 46.675034>,  <38.704235, 35.810360, 46.962570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035725, 35.956036, 46.675034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.204487, 36.301785, 46.784477>,  <38.305744, 36.509235, 46.850143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.204487, 36.301785, 46.784477>,  <38.035725, 35.956036, 46.675034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204487, 36.301785, 46.784477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222682, 0.391328, -0.892903,
		-0.878870, 0.315789, 0.357582,
		0.421901, 0.864372, 0.273606,
		38.331059, 36.561096, 46.866558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573093, 36.350117, 46.387676>,  <38.035725, 35.956036, 46.675034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573093, 36.350117, 46.387676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891769, 36.575790, 46.474384>,  <38.082973, 36.711193, 46.526409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891769, 36.575790, 46.474384>,  <37.573093, 36.350117, 46.387676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891769, 36.575790, 46.474384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226141, 0.610860, -0.758755,
		-0.560492, 0.555470, 0.614249,
		0.796686, 0.564183, 0.216768,
		38.130775, 36.745045, 46.539413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269367, 37.073521, 46.484509>,  <37.573093, 36.350117, 46.387676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269367, 37.073521, 46.484509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.654221, 37.110416, 46.381905>,  <37.885132, 37.132553, 46.320343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.654221, 37.110416, 46.381905>,  <37.269367, 37.073521, 46.484509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654221, 37.110416, 46.381905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267107, 0.506731, -0.819682,
		0.054374, 0.857156, 0.512179,
		0.962132, 0.092238, -0.256505,
		37.942860, 37.138088, 46.304955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338669, 37.849319, 46.320126>,  <37.269367, 37.073521, 46.484509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338669, 37.849319, 46.320126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.631359, 37.630985, 46.156837>,  <37.806973, 37.499985, 46.058865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.631359, 37.630985, 46.156837>,  <37.338669, 37.849319, 46.320126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631359, 37.630985, 46.156837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151247, 0.453953, -0.878095,
		0.664605, 0.704267, 0.249614,
		0.731727, -0.545834, -0.408218,
		37.850876, 37.467236, 46.034370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829025, 38.274517, 46.014992>,  <37.338669, 37.849319, 46.320126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829025, 38.274517, 46.014992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.889812, 37.919449, 45.841114>,  <37.926285, 37.706409, 45.736790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.889812, 37.919449, 45.841114>,  <37.829025, 38.274517, 46.014992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889812, 37.919449, 45.841114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104075, 0.451724, -0.886066,
		0.982891, 0.089409, 0.161030,
		0.151964, -0.887666, -0.434691,
		37.935402, 37.653149, 45.710709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251369, 38.491421, 45.536816>,  <37.829025, 38.274517, 46.014992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251369, 38.491421, 45.536816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.130489, 38.124378, 45.433533>,  <38.057961, 37.904152, 45.371563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.130489, 38.124378, 45.433533>,  <38.251369, 38.491421, 45.536816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130489, 38.124378, 45.433533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015190, 0.275478, -0.961187,
		0.953123, -0.286549, -0.097188,
		-0.302201, -0.917606, -0.258212,
		38.039829, 37.849094, 45.356068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794346, 38.337238, 45.077229>,  <38.251369, 38.491421, 45.536816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794346, 38.337238, 45.077229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.481739, 38.094555, 45.019077>,  <38.294174, 37.948944, 44.984184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.481739, 38.094555, 45.019077>,  <38.794346, 38.337238, 45.077229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481739, 38.094555, 45.019077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031191, 0.194741, -0.980358,
		0.623102, -0.770703, -0.133270,
		-0.781518, -0.606706, -0.145382,
		38.247284, 37.912544, 44.975464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.727390, 43.836147, 35.837540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.482384, 43.931538, 35.536091>,  <43.335381, 43.988773, 35.355221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.482384, 43.931538, 35.536091>,  <43.727390, 43.836147, 35.837540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482384, 43.931538, 35.536091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152641, -0.971145, -0.183245,
		-0.775579, 0.002793, 0.631245,
		-0.612518, 0.238475, -0.753625,
		43.298630, 44.003078, 35.310001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106380, 43.406136, 35.868805>,  <43.727390, 43.836147, 35.837540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106380, 43.406136, 35.868805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179348, 43.523651, 35.493484>,  <43.223129, 43.594162, 35.268291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179348, 43.523651, 35.493484>,  <43.106380, 43.406136, 35.868805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179348, 43.523651, 35.493484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206809, -0.921499, -0.328739,
		-0.961224, 0.254019, -0.107344,
		0.182423, 0.293792, -0.938301,
		43.234074, 43.611790, 35.211994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527405, 43.252972, 35.436508>,  <43.106380, 43.406136, 35.868805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527405, 43.252972, 35.436508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.821507, 43.279976, 35.166737>,  <42.997967, 43.296177, 35.004875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.821507, 43.279976, 35.166737>,  <42.527405, 43.252972, 35.436508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821507, 43.279976, 35.166737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195861, -0.931418, -0.306756,
		-0.648880, 0.357636, -0.671604,
		0.735251, 0.067507, -0.674425,
		43.042080, 43.300228, 34.964409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255478, 42.862637, 34.824966>,  <42.527405, 43.252972, 35.436508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255478, 42.862637, 34.824966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.640923, 42.897274, 34.723808>,  <42.872189, 42.918056, 34.663113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.640923, 42.897274, 34.723808>,  <42.255478, 42.862637, 34.824966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640923, 42.897274, 34.723808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017977, -0.964925, -0.261911,
		-0.266710, 0.247834, -0.931367,
		0.963609, 0.086597, -0.252900,
		42.930004, 42.923252, 34.647938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386974, 42.658363, 34.106186>,  <42.255478, 42.862637, 34.824966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386974, 42.658363, 34.106186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.737427, 42.618896, 34.294933>,  <42.947697, 42.595219, 34.408180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.737427, 42.618896, 34.294933>,  <42.386974, 42.658363, 34.106186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737427, 42.618896, 34.294933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004776, -0.980560, -0.196159,
		0.482049, 0.169608, -0.859571,
		0.876131, -0.098664, 0.471868,
		43.000267, 42.589298, 34.436493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736347, 42.239037, 33.696667>,  <42.386974, 42.658363, 34.106186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736347, 42.239037, 33.696667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.924995, 42.198189, 34.047016>,  <43.038185, 42.173679, 34.257225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.924995, 42.198189, 34.047016>,  <42.736347, 42.239037, 33.696667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924995, 42.198189, 34.047016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079848, -0.994137, -0.072913,
		0.878179, -0.035549, -0.477009,
		0.471620, -0.102118, 0.875869,
		43.066483, 42.167553, 34.309776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208321, 41.679989, 33.540421>,  <42.736347, 42.239037, 33.696667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208321, 41.679989, 33.540421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.174446, 41.716393, 33.937317>,  <43.154121, 41.738235, 34.175457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.174446, 41.716393, 33.937317>,  <43.208321, 41.679989, 33.540421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174446, 41.716393, 33.937317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103322, -0.989650, 0.099588,
		0.991036, 0.110954, 0.074411,
		-0.084691, 0.091007, 0.992242,
		43.149040, 41.743694, 34.234989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704079, 41.269581, 33.787064>,  <43.208321, 41.679989, 33.540421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704079, 41.269581, 33.787064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451744, 41.329506, 34.091591>,  <43.300343, 41.365459, 34.274307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451744, 41.329506, 34.091591>,  <43.704079, 41.269581, 33.787064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451744, 41.329506, 34.091591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073835, -0.965142, 0.251098,
		0.772395, 0.214613, 0.597785,
		-0.630836, 0.149809, 0.761316,
		43.262493, 41.374447, 34.319984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984653, 40.928593, 34.326271>,  <43.704079, 41.269581, 33.787064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984653, 40.928593, 34.326271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595924, 40.967945, 34.411953>,  <43.362686, 40.991558, 34.463364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595924, 40.967945, 34.411953>,  <43.984653, 40.928593, 34.326271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595924, 40.967945, 34.411953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050692, -0.974703, 0.217680,
		0.230205, 0.200687, 0.952224,
		-0.971821, 0.098381, 0.214208,
		43.304379, 40.997459, 34.476215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985043, 40.685543, 35.037758>,  <43.984653, 40.928593, 34.326271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985043, 40.685543, 35.037758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.633640, 40.667583, 34.847511>,  <43.422798, 40.656807, 34.733364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.633640, 40.667583, 34.847511>,  <43.985043, 40.685543, 35.037758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633640, 40.667583, 34.847511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070281, -0.972595, 0.221628,
		-0.472531, 0.228129, 0.851276,
		-0.878507, -0.044898, -0.475615,
		43.370087, 40.654114, 34.704826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426144, 40.359249, 35.526226>,  <43.985043, 40.685543, 35.037758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426144, 40.359249, 35.526226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.307018, 40.302834, 35.148567>,  <43.235542, 40.268986, 34.921970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.307018, 40.302834, 35.148567>,  <43.426144, 40.359249, 35.526226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307018, 40.302834, 35.148567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089508, -0.980544, 0.174705,
		-0.950420, 0.136538, 0.279392,
		-0.297810, -0.141035, -0.944150,
		43.217674, 40.260525, 34.865322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089836, 39.771675, 35.611389>,  <43.426144, 40.359249, 35.526226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089836, 39.771675, 35.611389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.152142, 39.790398, 35.216717>,  <43.189526, 39.801632, 34.979912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.152142, 39.790398, 35.216717>,  <43.089836, 39.771675, 35.611389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152142, 39.790398, 35.216717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137754, -0.988087, -0.068618,
		-0.978142, 0.146608, -0.147457,
		0.155760, 0.046806, -0.986685,
		43.198868, 39.804440, 34.920712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671806, 39.201710, 35.336205>,  <43.089836, 39.771675, 35.611389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671806, 39.201710, 35.336205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.925156, 39.309166, 35.045918>,  <43.077168, 39.373642, 34.871746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.925156, 39.309166, 35.045918>,  <42.671806, 39.201710, 35.336205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925156, 39.309166, 35.045918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091712, -0.957258, -0.274311,
		-0.768389, 0.107186, -0.630944,
		0.633378, 0.268643, -0.725716,
		43.115170, 39.389759, 34.828201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443096, 38.717365, 34.777885>,  <42.671806, 39.201710, 35.336205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443096, 38.717365, 34.777885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.809914, 38.846806, 34.684669>,  <43.030006, 38.924469, 34.628738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.809914, 38.846806, 34.684669>,  <42.443096, 38.717365, 34.777885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809914, 38.846806, 34.684669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274029, -0.935918, -0.221279,
		-0.289714, 0.139063, -0.946957,
		0.917046, 0.323602, -0.233041,
		43.085026, 38.943886, 34.614758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569832, 38.525043, 34.108829>,  <42.443096, 38.717365, 34.777885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569832, 38.525043, 34.108829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.934731, 38.579437, 34.263397>,  <43.153667, 38.612072, 34.356136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.934731, 38.579437, 34.263397>,  <42.569832, 38.525043, 34.108829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934731, 38.579437, 34.263397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271563, -0.906985, -0.321920,
		0.306699, 0.398607, -0.864320,
		0.912244, 0.135985, 0.386418,
		43.208405, 38.620232, 34.379322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943455, 38.269188, 33.691494>,  <42.569832, 38.525043, 34.108829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943455, 38.269188, 33.691494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.198277, 38.287289, 33.999290>,  <43.351170, 38.298149, 34.183968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.198277, 38.287289, 33.999290>,  <42.943455, 38.269188, 33.691494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198277, 38.287289, 33.999290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194759, -0.975335, -0.103882,
		0.745806, 0.216043, -0.630158,
		0.637058, 0.045253, 0.769487,
		43.389393, 38.300865, 34.230137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449699, 37.897575, 33.478748>,  <42.943455, 38.269188, 33.691494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449699, 37.897575, 33.478748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.543224, 37.918232, 33.867111>,  <43.599339, 37.930626, 34.100128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.543224, 37.918232, 33.867111>,  <43.449699, 37.897575, 33.478748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543224, 37.918232, 33.867111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399850, -0.915344, -0.047608,
		0.886258, 0.399349, -0.234664,
		0.233810, 0.051637, 0.970910,
		43.613369, 37.933723, 34.158382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183140, 37.723965, 33.566288>,  <43.449699, 37.897575, 33.478748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183140, 37.723965, 33.566288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.029549, 37.590099, 33.910511>,  <43.937393, 37.509781, 34.117046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.029549, 37.590099, 33.910511>,  <44.183140, 37.723965, 33.566288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.029549, 37.590099, 33.910511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350658, -0.915031, -0.199391,
		0.854167, 0.225201, 0.468703,
		-0.383975, -0.334668, 0.860558,
		43.914356, 37.489700, 34.168678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422081, 37.116024, 33.609550>,  <44.183140, 37.723965, 33.566288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422081, 37.116024, 33.609550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.179523, 37.105118, 33.927429>,  <44.033989, 37.098576, 34.118156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.179523, 37.105118, 33.927429>,  <44.422081, 37.116024, 33.609550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179523, 37.105118, 33.927429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159796, -0.983202, 0.088202,
		0.778942, 0.180474, 0.600565,
		-0.606394, -0.027264, 0.794696,
		43.997604, 37.096939, 34.165836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.848663, 36.888710, 34.172665>,  <44.422081, 37.116024, 33.609550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.848663, 36.888710, 34.172665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.460548, 36.804035, 34.219551>,  <44.227680, 36.753231, 34.247681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.460548, 36.804035, 34.219551>,  <44.848663, 36.888710, 34.172665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460548, 36.804035, 34.219551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221255, -0.972284, 0.075569,
		0.097967, 0.099257, 0.990227,
		-0.970283, -0.211689, 0.117213,
		44.169464, 36.740528, 34.254715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677311, 36.443329, 34.772583>,  <44.848663, 36.888710, 34.172665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677311, 36.443329, 34.772583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378376, 36.375164, 34.515694>,  <44.199017, 36.334263, 34.361561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378376, 36.375164, 34.515694>,  <44.677311, 36.443329, 34.772583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.378376, 36.375164, 34.515694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315313, -0.941745, -0.117024,
		-0.584867, -0.289957, 0.757533,
		-0.747334, -0.170416, -0.642222,
		44.154175, 36.324039, 34.323029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383968, 36.671619, 34.595562>,  <44.677311, 36.443329, 34.772583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383968, 36.671619, 34.595562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.707085, 36.601967, 34.820827>,  <45.900955, 36.560177, 34.955986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.707085, 36.601967, 34.820827>,  <45.383968, 36.671619, 34.595562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707085, 36.601967, 34.820827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053686, 0.929673, 0.364454,
		-0.587022, -0.324636, 0.741631,
		0.807789, -0.174127, 0.563167,
		45.949421, 36.549728, 34.989777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268074, 37.087154, 35.216633>,  <45.383968, 36.671619, 34.595562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268074, 37.087154, 35.216633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.663826, 37.062374, 35.164040>,  <45.901279, 37.047508, 35.132484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.663826, 37.062374, 35.164040>,  <45.268074, 37.087154, 35.216633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663826, 37.062374, 35.164040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102894, 0.937445, 0.332582,
		0.102651, -0.342578, 0.933864,
		0.989381, -0.061949, -0.131478,
		45.960640, 37.043789, 35.124596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513111, 37.485073, 35.656647>,  <45.268074, 37.087154, 35.216633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513111, 37.485073, 35.656647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.833954, 37.459503, 35.419144>,  <46.026459, 37.444160, 35.276642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.833954, 37.459503, 35.419144>,  <45.513111, 37.485073, 35.656647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833954, 37.459503, 35.419144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163397, 0.979805, 0.115251,
		0.574396, -0.189461, 0.796350,
		0.802104, -0.063922, -0.593753,
		46.074585, 37.440327, 35.241016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990719, 37.924160, 35.903008>,  <45.513111, 37.485073, 35.656647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990719, 37.924160, 35.903008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.145813, 37.896988, 35.535301>,  <46.238869, 37.880684, 35.314678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.145813, 37.896988, 35.535301>,  <45.990719, 37.924160, 35.903008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.145813, 37.896988, 35.535301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380110, 0.920323, 0.092319,
		0.839750, -0.385217, 0.382659,
		0.387732, -0.067927, -0.919266,
		46.262135, 37.876610, 35.259521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.705051, 38.092941, 35.951088>,  <45.990719, 37.924160, 35.903008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.705051, 38.092941, 35.951088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.570477, 38.174614, 35.583366>,  <46.489731, 38.223618, 35.362732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.570477, 38.174614, 35.583366>,  <46.705051, 38.092941, 35.951088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.570477, 38.174614, 35.583366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369429, 0.926573, 0.070594,
		0.866217, -0.315867, -0.387165,
		-0.336439, 0.204180, -0.919304,
		46.469543, 38.235867, 35.307575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.196316, 38.546421, 35.768536>,  <46.705051, 38.092941, 35.951088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.196316, 38.546421, 35.768536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.893105, 38.595898, 35.512379>,  <46.711178, 38.625584, 35.358685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.893105, 38.595898, 35.512379>,  <47.196316, 38.546421, 35.768536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893105, 38.595898, 35.512379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309533, 0.932462, -0.186291,
		0.574099, -0.339435, -0.745114,
		-0.758024, 0.123688, -0.640392,
		46.665699, 38.633003, 35.320263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.505112, 38.853535, 35.206024>,  <47.196316, 38.546421, 35.768536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.505112, 38.853535, 35.206024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.116653, 38.945240, 35.179775>,  <46.883575, 39.000263, 35.164028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.116653, 38.945240, 35.179775>,  <47.505112, 38.853535, 35.206024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.116653, 38.945240, 35.179775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229151, 0.973346, 0.009313,
		0.066005, -0.005992, -0.997801,
		-0.971151, 0.229262, -0.065619,
		46.825310, 39.014019, 35.160091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.599342, 39.288387, 34.663380>,  <47.505112, 38.853535, 35.206024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.599342, 39.288387, 34.663380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.247433, 39.352909, 34.842251>,  <47.036285, 39.391624, 34.949574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.247433, 39.352909, 34.842251>,  <47.599342, 39.288387, 34.663380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.247433, 39.352909, 34.842251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100159, 0.982452, -0.157343,
		-0.464714, -0.093638, -0.880496,
		-0.879778, 0.161309, 0.447181,
		46.983498, 39.401302, 34.976406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.270130, 39.721394, 34.166264>,  <47.599342, 39.288387, 34.663380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.270130, 39.721394, 34.166264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.066517, 39.787407, 34.504177>,  <46.944351, 39.827015, 34.706924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.066517, 39.787407, 34.504177>,  <47.270130, 39.721394, 34.166264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.066517, 39.787407, 34.504177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176167, 0.940698, -0.289919,
		-0.842527, -0.296400, -0.449772,
		-0.509031, 0.165030, 0.844779,
		46.913807, 39.836914, 34.757610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.648590, 40.000881, 34.036919>,  <47.270130, 39.721394, 34.166264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.648590, 40.000881, 34.036919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.667152, 40.106846, 34.422180>,  <46.678291, 40.170425, 34.653336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.667152, 40.106846, 34.422180>,  <46.648590, 40.000881, 34.036919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.667152, 40.106846, 34.422180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275055, 0.930310, -0.242626,
		-0.960308, -0.253660, 0.116042,
		0.046410, 0.264913, 0.963155,
		46.681076, 40.186321, 34.711128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.143860, 40.511097, 34.059547>,  <46.648590, 40.000881, 34.036919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.143860, 40.511097, 34.059547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.365261, 40.563797, 34.388493>,  <46.498100, 40.595417, 34.585857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.365261, 40.563797, 34.388493>,  <46.143860, 40.511097, 34.059547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.365261, 40.563797, 34.388493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238835, 0.971046, 0.005175,
		-0.797869, -0.199273, 0.568942,
		0.553500, 0.131755, 0.822361,
		46.531311, 40.603325, 34.635201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813286, 40.920975, 34.483818>,  <46.143860, 40.511097, 34.059547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813286, 40.920975, 34.483818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.177582, 40.965721, 34.642830>,  <46.396160, 40.992569, 34.738239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.177582, 40.965721, 34.642830>,  <45.813286, 40.920975, 34.483818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177582, 40.965721, 34.642830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080735, 0.992269, -0.094251,
		-0.405003, 0.053744, 0.912734,
		0.910744, 0.111861, 0.397533,
		46.450806, 40.999279, 34.762089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653023, 41.207798, 35.222183>,  <45.813286, 40.920975, 34.483818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653023, 41.207798, 35.222183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.020477, 41.304310, 35.097034>,  <46.240952, 41.362217, 35.021946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.020477, 41.304310, 35.097034>,  <45.653023, 41.207798, 35.222183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.020477, 41.304310, 35.097034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213593, 0.969465, 0.120483,
		0.332385, -0.043854, 0.942124,
		0.918639, 0.241278, -0.312869,
		46.296070, 41.376694, 35.003174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.812794, 41.684738, 35.691292>,  <45.653023, 41.207798, 35.222183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.812794, 41.684738, 35.691292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.062592, 41.760689, 35.388252>,  <46.212471, 41.806259, 35.206429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.062592, 41.760689, 35.388252>,  <45.812794, 41.684738, 35.691292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062592, 41.760689, 35.388252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125457, 0.981790, 0.142646,
		0.770888, 0.005965, 0.636943,
		0.624494, 0.189873, -0.757599,
		46.249939, 41.817650, 35.160973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132938, 42.271980, 35.858032>,  <45.812794, 41.684738, 35.691292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132938, 42.271980, 35.858032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.205299, 42.247475, 35.465397>,  <46.248718, 42.232773, 35.229816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.205299, 42.247475, 35.465397>,  <46.132938, 42.271980, 35.858032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205299, 42.247475, 35.465397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036235, 0.997796, -0.055594,
		0.982833, -0.025511, 0.182726,
		0.180905, -0.061261, -0.981591,
		46.259571, 42.229095, 35.170921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.727703, 42.584503, 35.736855>,  <46.132938, 42.271980, 35.858032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.727703, 42.584503, 35.736855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.515778, 42.594776, 35.397766>,  <46.388622, 42.600941, 35.194313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.515778, 42.594776, 35.397766>,  <46.727703, 42.584503, 35.736855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.515778, 42.594776, 35.397766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017535, 0.998996, 0.041226,
		0.847933, 0.036707, -0.528831,
		-0.529813, 0.025683, -0.847726,
		46.356834, 42.602482, 35.143448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.119236, 43.078140, 35.381233>,  <46.727703, 42.584503, 35.736855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.119236, 43.078140, 35.381233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.749462, 43.060944, 35.229668>,  <46.527599, 43.050625, 35.138729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.749462, 43.060944, 35.229668>,  <47.119236, 43.078140, 35.381233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.749462, 43.060944, 35.229668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096685, 0.987583, 0.123826,
		0.368885, 0.151105, -0.917110,
		-0.924433, -0.042993, -0.378914,
		46.472134, 43.048046, 35.115993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.891830, 43.776493, 35.304668>,  <47.119236, 43.078140, 35.381233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.891830, 43.776493, 35.304668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.544060, 43.619907, 35.184105>,  <46.335396, 43.525955, 35.111767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.544060, 43.619907, 35.184105>,  <46.891830, 43.776493, 35.304668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.544060, 43.619907, 35.184105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426677, 0.902503, 0.058605,
		0.249081, 0.179558, -0.951692,
		-0.869428, -0.391468, -0.301410,
		46.283230, 43.502468, 35.093681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.651489, 44.060936, 34.648289>,  <46.891830, 43.776493, 35.304668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.651489, 44.060936, 34.648289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.337082, 43.916031, 34.848667>,  <46.148438, 43.829090, 34.968895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.337082, 43.916031, 34.848667>,  <46.651489, 44.060936, 34.648289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.337082, 43.916031, 34.848667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419079, 0.907949, -0.000976,
		-0.454483, -0.210704, -0.865476,
		-0.786014, -0.362259, 0.500949,
		46.101276, 43.807354, 34.998951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.035751, 44.335201, 34.235382>,  <46.651489, 44.060936, 34.648289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.035751, 44.335201, 34.235382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.911568, 44.223419, 34.598816>,  <45.837059, 44.156349, 34.816875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.911568, 44.223419, 34.598816>,  <46.035751, 44.335201, 34.235382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.911568, 44.223419, 34.598816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666849, 0.745191, 0.001345,
		-0.677443, -0.605469, -0.417705,
		-0.310456, -0.279458, 0.908582,
		45.818432, 44.139584, 34.871391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.345734, 44.158791, 34.153595>,  <46.035751, 44.335201, 34.235382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.345734, 44.158791, 34.153595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.397472, 44.249031, 34.539833>,  <45.428516, 44.303177, 34.771576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.397472, 44.249031, 34.539833>,  <45.345734, 44.158791, 34.153595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397472, 44.249031, 34.539833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694392, 0.715759, -0.074214,
		-0.707876, -0.660901, 0.249242,
		0.129349, 0.225606, 0.965594,
		45.436275, 44.316711, 34.829510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.297840, 38.849384, 39.718990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920628, 38.746120, 39.802933>,  <40.694298, 38.684162, 39.853298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920628, 38.746120, 39.802933>,  <41.297840, 38.849384, 39.718990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920628, 38.746120, 39.802933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234286, 0.067479, -0.969823,
		0.236214, -0.963741, -0.124119,
		-0.943034, -0.258165, 0.209852,
		40.637718, 38.668671, 39.865887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201420, 38.356697, 39.290974>,  <41.297840, 38.849384, 39.718990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201420, 38.356697, 39.290974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838364, 38.487591, 39.396130>,  <40.620529, 38.566128, 39.459225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838364, 38.487591, 39.396130>,  <41.201420, 38.356697, 39.290974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838364, 38.487591, 39.396130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295872, -0.054501, -0.953672,
		-0.297743, -0.943372, 0.146285,
		-0.907639, 0.327231, 0.262890,
		40.566071, 38.585758, 39.474995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670914, 38.066704, 38.855221>,  <41.201420, 38.356697, 39.290974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670914, 38.066704, 38.855221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418957, 38.344921, 38.993473>,  <40.267784, 38.511852, 39.076424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418957, 38.344921, 38.993473>,  <40.670914, 38.066704, 38.855221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418957, 38.344921, 38.993473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556590, -0.093862, -0.825468,
		-0.541704, -0.712330, 0.446254,
		-0.629891, 0.695540, 0.345630,
		40.229988, 38.553585, 39.097160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105888, 37.743443, 38.800121>,  <40.670914, 38.066704, 38.855221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105888, 37.743443, 38.800121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010998, 38.131695, 38.816097>,  <39.954063, 38.364647, 38.825684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010998, 38.131695, 38.816097>,  <40.105888, 37.743443, 38.800121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010998, 38.131695, 38.816097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545961, -0.099209, -0.831916,
		-0.803522, -0.219160, 0.553463,
		-0.237231, 0.970632, 0.039936,
		39.939827, 38.422886, 38.828079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433857, 37.757107, 38.934364>,  <40.105888, 37.743443, 38.800121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433857, 37.757107, 38.934364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537663, 38.094891, 38.746941>,  <39.599945, 38.297562, 38.634487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537663, 38.094891, 38.746941>,  <39.433857, 37.757107, 38.934364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537663, 38.094891, 38.746941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490709, -0.302576, -0.817099,
		-0.831779, 0.441974, 0.335860,
		0.259513, 0.844456, -0.468558,
		39.615517, 38.348228, 38.606373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830292, 37.952839, 38.428299>,  <39.433857, 37.757107, 38.934364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830292, 37.952839, 38.428299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147568, 38.168022, 38.314137>,  <39.337933, 38.297131, 38.245640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147568, 38.168022, 38.314137>,  <38.830292, 37.952839, 38.428299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147568, 38.168022, 38.314137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261985, -0.121648, -0.957374,
		-0.549745, 0.834149, 0.044447,
		0.793186, 0.537956, -0.285410,
		39.385525, 38.329411, 38.228512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552486, 38.461174, 37.932995>,  <38.830292, 37.952839, 38.428299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552486, 38.461174, 37.932995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930897, 38.397301, 37.820187>,  <39.157944, 38.358978, 37.752502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930897, 38.397301, 37.820187>,  <38.552486, 38.461174, 37.932995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930897, 38.397301, 37.820187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284908, 0.005024, -0.958542,
		0.154478, 0.987156, -0.040742,
		0.946025, -0.159681, -0.282025,
		39.214703, 38.349396, 37.735580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709454, 38.784565, 37.290459>,  <38.552486, 38.461174, 37.932995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709454, 38.784565, 37.290459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014130, 38.525620, 37.301422>,  <39.196934, 38.370251, 37.308002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014130, 38.525620, 37.301422>,  <38.709454, 38.784565, 37.290459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014130, 38.525620, 37.301422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160715, -0.229743, -0.959890,
		0.627698, 0.726730, -0.279033,
		0.761686, -0.647366, 0.027413,
		39.242634, 38.331409, 37.309647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966663, 38.939636, 36.703754>,  <38.709454, 38.784565, 37.290459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966663, 38.939636, 36.703754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099716, 38.575710, 36.803032>,  <39.179546, 38.357357, 36.862598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099716, 38.575710, 36.803032>,  <38.966663, 38.939636, 36.703754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099716, 38.575710, 36.803032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141892, -0.308466, -0.940593,
		0.932321, 0.277654, -0.231700,
		0.332631, -0.909811, 0.248193,
		39.199505, 38.302769, 36.877491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307850, 38.736832, 36.124409>,  <38.966663, 38.939636, 36.703754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307850, 38.736832, 36.124409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272675, 38.388653, 36.318146>,  <39.251568, 38.179745, 36.434387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272675, 38.388653, 36.318146>,  <39.307850, 38.736832, 36.124409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272675, 38.388653, 36.318146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063634, -0.480320, -0.874782,
		0.994091, -0.107749, -0.013151,
		-0.087940, -0.870450, 0.484338,
		39.246292, 38.127518, 36.463448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755978, 38.302139, 35.864246>,  <39.307850, 38.736832, 36.124409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755978, 38.302139, 35.864246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503204, 38.038101, 36.026695>,  <39.351540, 37.879681, 36.124165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503204, 38.038101, 36.026695>,  <39.755978, 38.302139, 35.864246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503204, 38.038101, 36.026695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172859, -0.390774, -0.904110,
		0.755501, -0.641539, 0.132840,
		-0.631932, -0.660093, 0.406126,
		39.313625, 37.840073, 36.148533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965038, 37.591614, 35.633381>,  <39.755978, 38.302139, 35.864246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965038, 37.591614, 35.633381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579071, 37.637997, 35.727596>,  <39.347488, 37.665825, 35.784126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579071, 37.637997, 35.727596>,  <39.965038, 37.591614, 35.633381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579071, 37.637997, 35.727596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262283, -0.386539, -0.884192,
		-0.011484, -0.914955, 0.403394,
		-0.964922, 0.115958, 0.235538,
		39.289593, 37.672783, 35.798256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591690, 36.883251, 35.652363>,  <39.965038, 37.591614, 35.633381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591690, 36.883251, 35.652363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447975, 37.236691, 35.532253>,  <39.361744, 37.448753, 35.460186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447975, 37.236691, 35.532253>,  <39.591690, 36.883251, 35.652363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447975, 37.236691, 35.532253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124814, -0.364366, -0.922854,
		-0.924842, -0.294093, 0.241198,
		-0.359289, 0.883599, -0.300273,
		39.340187, 37.501770, 35.442173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860157, 36.759842, 34.909779>,  <39.591690, 36.883251, 35.652363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860157, 36.759842, 34.909779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942055, 36.428829, 34.700676>,  <39.991196, 36.230221, 34.575214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942055, 36.428829, 34.700676>,  <39.860157, 36.759842, 34.909779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942055, 36.428829, 34.700676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423159, -0.556419, 0.715076,
		-0.882618, 0.074800, -0.464101,
		0.204747, -0.827528, -0.522758,
		40.003479, 36.180573, 34.543850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295048, 36.372562, 34.674530>,  <39.860157, 36.759842, 34.909779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295048, 36.372562, 34.674530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590408, 36.116119, 34.758190>,  <39.767624, 35.962254, 34.808388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590408, 36.116119, 34.758190>,  <39.295048, 36.372562, 34.674530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590408, 36.116119, 34.758190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555790, -0.402916, 0.727156,
		-0.381921, -0.653172, -0.653837,
		0.738399, -0.641112, 0.209144,
		39.811928, 35.923786, 34.820934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004921, 35.727070, 34.693317>,  <39.295048, 36.372562, 34.674530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004921, 35.727070, 34.693317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345028, 35.678963, 34.898285>,  <39.549091, 35.650097, 35.021267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345028, 35.678963, 34.898285>,  <39.004921, 35.727070, 34.693317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345028, 35.678963, 34.898285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493409, -0.521097, 0.696423,
		0.183265, -0.844981, -0.502415,
		0.850271, -0.120266, 0.512420,
		39.600109, 35.642883, 35.052010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823895, 35.123192, 34.931149>,  <39.004921, 35.727070, 34.693317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823895, 35.123192, 34.931149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141243, 35.256969, 35.134602>,  <39.331654, 35.337234, 35.256676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141243, 35.256969, 35.134602>,  <38.823895, 35.123192, 34.931149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141243, 35.256969, 35.134602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241664, -0.593854, 0.767422,
		0.558715, -0.731769, -0.390323,
		0.793370, 0.334443, 0.508637,
		39.379253, 35.357304, 35.287193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983318, 34.558823, 35.333370>,  <38.823895, 35.123192, 34.931149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983318, 34.558823, 35.333370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166462, 34.853516, 35.532406>,  <39.276348, 35.030331, 35.651825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166462, 34.853516, 35.532406>,  <38.983318, 34.558823, 35.333370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166462, 34.853516, 35.532406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178746, -0.471984, 0.863297,
		0.870868, -0.484213, -0.084417,
		0.457863, 0.736728, 0.497587,
		39.303822, 35.074535, 35.681683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314396, 34.261600, 35.853638>,  <38.983318, 34.558823, 35.333370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314396, 34.261600, 35.853638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306660, 34.643749, 35.971554>,  <39.302017, 34.873039, 36.042301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306660, 34.643749, 35.971554>,  <39.314396, 34.261600, 35.853638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306660, 34.643749, 35.971554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360006, -0.281719, 0.889399,
		0.932750, -0.088926, 0.349385,
		-0.019338, 0.955367, 0.294788,
		39.300858, 34.930359, 36.059990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642155, 34.257248, 36.466858>,  <39.314396, 34.261600, 35.853638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642155, 34.257248, 36.466858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407459, 34.581146, 36.463924>,  <39.266644, 34.775486, 36.462166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407459, 34.581146, 36.463924>,  <39.642155, 34.257248, 36.466858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407459, 34.581146, 36.463924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435352, -0.307792, 0.846010,
		0.682795, 0.499578, 0.533116,
		-0.586737, 0.809744, -0.007334,
		39.231438, 34.824070, 36.461723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673988, 34.562332, 37.135811>,  <39.642155, 34.257248, 36.466858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673988, 34.562332, 37.135811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328594, 34.678116, 36.970592>,  <39.121357, 34.747585, 36.871460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328594, 34.678116, 36.970592>,  <39.673988, 34.562332, 37.135811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328594, 34.678116, 36.970592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463638, -0.133111, 0.875969,
		0.198579, 0.947889, 0.249144,
		-0.863485, 0.289462, -0.413045,
		39.069550, 34.764954, 36.846680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425694, 35.142345, 37.557884>,  <39.673988, 34.562332, 37.135811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425694, 35.142345, 37.557884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116905, 34.986282, 37.357147>,  <38.931633, 34.892643, 37.236706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116905, 34.986282, 37.357147>,  <39.425694, 35.142345, 37.557884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116905, 34.986282, 37.357147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511108, -0.088404, 0.854958,
		-0.377936, 0.916493, -0.131169,
		-0.771967, -0.390161, -0.501838,
		38.885315, 34.869232, 37.206596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849529, 35.551205, 37.802105>,  <39.425694, 35.142345, 37.557884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849529, 35.551205, 37.802105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686092, 35.219105, 37.650455>,  <38.588032, 35.019844, 37.559467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686092, 35.219105, 37.650455>,  <38.849529, 35.551205, 37.802105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686092, 35.219105, 37.650455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673123, -0.006422, 0.739502,
		-0.616409, 0.557349, -0.556239,
		-0.408588, -0.830254, -0.379123,
		38.563515, 34.970028, 37.536720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109081, 35.660366, 37.898129>,  <38.849529, 35.551205, 37.802105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109081, 35.660366, 37.898129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172096, 35.269897, 37.838432>,  <38.209904, 35.035618, 37.802616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172096, 35.269897, 37.838432>,  <38.109081, 35.660366, 37.898129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172096, 35.269897, 37.838432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512619, -0.210007, 0.832538,
		-0.844040, -0.054654, -0.533488,
		0.157538, -0.976171, -0.149237,
		38.219357, 34.977047, 37.793659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372540, 35.286835, 38.143475>,  <38.109081, 35.660366, 37.898129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372540, 35.286835, 38.143475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604889, 34.965015, 38.094006>,  <37.744297, 34.771923, 38.064323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604889, 34.965015, 38.094006>,  <37.372540, 35.286835, 38.143475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604889, 34.965015, 38.094006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468577, -0.454736, 0.757398,
		-0.665600, -0.381999, -0.641134,
		0.580872, -0.804545, -0.123677,
		37.779152, 34.723652, 38.056904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973671, 34.702694, 38.262207>,  <37.372540, 35.286835, 38.143475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973671, 34.702694, 38.262207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347378, 34.571789, 38.318844>,  <37.571602, 34.493248, 38.352825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347378, 34.571789, 38.318844>,  <36.973671, 34.702694, 38.262207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347378, 34.571789, 38.318844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287156, -0.455117, 0.842858,
		-0.211393, -0.828112, -0.519175,
		0.934266, -0.327259, 0.141589,
		37.627659, 34.473610, 38.361320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974369, 33.920258, 38.390560>,  <36.973671, 34.702694, 38.262207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974369, 33.920258, 38.390560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298714, 34.095673, 38.545578>,  <37.493320, 34.200924, 38.638588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298714, 34.095673, 38.545578>,  <36.974369, 33.920258, 38.390560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298714, 34.095673, 38.545578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257642, -0.327094, 0.909192,
		0.525482, -0.837073, -0.152240,
		0.810857, 0.438541, 0.387547,
		37.541969, 34.227234, 38.661842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177929, 33.457214, 38.936142>,  <36.974369, 33.920258, 38.390560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177929, 33.457214, 38.936142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378109, 33.794666, 39.013954>,  <37.498219, 33.997139, 39.060642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378109, 33.794666, 39.013954>,  <37.177929, 33.457214, 38.936142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378109, 33.794666, 39.013954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094416, -0.170171, 0.980881,
		0.860602, -0.509247, -0.005510,
		0.500449, 0.843628, 0.194530,
		37.528244, 34.047756, 39.072311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825027, 32.736897, 38.934681>,  <37.177929, 33.457214, 38.936142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825027, 32.736897, 38.934681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437496, 32.744919, 39.033447>,  <36.204975, 32.749733, 39.092705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437496, 32.744919, 39.033447>,  <36.825027, 32.736897, 38.934681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437496, 32.744919, 39.033447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214867, 0.428040, -0.877846,
		-0.123292, -0.903537, -0.410389,
		-0.968830, 0.020052, 0.246914,
		36.146847, 32.750935, 39.107521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507877, 32.666260, 38.231705>,  <36.825027, 32.736897, 38.934681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507877, 32.666260, 38.231705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218719, 32.794075, 38.476757>,  <36.045223, 32.870762, 38.623787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218719, 32.794075, 38.476757>,  <36.507877, 32.666260, 38.231705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218719, 32.794075, 38.476757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488172, 0.391282, -0.780120,
		-0.488987, -0.863016, -0.126868,
		-0.722897, 0.319535, 0.612632,
		36.001850, 32.889935, 38.660545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974792, 32.498367, 37.904392>,  <36.507877, 32.666260, 38.231705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974792, 32.498367, 37.904392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882256, 32.790199, 38.161823>,  <35.826733, 32.965298, 38.316280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882256, 32.790199, 38.161823>,  <35.974792, 32.498367, 37.904392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882256, 32.790199, 38.161823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473579, 0.493401, -0.729574,
		-0.849826, -0.473565, 0.231370,
		-0.231342, 0.729583, 0.643575,
		35.812855, 33.009075, 38.354897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209362, 32.583042, 37.993309>,  <35.974792, 32.498367, 37.904392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209362, 32.583042, 37.993309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346127, 32.935799, 38.123146>,  <35.428185, 33.147453, 38.201050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346127, 32.935799, 38.123146>,  <35.209362, 32.583042, 37.993309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346127, 32.935799, 38.123146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545479, 0.467515, -0.695617,
		-0.765212, 0.060780, 0.640903,
		0.341911, 0.881893, 0.324593,
		35.448700, 33.200367, 38.220524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645863, 32.987106, 38.154625>,  <35.209362, 32.583042, 37.993309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645863, 32.987106, 38.154625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931267, 33.255096, 38.072613>,  <35.102509, 33.415890, 38.023407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931267, 33.255096, 38.072613>,  <34.645863, 32.987106, 38.154625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931267, 33.255096, 38.072613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607160, 0.445204, -0.658141,
		-0.349658, 0.594076, 0.724440,
		0.713509, 0.669976, -0.205030,
		35.145321, 33.456089, 38.011105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249878, 33.587608, 38.062271>,  <34.645863, 32.987106, 38.154625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249878, 33.587608, 38.062271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613663, 33.664776, 37.914944>,  <34.831936, 33.711079, 37.826550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613663, 33.664776, 37.914944>,  <34.249878, 33.587608, 38.062271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613663, 33.664776, 37.914944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407304, 0.591353, -0.695992,
		0.083533, 0.782997, 0.616392,
		0.909464, 0.192920, -0.368316,
		34.886501, 33.722652, 37.804447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275875, 34.273911, 37.976295>,  <34.249878, 33.587608, 38.062271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275875, 34.273911, 37.976295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550587, 34.127945, 37.724846>,  <34.715412, 34.040367, 37.573975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550587, 34.127945, 37.724846>,  <34.275875, 34.273911, 37.976295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550587, 34.127945, 37.724846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403330, 0.528165, -0.747239,
		0.604697, 0.766733, 0.215552,
		0.686779, -0.364915, -0.628626,
		34.756622, 34.018471, 37.536259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495747, 34.749947, 37.533768>,  <34.275875, 34.273911, 37.976295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495747, 34.749947, 37.533768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604939, 34.431492, 37.317749>,  <34.670452, 34.240417, 37.188137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604939, 34.431492, 37.317749>,  <34.495747, 34.749947, 37.533768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604939, 34.431492, 37.317749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309919, 0.458661, -0.832815,
		0.910733, 0.394709, -0.121535,
		0.272976, -0.796138, -0.540045,
		34.686832, 34.192650, 37.155735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806953, 34.989403, 36.991310>,  <34.495747, 34.749947, 37.533768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806953, 34.989403, 36.991310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668880, 34.630795, 36.880245>,  <34.586037, 34.415630, 36.813606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668880, 34.630795, 36.880245>,  <34.806953, 34.989403, 36.991310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668880, 34.630795, 36.880245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404138, 0.409002, -0.818163,
		0.847066, -0.170201, -0.503499,
		-0.345184, -0.896520, -0.277667,
		34.565327, 34.361839, 36.796944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779320, 34.996845, 36.166130>,  <34.806953, 34.989403, 36.991310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779320, 34.996845, 36.166130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551792, 34.682091, 36.261845>,  <34.415276, 34.493237, 36.319271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551792, 34.682091, 36.261845>,  <34.779320, 34.996845, 36.166130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551792, 34.682091, 36.261845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620657, 0.219783, -0.752649,
		0.539660, -0.576631, -0.613404,
		-0.568817, -0.786888, 0.239283,
		34.381145, 34.446026, 36.333630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567280, 34.679638, 35.568878>,  <34.779320, 34.996845, 36.166130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567280, 34.679638, 35.568878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291870, 34.586292, 35.843533>,  <34.126625, 34.530285, 36.008327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291870, 34.586292, 35.843533>,  <34.567280, 34.679638, 35.568878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291870, 34.586292, 35.843533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698189, 0.469344, -0.540600,
		-0.196116, -0.851622, -0.486086,
		-0.688528, -0.233359, 0.686638,
		34.085312, 34.516285, 36.049522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924862, 34.287071, 35.288422>,  <34.567280, 34.679638, 35.568878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924862, 34.287071, 35.288422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843338, 34.504868, 35.613873>,  <33.794422, 34.635544, 35.809143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843338, 34.504868, 35.613873>,  <33.924862, 34.287071, 35.288422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843338, 34.504868, 35.613873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715835, 0.484062, -0.503254,
		-0.667863, -0.684992, 0.291108,
		-0.203811, 0.544490, 0.813629,
		33.782196, 34.668213, 35.857960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.544205, 30.666079, 41.734924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.302704, 30.882507, 41.969093>,  <37.157803, 31.012365, 42.109596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.302704, 30.882507, 41.969093>,  <37.544205, 30.666079, 41.734924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302704, 30.882507, 41.969093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590295, 0.190107, -0.784482,
		-0.535754, -0.819207, 0.204613,
		-0.603755, 0.541071, 0.585424,
		37.121578, 31.044828, 42.144722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926186, 30.353048, 41.590931>,  <37.544205, 30.666079, 41.734924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926186, 30.353048, 41.590931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.814537, 30.721458, 41.699600>,  <36.747547, 30.942505, 41.764801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.814537, 30.721458, 41.699600>,  <36.926186, 30.353048, 41.590931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814537, 30.721458, 41.699600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433631, 0.131531, -0.891439,
		-0.856770, -0.366626, 0.362671,
		-0.279122, 0.921024, 0.271673,
		36.730801, 30.997766, 41.781101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229126, 30.477425, 41.398449>,  <36.926186, 30.353048, 41.590931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229126, 30.477425, 41.398449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.373653, 30.849604, 41.422832>,  <36.460369, 31.072910, 41.437462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.373653, 30.849604, 41.422832>,  <36.229126, 30.477425, 41.398449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373653, 30.849604, 41.422832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416720, 0.219617, -0.882107,
		-0.834142, 0.293319, 0.467088,
		0.361319, 0.930447, 0.060960,
		36.482048, 31.128738, 41.441120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631790, 30.963743, 41.260132>,  <36.229126, 30.477425, 41.398449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631790, 30.963743, 41.260132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.972145, 31.165815, 41.202461>,  <36.176357, 31.287058, 41.167858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.972145, 31.165815, 41.202461>,  <35.631790, 30.963743, 41.260132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972145, 31.165815, 41.202461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422948, 0.495945, -0.758389,
		-0.311622, 0.706280, 0.635658,
		0.850886, 0.505180, -0.144173,
		36.227409, 31.317369, 41.159210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485138, 31.683044, 41.187622>,  <35.631790, 30.963743, 41.260132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485138, 31.683044, 41.187622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851791, 31.689167, 41.027851>,  <36.071785, 31.692841, 40.931988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851791, 31.689167, 41.027851>,  <35.485138, 31.683044, 41.187622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851791, 31.689167, 41.027851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314220, 0.645240, -0.696370,
		0.247065, 0.763827, 0.596262,
		0.916638, 0.015309, -0.399425,
		36.126781, 31.693760, 40.908024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488304, 32.418514, 40.948360>,  <35.485138, 31.683044, 41.187622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488304, 32.418514, 40.948360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.781330, 32.223919, 40.757915>,  <35.957146, 32.107162, 40.643650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.781330, 32.223919, 40.757915>,  <35.488304, 32.418514, 40.948360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781330, 32.223919, 40.757915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008937, 0.692511, -0.721352,
		0.680637, 0.532692, 0.502963,
		0.732566, -0.486484, -0.476109,
		36.001099, 32.077972, 40.615082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012146, 32.930508, 40.822212>,  <35.488304, 32.418514, 40.948360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012146, 32.930508, 40.822212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.055973, 32.645020, 40.545486>,  <36.082268, 32.473728, 40.379452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.055973, 32.645020, 40.545486>,  <36.012146, 32.930508, 40.822212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055973, 32.645020, 40.545486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120811, 0.700404, -0.703448,
		0.986611, -0.006506, 0.162964,
		0.109564, -0.713717, -0.691812,
		36.088840, 32.430904, 40.337944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613354, 33.066307, 40.345627>,  <36.012146, 32.930508, 40.822212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613354, 33.066307, 40.345627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.368546, 32.822891, 40.143593>,  <36.221661, 32.676842, 40.022373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.368546, 32.822891, 40.143593>,  <36.613354, 33.066307, 40.345627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368546, 32.822891, 40.143593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164075, 0.527068, -0.833834,
		0.773636, -0.593193, -0.222730,
		-0.612018, -0.608540, -0.505087,
		36.184940, 32.640331, 39.992065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887947, 33.058083, 39.641781>,  <36.613354, 33.066307, 40.345627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887947, 33.058083, 39.641781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.525730, 32.897480, 39.586964>,  <36.308399, 32.801121, 39.554073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.525730, 32.897480, 39.586964>,  <36.887947, 33.058083, 39.641781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525730, 32.897480, 39.586964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053624, 0.428764, -0.901824,
		0.420831, -0.809300, -0.409798,
		-0.905553, -0.401490, -0.137040,
		36.254066, 32.777027, 39.545849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605152, 33.324070, 39.580444>,  <36.887947, 33.058083, 39.641781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605152, 33.324070, 39.580444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.631741, 33.722450, 39.556244>,  <37.647694, 33.961479, 39.541725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.631741, 33.722450, 39.556244>,  <37.605152, 33.324070, 39.580444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631741, 33.722450, 39.556244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060662, 0.056487, 0.996559,
		0.995942, -0.069917, -0.056661,
		0.066476, 0.995952, -0.060499,
		37.651684, 34.021236, 39.538094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273884, 33.495068, 39.961262>,  <37.605152, 33.324070, 39.580444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273884, 33.495068, 39.961262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.013680, 33.797783, 39.935654>,  <37.857555, 33.979412, 39.920288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.013680, 33.797783, 39.935654>,  <38.273884, 33.495068, 39.961262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013680, 33.797783, 39.935654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006475, 0.078764, 0.996872,
		0.759466, 0.648895, -0.046337,
		-0.650515, 0.756790, -0.064021,
		37.818523, 34.024818, 39.916447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610218, 34.108910, 40.368351>,  <38.273884, 33.495068, 39.961262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610218, 34.108910, 40.368351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.227066, 34.215519, 40.325569>,  <37.997177, 34.279484, 40.299900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.227066, 34.215519, 40.325569>,  <38.610218, 34.108910, 40.368351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227066, 34.215519, 40.325569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002855, 0.363565, 0.931564,
		0.287168, 0.892628, -0.347489,
		-0.957876, 0.266524, -0.106953,
		37.939705, 34.295475, 40.293484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474865, 34.776127, 40.578476>,  <38.610218, 34.108910, 40.368351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474865, 34.776127, 40.578476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.100727, 34.640057, 40.617290>,  <37.876244, 34.558414, 40.640579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.100727, 34.640057, 40.617290>,  <38.474865, 34.776127, 40.578476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100727, 34.640057, 40.617290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009152, 0.250950, 0.967957,
		-0.353624, 0.906260, -0.231611,
		-0.935343, -0.340173, 0.097036,
		37.820126, 34.538006, 40.646400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115936, 35.282990, 40.964470>,  <38.474865, 34.776127, 40.578476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115936, 35.282990, 40.964470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.918968, 34.941444, 41.031925>,  <37.800785, 34.736519, 41.072399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.918968, 34.941444, 41.031925>,  <38.115936, 35.282990, 40.964470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918968, 34.941444, 41.031925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150217, 0.107468, 0.982795,
		-0.857295, 0.509283, 0.075345,
		-0.492423, -0.853863, 0.168635,
		37.771240, 34.685284, 41.082516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828819, 35.429367, 41.663708>,  <38.115936, 35.282990, 40.964470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828819, 35.429367, 41.663708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.766632, 35.036556, 41.620892>,  <37.729321, 34.800869, 41.595203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.766632, 35.036556, 41.620892>,  <37.828819, 35.429367, 41.663708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766632, 35.036556, 41.620892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278923, -0.147585, 0.948905,
		-0.947645, 0.117669, 0.296854,
		-0.155468, -0.982025, -0.107038,
		37.719994, 34.741947, 41.588779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436306, 35.255985, 42.085644>,  <37.828819, 35.429367, 41.663708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436306, 35.255985, 42.085644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.602486, 34.898121, 42.019939>,  <37.702194, 34.683403, 41.980518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.602486, 34.898121, 42.019939>,  <37.436306, 35.255985, 42.085644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602486, 34.898121, 42.019939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206088, -0.083307, 0.974981,
		-0.885964, -0.438904, 0.149770,
		0.415446, -0.894664, -0.164260,
		37.727119, 34.629723, 41.970661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182446, 34.796204, 42.637920>,  <37.436306, 35.255985, 42.085644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182446, 34.796204, 42.637920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.516872, 34.622986, 42.503181>,  <37.717529, 34.519054, 42.422337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.516872, 34.622986, 42.503181>,  <37.182446, 34.796204, 42.637920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516872, 34.622986, 42.503181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345931, -0.060446, 0.936311,
		-0.425826, -0.899343, 0.099267,
		0.836065, -0.433045, -0.336850,
		37.767693, 34.493073, 42.402126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228981, 34.142170, 42.935169>,  <37.182446, 34.796204, 42.637920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228981, 34.142170, 42.935169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.605659, 34.227226, 42.830872>,  <37.831669, 34.278259, 42.768291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.605659, 34.227226, 42.830872>,  <37.228981, 34.142170, 42.935169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605659, 34.227226, 42.830872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309881, -0.246249, 0.918333,
		0.131065, -0.945593, -0.297785,
		0.941698, 0.212639, -0.260746,
		37.888168, 34.291019, 42.752647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671188, 33.635052, 43.168896>,  <37.228981, 34.142170, 42.935169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671188, 33.635052, 43.168896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.939960, 33.920486, 43.089592>,  <38.101223, 34.091747, 43.042011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.939960, 33.920486, 43.089592>,  <37.671188, 33.635052, 43.168896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939960, 33.920486, 43.089592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603552, -0.372448, 0.704988,
		0.429231, -0.593359, -0.680945,
		0.671927, 0.713588, -0.198256,
		38.141541, 34.134563, 43.030113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386990, 33.332287, 43.232121>,  <37.671188, 33.635052, 43.168896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386990, 33.332287, 43.232121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454529, 33.725956, 43.253628>,  <38.495052, 33.962158, 43.266533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454529, 33.725956, 43.253628>,  <38.386990, 33.332287, 43.232121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454529, 33.725956, 43.253628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592657, -0.144965, 0.792302,
		0.787558, -0.101908, -0.607755,
		0.168845, 0.984175, 0.053772,
		38.505184, 34.021210, 43.269760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102268, 33.447155, 43.291828>,  <38.386990, 33.332287, 43.232121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102268, 33.447155, 43.291828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.953812, 33.784336, 43.447617>,  <38.864738, 33.986645, 43.541088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.953812, 33.784336, 43.447617>,  <39.102268, 33.447155, 43.291828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953812, 33.784336, 43.447617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596105, -0.105308, 0.795971,
		0.711978, 0.527583, -0.463403,
		-0.371141, 0.842951, 0.389472,
		38.842468, 34.037220, 43.564457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661076, 33.724358, 43.614815>,  <39.102268, 33.447155, 43.291828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661076, 33.724358, 43.614815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.356373, 33.926674, 43.776749>,  <39.173550, 34.048065, 43.873909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.356373, 33.926674, 43.776749>,  <39.661076, 33.724358, 43.614815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356373, 33.926674, 43.776749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492640, 0.046407, 0.868995,
		0.420746, 0.861404, -0.284526,
		-0.761760, 0.505795, 0.404837,
		39.127846, 34.078411, 43.898201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970383, 34.330135, 43.931042>,  <39.661076, 33.724358, 43.614815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970383, 34.330135, 43.931042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616829, 34.263477, 44.105846>,  <39.404697, 34.223484, 44.210732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.616829, 34.263477, 44.105846>,  <39.970383, 34.330135, 43.931042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616829, 34.263477, 44.105846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413918, 0.156348, 0.896787,
		-0.217767, 0.973543, -0.069218,
		-0.883883, -0.166640, 0.437015,
		39.351665, 34.213486, 44.236950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.890091, 36.396210, 46.378685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.124870, 36.126350, 46.199650>,  <35.265739, 35.964436, 46.092228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.124870, 36.126350, 46.199650>,  <34.890091, 36.396210, 46.378685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124870, 36.126350, 46.199650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402304, 0.236719, -0.884373,
		0.702594, 0.699152, -0.132471,
		0.586953, -0.674648, -0.447589,
		35.300957, 35.923954, 46.065372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076496, 36.815529, 45.856705>,  <34.890091, 36.396210, 46.378685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076496, 36.815529, 45.856705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183277, 36.452011, 45.728436>,  <35.247345, 36.233902, 45.651474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183277, 36.452011, 45.728436>,  <35.076496, 36.815529, 45.856705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183277, 36.452011, 45.728436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143356, 0.291594, -0.945739,
		0.952987, 0.298439, -0.052439,
		0.266955, -0.908794, -0.320669,
		35.263363, 36.179375, 45.632236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670448, 36.826458, 45.392925>,  <35.076496, 36.815529, 45.856705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670448, 36.826458, 45.392925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.496689, 36.479923, 45.294334>,  <35.392433, 36.272003, 45.235180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.496689, 36.479923, 45.294334>,  <35.670448, 36.826458, 45.392925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496689, 36.479923, 45.294334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092440, 0.315081, -0.944552,
		0.895965, -0.387527, -0.216955,
		-0.434398, -0.866341, -0.246479,
		35.366371, 36.220020, 45.220390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931999, 36.747955, 44.823498>,  <35.670448, 36.826458, 45.392925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931999, 36.747955, 44.823498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617779, 36.500961, 44.807369>,  <35.429245, 36.352764, 44.797691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617779, 36.500961, 44.807369>,  <35.931999, 36.747955, 44.823498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617779, 36.500961, 44.807369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109769, 0.203187, -0.972968,
		0.608985, -0.759888, -0.227393,
		-0.785549, -0.617484, -0.040326,
		35.382114, 36.315716, 44.795273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054054, 36.369541, 44.227787>,  <35.931999, 36.747955, 44.823498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054054, 36.369541, 44.227787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.662960, 36.340752, 44.306633>,  <35.428303, 36.323479, 44.353943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.662960, 36.340752, 44.306633>,  <36.054054, 36.369541, 44.227787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662960, 36.340752, 44.306633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204122, 0.108254, -0.972942,
		0.048682, -0.991515, -0.120534,
		-0.977734, -0.071968, 0.197120,
		35.369640, 36.319160, 44.365768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841938, 36.018681, 43.698761>,  <36.054054, 36.369541, 44.227787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841938, 36.018681, 43.698761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503704, 36.179302, 43.839470>,  <35.300766, 36.275677, 43.923897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503704, 36.179302, 43.839470>,  <35.841938, 36.018681, 43.698761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503704, 36.179302, 43.839470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265215, 0.255885, -0.929615,
		-0.463308, -0.879360, -0.109872,
		-0.845581, 0.401558, 0.351773,
		35.250031, 36.299770, 43.945004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381310, 35.637398, 43.237797>,  <35.841938, 36.018681, 43.698761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381310, 35.637398, 43.237797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.232986, 35.977730, 43.386711>,  <35.143993, 36.181927, 43.476059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.232986, 35.977730, 43.386711>,  <35.381310, 35.637398, 43.237797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232986, 35.977730, 43.386711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172368, 0.330846, -0.927810,
		-0.912574, -0.408207, 0.023975,
		-0.370807, 0.850828, 0.372283,
		35.121746, 36.232979, 43.498398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776638, 35.687843, 42.883854>,  <35.381310, 35.637398, 43.237797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776638, 35.687843, 42.883854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.845734, 36.058510, 43.017391>,  <34.887192, 36.280910, 43.097515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.845734, 36.058510, 43.017391>,  <34.776638, 35.687843, 42.883854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845734, 36.058510, 43.017391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091130, 0.352520, -0.931357,
		-0.980743, 0.130460, 0.145342,
		0.172741, 0.926666, 0.333842,
		34.897556, 36.336510, 43.117542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402275, 36.099545, 42.521400>,  <34.776638, 35.687843, 42.883854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402275, 36.099545, 42.521400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.639030, 36.382656, 42.675652>,  <34.781086, 36.552525, 42.768204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.639030, 36.382656, 42.675652>,  <34.402275, 36.099545, 42.521400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639030, 36.382656, 42.675652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157308, 0.570680, -0.805964,
		-0.790517, 0.416381, 0.449121,
		0.591892, 0.707779, 0.385632,
		34.816597, 36.594990, 42.791340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017788, 36.615208, 42.536366>,  <34.402275, 36.099545, 42.521400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017788, 36.615208, 42.536366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389694, 36.762451, 42.538258>,  <34.612839, 36.850800, 42.539391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389694, 36.762451, 42.538258>,  <34.017788, 36.615208, 42.536366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389694, 36.762451, 42.538258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241342, 0.619175, -0.747246,
		-0.277998, 0.693625, 0.664531,
		0.929769, 0.368112, 0.004728,
		34.668625, 36.872887, 42.539677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993954, 37.213768, 42.360428>,  <34.017788, 36.615208, 42.536366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993954, 37.213768, 42.360428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.387104, 37.191509, 42.290154>,  <34.622993, 37.178154, 42.247990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.387104, 37.191509, 42.290154>,  <33.993954, 37.213768, 42.360428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387104, 37.191509, 42.290154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101152, 0.633984, -0.766702,
		0.154043, 0.771341, 0.617497,
		0.982873, -0.055644, -0.175684,
		34.681965, 37.174816, 42.237450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311096, 37.946903, 42.419670>,  <33.993954, 37.213768, 42.360428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311096, 37.946903, 42.419670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536362, 37.708141, 42.191090>,  <34.671520, 37.564884, 42.053944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536362, 37.708141, 42.191090>,  <34.311096, 37.946903, 42.419670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536362, 37.708141, 42.191090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023845, 0.702987, -0.710803,
		0.826001, 0.386673, 0.410131,
		0.563165, -0.596903, -0.571447,
		34.705311, 37.529072, 42.019657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834705, 38.465527, 42.037952>,  <34.311096, 37.946903, 42.419670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834705, 38.465527, 42.037952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.884079, 38.109501, 41.862427>,  <34.913704, 37.895885, 41.757111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.884079, 38.109501, 41.862427>,  <34.834705, 38.465527, 42.037952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884079, 38.109501, 41.862427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093112, 0.450630, -0.887841,
		0.987975, 0.068728, 0.138497,
		0.123430, -0.890061, -0.438812,
		34.921108, 37.842484, 41.730782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374290, 38.540848, 41.497425>,  <34.834705, 38.465527, 42.037952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374290, 38.540848, 41.497425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.166317, 38.229126, 41.357510>,  <35.041534, 38.042091, 41.273560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.166317, 38.229126, 41.357510>,  <35.374290, 38.540848, 41.497425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166317, 38.229126, 41.357510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022983, 0.396580, -0.917713,
		0.853899, -0.485186, -0.188283,
		-0.519931, -0.779306, -0.349790,
		35.010338, 37.995335, 41.252571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149063, 38.364288, 41.322319>,  <35.374290, 38.540848, 41.497425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149063, 38.364288, 41.322319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.491699, 38.569969, 41.305115>,  <36.697281, 38.693378, 41.294792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.491699, 38.569969, 41.305115>,  <36.149063, 38.364288, 41.322319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491699, 38.569969, 41.305115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302262, -0.432473, 0.849473,
		0.418203, -0.740649, -0.525876,
		0.856589, 0.514204, -0.043009,
		36.748676, 38.724232, 41.292213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701733, 37.871449, 41.516609>,  <36.149063, 38.364288, 41.322319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701733, 37.871449, 41.516609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828667, 38.247227, 41.568359>,  <36.904827, 38.472694, 41.599411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828667, 38.247227, 41.568359>,  <36.701733, 37.871449, 41.516609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828667, 38.247227, 41.568359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508283, -0.283674, 0.813128,
		0.800591, -0.192276, -0.567525,
		0.317337, 0.939446, 0.129376,
		36.923866, 38.529060, 41.607174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386269, 37.884132, 41.655281>,  <36.701733, 37.871449, 41.516609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386269, 37.884132, 41.655281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.257729, 38.228333, 41.813412>,  <37.180603, 38.434853, 41.908291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.257729, 38.228333, 41.813412>,  <37.386269, 37.884132, 41.655281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257729, 38.228333, 41.813412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448702, -0.229261, 0.863774,
		0.833907, 0.454957, -0.312433,
		-0.321351, 0.860496, 0.395322,
		37.161324, 38.486481, 41.932007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975616, 38.084877, 41.969791>,  <37.386269, 37.884132, 41.655281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975616, 38.084877, 41.969791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.686275, 38.307411, 42.133381>,  <37.512672, 38.440929, 42.231537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.686275, 38.307411, 42.133381>,  <37.975616, 38.084877, 41.969791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686275, 38.307411, 42.133381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512352, 0.035390, 0.858046,
		0.462884, 0.830206, -0.310637,
		-0.723349, 0.556332, 0.408976,
		37.469273, 38.474312, 42.256073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246532, 38.664875, 42.290012>,  <37.975616, 38.084877, 41.969791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246532, 38.664875, 42.290012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895153, 38.608665, 42.472698>,  <37.684326, 38.574940, 42.582310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895153, 38.608665, 42.472698>,  <38.246532, 38.664875, 42.290012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895153, 38.608665, 42.472698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449529, 0.081074, 0.889579,
		-0.162034, 0.986752, -0.008050,
		-0.878447, -0.140523, 0.456711,
		37.631618, 38.566509, 42.609711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218285, 39.142044, 42.947784>,  <38.246532, 38.664875, 42.290012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218285, 39.142044, 42.947784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.900021, 38.914242, 43.030327>,  <37.709061, 38.777561, 43.079853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.900021, 38.914242, 43.030327>,  <38.218285, 39.142044, 42.947784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900021, 38.914242, 43.030327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304500, -0.081554, 0.949015,
		-0.523639, 0.817933, 0.238304,
		-0.795665, -0.569504, 0.206356,
		37.661320, 38.743389, 43.092232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010662, 39.329258, 43.730392>,  <38.218285, 39.142044, 42.947784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010662, 39.329258, 43.730392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866779, 38.967491, 43.638622>,  <37.780449, 38.750431, 43.583561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866779, 38.967491, 43.638622>,  <38.010662, 39.329258, 43.730392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866779, 38.967491, 43.638622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292250, -0.342720, 0.892823,
		-0.886116, 0.254104, 0.387594,
		-0.359706, -0.904419, -0.229428,
		37.758869, 38.696167, 43.569794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758324, 39.070507, 44.366844>,  <38.010662, 39.329258, 43.730392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758324, 39.070507, 44.366844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.777359, 38.739563, 44.142982>,  <37.788780, 38.540997, 44.008667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.777359, 38.739563, 44.142982>,  <37.758324, 39.070507, 44.366844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777359, 38.739563, 44.142982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202578, -0.540651, 0.816491,
		-0.978109, -0.152228, 0.141877,
		0.047587, -0.827359, -0.559654,
		37.791634, 38.491356, 43.975086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337467, 38.627602, 44.756504>,  <37.758324, 39.070507, 44.366844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337467, 38.627602, 44.756504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.587696, 38.413475, 44.529488>,  <37.737831, 38.285000, 44.393280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.587696, 38.413475, 44.529488>,  <37.337467, 38.627602, 44.756504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587696, 38.413475, 44.529488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194035, -0.597842, 0.777776,
		-0.755654, -0.596676, -0.270121,
		0.625570, -0.535316, -0.567537,
		37.775368, 38.252880, 44.359226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152874, 37.859528, 44.877106>,  <37.337467, 38.627602, 44.756504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152874, 37.859528, 44.877106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.524590, 37.880127, 44.730812>,  <37.747620, 37.892487, 44.643036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.524590, 37.880127, 44.730812>,  <37.152874, 37.859528, 44.877106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524590, 37.880127, 44.730812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312050, -0.639210, 0.702876,
		-0.197585, -0.767306, -0.610083,
		0.929293, 0.051499, -0.365736,
		37.803379, 37.895576, 44.621090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260742, 37.176678, 44.627506>,  <37.152874, 37.859528, 44.877106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260742, 37.176678, 44.627506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.562523, 37.405155, 44.756836>,  <37.743591, 37.542240, 44.834435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.562523, 37.405155, 44.756836>,  <37.260742, 37.176678, 44.627506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562523, 37.405155, 44.756836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036963, -0.528805, 0.847938,
		0.655312, -0.627778, -0.420072,
		0.754454, 0.571191, 0.323327,
		37.788860, 37.576511, 44.853832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601334, 36.688358, 44.983673>,  <37.260742, 37.176678, 44.627506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601334, 36.688358, 44.983673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.772766, 37.038029, 45.075005>,  <37.875626, 37.247829, 45.129803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.772766, 37.038029, 45.075005>,  <37.601334, 36.688358, 44.983673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772766, 37.038029, 45.075005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118199, -0.304793, 0.945056,
		0.895740, -0.378041, -0.233954,
		0.428578, 0.874177, 0.228331,
		37.901340, 37.300282, 45.143505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279297, 36.565186, 45.167652>,  <37.601334, 36.688358, 44.983673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279297, 36.565186, 45.167652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.193909, 36.917603, 45.336502>,  <38.142677, 37.129055, 45.437813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.193909, 36.917603, 45.336502>,  <38.279297, 36.565186, 45.167652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193909, 36.917603, 45.336502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279010, -0.359108, 0.890615,
		0.936261, 0.307897, -0.169161,
		-0.213471, 0.881045, 0.422125,
		38.129868, 37.181915, 45.463139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862659, 36.772980, 45.579689>,  <38.279297, 36.565186, 45.167652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862659, 36.772980, 45.579689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.567478, 37.006268, 45.715500>,  <38.390369, 37.146240, 45.796986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.567478, 37.006268, 45.715500>,  <38.862659, 36.772980, 45.579689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567478, 37.006268, 45.715500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205374, -0.285170, 0.936215,
		0.642848, 0.760610, 0.090662,
		-0.737949, 0.583224, 0.339531,
		38.346092, 37.181236, 45.817360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582218, 37.079079, 45.388557>,  <38.862659, 36.772980, 45.579689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582218, 37.079079, 45.388557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.938858, 36.943882, 45.268017>,  <40.152843, 36.862762, 45.195694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.938858, 36.943882, 45.268017>,  <39.582218, 37.079079, 45.388557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938858, 36.943882, 45.268017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181780, 0.342355, -0.921819,
		0.414738, 0.876672, 0.243803,
		0.891599, -0.337994, -0.301348,
		40.206337, 36.842484, 45.177612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965542, 37.677078, 45.090401>,  <39.582218, 37.079079, 45.388557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965542, 37.677078, 45.090401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.124840, 37.342033, 44.940838>,  <40.220417, 37.141006, 44.851101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.124840, 37.342033, 44.940838>,  <39.965542, 37.677078, 45.090401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124840, 37.342033, 44.940838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203187, 0.316945, -0.926424,
		0.894494, 0.444912, -0.043972,
		0.398240, -0.837615, -0.373906,
		40.244312, 37.090748, 44.828667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585129, 37.913254, 44.577106>,  <39.965542, 37.677078, 45.090401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585129, 37.913254, 44.577106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.498070, 37.533783, 44.485329>,  <40.445835, 37.306103, 44.430260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.498070, 37.533783, 44.485329>,  <40.585129, 37.913254, 44.577106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498070, 37.533783, 44.485329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206293, 0.185059, -0.960831,
		0.953977, -0.256459, 0.155427,
		-0.217651, -0.948674, -0.229448,
		40.432774, 37.249180, 44.416492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173717, 37.748543, 44.118923>,  <40.585129, 37.913254, 44.577106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173717, 37.748543, 44.118923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.877094, 37.484707, 44.069881>,  <40.699120, 37.326405, 44.040455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.877094, 37.484707, 44.069881>,  <41.173717, 37.748543, 44.118923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877094, 37.484707, 44.069881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029702, 0.150298, -0.988194,
		0.670229, -0.736447, -0.091864,
		-0.741560, -0.659588, -0.122608,
		40.654625, 37.286831, 44.033100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453266, 37.095951, 43.765285>,  <41.173717, 37.748543, 44.118923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453266, 37.095951, 43.765285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.063816, 37.149387, 43.691299>,  <40.830147, 37.181450, 43.646908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.063816, 37.149387, 43.691299>,  <41.453266, 37.095951, 43.765285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063816, 37.149387, 43.691299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204337, 0.149851, -0.967363,
		-0.101512, -0.979642, -0.173196,
		-0.973623, 0.133590, -0.184965,
		40.771729, 37.189465, 43.635811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395142, 36.913521, 43.082657>,  <41.453266, 37.095951, 43.765285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395142, 36.913521, 43.082657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.026169, 37.060009, 43.131634>,  <40.804783, 37.147903, 43.161018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.026169, 37.060009, 43.131634>,  <41.395142, 36.913521, 43.082657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026169, 37.060009, 43.131634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038987, 0.403784, -0.914023,
		-0.384177, -0.838355, -0.386742,
		-0.922436, 0.366225, 0.122440,
		40.749439, 37.169876, 43.168365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021019, 36.797859, 42.425335>,  <41.395142, 36.913521, 43.082657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021019, 36.797859, 42.425335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.834377, 37.087330, 42.628738>,  <40.722393, 37.261013, 42.750778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.834377, 37.087330, 42.628738>,  <41.021019, 36.797859, 42.425335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834377, 37.087330, 42.628738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097150, 0.529516, -0.842719,
		-0.879115, -0.442617, -0.176770,
		-0.466604, 0.723673, 0.508505,
		40.694397, 37.304432, 42.781288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484665, 36.993904, 41.999207>,  <41.021019, 36.797859, 42.425335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484665, 36.993904, 41.999207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.510674, 37.313519, 42.238308>,  <40.526279, 37.505287, 42.381771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.510674, 37.313519, 42.238308>,  <40.484665, 36.993904, 41.999207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510674, 37.313519, 42.238308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085346, 0.601281, -0.794466,
		-0.994227, 0.000645, 0.107294,
		0.065026, 0.799037, 0.597755,
		40.530182, 37.553230, 42.417633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910149, 37.345020, 41.943489>,  <40.484665, 36.993904, 41.999207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910149, 37.345020, 41.943489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.173061, 37.616264, 42.075035>,  <40.330807, 37.779011, 42.153961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.173061, 37.616264, 42.075035>,  <39.910149, 37.345020, 41.943489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173061, 37.616264, 42.075035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178555, 0.564055, -0.806201,
		-0.732192, 0.471177, 0.491821,
		0.657278, 0.678111, 0.328865,
		40.370243, 37.819698, 42.173695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579750, 37.978725, 41.850079>,  <39.910149, 37.345020, 41.943489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579750, 37.978725, 41.850079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.964443, 38.088318, 41.850273>,  <40.195259, 38.154072, 41.850391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.964443, 38.088318, 41.850273>,  <39.579750, 37.978725, 41.850079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964443, 38.088318, 41.850273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146916, 0.517199, -0.843161,
		-0.231262, 0.810826, 0.537661,
		0.961735, 0.273982, 0.000485,
		40.252964, 38.170513, 41.850418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574947, 38.788864, 41.669189>,  <39.579750, 37.978725, 41.850079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574947, 38.788864, 41.669189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.919064, 38.596535, 41.601414>,  <40.125534, 38.481136, 41.560749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.919064, 38.596535, 41.601414>,  <39.574947, 38.788864, 41.669189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919064, 38.596535, 41.601414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004964, 0.324456, -0.945888,
		0.509778, 0.814580, 0.276740,
		0.860292, -0.480819, -0.169444,
		40.177151, 38.452290, 41.550579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975624, 39.194756, 41.202950>,  <39.574947, 38.788864, 41.669189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975624, 39.194756, 41.202950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160355, 38.843655, 41.151928>,  <40.271194, 38.632996, 41.121315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160355, 38.843655, 41.151928>,  <39.975624, 39.194756, 41.202950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160355, 38.843655, 41.151928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094853, 0.191857, -0.976828,
		0.881884, 0.439026, 0.171862,
		0.461826, -0.877751, -0.127553,
		40.298901, 38.580330, 41.113663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585251, 39.397175, 40.840912>,  <39.975624, 39.194756, 41.202950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585251, 39.397175, 40.840912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.549511, 39.003498, 40.779743>,  <40.528069, 38.767292, 40.743042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.549511, 39.003498, 40.779743>,  <40.585251, 39.397175, 40.840912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549511, 39.003498, 40.779743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019910, 0.151737, -0.988221,
		0.995802, -0.091339, 0.006039,
		-0.089346, -0.984192, -0.152918,
		40.522709, 38.708241, 40.733868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123905, 39.258881, 40.333916>,  <40.585251, 39.397175, 40.840912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123905, 39.258881, 40.333916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.867054, 38.953537, 40.305756>,  <40.712944, 38.770332, 40.288860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.867054, 38.953537, 40.305756>,  <41.123905, 39.258881, 40.333916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867054, 38.953537, 40.305756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037113, 0.060777, -0.997461,
		0.765699, -0.643110, -0.010697,
		-0.642128, -0.763358, -0.070405,
		40.674416, 38.724529, 40.284634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.002230, 30.290653, 32.475521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.907393, 30.183155, 32.848953>,  <30.850491, 30.118656, 33.073013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.907393, 30.183155, 32.848953>,  <31.002230, 30.290653, 32.475521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907393, 30.183155, 32.848953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662575, 0.747525, 0.046919,
		-0.710481, -0.607439, -0.355295,
		-0.237091, -0.268745, 0.933576,
		30.836266, 30.102531, 33.129025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194054, 30.210194, 32.517796>,  <31.002230, 30.290653, 32.475521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194054, 30.210194, 32.517796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.347971, 30.276270, 32.881035>,  <30.440321, 30.315916, 33.098980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.347971, 30.276270, 32.881035>,  <30.194054, 30.210194, 32.517796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347971, 30.276270, 32.881035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751339, 0.627522, 0.204218,
		-0.536117, -0.760873, 0.365582,
		0.384795, 0.165191, 0.908099,
		30.463409, 30.325827, 33.153465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703022, 30.173094, 32.932804>,  <30.194054, 30.210194, 32.517796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703022, 30.173094, 32.932804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.951292, 30.385799, 33.163277>,  <30.100254, 30.513422, 33.301559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.951292, 30.385799, 33.163277>,  <29.703022, 30.173094, 32.932804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951292, 30.385799, 33.163277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727684, 0.664312, 0.170780,
		-0.291952, -0.525279, 0.799278,
		0.620677, 0.531762, 0.576185,
		30.137495, 30.545328, 33.336132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277708, 30.213999, 33.465927>,  <29.703022, 30.173094, 32.932804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277708, 30.213999, 33.465927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557158, 30.499287, 33.488708>,  <29.724827, 30.670460, 33.502377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557158, 30.499287, 33.488708>,  <29.277708, 30.213999, 33.465927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557158, 30.499287, 33.488708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695811, 0.658718, 0.286246,
		0.166642, -0.239605, 0.956462,
		0.698625, 0.713218, 0.056949,
		29.766745, 30.713251, 33.505795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140030, 30.545403, 34.069275>,  <29.277708, 30.213999, 33.465927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140030, 30.545403, 34.069275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375498, 30.801264, 33.871563>,  <29.516779, 30.954781, 33.752937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375498, 30.801264, 33.871563>,  <29.140030, 30.545403, 34.069275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375498, 30.801264, 33.871563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628992, 0.746519, 0.216975,
		0.507779, 0.183171, 0.841789,
		0.588668, 0.639654, -0.494280,
		29.552097, 30.993160, 33.723278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305779, 31.134205, 34.498520>,  <29.140030, 30.545403, 34.069275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305779, 31.134205, 34.498520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.369438, 31.259693, 34.124088>,  <29.407635, 31.334986, 33.899429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.369438, 31.259693, 34.124088>,  <29.305779, 31.134205, 34.498520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369438, 31.259693, 34.124088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550866, 0.815061, 0.179506,
		0.819280, 0.487089, 0.302531,
		0.159146, 0.313720, -0.936084,
		29.417183, 31.353809, 33.843262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492409, 31.790318, 34.478725>,  <29.305779, 31.134205, 34.498520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492409, 31.790318, 34.478725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.407494, 31.800045, 34.087963>,  <29.356544, 31.805882, 33.853504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.407494, 31.800045, 34.087963>,  <29.492409, 31.790318, 34.478725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407494, 31.800045, 34.087963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302002, 0.949120, 0.089255,
		0.929370, 0.313975, -0.194143,
		-0.212288, 0.024319, -0.976904,
		29.343807, 31.807341, 33.794891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788822, 32.397953, 34.225292>,  <29.492409, 31.790318, 34.478725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788822, 32.397953, 34.225292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.495707, 32.289139, 33.975807>,  <29.319838, 32.223850, 33.826115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.495707, 32.289139, 33.975807>,  <29.788822, 32.397953, 34.225292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495707, 32.289139, 33.975807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379692, 0.924111, 0.043038,
		0.564675, 0.268357, -0.780466,
		-0.732787, -0.272034, -0.623715,
		29.275871, 32.207527, 33.788692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714266, 32.842293, 33.745136>,  <29.788822, 32.397953, 34.225292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714266, 32.842293, 33.745136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.346313, 32.686859, 33.723888>,  <29.125542, 32.593597, 33.711140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.346313, 32.686859, 33.723888>,  <29.714266, 32.842293, 33.745136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346313, 32.686859, 33.723888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391109, 0.918961, 0.050449,
		0.029214, 0.067183, -0.997313,
		-0.919881, -0.388584, -0.053123,
		29.070349, 32.570286, 33.707951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351667, 33.192692, 33.257721>,  <29.714266, 32.842293, 33.745136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351667, 33.192692, 33.257721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.062284, 33.028362, 33.479652>,  <28.888655, 32.929764, 33.612812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.062284, 33.028362, 33.479652>,  <29.351667, 33.192692, 33.257721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062284, 33.028362, 33.479652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417843, 0.900318, 0.121799,
		-0.549560, -0.143714, -0.823001,
		-0.723458, -0.410821, 0.554828,
		28.845247, 32.905117, 33.646099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870989, 33.708168, 33.210632>,  <29.351667, 33.192692, 33.257721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870989, 33.708168, 33.210632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.740202, 33.461334, 33.496933>,  <28.661730, 33.313232, 33.668713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.740202, 33.461334, 33.496933>,  <28.870989, 33.708168, 33.210632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740202, 33.461334, 33.496933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655214, 0.693814, 0.298857,
		-0.681019, -0.371254, -0.631177,
		-0.326967, -0.617084, 0.715752,
		28.642111, 33.276211, 33.711658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152357, 33.548119, 33.123260>,  <28.870989, 33.708168, 33.210632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152357, 33.548119, 33.123260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254267, 33.549900, 33.510056>,  <28.315413, 33.550968, 33.742134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254267, 33.549900, 33.510056>,  <28.152357, 33.548119, 33.123260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254267, 33.549900, 33.510056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684679, 0.706992, 0.177135,
		-0.682865, -0.707208, 0.183172,
		0.254773, 0.004455, 0.966991,
		28.330698, 33.551235, 33.800152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591688, 33.752007, 33.383358>,  <28.152357, 33.548119, 33.123260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591688, 33.752007, 33.383358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.814013, 33.776516, 33.714977>,  <27.947407, 33.791222, 33.913948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.814013, 33.776516, 33.714977>,  <27.591688, 33.752007, 33.383358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814013, 33.776516, 33.714977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654430, 0.647235, 0.390907,
		-0.512637, -0.759824, 0.399838,
		0.555809, 0.061273, 0.829049,
		27.980755, 33.794899, 33.963692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133820, 33.761356, 33.883957>,  <27.591688, 33.752007, 33.383358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133820, 33.761356, 33.883957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.453943, 33.904022, 34.076744>,  <27.646017, 33.989624, 34.192417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.453943, 33.904022, 34.076744>,  <27.133820, 33.761356, 33.883957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453943, 33.904022, 34.076744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563520, 0.722017, 0.401418,
		-0.204814, -0.592857, 0.778827,
		0.800310, 0.356669, 0.481966,
		27.694036, 34.011024, 34.221333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851852, 33.903503, 34.568054>,  <27.133820, 33.761356, 33.883957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851852, 33.903503, 34.568054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.187338, 34.116264, 34.521343>,  <27.388628, 34.243923, 34.493317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.187338, 34.116264, 34.521343>,  <26.851852, 33.903503, 34.568054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187338, 34.116264, 34.521343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382583, 0.728124, 0.568741,
		0.387545, -0.432333, 0.814185,
		0.838713, 0.531906, -0.116778,
		27.438951, 34.275837, 34.486309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111467, 34.188175, 35.240021>,  <26.851852, 33.903503, 34.568054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111467, 34.188175, 35.240021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270298, 34.439781, 34.972687>,  <27.365597, 34.590744, 34.812286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270298, 34.439781, 34.972687>,  <27.111467, 34.188175, 35.240021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270298, 34.439781, 34.972687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310038, 0.777325, 0.547396,
		0.863831, -0.010152, 0.503679,
		0.397079, 0.629017, -0.668330,
		27.389421, 34.628487, 34.772186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345547, 34.791172, 35.613018>,  <27.111467, 34.188175, 35.240021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345547, 34.791172, 35.613018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.344130, 34.905846, 35.229809>,  <27.343279, 34.974648, 34.999886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.344130, 34.905846, 35.229809>,  <27.345547, 34.791172, 35.613018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344130, 34.905846, 35.229809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388165, 0.882511, 0.265523,
		0.921583, 0.372811, 0.108152,
		-0.003544, 0.286682, -0.958019,
		27.343067, 34.991852, 34.942402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838520, 35.375629, 35.596481>,  <27.345547, 34.791172, 35.613018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838520, 35.375629, 35.596481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573803, 35.402874, 35.297848>,  <27.414972, 35.419220, 35.118668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573803, 35.402874, 35.297848>,  <27.838520, 35.375629, 35.596481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573803, 35.402874, 35.297848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220474, 0.934142, 0.280658,
		0.716534, 0.350341, -0.603192,
		-0.661793, 0.068113, -0.746586,
		27.375265, 35.423309, 35.073872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988895, 35.977852, 35.178688>,  <27.838520, 35.375629, 35.596481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988895, 35.977852, 35.178688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.615480, 35.905872, 35.054672>,  <27.391432, 35.862686, 34.980263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.615480, 35.905872, 35.054672>,  <27.988895, 35.977852, 35.178688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615480, 35.905872, 35.054672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249687, 0.946985, 0.202178,
		0.257220, 0.266154, -0.928977,
		-0.933538, -0.179950, -0.310039,
		27.335419, 35.851887, 34.961662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565762, 36.098957, 35.694984>,  <27.988895, 35.977852, 35.178688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565762, 36.098957, 35.694984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.943048, 36.229126, 35.721653>,  <29.169420, 36.307228, 35.737656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.943048, 36.229126, 35.721653>,  <28.565762, 36.098957, 35.694984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943048, 36.229126, 35.721653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332147, -0.921122, -0.203006,
		-0.004647, 0.213624, -0.976905,
		0.943216, 0.325420, 0.066674,
		29.226013, 36.326752, 35.741653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935268, 35.866135, 35.115517>,  <28.565762, 36.098957, 35.694984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935268, 35.866135, 35.115517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184719, 35.905300, 35.425743>,  <29.334389, 35.928799, 35.611881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184719, 35.905300, 35.425743>,  <28.935268, 35.866135, 35.115517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184719, 35.905300, 35.425743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508731, -0.804117, -0.307551,
		0.593536, 0.586352, -0.551277,
		0.623625, 0.097910, 0.775568,
		29.371807, 35.934673, 35.658413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662870, 35.932827, 34.830467>,  <28.935268, 35.866135, 35.115517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662870, 35.932827, 34.830467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663774, 35.799091, 35.207447>,  <29.664316, 35.718849, 35.433636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.663774, 35.799091, 35.207447>,  <29.662870, 35.932827, 34.830467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663774, 35.799091, 35.207447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730431, -0.643129, -0.229902,
		0.682982, 0.688915, 0.242757,
		0.002258, -0.334336, 0.942451,
		29.664452, 35.698792, 35.490181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343069, 35.774551, 34.917763>,  <29.662870, 35.932827, 34.830467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343069, 35.774551, 34.917763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.181431, 35.575806, 35.224964>,  <30.084448, 35.456558, 35.409286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.181431, 35.575806, 35.224964>,  <30.343069, 35.774551, 34.917763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181431, 35.575806, 35.224964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630557, -0.759552, -0.159621,
		0.662650, 0.419770, 0.620232,
		-0.404094, -0.496864, 0.768006,
		30.060202, 35.426746, 35.455364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899891, 35.701241, 35.449451>,  <30.343069, 35.774551, 34.917763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899891, 35.701241, 35.449451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.618380, 35.422626, 35.505367>,  <30.449472, 35.255459, 35.538918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.618380, 35.422626, 35.505367>,  <30.899891, 35.701241, 35.449451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618380, 35.422626, 35.505367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702242, -0.711846, -0.011465,
		0.107495, 0.090098, 0.990115,
		-0.703776, -0.696533, 0.139790,
		30.407248, 35.213665, 35.547306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247568, 35.197819, 35.921173>,  <30.899891, 35.701241, 35.449451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247568, 35.197819, 35.921173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.940994, 34.987953, 35.772953>,  <30.757050, 34.862034, 35.684021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.940994, 34.987953, 35.772953>,  <31.247568, 35.197819, 35.921173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940994, 34.987953, 35.772953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595719, -0.796353, -0.104603,
		-0.240207, -0.300915, 0.922904,
		-0.766433, -0.524664, -0.370550,
		30.711063, 34.830555, 35.661789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252470, 34.487793, 36.229465>,  <31.247568, 35.197819, 35.921173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252470, 34.487793, 36.229465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.030121, 34.432808, 35.901535>,  <30.896711, 34.399818, 35.704777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.030121, 34.432808, 35.901535>,  <31.252470, 34.487793, 36.229465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030121, 34.432808, 35.901535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493961, -0.847847, -0.192763,
		-0.668588, -0.512113, 0.539195,
		-0.555871, -0.137462, -0.819824,
		30.863359, 34.391571, 35.655586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029289, 33.770237, 36.200508>,  <31.252470, 34.487793, 36.229465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029289, 33.770237, 36.200508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.982254, 33.870846, 35.816235>,  <30.954033, 33.931210, 35.585670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.982254, 33.870846, 35.816235>,  <31.029289, 33.770237, 36.200508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982254, 33.870846, 35.816235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393988, -0.876185, -0.277620,
		-0.911563, -0.411142, 0.003932,
		-0.117587, 0.251519, -0.960683,
		30.946978, 33.946301, 35.528030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759172, 33.209354, 35.835335>,  <31.029289, 33.770237, 36.200508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759172, 33.209354, 35.835335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.950874, 33.419373, 35.554012>,  <31.065895, 33.545383, 35.385220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.950874, 33.419373, 35.554012>,  <30.759172, 33.209354, 35.835335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950874, 33.419373, 35.554012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393322, -0.844842, -0.362685,
		-0.784609, -0.102806, -0.611409,
		0.479257, 0.525046, -0.703306,
		31.094652, 33.576885, 35.343021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785248, 32.731567, 35.312920>,  <30.759172, 33.209354, 35.835335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785248, 32.731567, 35.312920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.037294, 33.007492, 35.170307>,  <31.188522, 33.173046, 35.084740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.037294, 33.007492, 35.170307>,  <30.785248, 32.731567, 35.312920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037294, 33.007492, 35.170307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510187, -0.713924, -0.479605,
		-0.585372, 0.120309, -0.801788,
		0.630117, 0.689810, -0.356531,
		31.226330, 33.214436, 35.063347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663368, 32.807522, 34.592159>,  <30.785248, 32.731567, 35.312920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663368, 32.807522, 34.592159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.041079, 32.915443, 34.667572>,  <31.267706, 32.980198, 34.712822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.041079, 32.915443, 34.667572>,  <30.663368, 32.807522, 34.592159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041079, 32.915443, 34.667572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324961, -0.673065, -0.664368,
		-0.052352, 0.688614, -0.723235,
		0.944277, 0.269804, 0.188536,
		31.324362, 32.996384, 34.724133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886251, 32.994564, 33.975540>,  <30.663368, 32.807522, 34.592159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886251, 32.994564, 33.975540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.203678, 32.896767, 34.198421>,  <31.394135, 32.838089, 34.332150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.203678, 32.896767, 34.198421>,  <30.886251, 32.994564, 33.975540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203678, 32.896767, 34.198421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349437, -0.566557, -0.746262,
		0.498142, 0.786916, -0.364167,
		0.793566, -0.244491, 0.557204,
		31.441748, 32.823418, 34.365582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297321, 32.821968, 33.466156>,  <30.886251, 32.994564, 33.975540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297321, 32.821968, 33.466156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.542418, 32.723232, 33.766453>,  <31.689474, 32.663990, 33.946632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.542418, 32.723232, 33.766453>,  <31.297321, 32.821968, 33.466156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542418, 32.723232, 33.766453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604441, -0.465610, -0.646419,
		0.509118, 0.849868, -0.136096,
		0.612739, -0.246842, 0.750746,
		31.726240, 32.649181, 33.991676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065304, 32.978405, 33.241852>,  <31.297321, 32.821968, 33.466156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065304, 32.978405, 33.241852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062721, 32.691017, 33.520061>,  <32.061172, 32.518585, 33.686989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062721, 32.691017, 33.520061>,  <32.065304, 32.978405, 33.241852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062721, 32.691017, 33.520061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660988, -0.524990, -0.536172,
		0.750369, 0.456275, 0.478289,
		-0.006454, -0.718470, 0.695528,
		32.060783, 32.475475, 33.728722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769287, 32.756474, 33.337597>,  <32.065304, 32.978405, 33.241852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769287, 32.756474, 33.337597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.561283, 32.451954, 33.492523>,  <32.436481, 32.269241, 33.585480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.561283, 32.451954, 33.492523>,  <32.769287, 32.756474, 33.337597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561283, 32.451954, 33.492523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673512, -0.644332, -0.362240,
		0.525332, 0.072491, 0.847804,
		-0.520008, -0.761303, 0.387312,
		32.405281, 32.223564, 33.608715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318958, 32.348919, 33.621105>,  <32.769287, 32.756474, 33.337597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318958, 32.348919, 33.621105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.987476, 32.130447, 33.572231>,  <32.788586, 31.999365, 33.542908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.987476, 32.130447, 33.572231>,  <33.318958, 32.348919, 33.621105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987476, 32.130447, 33.572231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521013, -0.673105, -0.524857,
		0.204422, -0.498615, 0.842375,
		-0.828708, -0.546181, -0.122188,
		32.738865, 31.966593, 33.535576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518948, 31.665234, 33.831860>,  <33.318958, 32.348919, 33.621105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518948, 31.665234, 33.831860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.201332, 31.574926, 33.606106>,  <33.010761, 31.520742, 33.470654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.201332, 31.574926, 33.606106>,  <33.518948, 31.665234, 33.831860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201332, 31.574926, 33.606106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517415, -0.738335, -0.432600,
		-0.319037, -0.635523, 0.703083,
		-0.794038, -0.225770, -0.564386,
		32.963120, 31.507195, 33.436790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379391, 30.911875, 33.925587>,  <33.518948, 31.665234, 33.831860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379391, 30.911875, 33.925587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.188396, 31.042587, 33.599342>,  <33.073799, 31.121016, 33.403595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.188396, 31.042587, 33.599342>,  <33.379391, 30.911875, 33.925587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188396, 31.042587, 33.599342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226008, -0.851351, -0.473416,
		-0.849064, -0.410391, 0.332671,
		-0.477506, 0.326774, -0.815603,
		33.045151, 31.140621, 33.354660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129173, 30.307426, 33.653934>,  <33.379391, 30.911875, 33.925587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129173, 30.307426, 33.653934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.096226, 30.570875, 33.354755>,  <33.076458, 30.728945, 33.175247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.096226, 30.570875, 33.354755>,  <33.129173, 30.307426, 33.653934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096226, 30.570875, 33.354755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321411, -0.692846, -0.645492,
		-0.943351, -0.293569, -0.154619,
		-0.082369, 0.658622, -0.747952,
		33.071514, 30.768461, 33.130371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635925, 30.070042, 33.201023>,  <33.129173, 30.307426, 33.653934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635925, 30.070042, 33.201023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.855568, 30.318224, 32.977051>,  <32.987354, 30.467133, 32.842667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.855568, 30.318224, 32.977051>,  <32.635925, 30.070042, 33.201023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855568, 30.318224, 32.977051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059938, -0.697478, -0.714095,
		-0.833603, 0.358551, -0.420176,
		0.549103, 0.620456, -0.559929,
		33.020298, 30.504360, 32.809071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432106, 29.883642, 32.493443>,  <32.635925, 30.070042, 33.201023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432106, 29.883642, 32.493443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.765865, 30.096346, 32.435459>,  <32.966122, 30.223969, 32.400669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.765865, 30.096346, 32.435459>,  <32.432106, 29.883642, 32.493443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765865, 30.096346, 32.435459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236453, -0.582932, -0.777355,
		-0.497867, 0.614347, -0.612133,
		0.834397, 0.531760, -0.144959,
		33.016186, 30.255875, 32.391972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446629, 30.061411, 31.771982>,  <32.432106, 29.883642, 32.493443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446629, 30.061411, 31.771982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.823261, 30.088741, 31.903893>,  <33.049240, 30.105139, 31.983038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.823261, 30.088741, 31.903893>,  <32.446629, 30.061411, 31.771982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823261, 30.088741, 31.903893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307155, -0.575805, -0.757697,
		0.138117, 0.814727, -0.563155,
		0.941584, 0.068325, 0.329776,
		33.105736, 30.109240, 32.002827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882179, 30.298506, 31.157557>,  <32.446629, 30.061411, 31.771982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882179, 30.298506, 31.157557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.089390, 30.112175, 31.444513>,  <33.213718, 30.000376, 31.616688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.089390, 30.112175, 31.444513>,  <32.882179, 30.298506, 31.157557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089390, 30.112175, 31.444513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418112, -0.593768, -0.687475,
		0.746209, 0.656082, -0.112821,
		0.518029, -0.465828, 0.717391,
		33.244797, 29.972427, 31.659731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.968609, 34.857956, 44.703762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.666759, 34.596306, 44.724422>,  <39.485649, 34.439316, 44.736816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.666759, 34.596306, 44.724422>,  <39.968609, 34.857956, 44.703762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666759, 34.596306, 44.724422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311667, -0.288059, 0.905475,
		-0.577416, 0.699388, 0.421244,
		-0.754622, -0.654124, 0.051646,
		39.440372, 34.400070, 44.739918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646900, 34.975975, 45.269417>,  <39.968609, 34.857956, 44.703762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646900, 34.975975, 45.269417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.545635, 34.599911, 45.178192>,  <39.484875, 34.374271, 45.123459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.545635, 34.599911, 45.178192>,  <39.646900, 34.975975, 45.269417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545635, 34.599911, 45.178192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348575, -0.308555, 0.885036,
		-0.902442, 0.144566, 0.405831,
		-0.253167, -0.940157, -0.228061,
		39.469685, 34.317863, 45.109776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353802, 34.764515, 45.849186>,  <39.646900, 34.975975, 45.269417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353802, 34.764515, 45.849186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.466949, 34.442833, 45.640099>,  <39.534840, 34.249825, 45.514645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.466949, 34.442833, 45.640099>,  <39.353802, 34.764515, 45.849186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466949, 34.442833, 45.640099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290307, -0.447633, 0.845782,
		-0.914169, -0.390999, 0.106843,
		0.282874, -0.804204, -0.522722,
		39.551811, 34.201572, 45.483280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283318, 34.179413, 46.316975>,  <39.353802, 34.764515, 45.849186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283318, 34.179413, 46.316975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.539639, 34.045914, 46.040428>,  <39.693432, 33.965816, 45.874500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.539639, 34.045914, 46.040428>,  <39.283318, 34.179413, 46.316975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539639, 34.045914, 46.040428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523081, -0.469361, 0.711397,
		-0.561928, -0.817504, -0.126189,
		0.640798, -0.333747, -0.691369,
		39.731876, 33.945789, 45.833019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428043, 33.417976, 46.511116>,  <39.283318, 34.179413, 46.316975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428043, 33.417976, 46.511116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.724514, 33.529465, 46.266830>,  <39.902397, 33.596359, 46.120258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.724514, 33.529465, 46.266830>,  <39.428043, 33.417976, 46.511116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724514, 33.529465, 46.266830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650072, -0.525021, 0.549326,
		-0.167529, -0.804156, -0.570323,
		0.741175, 0.278723, -0.610716,
		39.946865, 33.613083, 46.083614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831898, 32.797279, 46.273693>,  <39.428043, 33.417976, 46.511116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831898, 32.797279, 46.273693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.069798, 33.113483, 46.215233>,  <40.212540, 33.303207, 46.180157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.069798, 33.113483, 46.215233>,  <39.831898, 32.797279, 46.273693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069798, 33.113483, 46.215233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762985, -0.497800, 0.412370,
		0.253229, -0.356769, -0.899217,
		0.594751, 0.790513, -0.146152,
		40.248222, 33.350636, 46.171387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446651, 32.455128, 45.989902>,  <39.831898, 32.797279, 46.273693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446651, 32.455128, 45.989902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.536858, 32.820068, 46.126583>,  <40.590981, 33.039032, 46.208591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.536858, 32.820068, 46.126583>,  <40.446651, 32.455128, 45.989902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536858, 32.820068, 46.126583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788555, -0.376911, 0.485921,
		0.572122, 0.159871, -0.804437,
		0.225517, 0.912348, 0.341706,
		40.604511, 33.093773, 46.229095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163437, 32.477234, 45.930614>,  <40.446651, 32.455128, 45.989902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163437, 32.477234, 45.930614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.054779, 32.751274, 46.200977>,  <40.989586, 32.915699, 46.363194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.054779, 32.751274, 46.200977>,  <41.163437, 32.477234, 45.930614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054779, 32.751274, 46.200977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722193, -0.319101, 0.613687,
		0.636118, 0.654841, -0.408090,
		-0.271646, 0.685097, 0.675908,
		40.973286, 32.956802, 46.403751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814774, 32.653954, 46.295689>,  <41.163437, 32.477234, 45.930614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814774, 32.653954, 46.295689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.521931, 32.769821, 46.542301>,  <41.346226, 32.839344, 46.690269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.521931, 32.769821, 46.542301>,  <41.814774, 32.653954, 46.295689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521931, 32.769821, 46.542301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575061, -0.222317, 0.787325,
		0.365131, 0.930948, -0.003819,
		-0.732110, 0.289672, 0.616527,
		41.302299, 32.856724, 46.727261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216000, 33.035297, 46.757137>,  <41.814774, 32.653954, 46.295689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216000, 33.035297, 46.757137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.866848, 32.942184, 46.928673>,  <41.657356, 32.886314, 47.031593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.866848, 32.942184, 46.928673>,  <42.216000, 33.035297, 46.757137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866848, 32.942184, 46.928673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484222, -0.304915, 0.820095,
		-0.060148, 0.923492, 0.378873,
		-0.872875, -0.232786, 0.428835,
		41.604984, 32.872349, 47.057323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288601, 33.404194, 47.395039>,  <42.216000, 33.035297, 46.757137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288601, 33.404194, 47.395039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.001572, 33.128937, 47.438034>,  <41.829353, 32.963783, 47.463833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.001572, 33.128937, 47.438034>,  <42.288601, 33.404194, 47.395039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001572, 33.128937, 47.438034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404000, -0.285528, 0.869055,
		-0.567338, 0.667038, 0.482896,
		-0.717573, -0.688138, 0.107492,
		41.786301, 32.922497, 47.470284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047108, 33.531174, 48.098827>,  <42.288601, 33.404194, 47.395039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047108, 33.531174, 48.098827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.950867, 33.157959, 47.991825>,  <41.893120, 32.934032, 47.927624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.950867, 33.157959, 47.991825>,  <42.047108, 33.531174, 48.098827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950867, 33.157959, 47.991825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362622, -0.342055, 0.866894,
		-0.900341, 0.111577, 0.420638,
		-0.240606, -0.933032, -0.267506,
		41.878685, 32.878048, 47.911572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311913, 33.098969, 48.608170>,  <42.047108, 33.531174, 48.098827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311913, 33.098969, 48.608170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.154957, 32.815422, 48.373718>,  <42.060783, 32.645294, 48.233047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.154957, 32.815422, 48.373718>,  <42.311913, 33.098969, 48.608170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154957, 32.815422, 48.373718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387360, -0.705322, 0.593695,
		-0.834258, 0.005914, 0.551343,
		-0.392385, -0.708863, -0.586129,
		42.037243, 32.602764, 48.197880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824631, 32.711529, 48.922321>,  <42.311913, 33.098969, 48.608170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824631, 32.711529, 48.922321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.911026, 32.436676, 48.644848>,  <41.962864, 32.271763, 48.478363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.911026, 32.436676, 48.644848>,  <41.824631, 32.711529, 48.922321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911026, 32.436676, 48.644848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288056, -0.633990, 0.717691,
		-0.932939, -0.354830, 0.061001,
		0.215984, -0.687134, -0.693684,
		41.975822, 32.230537, 48.436741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631710, 33.363548, 49.369377>,  <41.824631, 32.711529, 48.922321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631710, 33.363548, 49.369377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.568974, 33.689133, 49.593113>,  <41.531330, 33.884483, 49.727356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.568974, 33.689133, 49.593113>,  <41.631710, 33.363548, 49.369377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568974, 33.689133, 49.593113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178159, 0.533741, -0.826668,
		-0.971422, -0.229307, 0.061302,
		-0.156841, 0.813965, 0.559341,
		41.521923, 33.933323, 49.760914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038929, 33.604275, 49.057152>,  <41.631710, 33.363548, 49.369377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038929, 33.604275, 49.057152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.206264, 33.913261, 49.248268>,  <41.306664, 34.098656, 49.362938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.206264, 33.913261, 49.248268>,  <41.038929, 33.604275, 49.057152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206264, 33.913261, 49.248268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370847, 0.625450, -0.686501,
		-0.829136, 0.110002, 0.548118,
		0.418337, 0.772471, 0.477790,
		41.331764, 34.145004, 49.391605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562580, 34.164185, 48.902870>,  <41.038929, 33.604275, 49.057152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562580, 34.164185, 48.902870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.888977, 34.337856, 49.055523>,  <41.084816, 34.442059, 49.147114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.888977, 34.337856, 49.055523>,  <40.562580, 34.164185, 48.902870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888977, 34.337856, 49.055523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173552, 0.813750, -0.554699,
		-0.551394, 0.386397, 0.739366,
		0.815993, 0.434176, 0.381636,
		41.133774, 34.468109, 49.170013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443081, 34.918308, 49.215069>,  <40.562580, 34.164185, 48.902870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443081, 34.918308, 49.215069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.826717, 34.904110, 49.102726>,  <41.056900, 34.895592, 49.035320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.826717, 34.904110, 49.102726>,  <40.443081, 34.918308, 49.215069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826717, 34.904110, 49.102726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156601, 0.759967, -0.630814,
		0.235832, 0.648992, 0.723320,
		0.959093, -0.035494, -0.280857,
		41.114445, 34.893463, 49.018467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699604, 35.470932, 49.310684>,  <40.443081, 34.918308, 49.215069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699604, 35.470932, 49.310684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.957500, 35.331581, 49.038525>,  <41.112240, 35.247971, 48.875229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.957500, 35.331581, 49.038525>,  <40.699604, 35.470932, 49.310684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957500, 35.331581, 49.038525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256329, 0.740032, -0.621810,
		0.720143, 0.575312, 0.387828,
		0.644740, -0.348381, -0.680398,
		41.150921, 35.227066, 48.834404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040390, 36.040096, 48.936165>,  <40.699604, 35.470932, 49.310684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040390, 36.040096, 48.936165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.110653, 35.736465, 48.685421>,  <41.152813, 35.554287, 48.534977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.110653, 35.736465, 48.685421>,  <41.040390, 36.040096, 48.936165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110653, 35.736465, 48.685421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225440, 0.588818, -0.776190,
		0.958290, 0.277665, -0.067693,
		0.175662, -0.759075, -0.626855,
		41.163353, 35.508743, 48.497364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624859, 36.265697, 48.488781>,  <41.040390, 36.040096, 48.936165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624859, 36.265697, 48.488781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.474934, 35.952991, 48.289440>,  <41.384979, 35.765366, 48.169838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.474934, 35.952991, 48.289440>,  <41.624859, 36.265697, 48.488781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474934, 35.952991, 48.289440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041082, 0.551013, -0.833485,
		0.926189, -0.291930, -0.238645,
		-0.374816, -0.781768, -0.498349,
		41.362488, 35.718460, 48.139935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921658, 36.432358, 47.838322>,  <41.624859, 36.265697, 48.488781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921658, 36.432358, 47.838322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.622070, 36.173172, 47.782909>,  <41.442318, 36.017662, 47.749660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.622070, 36.173172, 47.782909>,  <41.921658, 36.432358, 47.838322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622070, 36.173172, 47.782909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178117, 0.398260, -0.899813,
		0.638218, -0.649256, -0.413697,
		-0.748968, -0.647963, -0.138533,
		41.397381, 35.978783, 47.741348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040035, 36.036034, 47.235405>,  <41.921658, 36.432358, 47.838322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040035, 36.036034, 47.235405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.643055, 36.010212, 47.277126>,  <41.404869, 35.994720, 47.302158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.643055, 36.010212, 47.277126>,  <42.040035, 36.036034, 47.235405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643055, 36.010212, 47.277126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113521, 0.161315, -0.980352,
		0.046460, -0.984789, -0.167425,
		-0.992449, -0.064553, 0.104300,
		41.345322, 35.990845, 47.308414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809635, 35.648052, 46.592274>,  <42.040035, 36.036034, 47.235405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809635, 35.648052, 46.592274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.480625, 35.825024, 46.735218>,  <41.283218, 35.931206, 46.820984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.480625, 35.825024, 46.735218>,  <41.809635, 35.648052, 46.592274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480625, 35.825024, 46.735218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349321, 0.102849, -0.931342,
		-0.448808, -0.890886, 0.069954,
		-0.822525, 0.442430, 0.357365,
		41.233868, 35.957752, 46.842426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213203, 35.303570, 46.320675>,  <41.809635, 35.648052, 46.592274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213203, 35.303570, 46.320675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.113930, 35.681946, 46.404205>,  <41.054367, 35.908970, 46.454323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.113930, 35.681946, 46.404205>,  <41.213203, 35.303570, 46.320675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113930, 35.681946, 46.404205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292512, 0.132328, -0.947062,
		-0.923495, -0.296128, 0.243856,
		-0.248183, 0.945937, 0.208825,
		41.039474, 35.965729, 46.466854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680920, 35.416058, 45.870968>,  <41.213203, 35.303570, 46.320675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680920, 35.416058, 45.870968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.744778, 35.785069, 46.011513>,  <40.783092, 36.006474, 46.095840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.744778, 35.785069, 46.011513>,  <40.680920, 35.416058, 45.870968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744778, 35.785069, 46.011513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528350, 0.380507, -0.758987,
		-0.833883, -0.064476, 0.548163,
		0.159644, 0.922528, 0.351364,
		40.792671, 36.061829, 46.116920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072544, 35.743328, 45.806988>,  <40.680920, 35.416058, 45.870968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072544, 35.743328, 45.806988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.353161, 36.027966, 45.822380>,  <40.521530, 36.198746, 45.831615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.353161, 36.027966, 45.822380>,  <40.072544, 35.743328, 45.806988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353161, 36.027966, 45.822380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503159, 0.532841, -0.680376,
		-0.504650, 0.457952, 0.731853,
		0.701541, 0.711590, 0.038476,
		40.563622, 36.241444, 45.833923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709099, 36.458191, 45.764709>,  <40.072544, 35.743328, 45.806988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709099, 36.458191, 45.764709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.087719, 36.525768, 45.654804>,  <40.314892, 36.566315, 45.588860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.087719, 36.525768, 45.654804>,  <39.709099, 36.458191, 45.764709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087719, 36.525768, 45.654804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321981, 0.545337, -0.773910,
		0.019092, 0.821015, 0.570587,
		0.946554, 0.168943, -0.274763,
		40.371685, 36.576450, 45.572376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246494, 37.055729, 46.103161>,  <39.709099, 36.458191, 45.764709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246494, 37.055729, 46.103161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.853752, 37.111034, 46.155087>,  <38.618107, 37.144218, 46.186241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.853752, 37.111034, 46.155087>,  <39.246494, 37.055729, 46.103161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853752, 37.111034, 46.155087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079767, -0.319957, 0.944068,
		0.172063, 0.937289, 0.303122,
		-0.981851, 0.138260, 0.129818,
		38.559196, 37.152512, 46.194031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140045, 37.516281, 46.652695>,  <39.246494, 37.055729, 46.103161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140045, 37.516281, 46.652695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823822, 37.273048, 46.623718>,  <38.634087, 37.127110, 46.606331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823822, 37.273048, 46.623718>,  <39.140045, 37.516281, 46.652695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823822, 37.273048, 46.623718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015965, -0.138718, 0.990203,
		-0.612178, 0.781658, 0.119373,
		-0.790559, -0.608086, -0.072441,
		38.586655, 37.090622, 46.601986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856831, 37.680122, 47.236439>,  <39.140045, 37.516281, 46.652695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856831, 37.680122, 47.236439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692616, 37.331966, 47.127716>,  <38.594086, 37.123074, 47.062481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.692616, 37.331966, 47.127716>,  <38.856831, 37.680122, 47.236439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692616, 37.331966, 47.127716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120620, -0.243632, 0.962338,
		-0.903829, 0.427865, -0.004965,
		-0.410541, -0.870388, -0.271810,
		38.569454, 37.070850, 47.046173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356991, 37.565861, 47.747345>,  <38.856831, 37.680122, 47.236439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356991, 37.565861, 47.747345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.358322, 37.200993, 47.583424>,  <38.359119, 36.982071, 47.485069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.358322, 37.200993, 47.583424>,  <38.356991, 37.565861, 47.747345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358322, 37.200993, 47.583424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006452, -0.409778, 0.912163,
		-0.999974, -0.005678, 0.004523,
		0.003326, -0.912168, -0.409803,
		38.359322, 36.927341, 47.460484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803719, 37.230690, 48.086025>,  <38.356991, 37.565861, 47.747345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803719, 37.230690, 48.086025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.064014, 36.965588, 47.937813>,  <38.220192, 36.806526, 47.848885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.064014, 36.965588, 47.937813>,  <37.803719, 37.230690, 48.086025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064014, 36.965588, 47.937813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052084, -0.447878, 0.892576,
		-0.757510, -0.600136, -0.256934,
		0.650742, -0.662754, -0.370530,
		38.259235, 36.766762, 47.826653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534050, 36.630348, 48.295643>,  <37.803719, 37.230690, 48.086025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534050, 36.630348, 48.295643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.913395, 36.521164, 48.231026>,  <38.141003, 36.455654, 48.192257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.913395, 36.521164, 48.231026>,  <37.534050, 36.630348, 48.295643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913395, 36.521164, 48.231026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047038, -0.382639, 0.922700,
		-0.313669, -0.882656, -0.350043,
		0.948367, -0.272957, -0.161541,
		38.197903, 36.439278, 48.182564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535652, 35.917389, 48.464268>,  <37.534050, 36.630348, 48.295643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535652, 35.917389, 48.464268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.910023, 36.054707, 48.495728>,  <38.134647, 36.137096, 48.514603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.910023, 36.054707, 48.495728>,  <37.535652, 35.917389, 48.464268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910023, 36.054707, 48.495728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033878, -0.310030, 0.950123,
		0.350553, -0.886584, -0.301796,
		0.935930, 0.343293, 0.078646,
		38.190804, 36.157696, 48.519321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435726, 35.194969, 48.309299>,  <37.535652, 35.917389, 48.464268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435726, 35.194969, 48.309299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068974, 35.045517, 48.365490>,  <36.848923, 34.955845, 48.399204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068974, 35.045517, 48.365490>,  <37.435726, 35.194969, 48.309299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068974, 35.045517, 48.365490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226438, 0.197025, -0.953890,
		0.328720, -0.906413, -0.265252,
		-0.916880, -0.373626, 0.140480,
		36.793911, 34.933430, 48.407635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208027, 34.652157, 47.817280>,  <37.435726, 35.194969, 48.309299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208027, 34.652157, 47.817280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.866173, 34.811401, 47.950603>,  <36.661060, 34.906948, 48.030598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.866173, 34.811401, 47.950603>,  <37.208027, 34.652157, 47.817280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866173, 34.811401, 47.950603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276234, 0.194929, -0.941115,
		-0.439642, -0.896387, -0.056622,
		-0.854640, 0.398113, 0.333312,
		36.609779, 34.930836, 48.050598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725010, 34.503025, 47.308247>,  <37.208027, 34.652157, 47.817280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725010, 34.503025, 47.308247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493603, 34.763519, 47.504696>,  <36.354759, 34.919815, 47.622566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493603, 34.763519, 47.504696>,  <36.725010, 34.503025, 47.308247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493603, 34.763519, 47.504696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312207, 0.379464, -0.870939,
		-0.753551, -0.657190, -0.016207,
		-0.578522, 0.651237, 0.491125,
		36.320045, 34.958889, 47.652035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060741, 34.353725, 47.029026>,  <36.725010, 34.503025, 47.308247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060741, 34.353725, 47.029026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.061920, 34.726620, 47.173759>,  <36.062626, 34.950356, 47.260601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.061920, 34.726620, 47.173759>,  <36.060741, 34.353725, 47.029026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061920, 34.726620, 47.173759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428640, 0.328090, -0.841799,
		-0.903471, -0.152618, 0.400560,
		0.002946, 0.932236, 0.361838,
		36.062805, 35.006290, 47.282310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377258, 34.631866, 47.068611>,  <36.060741, 34.353725, 47.029026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377258, 34.631866, 47.068611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608181, 34.957558, 47.044144>,  <35.746735, 35.152973, 47.029461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608181, 34.957558, 47.044144>,  <35.377258, 34.631866, 47.068611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608181, 34.957558, 47.044144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555879, 0.337043, -0.759868,
		-0.598091, 0.472682, 0.647192,
		0.577308, 0.814232, -0.061172,
		35.781372, 35.201828, 47.025791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934216, 35.055622, 46.690899>,  <35.377258, 34.631866, 47.068611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934216, 35.055622, 46.690899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.284058, 35.249165, 46.678608>,  <35.493961, 35.365292, 46.671234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.284058, 35.249165, 46.678608>,  <34.934216, 35.055622, 46.690899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284058, 35.249165, 46.678608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290570, 0.472381, -0.832121,
		-0.388114, 0.736706, 0.553742,
		0.874606, 0.483859, -0.030727,
		35.546440, 35.394321, 46.669392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796005, 35.759087, 46.679028>,  <34.934216, 35.055622, 46.690899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796005, 35.759087, 46.679028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.151295, 35.705162, 46.503349>,  <35.364468, 35.672810, 46.397942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.151295, 35.705162, 46.503349>,  <34.796005, 35.759087, 46.679028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151295, 35.705162, 46.503349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390970, 0.280230, -0.876706,
		0.241263, 0.950420, 0.196199,
		0.888220, -0.134809, -0.439195,
		35.417759, 35.664719, 46.371590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.970272, 31.201456, 48.545048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.292934, 31.241270, 48.312016>,  <40.486530, 31.265158, 48.172195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.292934, 31.241270, 48.312016>,  <39.970272, 31.201456, 48.545048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292934, 31.241270, 48.312016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579603, -0.059629, -0.812715,
		-0.115630, 0.993246, 0.009590,
		0.806654, 0.099533, -0.582583,
		40.534931, 31.271130, 48.137241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896297, 31.873339, 47.999043>,  <39.970272, 31.201456, 48.545048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896297, 31.873339, 47.999043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.107746, 31.564100, 47.858822>,  <40.234615, 31.378557, 47.774689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.107746, 31.564100, 47.858822>,  <39.896297, 31.873339, 47.999043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107746, 31.564100, 47.858822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625040, -0.075080, -0.776974,
		0.574355, 0.629833, -0.522904,
		0.528623, -0.773094, -0.350548,
		40.266335, 31.332172, 47.753658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867558, 32.041042, 47.251842>,  <39.896297, 31.873339, 47.999043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867558, 32.041042, 47.251842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.978558, 31.657354, 47.273384>,  <40.045158, 31.427143, 47.286308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.978558, 31.657354, 47.273384>,  <39.867558, 32.041042, 47.251842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978558, 31.657354, 47.273384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340605, -0.150637, -0.928061,
		0.898323, 0.239193, -0.368515,
		0.277498, -0.959216, 0.053850,
		40.061806, 31.369589, 47.289539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052376, 32.010487, 46.640400>,  <39.867558, 32.041042, 47.251842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052376, 32.010487, 46.640400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.006405, 31.629337, 46.752701>,  <39.978825, 31.400648, 46.820084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.006405, 31.629337, 46.752701>,  <40.052376, 32.010487, 46.640400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006405, 31.629337, 46.752701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428352, -0.207465, -0.879473,
		0.896274, -0.221333, -0.384323,
		-0.114923, -0.952875, 0.280754,
		39.971928, 31.343475, 46.836926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172466, 31.665592, 46.047363>,  <40.052376, 32.010487, 46.640400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172466, 31.665592, 46.047363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.979050, 31.399023, 46.274368>,  <39.862999, 31.239082, 46.410572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.979050, 31.399023, 46.274368>,  <40.172466, 31.665592, 46.047363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979050, 31.399023, 46.274368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614718, -0.203028, -0.762169,
		0.623147, -0.717399, -0.311491,
		-0.483538, -0.666422, 0.567514,
		39.833988, 31.199097, 46.444622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118988, 31.014706, 45.632725>,  <40.172466, 31.665592, 46.047363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118988, 31.014706, 45.632725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.834763, 31.001413, 45.913864>,  <39.664227, 30.993439, 46.082546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.834763, 31.001413, 45.913864>,  <40.118988, 31.014706, 45.632725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834763, 31.001413, 45.913864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656014, -0.329923, -0.678820,
		0.254442, -0.943423, 0.212632,
		-0.710566, -0.033231, 0.702845,
		39.621593, 30.991444, 46.124718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704868, 30.506977, 45.364155>,  <40.118988, 31.014706, 45.632725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704868, 30.506977, 45.364155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.479355, 30.690071, 45.639149>,  <39.344048, 30.799927, 45.804146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.479355, 30.690071, 45.639149>,  <39.704868, 30.506977, 45.364155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479355, 30.690071, 45.639149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817738, -0.192455, -0.542463,
		-0.115994, -0.868011, 0.482808,
		-0.563783, 0.457732, 0.687481,
		39.310219, 30.827391, 45.845394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180347, 30.098742, 45.403519>,  <39.704868, 30.506977, 45.364155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180347, 30.098742, 45.403519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.036964, 30.447266, 45.537582>,  <38.950935, 30.656380, 45.618019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.036964, 30.447266, 45.537582>,  <39.180347, 30.098742, 45.403519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036964, 30.447266, 45.537582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751576, -0.056391, -0.657232,
		-0.553752, -0.487484, 0.675069,
		-0.358458, 0.871309, 0.335155,
		38.929428, 30.708658, 45.638130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507660, 29.949625, 45.584183>,  <39.180347, 30.098742, 45.403519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507660, 29.949625, 45.584183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.525066, 30.346241, 45.535271>,  <38.535511, 30.584211, 45.505924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.525066, 30.346241, 45.535271>,  <38.507660, 29.949625, 45.584183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525066, 30.346241, 45.535271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695844, -0.057741, -0.715869,
		-0.716874, 0.116239, 0.687445,
		0.043518, 0.991542, -0.122277,
		38.538120, 30.643703, 45.498589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889671, 30.130054, 45.555607>,  <38.507660, 29.949625, 45.584183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889671, 30.130054, 45.555607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.055862, 30.449467, 45.381378>,  <38.155579, 30.641115, 45.276840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.055862, 30.449467, 45.381378>,  <37.889671, 30.130054, 45.555607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055862, 30.449467, 45.381378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777473, 0.063212, -0.625731,
		-0.472133, 0.598624, 0.647101,
		0.415483, 0.798532, -0.435569,
		38.180508, 30.689026, 45.250706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387005, 30.631535, 45.404537>,  <37.889671, 30.130054, 45.555607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387005, 30.631535, 45.404537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.684811, 30.739807, 45.160427>,  <37.863495, 30.804771, 45.013962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.684811, 30.739807, 45.160427>,  <37.387005, 30.631535, 45.404537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684811, 30.739807, 45.160427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665968, 0.237020, -0.707325,
		-0.046814, 0.933033, 0.356730,
		0.744510, 0.270684, -0.610274,
		37.908165, 30.821012, 44.977345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195095, 31.196348, 45.058315>,  <37.387005, 30.631535, 45.404537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195095, 31.196348, 45.058315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.484314, 31.096985, 44.800476>,  <37.657845, 31.037367, 44.645775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.484314, 31.096985, 44.800476>,  <37.195095, 31.196348, 45.058315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484314, 31.096985, 44.800476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533309, 0.392367, -0.749419,
		0.439079, 0.885631, 0.151221,
		0.723043, -0.248406, -0.644595,
		37.701225, 31.022463, 44.607098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928062, 31.962877, 45.336792>,  <37.195095, 31.196348, 45.058315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928062, 31.962877, 45.336792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.569626, 32.060059, 45.485382>,  <36.354565, 32.118366, 45.574535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.569626, 32.060059, 45.485382>,  <36.928062, 31.962877, 45.336792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569626, 32.060059, 45.485382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296125, -0.296212, 0.908058,
		0.330650, 0.923706, 0.193489,
		-0.896092, 0.242952, 0.371475,
		36.300797, 32.132946, 45.596825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068798, 32.509766, 45.789730>,  <36.928062, 31.962877, 45.336792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068798, 32.509766, 45.789730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.728184, 32.327469, 45.893421>,  <36.523815, 32.218090, 45.955635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.728184, 32.327469, 45.893421>,  <37.068798, 32.509766, 45.789730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728184, 32.327469, 45.893421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360667, -0.150311, 0.920503,
		-0.380544, 0.877331, 0.292364,
		-0.851532, -0.455737, 0.259224,
		36.472725, 32.190746, 45.971188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861347, 32.872757, 46.412785>,  <37.068798, 32.509766, 45.789730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861347, 32.872757, 46.412785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.649345, 32.533669, 46.404144>,  <36.522144, 32.330215, 46.398960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.649345, 32.533669, 46.404144>,  <36.861347, 32.872757, 46.412785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649345, 32.533669, 46.404144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157468, -0.123417, 0.979782,
		-0.833247, 0.515886, 0.198901,
		-0.530004, -0.847720, -0.021601,
		36.490345, 32.279354, 46.397663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530785, 32.778778, 47.014462>,  <36.861347, 32.872757, 46.412785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530785, 32.778778, 47.014462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.495358, 32.399490, 46.892448>,  <36.474102, 32.171917, 46.819241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.495358, 32.399490, 46.892448>,  <36.530785, 32.778778, 47.014462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495358, 32.399490, 46.892448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049431, -0.310039, 0.949438,
		-0.994843, 0.069009, 0.074329,
		-0.088565, -0.948216, -0.305029,
		36.468788, 32.115025, 46.800941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076344, 32.568855, 47.484962>,  <36.530785, 32.778778, 47.014462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076344, 32.568855, 47.484962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.181870, 32.207981, 47.348461>,  <36.245186, 31.991455, 47.266560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.181870, 32.207981, 47.348461>,  <36.076344, 32.568855, 47.484962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181870, 32.207981, 47.348461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014318, -0.350088, 0.936607,
		-0.964466, -0.251981, -0.079443,
		0.263819, -0.902188, -0.341256,
		36.261017, 31.937325, 47.246086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593819, 32.090801, 47.681374>,  <36.076344, 32.568855, 47.484962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593819, 32.090801, 47.681374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.929394, 31.879372, 47.629532>,  <36.130737, 31.752514, 47.598427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.929394, 31.879372, 47.629532>,  <35.593819, 32.090801, 47.681374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929394, 31.879372, 47.629532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052813, -0.157954, 0.986033,
		-0.541661, -0.834064, -0.104598,
		0.838937, -0.528571, -0.129607,
		36.181076, 31.720800, 47.590649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555405, 31.343805, 48.001602>,  <35.593819, 32.090801, 47.681374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555405, 31.343805, 48.001602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.925846, 31.490267, 47.965233>,  <36.148109, 31.578144, 47.943409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.925846, 31.490267, 47.965233>,  <35.555405, 31.343805, 48.001602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925846, 31.490267, 47.965233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114354, -0.042763, 0.992519,
		0.359526, -0.929571, -0.081474,
		0.926101, 0.366153, -0.090926,
		36.203678, 31.600113, 47.937954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949429, 30.782467, 48.366722>,  <35.555405, 31.343805, 48.001602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949429, 30.782467, 48.366722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.190723, 31.100166, 48.337662>,  <36.335499, 31.290785, 48.320225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.190723, 31.100166, 48.337662>,  <35.949429, 30.782467, 48.366722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190723, 31.100166, 48.337662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399960, -0.222445, 0.889129,
		0.690028, -0.565411, -0.451853,
		0.603236, 0.794247, -0.072648,
		36.371693, 31.338440, 48.315868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486576, 30.640015, 48.755775>,  <35.949429, 30.782467, 48.366722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486576, 30.640015, 48.755775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.565414, 31.027794, 48.697365>,  <36.612717, 31.260462, 48.662319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.565414, 31.027794, 48.697365>,  <36.486576, 30.640015, 48.755775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565414, 31.027794, 48.697365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543369, 0.015961, 0.839343,
		0.816030, -0.244776, -0.523622,
		0.197093, 0.969448, -0.146028,
		36.624542, 31.318628, 48.653557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185795, 30.637936, 49.172031>,  <36.486576, 30.640015, 48.755775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185795, 30.637936, 49.172031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.021179, 30.996025, 49.103668>,  <36.922409, 31.210878, 49.062649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.021179, 30.996025, 49.103668>,  <37.185795, 30.637936, 49.172031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021179, 30.996025, 49.103668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478755, 0.371919, 0.795279,
		0.775516, 0.245467, -0.581653,
		-0.411543, 0.895222, -0.170911,
		36.897717, 31.264591, 49.052395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703526, 31.236355, 49.050056>,  <37.185795, 30.637936, 49.172031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703526, 31.236355, 49.050056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.367733, 31.411503, 49.178764>,  <37.166256, 31.516592, 49.255989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.367733, 31.411503, 49.178764>,  <37.703526, 31.236355, 49.050056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367733, 31.411503, 49.178764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460533, 0.259046, 0.849002,
		0.288401, 0.860909, -0.419119,
		-0.839485, 0.437871, 0.321768,
		37.115887, 31.542864, 49.275295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840530, 32.023933, 49.267761>,  <37.703526, 31.236355, 49.050056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840530, 32.023933, 49.267761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.509193, 31.905197, 49.457806>,  <37.310390, 31.833956, 49.571835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.509193, 31.905197, 49.457806>,  <37.840530, 32.023933, 49.267761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509193, 31.905197, 49.457806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307484, 0.468025, 0.828496,
		-0.468293, 0.832371, -0.296413,
		-0.828345, -0.296837, 0.475113,
		37.260689, 31.816147, 49.600338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616600, 32.551430, 49.634167>,  <37.840530, 32.023933, 49.267761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616600, 32.551430, 49.634167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.453136, 32.248661, 49.838154>,  <37.355061, 32.066998, 49.960545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.453136, 32.248661, 49.838154>,  <37.616600, 32.551430, 49.634167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453136, 32.248661, 49.838154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200074, 0.470867, 0.859218,
		-0.890489, 0.453155, -0.040981,
		-0.408656, -0.756925, 0.509966,
		37.330540, 32.021584, 49.991142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119617, 32.683571, 50.120827>,  <37.616600, 32.551430, 49.634167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119617, 32.683571, 50.120827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.260273, 32.339046, 50.267517>,  <37.344666, 32.132332, 50.355530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.260273, 32.339046, 50.267517>,  <37.119617, 32.683571, 50.120827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260273, 32.339046, 50.267517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102717, 0.424877, 0.899405,
		-0.930484, -0.278595, 0.237874,
		0.351637, -0.861315, 0.366725,
		37.365765, 32.080650, 50.377533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518372, 32.418209, 50.386166>,  <37.119617, 32.683571, 50.120827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518372, 32.418209, 50.386166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.610771, 32.737759, 50.608315>,  <36.666210, 32.929489, 50.741604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.610771, 32.737759, 50.608315>,  <36.518372, 32.418209, 50.386166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610771, 32.737759, 50.608315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218643, 0.598837, -0.770448,
		-0.948069, 0.056545, 0.312999,
		0.231000, 0.798873, 0.555375,
		36.680073, 32.977421, 50.774925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967373, 32.808315, 50.313911>,  <36.518372, 32.418209, 50.386166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967373, 32.808315, 50.313911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.261948, 33.064796, 50.400188>,  <36.438694, 33.218685, 50.451954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.261948, 33.064796, 50.400188>,  <35.967373, 32.808315, 50.313911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261948, 33.064796, 50.400188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272765, 0.573199, -0.772685,
		-0.619082, 0.510200, 0.597021,
		0.736436, 0.641201, 0.215693,
		36.482880, 33.257156, 50.464897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663582, 33.391956, 50.145992>,  <35.967373, 32.808315, 50.313911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663582, 33.391956, 50.145992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.061077, 33.432316, 50.126759>,  <36.299572, 33.456532, 50.115219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.061077, 33.432316, 50.126759>,  <35.663582, 33.391956, 50.145992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061077, 33.432316, 50.126759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087571, 0.435511, -0.895914,
		-0.069458, 0.894510, 0.441618,
		0.993734, 0.100901, -0.048083,
		36.359196, 33.462585, 50.112335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814163, 34.080338, 50.141598>,  <35.663582, 33.391956, 50.145992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814163, 34.080338, 50.141598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.160774, 33.953201, 49.987659>,  <36.368740, 33.876919, 49.895298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.160774, 33.953201, 49.987659>,  <35.814163, 34.080338, 50.141598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160774, 33.953201, 49.987659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136873, 0.590156, -0.795601,
		0.479995, 0.742085, 0.467883,
		0.866528, -0.317844, -0.384844,
		36.420734, 33.857849, 49.872208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134930, 34.798508, 49.878658>,  <35.814163, 34.080338, 50.141598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134930, 34.798508, 49.878658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.367004, 34.523125, 49.704575>,  <36.506248, 34.357895, 49.600124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.367004, 34.523125, 49.704575>,  <36.134930, 34.798508, 49.878658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367004, 34.523125, 49.704575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034713, 0.554755, -0.831289,
		0.813744, 0.467194, 0.345759,
		0.580185, -0.688460, -0.435211,
		36.541061, 34.316586, 49.574013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756958, 35.202858, 49.579525>,  <36.134930, 34.798508, 49.878658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756958, 35.202858, 49.579525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.734997, 34.857998, 49.378056>,  <36.721821, 34.651081, 49.257175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.734997, 34.857998, 49.378056>,  <36.756958, 35.202858, 49.579525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734997, 34.857998, 49.378056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031273, 0.505667, -0.862162,
		0.998002, -0.031581, -0.054722,
		-0.054899, -0.862151, -0.503669,
		36.718529, 34.599354, 49.226955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246517, 35.256790, 49.026794>,  <36.756958, 35.202858, 49.579525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246517, 35.256790, 49.026794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.974434, 34.980785, 48.927841>,  <36.811184, 34.815182, 48.868469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.974434, 34.980785, 48.927841>,  <37.246517, 35.256790, 49.026794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974434, 34.980785, 48.927841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073647, 0.400116, -0.913501,
		0.729307, -0.603154, -0.322981,
		-0.680211, -0.690009, -0.247386,
		36.770370, 34.773781, 48.853626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003376, 35.273903, 48.729286>,  <37.246517, 35.256790, 49.026794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003376, 35.273903, 48.729286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.222240, 35.600292, 48.803909>,  <38.353561, 35.796124, 48.848682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.222240, 35.600292, 48.803909>,  <38.003376, 35.273903, 48.729286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222240, 35.600292, 48.803909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212500, -0.350999, 0.911945,
		0.809603, -0.459339, -0.365447,
		0.547163, 0.815970, 0.186560,
		38.386391, 35.845085, 48.859879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688171, 35.040173, 48.821053>,  <38.003376, 35.273903, 48.729286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688171, 35.040173, 48.821053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.663635, 35.397385, 48.999374>,  <38.648914, 35.611710, 49.106369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.663635, 35.397385, 48.999374>,  <38.688171, 35.040173, 48.821053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663635, 35.397385, 48.999374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424152, -0.380989, 0.821549,
		0.903512, 0.239480, -0.355410,
		-0.061337, 0.893027, 0.445804,
		38.645233, 35.665291, 49.133114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373352, 35.299252, 48.968033>,  <38.688171, 35.040173, 48.821053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373352, 35.299252, 48.968033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.120426, 35.473747, 49.224117>,  <38.968670, 35.578445, 49.377769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.120426, 35.473747, 49.224117>,  <39.373352, 35.299252, 48.968033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120426, 35.473747, 49.224117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656593, -0.136824, 0.741731,
		0.411170, 0.889367, -0.199916,
		-0.632318, 0.436241, 0.640210,
		38.930733, 35.604618, 49.416180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800137, 35.360203, 49.454662>,  <39.373352, 35.299252, 48.968033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800137, 35.360203, 49.454662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.456036, 35.439289, 49.642651>,  <39.249577, 35.486740, 49.755444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.456036, 35.439289, 49.642651>,  <39.800137, 35.360203, 49.454662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456036, 35.439289, 49.642651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415652, -0.261906, 0.870999,
		0.295296, 0.944624, 0.143125,
		-0.860252, 0.197712, 0.469975,
		39.197960, 35.498604, 49.783642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947918, 35.814922, 50.070972>,  <39.800137, 35.360203, 49.454662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947918, 35.814922, 50.070972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.607391, 35.614948, 50.134624>,  <39.403076, 35.494965, 50.172813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.607391, 35.614948, 50.134624>,  <39.947918, 35.814922, 50.070972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607391, 35.614948, 50.134624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341463, -0.297703, 0.891502,
		-0.398319, 0.813289, 0.424150,
		-0.851319, -0.499934, 0.159127,
		39.351997, 35.464970, 50.182362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755375, 35.909809, 50.726330>,  <39.947918, 35.814922, 50.070972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755375, 35.909809, 50.726330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.547028, 35.581959, 50.630909>,  <39.422020, 35.385246, 50.573658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.547028, 35.581959, 50.630909>,  <39.755375, 35.909809, 50.726330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547028, 35.581959, 50.630909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362247, -0.465269, 0.807652,
		-0.772966, 0.334264, 0.539251,
		-0.520865, -0.819630, -0.238551,
		39.390770, 35.336071, 50.559345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389843, 35.732712, 51.333725>,  <39.755375, 35.909809, 50.726330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389843, 35.732712, 51.333725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.407497, 35.381359, 51.143356>,  <39.418091, 35.170547, 51.029137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.407497, 35.381359, 51.143356>,  <39.389843, 35.732712, 51.333725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407497, 35.381359, 51.143356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392246, -0.422893, 0.816887,
		-0.918801, -0.222732, 0.325877,
		0.044136, -0.878380, -0.475920,
		39.420738, 35.117844, 51.000580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438015, 35.277260, 51.871407>,  <39.389843, 35.732712, 51.333725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438015, 35.277260, 51.871407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.503387, 35.030804, 51.563210>,  <39.542610, 34.882931, 51.378292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.503387, 35.030804, 51.563210>,  <39.438015, 35.277260, 51.871407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503387, 35.030804, 51.563210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501573, -0.620632, 0.602694,
		-0.849538, -0.484959, 0.207608,
		0.163433, -0.616142, -0.770493,
		39.552418, 34.845963, 51.332062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152657, 34.626606, 52.076485>,  <39.438015, 35.277260, 51.871407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152657, 34.626606, 52.076485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.434284, 34.569191, 51.798298>,  <39.603260, 34.534740, 51.631386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.434284, 34.569191, 51.798298>,  <39.152657, 34.626606, 52.076485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434284, 34.569191, 51.798298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443810, -0.675591, 0.588735,
		-0.554361, -0.723169, -0.411960,
		0.704071, -0.143540, -0.695471,
		39.645504, 34.526131, 51.589657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.011749, 38.584068, 36.435352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401657, 38.496906, 36.454685>,  <36.635601, 38.444611, 36.466286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401657, 38.496906, 36.454685>,  <36.011749, 38.584068, 36.435352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401657, 38.496906, 36.454685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067374, -0.080817, 0.994449,
		-0.212792, -0.972617, -0.093459,
		0.974772, -0.217908, 0.048332,
		36.694088, 38.431534, 36.469185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093067, 37.997078, 36.814316>,  <36.011749, 38.584068, 36.435352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093067, 37.997078, 36.814316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457256, 38.154594, 36.864872>,  <36.675770, 38.249104, 36.895206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457256, 38.154594, 36.864872>,  <36.093067, 37.997078, 36.814316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457256, 38.154594, 36.864872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048336, -0.202180, 0.978155,
		0.410743, -0.896689, -0.165045,
		0.910469, 0.393793, 0.126386,
		36.730396, 38.272732, 36.902786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434544, 37.530544, 37.245193>,  <36.093067, 37.997078, 36.814316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434544, 37.530544, 37.245193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621937, 37.882698, 37.274704>,  <36.734375, 38.093990, 37.292412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621937, 37.882698, 37.274704>,  <36.434544, 37.530544, 37.245193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621937, 37.882698, 37.274704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001945, -0.084537, 0.996418,
		0.883469, -0.466664, -0.041317,
		0.468486, 0.880385, 0.073778,
		36.762482, 38.146812, 37.296837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925629, 37.408863, 37.696381>,  <36.434544, 37.530544, 37.245193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925629, 37.408863, 37.696381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901764, 37.808147, 37.694942>,  <36.887444, 38.047718, 37.694080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901764, 37.808147, 37.694942>,  <36.925629, 37.408863, 37.696381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901764, 37.808147, 37.694942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100297, 0.009575, 0.994911,
		0.993167, 0.059002, -0.100689,
		-0.059666, 0.998212, -0.003592,
		36.883865, 38.107613, 37.693867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480911, 37.688465, 38.156418>,  <36.925629, 37.408863, 37.696381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480911, 37.688465, 38.156418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212624, 37.984322, 38.134274>,  <37.051651, 38.161835, 38.120987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212624, 37.984322, 38.134274>,  <37.480911, 37.688465, 38.156418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212624, 37.984322, 38.134274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011312, 0.084826, 0.996332,
		0.741626, 0.667631, -0.065261,
		-0.670718, 0.739644, -0.055357,
		37.011410, 38.206215, 38.117668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678749, 38.115139, 38.595436>,  <37.480911, 37.688465, 38.156418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678749, 38.115139, 38.595436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317944, 38.281467, 38.549007>,  <37.101460, 38.381264, 38.521152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317944, 38.281467, 38.549007>,  <37.678749, 38.115139, 38.595436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317944, 38.281467, 38.549007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018427, 0.231528, 0.972654,
		0.431324, 0.879481, -0.201179,
		-0.902009, 0.415822, -0.116070,
		37.047340, 38.406216, 38.514187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640690, 38.814091, 38.793049>,  <37.678749, 38.115139, 38.595436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640690, 38.814091, 38.793049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256042, 38.712166, 38.833744>,  <37.025253, 38.651012, 38.858162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256042, 38.712166, 38.833744>,  <37.640690, 38.814091, 38.793049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256042, 38.712166, 38.833744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016183, 0.422845, 0.906058,
		-0.273896, 0.869639, -0.410741,
		-0.961623, -0.254813, 0.101742,
		36.967556, 38.635723, 38.864265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375702, 39.333935, 39.163818>,  <37.640690, 38.814091, 38.793049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375702, 39.333935, 39.163818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098740, 39.047733, 39.200996>,  <36.932564, 38.876015, 39.223305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098740, 39.047733, 39.200996>,  <37.375702, 39.333935, 39.163818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098740, 39.047733, 39.200996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257491, 0.365382, 0.894536,
		-0.674001, 0.595446, -0.437226,
		-0.692403, -0.715500, 0.092946,
		36.891018, 38.833084, 39.228882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820923, 39.625675, 39.477928>,  <37.375702, 39.333935, 39.163818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820923, 39.625675, 39.477928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745876, 39.242546, 39.564995>,  <36.700848, 39.012669, 39.617233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745876, 39.242546, 39.564995>,  <36.820923, 39.625675, 39.477928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745876, 39.242546, 39.564995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117879, 0.241956, 0.963100,
		-0.975143, 0.155038, -0.158302,
		-0.187619, -0.957821, 0.217666,
		36.689590, 38.955200, 39.630295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201420, 39.674160, 40.003597>,  <36.820923, 39.625675, 39.477928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201420, 39.674160, 40.003597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388016, 39.325848, 40.065720>,  <36.499973, 39.116859, 40.102993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388016, 39.325848, 40.065720>,  <36.201420, 39.674160, 40.003597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388016, 39.325848, 40.065720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061538, 0.143209, 0.987777,
		-0.882383, -0.470346, 0.013219,
		0.466490, -0.870785, 0.155309,
		36.527962, 39.064613, 40.112312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873791, 39.313885, 40.517673>,  <36.201420, 39.674160, 40.003597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873791, 39.313885, 40.517673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235088, 39.142399, 40.510117>,  <36.451866, 39.039509, 40.505581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235088, 39.142399, 40.510117>,  <35.873791, 39.313885, 40.517673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235088, 39.142399, 40.510117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026984, 0.012804, 0.999554,
		-0.428281, -0.903350, 0.023133,
		0.903243, -0.428714, -0.018892,
		36.506062, 39.013786, 40.504448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879581, 39.012920, 41.148861>,  <35.873791, 39.313885, 40.517673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879581, 39.012920, 41.148861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270580, 39.011639, 41.064495>,  <36.505180, 39.010868, 41.013874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270580, 39.011639, 41.064495>,  <35.879581, 39.012920, 41.148861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270580, 39.011639, 41.064495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207099, -0.175376, 0.962473,
		-0.040075, -0.984496, -0.170765,
		0.977499, -0.003206, -0.210916,
		36.563831, 39.010677, 41.001221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548325, 38.542210, 40.759178>,  <35.879581, 39.012920, 41.148861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548325, 38.542210, 40.759178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251705, 38.273937, 40.766010>,  <35.073734, 38.112972, 40.770107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251705, 38.273937, 40.766010>,  <35.548325, 38.542210, 40.759178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251705, 38.273937, 40.766010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251895, 0.254739, -0.933626,
		0.621815, -0.696631, -0.357843,
		-0.741549, -0.670681, 0.017077,
		35.029240, 38.072731, 40.771133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562763, 38.077171, 40.033421>,  <35.548325, 38.542210, 40.759178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562763, 38.077171, 40.033421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203545, 38.089863, 40.208923>,  <34.988014, 38.097477, 40.314224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203545, 38.089863, 40.208923>,  <35.562763, 38.077171, 40.033421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203545, 38.089863, 40.208923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434370, 0.093748, -0.895843,
		-0.069559, -0.995090, -0.070407,
		-0.898045, 0.031731, 0.438758,
		34.934132, 38.099380, 40.340549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160454, 37.653549, 39.588940>,  <35.562763, 38.077171, 40.033421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160454, 37.653549, 39.588940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895351, 37.858456, 39.807423>,  <34.736290, 37.981400, 39.938511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895351, 37.858456, 39.807423>,  <35.160454, 37.653549, 39.588940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895351, 37.858456, 39.807423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649865, -0.031042, -0.759415,
		-0.372066, -0.858267, 0.353476,
		-0.662753, 0.512264, 0.546208,
		34.696526, 38.012135, 39.971287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610069, 37.273338, 39.682858>,  <35.160454, 37.653549, 39.588940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610069, 37.273338, 39.682858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460884, 37.638554, 39.748901>,  <34.371372, 37.857681, 39.788528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460884, 37.638554, 39.748901>,  <34.610069, 37.273338, 39.682858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460884, 37.638554, 39.748901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625063, -0.115739, -0.771946,
		-0.685706, -0.391112, 0.613872,
		-0.372966, 0.913037, 0.165107,
		34.348995, 37.912464, 39.798435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886921, 37.219372, 39.767822>,  <34.610069, 37.273338, 39.682858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886921, 37.219372, 39.767822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976955, 37.593487, 39.658592>,  <34.030975, 37.817955, 39.593056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976955, 37.593487, 39.658592>,  <33.886921, 37.219372, 39.767822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976955, 37.593487, 39.658592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642057, -0.068429, -0.763596,
		-0.732871, 0.347199, 0.585109,
		0.225082, 0.935292, -0.273071,
		34.044479, 37.874073, 39.576672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249027, 37.566288, 39.729866>,  <33.886921, 37.219372, 39.767822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249027, 37.566288, 39.729866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514900, 37.759167, 39.501591>,  <33.674423, 37.874893, 39.364624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514900, 37.759167, 39.501591>,  <33.249027, 37.566288, 39.729866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514900, 37.759167, 39.501591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666092, 0.036474, -0.744977,
		-0.338412, 0.875302, 0.345432,
		0.664680, 0.482199, -0.570688,
		33.714306, 37.903828, 39.330383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864391, 38.088078, 39.540314>,  <33.249027, 37.566288, 39.729866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864391, 38.088078, 39.540314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159184, 38.087372, 39.269951>,  <33.336060, 38.086948, 39.107731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159184, 38.087372, 39.269951>,  <32.864391, 38.088078, 39.540314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159184, 38.087372, 39.269951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675068, 0.048068, -0.736188,
		0.033789, 0.998843, 0.034233,
		0.736982, -0.001766, -0.675910,
		33.380280, 38.086842, 39.067177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586201, 38.492855, 39.040718>,  <32.864391, 38.088078, 39.540314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586201, 38.492855, 39.040718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907597, 38.339996, 38.858131>,  <33.100433, 38.248280, 38.748577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907597, 38.339996, 38.858131>,  <32.586201, 38.492855, 39.040718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907597, 38.339996, 38.858131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476702, 0.046275, -0.877846,
		0.356590, 0.922942, -0.144990,
		0.803491, -0.382148, -0.456469,
		33.148643, 38.225353, 38.721191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745731, 38.970619, 38.442310>,  <32.586201, 38.492855, 39.040718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745731, 38.970619, 38.442310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913044, 38.613956, 38.373043>,  <33.013432, 38.399960, 38.331482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913044, 38.613956, 38.373043>,  <32.745731, 38.970619, 38.442310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913044, 38.613956, 38.373043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486393, -0.058863, -0.871755,
		0.767115, 0.448864, -0.458318,
		0.418278, -0.891659, -0.173170,
		33.038528, 38.346458, 38.321091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920437, 38.985329, 37.718075>,  <32.745731, 38.970619, 38.442310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920437, 38.985329, 37.718075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932728, 38.593307, 37.796612>,  <32.940102, 38.358093, 37.843735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932728, 38.593307, 37.796612>,  <32.920437, 38.985329, 37.718075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932728, 38.593307, 37.796612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495116, -0.185568, -0.848778,
		0.868283, -0.071137, -0.490942,
		0.030723, -0.980053, 0.196347,
		32.941944, 38.299290, 37.855515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142609, 38.627762, 37.110184>,  <32.920437, 38.985329, 37.718075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142609, 38.627762, 37.110184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940857, 38.364071, 37.333263>,  <32.819805, 38.205856, 37.467110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940857, 38.364071, 37.333263>,  <33.142609, 38.627762, 37.110184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940857, 38.364071, 37.333263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579387, -0.220515, -0.784655,
		0.640243, -0.718887, -0.270722,
		-0.504380, -0.659223, 0.557697,
		32.789543, 38.166306, 37.500572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108536, 38.027588, 36.668079>,  <33.142609, 38.627762, 37.110184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108536, 38.027588, 36.668079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821503, 37.985271, 36.943436>,  <32.649284, 37.959881, 37.108650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821503, 37.985271, 36.943436>,  <33.108536, 38.027588, 36.668079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821503, 37.985271, 36.943436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593564, -0.424185, -0.683921,
		0.364360, -0.899374, 0.241593,
		-0.717581, -0.105793, 0.688393,
		32.606228, 37.953533, 37.149952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827389, 37.402637, 36.381195>,  <33.108536, 38.027588, 36.668079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827389, 37.402637, 36.381195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559685, 37.569042, 36.627453>,  <32.399063, 37.668884, 36.775208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559685, 37.569042, 36.627453>,  <32.827389, 37.402637, 36.381195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559685, 37.569042, 36.627453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736858, -0.265038, -0.621929,
		-0.095560, -0.869878, 0.483922,
		-0.669260, 0.416013, 0.615649,
		32.358906, 37.693848, 36.812149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337021, 36.900742, 36.403721>,  <32.827389, 37.402637, 36.381195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337021, 36.900742, 36.403721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153553, 37.243469, 36.497944>,  <32.043472, 37.449104, 36.554478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153553, 37.243469, 36.497944>,  <32.337021, 36.900742, 36.403721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153553, 37.243469, 36.497944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653098, -0.145293, -0.743205,
		-0.602567, -0.494724, 0.626227,
		-0.458668, 0.856818, 0.235555,
		32.015953, 37.500515, 36.568611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538033, 36.875065, 36.475109>,  <32.337021, 36.900742, 36.403721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538033, 36.875065, 36.475109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650803, 37.243248, 36.366829>,  <31.718464, 37.464157, 36.301861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650803, 37.243248, 36.366829>,  <31.538033, 36.875065, 36.475109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650803, 37.243248, 36.366829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686515, -0.003564, -0.727107,
		-0.670235, 0.390828, 0.630903,
		0.281925, 0.920457, -0.270698,
		31.735380, 37.519386, 36.285618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366398, 36.330753, 36.878830>,  <31.538033, 36.875065, 36.475109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366398, 36.330753, 36.878830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539923, 36.048897, 36.654224>,  <31.644037, 35.879784, 36.519463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539923, 36.048897, 36.654224>,  <31.366398, 36.330753, 36.878830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539923, 36.048897, 36.654224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181808, -0.678844, 0.711418,
		-0.882470, -0.206534, -0.422598,
		0.433810, -0.704638, -0.561511,
		31.670067, 35.837505, 36.485771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972723, 35.759903, 36.958534>,  <31.366398, 36.330753, 36.878830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972723, 35.759903, 36.958534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334959, 35.605633, 36.887920>,  <31.552301, 35.513073, 36.845554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334959, 35.605633, 36.887920>,  <30.972723, 35.759903, 36.958534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334959, 35.605633, 36.887920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031504, -0.476206, 0.878769,
		-0.422977, -0.790245, -0.443399,
		0.905592, -0.385668, -0.176529,
		31.606636, 35.489933, 36.834961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000553, 34.963928, 37.206066>,  <30.972723, 35.759903, 36.958534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000553, 34.963928, 37.206066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382355, 35.083206, 37.206562>,  <31.611437, 35.154774, 37.206860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382355, 35.083206, 37.206562>,  <31.000553, 34.963928, 37.206066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382355, 35.083206, 37.206562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178604, -0.575027, 0.798401,
		0.238791, -0.761856, -0.602125,
		0.954505, 0.298193, 0.001241,
		31.668707, 35.172665, 37.206936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350166, 34.370548, 37.404629>,  <31.000553, 34.963928, 37.206066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350166, 34.370548, 37.404629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566248, 34.695847, 37.491169>,  <31.695896, 34.891026, 37.543091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566248, 34.695847, 37.491169>,  <31.350166, 34.370548, 37.404629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566248, 34.695847, 37.491169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179973, -0.362786, 0.914328,
		0.822064, -0.454986, -0.342341,
		0.540204, 0.813249, 0.216348,
		31.728310, 34.939819, 37.556072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783751, 34.109085, 37.825047>,  <31.350166, 34.370548, 37.404629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783751, 34.109085, 37.825047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840975, 34.498043, 37.898781>,  <31.875309, 34.731419, 37.943024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840975, 34.498043, 37.898781>,  <31.783751, 34.109085, 37.825047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840975, 34.498043, 37.898781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238750, -0.214660, 0.947058,
		0.960485, -0.091476, -0.262869,
		0.143061, 0.972396, 0.184338,
		31.883894, 34.789761, 37.954082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531647, 34.148544, 38.201984>,  <31.783751, 34.109085, 37.825047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531647, 34.148544, 38.201984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312778, 34.477123, 38.266270>,  <32.181458, 34.674271, 38.304840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312778, 34.477123, 38.266270>,  <32.531647, 34.148544, 38.201984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312778, 34.477123, 38.266270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340050, 0.042718, 0.939437,
		0.764831, 0.568685, -0.302707,
		-0.547175, 0.821445, 0.160709,
		32.148624, 34.723557, 38.314484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897236, 34.740074, 38.409256>,  <32.531647, 34.148544, 38.201984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897236, 34.740074, 38.409256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534943, 34.806648, 38.565178>,  <32.317566, 34.846592, 38.658730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534943, 34.806648, 38.565178>,  <32.897236, 34.740074, 38.409256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534943, 34.806648, 38.565178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388043, -0.044324, 0.920575,
		0.170496, 0.985055, -0.024439,
		-0.905734, 0.166438, 0.389801,
		32.263222, 34.856579, 38.682117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988697, 35.233063, 38.945683>,  <32.897236, 34.740074, 38.409256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988697, 35.233063, 38.945683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638039, 35.063854, 39.037376>,  <32.427643, 34.962330, 39.092392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638039, 35.063854, 39.037376>,  <32.988697, 35.233063, 38.945683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638039, 35.063854, 39.037376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274251, -0.047862, 0.960466,
		-0.395322, 0.904857, 0.157971,
		-0.876645, -0.423017, 0.229237,
		32.375046, 34.936951, 39.106148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756355, 35.489601, 39.551388>,  <32.988697, 35.233063, 38.945683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756355, 35.489601, 39.551388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531063, 35.159260, 39.562317>,  <32.395889, 34.961056, 39.568874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531063, 35.159260, 39.562317>,  <32.756355, 35.489601, 39.551388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531063, 35.159260, 39.562317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260716, -0.146234, 0.954276,
		-0.784092, 0.544600, 0.297675,
		-0.563229, -0.825849, 0.027325,
		32.362095, 34.911507, 39.570515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367634, 35.557381, 40.175419>,  <32.756355, 35.489601, 39.551388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367634, 35.557381, 40.175419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338726, 35.171818, 40.072922>,  <32.321381, 34.940479, 40.011425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338726, 35.171818, 40.072922>,  <32.367634, 35.557381, 40.175419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338726, 35.171818, 40.072922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073416, -0.261356, 0.962447,
		-0.994680, 0.050740, 0.089654,
		-0.072266, -0.963908, -0.256240,
		32.317047, 34.882645, 39.996048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107025, 35.301968, 40.740479>,  <32.367634, 35.557381, 40.175419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107025, 35.301968, 40.740479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231800, 34.970818, 40.554012>,  <32.306664, 34.772125, 40.442131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231800, 34.970818, 40.554012>,  <32.107025, 35.301968, 40.740479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231800, 34.970818, 40.554012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057699, -0.473238, 0.879043,
		-0.948349, -0.301104, -0.099853,
		0.311938, -0.827878, -0.466168,
		32.325382, 34.722454, 40.414162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735058, 34.640327, 41.045963>,  <32.107025, 35.301968, 40.740479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735058, 34.640327, 41.045963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087139, 34.536835, 40.886814>,  <32.298389, 34.474739, 40.791325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087139, 34.536835, 40.886814>,  <31.735058, 34.640327, 41.045963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087139, 34.536835, 40.886814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266590, -0.424034, 0.865520,
		-0.392641, -0.867903, -0.304264,
		0.880206, -0.258724, -0.397868,
		32.351200, 34.459217, 40.767452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883612, 34.073235, 41.491695>,  <31.735058, 34.640327, 41.045963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883612, 34.073235, 41.491695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243542, 34.149620, 41.334801>,  <32.459499, 34.195450, 41.240665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243542, 34.149620, 41.334801>,  <31.883612, 34.073235, 41.491695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243542, 34.149620, 41.334801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432549, -0.507451, 0.745249,
		-0.056727, -0.840254, -0.539217,
		0.899824, 0.190962, -0.392237,
		32.513489, 34.206909, 41.217129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265507, 33.567650, 41.741604>,  <31.883612, 34.073235, 41.491695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265507, 33.567650, 41.741604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536995, 33.848915, 41.656845>,  <32.699886, 34.017673, 41.605988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536995, 33.848915, 41.656845>,  <32.265507, 33.567650, 41.741604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536995, 33.848915, 41.656845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612814, -0.383250, 0.691071,
		0.404727, -0.598896, -0.691028,
		0.678716, 0.703167, -0.211900,
		32.740608, 34.059864, 41.593277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931973, 33.128281, 41.873997>,  <32.265507, 33.567650, 41.741604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931973, 33.128281, 41.873997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026604, 33.515327, 41.838810>,  <33.083382, 33.747555, 41.817699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026604, 33.515327, 41.838810>,  <32.931973, 33.128281, 41.873997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026604, 33.515327, 41.838810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782706, -0.136158, 0.607316,
		0.575675, -0.212531, -0.789575,
		0.236581, 0.967621, -0.087967,
		33.097580, 33.805614, 41.812420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756618, 33.065372, 41.787872>,  <32.931973, 33.128281, 41.873997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756618, 33.065372, 41.787872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617500, 33.421349, 41.905888>,  <33.534031, 33.634933, 41.976696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617500, 33.421349, 41.905888>,  <33.756618, 33.065372, 41.787872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617500, 33.421349, 41.905888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732804, 0.061733, 0.677634,
		0.584841, 0.451878, -0.673622,
		-0.347793, 0.889941, 0.295034,
		33.513161, 33.688332, 41.994396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243011, 33.492794, 41.603474>,  <33.756618, 33.065372, 41.787872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243011, 33.492794, 41.603474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038006, 33.646084, 41.910843>,  <33.915005, 33.738056, 42.095264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038006, 33.646084, 41.910843>,  <34.243011, 33.492794, 41.603474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038006, 33.646084, 41.910843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800391, -0.110889, 0.589133,
		0.310978, 0.916976, -0.249896,
		-0.512510, 0.383222, 0.768423,
		33.884254, 33.761051, 42.141369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779957, 33.892403, 42.011425>,  <34.243011, 33.492794, 41.603474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779957, 33.892403, 42.011425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457657, 33.869308, 42.247200>,  <34.264278, 33.855450, 42.388664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457657, 33.869308, 42.247200>,  <34.779957, 33.892403, 42.011425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457657, 33.869308, 42.247200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589209, -0.179063, 0.787889,
		0.060055, 0.982142, 0.178300,
		-0.805746, -0.057739, 0.589440,
		34.215935, 33.851986, 42.424030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931019, 34.176437, 42.591671>,  <34.779957, 33.892403, 42.011425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931019, 34.176437, 42.591671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636749, 33.937042, 42.718536>,  <34.460186, 33.793407, 42.794655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636749, 33.937042, 42.718536>,  <34.931019, 34.176437, 42.591671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636749, 33.937042, 42.718536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572074, -0.298316, 0.764028,
		-0.362642, 0.743522, 0.561842,
		-0.735678, -0.598484, 0.317167,
		34.416046, 33.757496, 42.813686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964443, 34.306625, 43.293362>,  <34.931019, 34.176437, 42.591671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964443, 34.306625, 43.293362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756927, 33.968376, 43.243130>,  <34.632416, 33.765427, 43.212990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756927, 33.968376, 43.243130>,  <34.964443, 34.306625, 43.293362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756927, 33.968376, 43.243130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488698, -0.413870, 0.768040,
		-0.701449, 0.337083, 0.627969,
		-0.518791, -0.845628, -0.125577,
		34.601292, 33.714687, 43.205456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847240, 34.087551, 43.972546>,  <34.964443, 34.306625, 43.293362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847240, 34.087551, 43.972546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811184, 33.742855, 43.772835>,  <34.789551, 33.536037, 43.653008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811184, 33.742855, 43.772835>,  <34.847240, 34.087551, 43.972546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811184, 33.742855, 43.772835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555145, -0.459684, 0.693184,
		-0.826855, -0.214686, 0.519828,
		-0.090140, -0.861743, -0.499274,
		34.784142, 33.484333, 43.623051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469593, 33.604248, 44.456341>,  <34.847240, 34.087551, 43.972546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469593, 33.604248, 44.456341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654175, 33.376450, 44.184242>,  <34.764923, 33.239773, 44.020981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654175, 33.376450, 44.184242>,  <34.469593, 33.604248, 44.456341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654175, 33.376450, 44.184242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405099, -0.546905, 0.732660,
		-0.789277, -0.613655, -0.021668,
		0.461450, -0.569494, -0.680250,
		34.792610, 33.205601, 43.980167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407749, 32.855068, 44.628548>,  <34.469593, 33.604248, 44.456341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407749, 32.855068, 44.628548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723164, 32.886089, 44.384514>,  <34.912411, 32.904701, 44.238094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723164, 32.886089, 44.384514>,  <34.407749, 32.855068, 44.628548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723164, 32.886089, 44.384514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559754, -0.501405, 0.659748,
		-0.254732, -0.861730, -0.438786,
		0.788535, 0.077554, -0.610081,
		34.959724, 32.909355, 44.201488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609436, 32.178513, 44.618164>,  <34.407749, 32.855068, 44.628548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609436, 32.178513, 44.618164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915428, 32.413387, 44.512321>,  <35.099022, 32.554314, 44.448814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915428, 32.413387, 44.512321>,  <34.609436, 32.178513, 44.618164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915428, 32.413387, 44.512321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558796, -0.400828, 0.726005,
		0.320238, -0.703242, -0.634743,
		0.764980, 0.587186, -0.264609,
		35.144920, 32.589542, 44.432938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190502, 31.702349, 44.439667>,  <34.609436, 32.178513, 44.618164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190502, 31.702349, 44.439667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354588, 32.057121, 44.524590>,  <35.453041, 32.269985, 44.575542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354588, 32.057121, 44.524590>,  <35.190502, 31.702349, 44.439667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354588, 32.057121, 44.524590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674839, -0.451797, 0.583500,
		0.613446, -0.096086, -0.783870,
		0.410216, 0.886931, 0.212311,
		35.477654, 32.323200, 44.588284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872936, 31.610626, 44.585567>,  <35.190502, 31.702349, 44.439667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872936, 31.610626, 44.585567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823002, 31.976976, 44.738190>,  <35.793041, 32.196785, 44.829765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823002, 31.976976, 44.738190>,  <35.872936, 31.610626, 44.585567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823002, 31.976976, 44.738190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510570, -0.270442, 0.816198,
		0.850726, 0.296702, -0.433859,
		-0.124834, 0.915876, 0.381559,
		35.785553, 32.251740, 44.852657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457710, 31.704954, 44.866325>,  <35.872936, 31.610626, 44.585567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457710, 31.704954, 44.866325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228523, 31.960295, 45.071934>,  <36.091011, 32.113499, 45.195297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228523, 31.960295, 45.071934>,  <36.457710, 31.704954, 44.866325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228523, 31.960295, 45.071934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519211, -0.202545, 0.830298,
		0.634132, 0.742621, -0.215386,
		-0.572972, 0.638349, 0.514017,
		36.056633, 32.151798, 45.226139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163052, 31.780523, 44.559986>,  <36.457710, 31.704954, 44.866325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163052, 31.780523, 44.559986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364246, 31.485868, 44.379154>,  <37.484962, 31.309076, 44.270657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364246, 31.485868, 44.379154>,  <37.163052, 31.780523, 44.559986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364246, 31.485868, 44.379154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422253, 0.246950, -0.872191,
		0.754127, 0.629591, -0.186834,
		0.502985, -0.736635, -0.452078,
		37.515141, 31.264877, 44.243530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228378, 32.054226, 43.917698>,  <37.163052, 31.780523, 44.559986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228378, 32.054226, 43.917698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364727, 31.682076, 43.863716>,  <37.446537, 31.458786, 43.831329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364727, 31.682076, 43.863716>,  <37.228378, 32.054226, 43.917698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364727, 31.682076, 43.863716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203194, 0.067244, -0.976827,
		0.917889, 0.360392, -0.166125,
		0.340870, -0.930374, -0.134952,
		37.466988, 31.402964, 43.823231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757446, 32.014790, 43.264091>,  <37.228378, 32.054226, 43.917698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757446, 32.014790, 43.264091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595528, 31.654890, 43.329315>,  <37.498379, 31.438950, 43.368450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595528, 31.654890, 43.329315>,  <37.757446, 32.014790, 43.264091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595528, 31.654890, 43.329315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274835, -0.050361, -0.960172,
		0.872129, -0.433484, -0.226898,
		-0.404792, -0.899753, 0.163058,
		37.474091, 31.384964, 43.378231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090080, 31.631033, 42.718067>,  <37.757446, 32.014790, 43.264091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090080, 31.631033, 42.718067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754131, 31.449766, 42.837574>,  <37.552563, 31.341005, 42.909279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754131, 31.449766, 42.837574>,  <38.090080, 31.631033, 42.718067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754131, 31.449766, 42.837574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351940, 0.035606, -0.935345,
		0.413231, -0.890714, -0.189393,
		-0.839868, -0.453168, 0.298764,
		37.502171, 31.313816, 42.927204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996017, 31.072342, 42.243984>,  <38.090080, 31.631033, 42.718067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996017, 31.072342, 42.243984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629063, 31.098473, 42.401020>,  <37.408890, 31.114151, 42.495243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629063, 31.098473, 42.401020>,  <37.996017, 31.072342, 42.243984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629063, 31.098473, 42.401020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390314, 0.045080, -0.919577,
		-0.077775, -0.996845, -0.015857,
		-0.917391, 0.065331, 0.392589,
		37.353844, 31.118071, 42.518795>
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
